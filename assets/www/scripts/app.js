if (!String.prototype.includes) {
    String.prototype.includes = function(search, start) {
        'use strict';
        if (typeof start !== 'number') {
            start = 0;
        }

        if (start + search.length > this.length) {
            return false;
        } else {
            return this.indexOf(search, start) !== -1;
        }
    };
}

(function() {
    var app;

    var settings = [{
            'id': 'show-latest-sport',
            'title': 'Show recent sports automatically',
            'description': 'Skip to the latest sports game when browsing athletics',
            'type': 'boolean',
            'enabled': true,
        },
        {
            'id': 'wcnu-wifi-only',
            'title': 'WCNU WiFi only',
            'description': 'Stream WCNU Radio over WiFi connections only',
            'type': 'boolean',
            'enabled': true,
        },
        {
            'id': 'show-error-message',
            'title': 'Show error messages',
            'description': 'Get error information if one occurs',
            'type': 'boolean',
            'enabled': true,
        },
        {
            'id': 'dining-hall-menu-count',
            'title': 'Dining Hall Menus',
            'description': 'Number of days to show dining hall menus',
            'type': 'int',
            'value': '2',
            'valueMin': '1',
            'valueMax': '7',
        },
    ];

    var widgets = [{
            'id': 'dining',
            'title': 'Dining',
            'path': 'views/widgets/dining.html',
            'description': 'View upcoming meals in the dining halls',
            'order': 1,
            'enabled': true,
        },
        {
            'id': 'events',
            'title': 'Campus Events',
            'path': 'views/widgets/events.html',
            'description': 'The daily events happening at CNU',
            'order': 2,
            'enabled': true,
        },
        {
            'id': 'athletics',
            'title': 'Athletics',
            'path': 'views/widgets/sports.html',
            'description': 'See upcoming games and match outcomes',
            'order': 3,
            'enabled': true,
        },
        {
            'id': 'fitness',
            'title': 'Fitness',
            'path': 'views/widgets/fitness.html',
            'description': 'Get daily fitness tips and class schedules',
            'order': 4,
            'enabled': true,
        },
        {
            'id': 'ferguson',
            'title': 'Ferguson Center',
            'path': 'views/widgets/ferguson.html',
            'description': 'See upcoming performances',
            'order': 5,
            'enabled': true,
        },
        {
            'id': 'weather',
            'title': 'Weather',
            'path': 'views/widgets/weather.html',
            'description': 'See local weather forecasts',
            'order': 6,
            'enabled': false,
        },
        {
            'id': 'wcnu',
            'title': 'WCNU',
            'path': 'views/widgets/wcnu.html',
            'description': 'See daily show schedules',
            'order': 7,
            'enabled': false,
        }
    ];

    var DEFAULT_API_BASE = 'https://navigator.cnu.edu/NDMS';
    //var DEFAULT_API_BASE = 'http://navigatordev.cnu.edu/NDMS';
    //var DEFAULT_API_BASE = 'http://localhost:54926';
    var API_BASE = DEFAULT_API_BASE;
    var API_PATH = '/API/v1/';

    function setAPIBase(value) {
        API_BASE = value;
        console.log('API base set to %s', value);
    }

    function resetAPIBase() {
        setAPIBase(DEFAULT_API_BASE);
    }

    function getAPIBase() {
        return API_BASE;
    }

    function apiOnline(host) {
        var connection = navigator.connection.type;
        console.log('Connection Type: %s', connection);
        return connection != Connection.NONE;
        // Code for actual endpoint connection testing sometimes times out and leaves app offline
        /*window.APP_INSTANCE.toggleLoading(true);
        if (connection == Connection.NONE) {
          return false;
        } else {
          var xhr = new (window.ActiveXObject || XMLHttpRequest )( "Microsoft.XMLHTTP");
          var status;
          xhr.open("HEAD", API_BASE, false);
          try {
            xhr.send();
            window.APP_INSTANCE.toggleLoading(false);
            return ( xhr.status >= 200 && (xhr.status < 300 || xhr.status === 304) );
          } catch (error) {
            window.APP_INSTANCE.toggleLoading(false);
            return false;
          }
        }*/
    }

    function getAPIUrl(string) {
        return API_BASE + API_PATH + string;
    }

    function isFirstRun() {
        var firstRun = localStorage.getItem("settings.first-run");
        console.log("First run: " + firstRun);
        if (firstRun == null || firstRun === "true") {
            return true;
        } else {
            return false;
        }
    }

    function registerFirstRun(value) {
        var firstRun = (typeof value !== 'undefined') ? value : false;
        console.log('First run set to ' + firstRun);
        localStorage.setItem("settings.first-run", firstRun);
    }

    function reset() {
        localStorage.clear();
        window.location = 'index.html';
    }

    function toggleWidget(widget, enabled) {
        var widgetOrder = getWidgetOrder();
        var newOrder = [];
        console.log('Toggling widget %s enabled: %s', widget, enabled);
        // Just find the widget and set its enabled value
        for (var i = 0; i < widgets.length; i++) {
            var value = widgets[i];
            if (value.id === widget) {
                value.enabled = enabled;
                if (window.ga) {
                    window.ga.trackEvent('Widgets', 'Toggle Widget', value.title, enabled);
                }
            }
            newOrder.push(value);
        }
        console.log('New order: %s', newOrder);
        // A bit of first-timer instruction
        if (!enabled) {
            var hasDisabled = localStorage.getItem("settings.has-disabled-widget");
            if (hasDisabled === null || hasDisabled === "false") {
                alert('You can re-enable widgets at any time in the settings.');
                localStorage.setItem("settings.has-disabled-widget", true);
            }
        }

        setWidgetOrder(newOrder);
        reloadWidgets();
        // If home has been opened, refresh it
        if (typeof reloadHomeScreen !== "undefined") {
            reloadHomeScreen();
        }
    }

    function moveWidgetTop(widget) {
        var widgetOrder = getWidgetOrder();
        var newOrder = [];
        var index = 1;
        console.log('Setting widget %s to top', widget);
        // First, find the widget we're putting at the top and set it to order 1
        for (var i = 0; i < widgets.length; i++) {
            var value = widgets[i];
            if (value.id === widget) {
                value.order = index;
                if (window.ga) {
                    window.ga.trackEvent('Widgets', 'Move to top', value.title);
                }
                newOrder.push(value);
                break;
            }
        }
        index += 1;
        // Now loop through all the others in their existing order and re-index them
        app.widgetDataSource.fetch(function() {
            var view = this.data();
            for (var i = 0; i < view.length; i++) {
                var value = view[i];
                if (value.id == widget) {
                    continue;
                }
                value.order = index;
                // Stupid kendo datasource object has all this extra crap in it
                var obj = {
                    'id': value.id,
                    'title': value.title,
                    'path': value.path,
                    'description': value.description,
                    'order': value.order,
                    'enabled': value.enabled,
                };
                index += 1;
                newOrder.push(obj);
            }
            console.log('New order: %s', newOrder);
            setWidgetOrder(newOrder);
            reloadWidgets();
            // If home has been opened, refresh it
            if (typeof reloadHomeScreen !== "undefined") {
                reloadHomeScreen();
            }
        });
    }

    function reloadWidgets() {
        window.APP_INSTANCE.widgetDataSource = loadWidgets();
    }

    function getWidgetOrder() {
        var widgetOrder = localStorage.getItem("settings.widget-order");
        if (widgetOrder === null) {
            setWidgetOrder(widgets);
        }
        var data = localStorage.getItem("settings.widget-order");
        try {
            widgetOrder = JSON.parse(data);
        } catch (ex) {
            console.warn('Malformed widget data: %s', data);
            console.warn('Resetting values to default.');
            widgetOrder = setWidgetOrder(widgets);
        }
        return widgetOrder;
    }

    function setWidgetOrder(order) {
        localStorage.setItem("settings.widget-order", JSON.stringify(order));
        return order;
    }

    function loadWidgets() {
        var widgetOrder = getWidgetOrder();
        for (var i = 0; i < widgets.length; i++) {
            var widget = widgets[i];
            for (var j = 0; j < widgetOrder.length; j++) {
                var order = widgetOrder[j];
                if (widget.id === order.id) {
                    if ('order' in order) {
                        widget.order = order.order;
                    }
                    if ('enabled' in order) {
                        widget.enabled = order.enabled;
                    }
                    break;
                }
            }
        }
        var widgetDataSource = new kendo.data.DataSource({
            data: widgets,
            sort: {
                field: "order",
                dir: "asc"
            },
            schema: {
                model: {
                    id: "id",
                    fields: {
                        title: {
                            type: "string"
                        },
                        path: {
                            type: "string"
                        },
                        description: {
                            type: "string"
                        },
                        order: {
                            type: "number"
                        },
                        enabled: {
                            type: "boolean"
                        },
                    }
                }
            }
        });
        return widgetDataSource;
    }

    function loadSettings() {
        for (var i = 0; i < settings.length; i++) {
            var setting = settings[i];
            var saved = localStorage.getItem("settings." + setting.id);
            if (saved !== null) {
              if (setting.type == "boolean") {
                setting.enabled = saved;
              } else if (setting.type == "int") {
                setting.value = saved;
              }
            }
        }
        var settingsDataSource = new kendo.data.DataSource({
            data: settings,
            schema: {
                model: {
                    id: "id",
                    fields: {
                        title: {
                            type: "string"
                        },
                        description: {
                            type: "string"
                        },
                        type: {
                            type: "string"
                        },
                        enabled: {
                            type: "boolean"
                        },
                        value: {
                            type: "string"
                        },
                        valueMax: {
                            type: "string"
                        },
                        valueMin: {
                            type: "string"
                        },
                    }
                }
            }
        });
        return settingsDataSource;
    }

    function toggleSetting(setting, enabled) {
        console.log('Toggling setting %s enabled: %s', setting, enabled);
        if (window.ga) {
            window.ga.trackEvent('Settings', 'Toggle Setting', setting, enabled);
        }
        for (var i = 0; i < settings.length; i++) {
            if (settings.id === setting) {
                setting.enabled = enabled;
            }
        }
        localStorage.setItem("settings." + setting, enabled);
    }

    function setSetting(setting, value) {
        console.log('Setting setting %s to: %s', setting, value);
        if (window.ga) {
            window.ga.trackEvent('Settings', 'Set Setting', setting, value);
        }
        for (var i = 0; i < settings.length; i++) {
            if (settings.id === setting) {
                setting.value = value;
            }
        }
        localStorage.setItem("settings." + setting, value);
    }

    function getSetting(id) {
        for (var i = 0; i < settings.length; i++) {
            var setting = settings[i];
            if (setting.id == id) {
                var saved = localStorage.getItem("settings." + setting.id);
                if (saved != null) {
                    if (setting.type == "boolean") {
                        console.log('Setting %s from storage: %s', id, saved === 'true');
                        return saved === 'true';
                    } else {
                        console.log('Setting %s from storage: %s', id, saved);
                        return saved;
                    }
                }
                console.log('Setting %s from default: %s', id, setting.enabled);
                return setting.enabled;
            }
        }
        console.warn('Setting %s not found', id);
        return false;
    }

    function applyError(element, object) {
        $(element).html('Error loading ' + object);
    }

    document.addEventListener('deviceready', function() {
        // Keep logging history
        var log = console.log;
        var info = console.info;
        var warn = console.warn;
        window.logs = [];
        console.log = function(message) {
            var args = Array.prototype.slice.call(arguments);
            args = args.slice(1, args.length);
            var output = "LOG: " + message
            if (args.length > 0) {
                output += ", " + JSON.stringify(args);
            }
            window.logs.push(output);
            log.apply(console, arguments);
        };
        console.info = function(message) {
            var args = Array.prototype.slice.call(arguments);
            args = args.slice(1, args.length);
            var output = "INFO: " + message
            if (args.length > 0) {
                output += ", " + JSON.stringify(args);
            }
            window.logs.push(output);
            info.apply(console, arguments);
        };
        console.warn = function(message) {
            var args = Array.prototype.slice.call(arguments);
            args = args.slice(1, args.length);
            var output = "WARN: " + message
            if (args.length > 0) {
                output += ", " + JSON.stringify(args);
            }
            window.logs.push(output);
            warn.apply(console, arguments);
        };

        var APP_ID = "dlqtqex7gcbn2632";
        var ANALYTICS_ID = "UA-76813037-1";
        if (window.feedback) {
            console.log('Initializing feedback');
            window.feedback.initialize(APP_ID);
        }
        if (window.ga) {
            console.log('Initializing analytics');
            window.ga.startTrackerWithId(ANALYTICS_ID, 30);
            cordova.getAppVersion(function(version) {
                console.log('Set analytics version: ' + version);
                window.ga.setAppVersion(version)
            });
        }

        $.getJSON("bower_components/moment-timezone/data/packed/latest.json", function(json) {
            moment.tz.load(json);
        });

        navigator.splashscreen.hide();
        StatusBar.overlaysWebView(false);
        StatusBar.backgroundColorByName('black');
        app = new kendo.mobile.Application(document.body, {
            skin: 'material',
            initial: 'views/home.html',
            layout: 'secondary',
            transition: 'slide',
            init: function() {
                //don't do this for android, causes more issues than it fixes
                kendo.UserEvents.defaultThreshold(kendo.support.mobileOS.device === 'android' ? 0 : 20);
            }
        });

        if (typeof ThreeDeeTouch !== 'undefined') {
            ThreeDeeTouch.configureQuickActions([{
                    type: 'dining',
                    title: "Regattas Menu", // Using the apostrophe causes an error
                },
                {
                    type: 'dining',
                    title: "The Commons Menu",
                }
            ]);
            ThreeDeeTouch.onHomeIconPressed = function(payload) {
                if (payload.type == 'dining') {
                    if (payload.title == "Regattas Menu") {
                        window.APP_INSTANCE.navigate("views/dining.html?menu=Regatta%27s")
                    }
                    if (payload.title == "The Commons Menu") {
                        window.APP_INSTANCE.navigate("views/dining.html?menu=The Commons")
                    }
                }
            }
        }

        // Set up settings
        app.widgetDataSource = loadWidgets();
        app.settingsDataSource = loadSettings();
        // End settings

        if (navigator.notification) {
            window.alert = function(message) {
                navigator.notification.alert(
                    message,
                    null,
                    "Navigator",
                    'OK'
                );
            };
        }

        window.onerror = function(error, url, line, column, trace) {
            if (window.ga) {
                window.ga.trackException("Message: " + error + ", File: " + url + ", Line " + line + " Column " + column + ". Trace: " + trace.stack, true)
            }
            window.logs.push("Error: Message: " + error + ", File: " + url + ", Line " + line + " Column " + column + ". Trace: " + trace.stack);
            var message = "Something went wrong, sorry about that. This error has been reported and we'll try and fix it as soon as we can! You can shake your device at any time to send feedback.";
            if (window.APP_INSTANCE.getSetting("show-error-message")) {
                message += "\n\n";
                message += "If you see a developer, tell them something's wrong with the " + url + " thing on line " + line + " (" + error + ")";
            }
            navigator.notification.alert(
                message,
                function() {
                    //window.location = 'index.html';
                },
                "Whoops!",
                'OK'
            );
        }

        // TODO maybe these could be moved to a common/helper file
        app.reloadWidgets = reloadWidgets;
        app.toggleWidget = toggleWidget;
        app.toggleSetting = toggleSetting;
        app.setSetting = setSetting;
        app.getSetting = getSetting;
        app.moveWidgetTop = moveWidgetTop;
        app.getAPIUrl = getAPIUrl;
        app.getAPIBase = getAPIBase;
        app.setAPIBase = setAPIBase;
        app.resetAPIBase = resetAPIBase;
        app.applyError = applyError;
        app.apiOnline = apiOnline;
        app.isFirstRun = isFirstRun;
        app.registerFirstRun = registerFirstRun;
        app.reset = reset;

        app.setTitle = function(title) {
            app.view().header.find(".km-navbar").data("kendoMobileNavBar").title(title);
        };

        app.getTitle = function() {
            return app.view().header.find(".km-navbar").find('.km-view-title').find('span').text();
        };

        app.loadingId = -1;
        app.toggleLoading = function(value) {
            $('.km-loader').css('display', value ? 'block' : 'none');
            if (!value && app.loadingId != -1) {
                // Remove timeout because loading has stopped
                clearTimeout(app.loadingId);
                app.loadingId = -1;
            }
            if (value) {
                // Start timeout function to stop loading if it goes on too long
                var caller = arguments.callee.caller;
                app.loadingId = setTimeout(function() {
                    // Check if we're still loading.
                    if ($('.km-loader').css('display') == 'none') {
                        return;
                    }
                    console.warn("Connection Timeout: Url: " + window.location + "Calling function: " + caller);
                    // Stop loading
                    $('.km-loader').css('display', 'none');
                    navigator.notification.alert(
                        "There has been an error loading this data. This error has been reported.",
                        null,
                        "Error Loading",
                        'OK'
                    );
                    if (window.ga) {
                        window.ga.trackException("Message: LOAD TIMEOUT, Url: " + window.location + ", Calling function: " + caller, false);
                    }
                }, 60 * 1000);
            }
        };

        window.APP_INSTANCE = app;

        window.addEventListener("statusTap", function() {
            APP_INSTANCE.scroller().animatedScrollTo(0, 0);
        });

        /*function onPushNotificationReceived(e) {
            alert(JSON.stringify(e));
        };
        var everlive = new Everlive({
            apiKey: '7VCiYUgKagJWf2YT',
            scheme: 'http'
        });

        var devicePushSettings = {
            iOS: {
                badge: 'true',
                sound: 'true',
                alert: 'true'
            },
            android: {
                projectNumber: '1001611307629'
            },
            wp8: {
                channelName: 'EverlivePushChannel'
            },
            notificationCallbackIOS: onPushNotificationReceived,
            notificationCallbackAndroid: onPushNotificationReceived,
            notificationCallbackWP8: onPushNotificationReceived
        };

        everlive.push.register(devicePushSettings, function() {
            //alert("Successful registration in Backend Services. You are ready to receive push notifications.");
        }, function(err) {
            console.log(err);
            alert("Error: " + err.message);
        }); */

    }, false);

}());
