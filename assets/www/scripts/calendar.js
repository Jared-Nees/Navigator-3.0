var calendars = [];

function loadCalendars(func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Navigator/Calendars/'),
        dataType: "json",
        success: function(json) {
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        }
    });
}

function loadCalendarEvents(calendarId, func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Navigator/Calendars(' + calendarId + ')/Events/'),
        dataType: "json",
        success: function(json) {
            for (var x in json.value) {
                json.value[x]['DateFormatted'] = moment(json.value[x]['Date']).format('ddd, MMM Do YYYY');
            }
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        }
    });
}

function loadAllEvents(func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Navigator/CalendarEvents/'),
        dataType: "json",
        success: function(json) {
            var values = [];
            for (var x in json.value) {
                json.value[x]['DateFormatted'] = moment(json.value[x]['Date']).format('ddd, MMM Do YYYY');
            }
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        }
    });
}

function fetchWeeklyEvents(func) {
    var events = [];

    var first = moment().startOf('week').add(1, 'day'); // Moment considers Sunday the first day
    var last = moment().endOf('week');
    loadAllEvents(function(eventsDataSource) {
        eventsDataSource.fetch(function() {
            var view = this.view();
            for (var i = 0; i < view.length; i++) {
                var date = moment(view[i].date, 'ddd, MMM Do YYYY');
                if (date.isBetween(first, last)) {
                    var data = {
                        title: view[i].title,
                        day: moment(view[i].date, "ddd, MMM Do, YYYY").tz("America/New_York").calendar(null, {
                            sameDay: '[Today]',
                            nextDay: '[Tomorrow]',
                            nextWeek: 'dddd',
                            lastDay: '[Yesterday]',
                            lastWeek: '[Last] dddd',
                            sameElse: 'DD/MM/YYYY'
                        }),
                    };
                    if (view[i].time !== undefined) {
                        data.time = view[i].time;
                    }
                    events.push(data);
                }
            }
            var sliced = 0;
            if (events.length > 7) {
                sliced = events.length - 7;
                events = events.slice(0, 6);
            }
            func(events, sliced);
        });
    });
}

function initCalendar() {
    if (window.ga) {
        window.ga.trackView('Calendar');
    }
    window.APP_INSTANCE.toggleLoading(true);
    loadCalendars(function(calendarDataSource) {
        calendarDataSource.fetch(function() {
            var view = this.view();
            calendars = view;

            var firstTab = $('#calendar-tab');
            var firstId = 0;
            var tabTemplate = $('#calendar-tab-template');
            var eventTemplate = kendo.template($("#calendar-template").html());
            for (var i=view.length-1;i>=0;i--) {
              var id = view[i].Id;
              var icon = view[i].Icon;
              var name = view[i].Name;
              var elementId = "calendar-tab-" + view[i].Id;
              var element;
              if (i != 0) {
                tabTemplate.clone().attr('id', elementId).appendTo('body');
              } else {
                firstTab.attr('id', elementId);
                firstId = parseInt(id);
                //history.pushState({}, 'Calendar', '#' + elementId);
                //window.replaceHash(elementId);
              }
              $('#' + elementId + ' .calendar-title').html(name);

              var template = kendo.template($("#calendar-group-template").html());
              $("#calendars").html(kendo.render(template, view));
            }
            $("#calendars").kendoMobileTabStrip({});
            loadCalendarEvents(firstId, function(eventsDataSource) {
                $("#calendar-tab-" + firstId + ' .calendar-events-list').kendoMobileListView({
                    dataSource: eventsDataSource,
                    template: eventTemplate,
                    dataBound: function() {
                        if (this.dataSource.data().length == 0) {
                            $("#" + elementId + " .calendar-events-list").append("<center><h3>No upcoming events</h3></center>");
                        }
                    },
                });
            });
            window.APP_INSTANCE.toggleLoading(false);
        });
    });
}

var calendarTabsLoaded = 0;

function showCalendarTab() {
  var elementId = $(this).attr('id');
  var id = parseInt(elementId.split('#calendar-tab-')[1]);
  var eventTemplate = kendo.template($("#calendar-template").html());
  loadCalendarEvents(id, function(eventsDataSource) {
      $(elementId + ' .calendar-events-list').kendoMobileListView({
          dataSource: eventsDataSource,
          template: eventTemplate,
          dataBound: function() {
              if (this.dataSource.data().length == 0) {
                  $(elementId + " .calendar-events-list").append("<center><h3>No upcoming events</h3></center>");
              }
          },
      });
  });
  calendarTabsLoaded++;
}

function showCalendarFirstTab() {
  // If this is the first tab load, we're not going to count it since it isn't pushed into history abnormally
  if (calendarTabsLoaded > 0) {
    calendarTabsLoaded++;
  }
}

function calendarBackClick(e) {
  /*
  Okay.... bear with me:
  Kendo thinks it's an excellent idea for tab navigation to be pushed to the history stack
  so that when old people hit the back button it doesn't navigate them unexpectedly off page
  instead it navigates to the last hash/tab they were at. In theory this works well for
  browsers where the back button behavior is somewhat ambiguous, but here in the app the back
  button means go back; if the user wanted to go back to the last tab they would just click
  the button on the tab bar.
  SO since there's no way to disable this behavior (because telerik knows what's best for your users)
  we are going to keep track of how many additional tabs have been loaded and subvert this behavior
  by skipping over that many history entries when the user hits the back button.
  If you don't get it, remove this method and test out the annoyingly abnnormal
  back button behavior that results.
  */
  if (calendarTabsLoaded > 0) {
    var skip = calendarTabsLoaded + 1;
    if (window.history.length >= skip) {
      e.preventDefault();
      window.history.go(-skip);
    }
  }
  calendarTabsLoaded = 0;
}
