var cnuTVDataSource;

function initCNUTV(e, callback) {
    if (window.ga) {
        window.ga.trackView('CNU TV');
    }
    window.APP_INSTANCE.toggleLoading(true);
    $.ajax({
        type: "GET",
        url: "https://www.youtube.com/feeds/videos.xml?channel_id=UCNNacbB0e5SrLWZok7ACdLQ",
        dataType: "xml",
        success: function(xml) {
            var values = [];
            $(xml).find('entry').each(function(index) {
                var data = {
                    title: $(this).find('title').first().text(),
                    video_id: $(this).find('videoId').text(),
                    date: moment($(this).find('published').text()).tz("America/New_York").format('MM/DD/YYYY')
                }
                values.push(data);
                return index < 3;
            });
            cnuTVDataSource = new kendo.data.DataSource({
                data: values
            });
            $("#video-list").kendoMobileListView({
                dataSource: cnuTVDataSource,
                template: $("#video-template").text(),
            });
            window.APP_INSTANCE.toggleLoading(false);
        }
    });
}
