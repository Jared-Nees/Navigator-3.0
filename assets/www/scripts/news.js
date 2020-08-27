function loadArticles(query, func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('News/Articles/' + (query != null ? query : '')),
        dataType: "json",
        success: function(json) {
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log('Error retrieving articles: ' + textStatus + ' (' + errorThrown + ')');
            func(null);
        }
    });
}

function initCaptainsLog(e, callback) {
    if (window.ga) {
        window.ga.trackView('News');
    }
    window.APP_INSTANCE.toggleLoading(true);
    loadArticles(null, function(articleDataSource) {
        window.APP_INSTANCE.toggleLoading(false);
        if (articleDataSource) {
            $("#article-list").kendoMobileListView({
                dataSource: articleDataSource,
                template: $("#article-template").text(),
            });
        } else {
            window.APP_INSTANCE.applyError($("#article-list"), "articles");
        }
    });
}
