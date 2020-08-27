function initRecycling(e) {
    if (window.ga) {
        window.ga.trackView('Recycling');
    }
    window.APP_INSTANCE.toggleLoading(true);
    loadRecycling(function(dataSource) {
        $("#recycling-list").kendoMobileListView({
            dataSource: dataSource,
            template: $("#recycling-template").text(),
        });
        window.APP_INSTANCE.toggleLoading(false);
    });
}

function loadRecycling(func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl("/GIS/Layers/?$filter=Name eq 'Recycling'&$top=1"),
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

function loadRecyclingBins(func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl("/GIS/Layers/?$filter=Name eq 'Recycling Bins'&$top=1"),
        dataType: "json",
        success: function(json) {
            json = json.value[0];
            var dataSource = new kendo.data.DataSource({
                data: [json]
            });
            func(dataSource);
        }
    });
}

var recyclingMap;

function findRecyclingBin() {
    loadRecyclingBins(function(dataSource) {
        navigator.geolocation.getCurrentPosition(function(position) {
            var lat = position.coords.latitude;
            var lon = position.coords.longitude;
            dataSource.fetch(function() {
                var features = JSON.parse(this.view()[0].Json).features;
                var icon = this.view()[0].IconContent;
                var nearest = -1;
                var nearestFeature = null;
                var view = this.view().features;
                for (var i = 0; i < features.length; i++) {
                    var diffLon = Math.abs(lon - features[i].geometry.coordinates[0]);
                    var diffLat = Math.abs(lat - features[i].geometry.coordinates[1]);
                    var diffTotal = diffLon + diffLat;
                    if (diffTotal < nearest || nearest < 0) {
                        nearest = diffTotal;
                        nearestFeature = features[i];
                    }
                }
                var mapOptions = {
                    zoom: 17,
                    center: new google.maps.LatLng(37.063614, -76.493538),
                    zoomControl: true,
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                    disableDefaultUI: true,
                    styles: [{
                        "featureType": "administrative",
                        "elementType": "labels.icon",
                        "stylers": [{
                            "visibility": "off"
                        }]
                    }]
                };
                if (!recyclingMap) {
                    var win = $('<div id="recycling-window">').kendoWindow({
                        title: "Nearest Recycling Location",
                        modal: true,
                        width: '90%',
                        height: '70%'
                    }).getKendoWindow();
                    win.bind("open", function() {
                        if (!recyclingMap) {
                            recyclingMap = new google.maps.Map(this.element[0], mapOptions);
                            var pos = {
                                lat: lat,
                                lng: lon
                            };
                            var locationMarker = new google.maps.Marker({
                                map: recyclingMap,
                                position: pos
                            });
                            var locationWindow = new google.maps.InfoWindow;
                            locationWindow.setContent('<b>You are here</b>');
                            locationMarker.addListener('click', function() {
                                locationWindow.open(recyclingMap, locationMarker);
                            });
                            pos = {
                                lat: nearestFeature.geometry.coordinates[1],
                                lng: nearestFeature.geometry.coordinates[0]
                            };
                            var recyclingMarker = new google.maps.Marker({
                                map: recyclingMap,
                                position: pos,
                                icon: "data:image/png;base64," + icon
                            });
                            var recyclingWindow = new google.maps.InfoWindow;
                            recyclingWindow.setContent('<b>' + nearestFeature.properties.Descript + ' (' + nearestFeature.properties.Comment + ')</b><br>Floor: ' + nearestFeature.properties.Floor);
                            recyclingMarker.addListener('click', function() {
                                recyclingWindow.open(recyclingMap, recyclingMarker);
                            });
                            recyclingWindow.open(recyclingMap, recyclingMarker);
                        }
                    });
                } else {
                    var win = $('#recycling-window').getKendoWindow();
                }
                win.center().open();
            });
        }, function(error) {

        });
    });
}
