function init(e) {
    if (window.ga) {
        window.ga.trackView('Weather');
    }
    window.APP_INSTANCE.toggleLoading(true);
    $.ajax({
        type: "GET",
        url: "http://alerts.weather.gov/cap/wwaatmget.php?x=VAC700&y=0",
        dataType: "xml",
        success: function(xml) {
            var values = [];
            $(xml).find('entry').each(function() {
                var data = {
                    title: $(this).find('title').first().text(),
                    date: moment($(this).find('updated').text()).tz("America/New_York").format('MM/DD/YYYY')
                };
                values.push(data);
            });
            var dataSource = new kendo.data.DataSource({
                data: values
            });
            $("#weather-list").kendoMobileListView({
                dataSource: dataSource,
                template: $("#weather-template").text(),
            });
            window.APP_INSTANCE.toggleLoading(false);
        }
    });
}
