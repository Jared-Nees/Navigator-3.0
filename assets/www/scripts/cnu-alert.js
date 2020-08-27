var alertDataSource = new kendo.data.DataSource({
    transport: {
        read: "http://www.getrave.com/rss/cnu/channel2"
    },
    schema: {
        type: "xml",
        data: "/rss/channel/item",
        model: {
            fields: {
                title: "title/text()",
                description: "description/text()",
                date: "pubDate/text()"
            }
        },
    }
});

function initAlerts(e) {
    if (window.ga) {
        window.ga.trackView('CNU Alert');
    }
    var template = kendo.template($("#alert-template").html());
    APP_INSTANCE.toggleLoading(true);
    alertDataSource.fetch(function() {
        $("#alert-items").html(kendo.render(template, this.view()));
        APP_INSTANCE.toggleLoading(false);
    });
}

function fetchAlerts(func) {
    alertDataSource.fetch(func);
}

/*
 * For whatever **GOD FORSAKEN** reason, DataSource modeling breaks when XML paths with namespaces are used.
 * Even though there's a dc:date tag with a more standard format, it can't be used. Thanks Telerik.
 */
var convertDate = function(date) {
    value = moment.utc(date, "ddd, D MMM YYYY HH:mm:ss");
    return value.tz("America/New_York").format('MM/DD/YYYY h:mm A z');
}

var convertTitle = function(title) {
    if (title.split("RSS - ").length > 1) {
        return title.split("RSS - ")[1];
    } else {
        return title;
    }
}
