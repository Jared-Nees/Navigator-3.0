var templateLoader = (function($, host) {
    return {
        loadExtTemplate: function(selector, path) {
            var tmplLoader = $.get(path)
                .success(function(result) {
                    $(result).appendTo($(selector));
                })
                .error(function(result) {
                    console.log(result);
                })

            tmplLoader.complete(function() {
                $(host).trigger("TEMPLATE_LOADED", [path]);
            });
        }
    };
})(jQuery, document);

function openWidgetMenu(element) {
    var widget = $(element).data('widget');
    var callback = function(buttonIndex) {
        setTimeout(function() {
            if (buttonIndex === 1) {
                window.APP_INSTANCE.moveWidgetTop(widget);
            } else if (buttonIndex === 2) {
                window.APP_INSTANCE.toggleWidget(widget, false);
            }
        });
    };
    var options = {
        addCancelButtonWithLabel: 'Cancel',
        androidEnableCancelButton: true,
        winphoneEnableCancelButton: true,
        buttonLabels: ['Move to top', 'Hide this widget']
    };
    if (window.plugins !== undefined && window.plugins.actionsheet !== undefined) {
        window.plugins.actionsheet.show(options, callback);
    } else {
        alert('This feature is not enabled for your device. You can change widgets in the settings');
    }
}
