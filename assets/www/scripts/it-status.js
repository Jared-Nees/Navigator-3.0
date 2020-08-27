function loadITStatus(func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('IT/ITStatus/'),
        dataType: "json",
        success: function(json) {
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log('Error retrieving it status: ' + textStatus + ' (' + errorThrown + ')');
            func(null);
        }
    });
}

function initITStatus(e) {
    if (window.ga) {
        window.ga.trackView('IT Status');
    }
    var statusTemplate = kendo.template($("#status-template").html());
    window.APP_INSTANCE.toggleLoading(true);
    loadITStatus(function(statusDataSource) {
        statusDataSource.fetch(function() {
            var view = statusDataSource.view();
            if (view.length > 0) {
                $("#status-items").kendoMobileListView({
                    dataSource: statusDataSource,
                    template: statusTemplate,
                });
            }
        });
        window.APP_INSTANCE.toggleLoading(false);
    });
}
