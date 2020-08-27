var calendars = [];

function loadSports(func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Athletics/Sports/'),
        dataType: "json",
        success: function(json) {
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        }
    });
}

function loadSportsGames(sportId, func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('/Athletics/Games?$filter=SportId eq ' + sportId),
        dataType: "json",
        success: function(json) {
            for (var i = 0; i < json.value.length; i++) {
                json.value[i]['Date'] = moment(json.value[i].StartTime).format('MM/DD/YYYY');
            }
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        }
    });
}

function loadWeeklyGames(func) {
    var first = moment().startOf('day');
    var last = moment().endOf('week').endOf('day').add(1, 'days');
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('/Athletics/Games/?$expand=Sport&$orderby=StartTime&$filter=StartTime gt ' + first.toISOString() + ' and StartTime lt ' + last.toISOString()),
        dataType: "json",
        success: function(json) {
            for (var i = 0; i < json.value.length; i++) {
                var date = moment(json.value[i].StartTime);
                if (date.hour() == 0 && date.minute() == 0) {
                    json.value[i]['Date'] = date.calendar(null, {
                        sameDay: '[Today]',
                        nextDay: '[Tomorrow]',
                        nextWeek: 'dddd',
                        lastDay: '[Yesterday]',
                        lastWeek: '[Last] dddd',
                        sameElse: 'DD/MM/YYYY'
                    });
                    json.value[i]['Competitive'] = false;
                } else {
                    json.value[i]['Date'] = date.calendar(null, {
                        sameElse: "M/DD/YYYY [at] h:mm a"
                    });
                    json.value[i]['Competitive'] = true;
                }
            }
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        }
    });
}

function initAthletics() {
    if (window.ga) {
        window.ga.trackView('Athletics');
    }
    window.APP_INSTANCE.toggleLoading(true);
    loadSports(function(sportsDataSource) {
        $("#sports-items").kendoMobileListView({
            dataSource: sportsDataSource,
            template: $("#sports-template").text(),
        });
        window.APP_INSTANCE.toggleLoading(false);
    });
}
