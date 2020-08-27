function initTV(e) {
    window.APP_INSTANCE.toggleLoading(true);
    loadTV(function(dataSource) {
        $("#tv-list").kendoMobileListView({
            dataSource: dataSource,
            template: $("#tv-template").text(),
            filterable: {
                field: "name",
                operator: "contains",
                ignoreCase: true
            }
        });
        window.APP_INSTANCE.toggleLoading(false);
    });
}

function loadTV(func) {
    if (window.ga) {
        window.ga.trackView('TV Guide');
    }
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('TV/Channels/'),
        dataType: "json",
        success: function(json) {
            var values = [];
            for (var x in json.value) {
                var channel = json.value[x];
                var value = {
                    'name': channel.Name,
                    'number': channel.Number
                };
                values.push(value);
            }
            var dataSource = new kendo.data.DataSource({
                data: values
            });
            func(dataSource);
        }
    });
}
