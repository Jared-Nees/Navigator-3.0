function loadFergusonEvents(query, func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Ferguson/FergusonEvents/' + (query != null ? query : '')),
        dataType: "json",
        success: function(json) {
            for (var x in json.value) {
                json.value[x]['DateFormatted'] = moment(json.value[x]['Date']).format('ddd, MMM Do [at] h:mm a');
            }
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        }
    });
}

function initFerguson() {
    if (window.ga) {
        window.ga.trackView('Ferguson Center');
    }
    var fergusonTemplate = kendo.template($("#ferguson-template").html());
    window.APP_INSTANCE.toggleLoading(true);
    loadFergusonEvents(null, function(eventDataSource) {
        $("#ferguson-items").kendoMobileListView({
            dataSource: eventDataSource,
            template: fergusonTemplate,
        });
        window.APP_INSTANCE.toggleLoading(false);
    });
}

function fetchWeeklyFergusonEvents(func) {
    var events = [];

    var first = moment().startOf('day');
    var last = moment().endOf('week').endOf('day').add(1, 'days');
    loadFergusonEvents('?$filter=Date gt ' + first.toISOString() + ' and Date lt ' + last.toISOString(), function(eventDataSource) {
        eventDataSource.fetch(function() {
            var view = this.view();
            for (var i = 0; i < view.length; i++) {
                var date = moment(view[i].Date);
                view[i]['Day'] = date.calendar(null, {
                    sameElse: "M/DD/YYYY [at] h:mm a"
                });
                var found = false;
                for (var j = 0; j < events.length; j++) {
                    if (events[j].Title == view[i].Title) {
                        if (moment(events[j].Date).diff(date) != 0) { // Don't show duplicate dates
                            events[j].Day += ", " + date.calendar(null, {
                                sameElse: "M/DD/YYYY [at] h:mm a"
                            });
                        }
                        found = true;
                        break;
                    }
                }
                if (!found) {
                    events.push(view[i])
                }
            }
            func(events);
        });
    });
}
