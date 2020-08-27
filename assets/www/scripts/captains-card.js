function loadCaptainsCardMerchants(func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('CaptainsCard/Merchants/'),
        dataType: "json",
        success: function(json) {
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        }
    });
}

function initCaptainsCard() {
    if (window.ga) {
        window.ga.trackView('Captains Card');
    }
    window.APP_INSTANCE.toggleLoading(true);
    loadCaptainsCardMerchants(function(captainsCardDataSource) {
        $("#merchant-items").kendoMobileListView({
            dataSource: captainsCardDataSource,
            template: kendo.template($("#merchant-template").html()),
        });
        window.APP_INSTANCE.toggleLoading(false);
    });
}
