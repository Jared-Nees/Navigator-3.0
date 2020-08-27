var WCNU_NOTIFICATION_ID = 1;

function isCellular() {
    var DISABLED_STREAMING = [Connection.CELL, Connection.CELL_4G, Connection.CELL_3G, Connection.CELL_2G];
    return $.inArray(navigator.connection.type, DISABLED_STREAMING) !== -1;
}

function loadRadioShows(func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('WCNU/Shows/'),
        dataType: "json",
        success: function(json) {
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        }
    });
}

function loadRadioSchedule(func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('WCNU/ShowSchedules?$expand=Show'),
        dataType: "json",
        success: function(json) {
            var current = moment();
            var data = [];
            for (var x in json.value) {
                var start = moment(json.value[x].StartTime);
                var end = moment(json.value[x].EndTime);
                if (end.isAfter(current)) {
                    if (start.isBefore(current)) {
                        json.value[x]['StartTimeFormatted'] = 'Now'
                        json.value[x]['Current'] = true;
                    } else {
                        json.value[x]['StartTimeFormatted'] = start.format('h:mm a');
                    }
                    json.value[x]['EndTimeFormatted'] = end.format('h:mm a');
                    data.push(json.value[x]);
                }
            }
            var dataSource = new kendo.data.DataSource({
                data: data
            });
            func(dataSource);
        }
    });
}

function loadRadioScheduleShow(scheduleId, func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('WCNU/Schedules(' + scheduleId + ')/Show'),
        dataType: "json",
        success: function(json) {
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        }
    });
}

function fetchDailyShows(func) {
    var shows = [];

    var first = moment();
    var last = moment().endOf('day');
    loadRadioSchedule(function(eventsDataSource) {
        eventsDataSource.fetch(function() {
            var view = this.view();
            for (var i = 0; i < view.length; i++) {
                var start = moment(view[i].StartTime);
                var end = moment(view[i].EndTime);
                if (end.isBetween(first, last)) {
                    if ('Show' in view[i] && view[i]['Show'] != null) {
                      view[i]['Show'] = view[i]['Show']['Name']
                    } else {
                      view[i]['Show'] = 'Untitled Show';
                    }
                    shows.push(view[i]);
                }
            }
            var sliced = 0;
            if (shows.length > 7) {
                sliced = shows.length - 7;
                shows = shows.slice(0, 6);
            }
            func(shows, sliced);
        });
    });
}

var updateLoop;

var mediaPlayer;

function MediaPlayer() {}

function pollWCNUData() {
    // KENDO DATA SOURCES ARE SO AMAZINGLY USELESS
    $.ajax({
        type: 'GET',
        dataType: 'json',
        url: 'http://wcnuradio.com/wp-content/wcnu-webplayer/fullstatus.php',
        async: true,
        success: function(data) {
            var song = data.title;
            var artist = data.artist;
            var album = data.albumArt;
            var title = song ? artist + ' - ' + song : artist;
            $(".player .song-info").html(title);
            $(".player .album").attr('src', album);
            $(".player .album").css('visibility', 'visible');
            if (mediaPlayer.isPlaying && cordova.plugins && cordova.plugins.notification) {
                cordova.plugins.notification.local.getTriggered(function(notifications) {
                    var found = false;
                    for (var x in notifications) {
                        notification = notifications[x];
                        if (notification.id === WCNU_NOTIFICATION_ID) {
                            found = true;
                            if (notification.title !== title) {
                                cordova.plugins.notification.local.update({
                                    id: WCNU_NOTIFICATION_ID,
                                    title: title,
                                });
                            }
                            break;
                        }
                    }
                    if (!found) {
                        cordova.plugins.notification.local.schedule({
                            id: WCNU_NOTIFICATION_ID,
                            text: "Click to return to WCNU Radio",
                            title: title,
                            ongoing: true,
                            led: '0000FF'
                        });
                        cordova.plugins.notification.local.on("click", function(notification) {
                            if (notification.id === WCNU_NOTIFICATION_ID) {
                                window.APP_INSTANCE.navigate('views/wcnu.html');
                            }
                        });
                    }
                });
            }
        }
    });
}

function initWCNU(e) {
    if (window.ga) {
        window.ga.trackView('WCNU');
    }
    pollWCNUData();
    updateLoop = setInterval(function() {
        pollWCNUData();
    }, 1000 * 30);

    window.APP_INSTANCE.toggleLoading(true);
    loadRadioSchedule(function(scheduleDataSource) {
        $("#show-list").kendoMobileListView({
            dataSource: scheduleDataSource,
            template: $("#wcnu-template").text(),
        });
        window.APP_INSTANCE.toggleLoading(false);
    });

    MediaPlayer.prototype = {
        audio: null,
        isPlaying: false,
        hasStarted: false,

        run: function() {
            var instance = this;

            var playButton = $('.player .play');
            var stopButton = $('.player .stop');

            playButton.click(function() {
                instance.play();
                $(stopButton).css("display", "inline-block");
                $(playButton).css("display", "none");
            });

            stopButton.click(function() {
                instance.stop();
                $(playButton).css("display", "inline-block");
                $(stopButton).css("display", "none");
            });

            instance.audio = new Audio('http://174.142.103.66:8080/;');
        },

        play: function() {
            if (this.isPlaying === false) {
                if (!isCellular() || !window.APP_INSTANCE.getSetting("wcnu-wifi-only")) {
                    this.audio.play();
                    this.isPlaying = true;
                    this.hasStarted = true;
                    pollWCNUData();
                } else {
                    alert('You must be connected to WiFi to stream audio. You can change this in settings.');
                }
            }
        },

        stop: function() {
            this.audio.pause();
            this.isPlaying = false;
            if (cordova.plugins && cordova.plugins.notification) {
                cordova.plugins.notification.local.cancel(WCNU_NOTIFICATION_ID, function() {}, this);
            }
        },
    };

    document.addEventListener("online", onOnline);

    function onOnline() {
        if (isCellular() && window.APP_INSTANCE.getSetting("wcnu-wifi-only")) {
            mediaPlayer.stop();
        }
    }


    mediaPlayer = new MediaPlayer();
    mediaPlayer.run();
}
