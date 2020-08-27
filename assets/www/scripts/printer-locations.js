function initPrinters(e) {
    if (window.ga) {
        window.ga.trackView('Printers');
    }
    window.APP_INSTANCE.toggleLoading(true);
    loadPrinters(function(dataSource) {
        $("#printer-list").kendoMobileListView({
            dataSource: dataSource,
            template: $("#printer-template").text(),
        });
        window.APP_INSTANCE.toggleLoading(false);
    });
}

function loadPrinters(func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl("/GIS/Layers/?$filter=Name eq 'Printers'&$top=1"),
        dataType: "json",
        success: function(json) {
            json = JSON.parse(json.value[0].Json);
            var values = [];
            for (var x in json.features) {
                var feature = json.features[x];
                var value = {
                    Name: feature.properties.Name,
                };
                if ('Floor_1' in feature.properties && feature.properties.Floor_1 !== null && feature.properties.Floor_1 !== '<Null>') {
                    value.Floor_1 = feature.properties.Floor_1.split(", ");
                }
                if ('Floor_2' in feature.properties && feature.properties.Floor_2 !== null && feature.properties.Floor_2 !== '<Null>') {
                    value.Floor_2 = feature.properties.Floor_2.split(", ");
                }
                if ('Floor_3' in feature.properties && feature.properties.Floor_3 !== null && feature.properties.Floor_3 !== '<Null>') {
                    value.Floor_3 = feature.properties.Floor_3.split(", ");
                }
                values.push(value);
            }
            var dataSource = new kendo.data.DataSource({
                data: values
            });
            func(dataSource);
        }
    });
}
