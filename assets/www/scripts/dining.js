function loadDiningLocations(func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Dining/DiningLocations/'),
        dataType: "json",
        success: function(json) {
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        }
    });
}

function loadDiningHours(locationId, func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Dining/DiningLocations(' + locationId + ')/DiningHours/'),
        dataType: "json",
        success: function(json) {
            for (var x in json.value) {
                json.value[x].Description = parseDescription(json.value[x].Description)
            }
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        }
    });
}

function loadDiningMenus(locationId, func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Dining/DiningLocations(' + locationId + ')/DiningMenus/'),
        dataType: "json",
        success: function(json) {
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        }
    });
}

function loadDiningMenuItems(menuId, func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Dining/DiningMenus(' + menuId + ')/DiningItems/'),
        dataType: "json",
        success: function(json) {
            for (var x in json.value) {
                json.value[x].Price = parseDescription(json.value[x].Price);
                json.value[x].Description = parseDescription(json.value[x].Description);
            }
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        }
    });
}

function loadDiningHallMenus(locationId, func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Dining/DiningLocations(' + locationId + ')/DiningHallMenus/'),
        dataType: "json",
        success: function(json) {
            var data = [];
            var advance = window.APP_INSTANCE.getSetting('dining-hall-menu-count');
            var count = advance && isInt(advance) ? parseInt(advance) - 1 : 1;
            if (count < 0) {
              // Sanity check
              count = 0;
            }
            var minTime = moment().startOf('day');
            var maxTime = moment(minTime).add(count, 'days').endOf('day');
            for (var x in json.value) {
              if (moment(json.value[x]['StartTime']).isBetween(minTime, maxTime)) {
                json.value[x]['StartDateTimeFormatted'] = moment(json.value[x]['StartTime']).calendar(null, {
                    sameDay: '[Today], LT',
                    nextDay: '[Tomorrow], LT',
                    nextWeek: 'dddd, LT',
                    lastDay: '[Yesterday], LT',
                    lastWeek: '[Last] dddd, LT',
                    sameElse: 'DD/MM/YYYY, LT'
                });
                json.value[x]['StartTimeFormatted'] = moment(json.value[x]['StartTime']).format('h:mm a');
                json.value[x]['EndTimeFormatted'] = moment(json.value[x]['EndTime']).format('h:mm a');
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

function isInt(value) {
  return !isNaN(value) &&
         parseInt(Number(value)) == value &&
         !isNaN(parseInt(value, 10));
}

function fetchDiningHallMenus(func) {
    loadDiningLocations(function(locationsDataSource) {
        locationsDataSource.fetch(function() {
            var view = this.view();
            var regattasId;
            var commonsId;
            for (var i = 0; i < view.length; i++) {
                if (view[i].Name == "Regatta's") {
                    regattasId = view[i].Id;
                }
                if (view[i].Name == "The Commons") {
                    commonsId = view[i].Id;
                }
            }
            var menus = {};
            loadDiningHallMenus(regattasId, function(menusDataSource) {
                menusDataSource.fetch(function() {
                    var view = this.view();
                    var menu = [];
                    for (var i = 0; i < view.length; i++) {
                        if (moment(view[i].StartTime).isSame(moment(), 'day')) {
                            menu.push(view[i]);
                        }
                    }
                    menus["Regatta's"] = menu;
                    loadDiningHallMenus(commonsId, function(menusDataSource) {
                        menusDataSource.fetch(function() {
                            var view = this.view();
                            var menu = [];
                            for (var i = 0; i < view.length; i++) {
                                if (moment(view[i].StartTime).isSame(moment(), 'day')) {
                                    menu.push(view[i]);
                                }
                            }
                            menus["The Commons"] = menu;
                            func(menus);
                        })
                    });
                })
            });
        });
    });
}

function parseDescription(description) {
    description = description.replace(/(?:\r\n|\r|\n)/g, '<br />');
    return description;
}

function showDiningDescription(link) {
    var title = $(link).data('name');
    var data = parseDescription($(link).data('description'));
    var win = $('<div class="description-scroll">').kendoWindow({
        title: title,
        modal: true,
        width: '90%',
        height: '70%',
    }).getKendoWindow();

    win.content(data);
    win.center().open();
}
