var map;
var layerDataSource;
var layersToggled = [];
var infoWindows = {};

function init() {
    if (window.ga) {
        window.ga.trackView('Campus Map');
    }
    window.APP_INSTANCE.toggleLoading(true);
    loadLayers(function(dataSource) {
        layerDataSource = dataSource;
        dataSource.fetch(function() {
            var data = this.data();
            for (var i = 0; i < data.length; i++) {
                $("#buttons").append(kendo.render(kendo.template($("#layer-button-template").html()), [data[i]]));
            }
            $(".layer-button").kendoMobileButton();
        })
        window.APP_INSTANCE.toggleLoading(false);
    });
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
    map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
    var infoWindow = new google.maps.InfoWindow;
    infoWindow.setContent('<b>You are here</b>');
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };
            var marker = new google.maps.Marker({
                map: map,
                position: pos
            });
            marker.addListener('click', function() {
                infoWindow.open(map, marker);
            });
        }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
        });
    }
    $('#map-canvas').each(function() {
        var p = $(this).parent();
        $(this).height(p.height() - ($(this).offset().top - p.offset().top));
    });
}

function loadLayers(func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('GIS/Layers/?$filter=ShowOnMap eq true'),
        dataType: "json",
        success: function(json) {
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        }
    });
}

function toggleLayer(element) {
    var layerID = $(element).data('layer');
    var index = layersToggled.indexOf(layerID);
    if (index == -1) {
        layerDataSource.fetch(function() {
            var data = this.data();
            for (var i = 0; i < data.length; i++) {
                var layer = data[i];
                if (layerID == layer.Id) {
                    if (window.ga) {
                        window.ga.trackEvent('Campus Map', 'Toggle Layer', layer.Name);
                    }
                    var features = map.data.addGeoJson(JSON.parse(layer.Json));
                    var icon = "data:image/png;base64," + layer.IconContent;
                    for (var i = 0; i < features.length; i++) {
                        features[i].setProperty('layer', layerID);
                        features[i].setProperty('icon', icon);
                    }
                    map.data.setStyle(function(feature) {
                        return {
                            icon: feature.getProperty('icon')
                        };
                    });
                    map.data.addListener('click', function(event) {
                        var feature = event.feature;
                        if (infoWindows[feature.getProperty('Name')]) {
                            return;
                        }
                        var content = '<h3 style="margin: 0">' + feature.getProperty('Name') + '</h3>';
                        var floors = 0;
                        // General Locations
                        if (feature.getProperty('Floor_1')) {
                            content += '<strong>1st Floor</strong>: ' + feature.getProperty('Floor_1');
                            floors++;
                        }
                        if (feature.getProperty('Floor_2')) {
                            if (floors > 0) {
                                content += '<br>';
                            }
                            content += '<strong>2nd Floor</strong>: ' + feature.getProperty('Floor_2');
                            floors++;
                        }
                        if (feature.getProperty('Floor_3')) {
                            if (floors > 0) {
                                content += '<br>';
                            }
                            content += '<strong>3rd Floor</strong>: ' + feature.getProperty('Floor_3');
                            floors++;
                        }
                        if (floors == 0) {
                            if (feature.getProperty('Floor')) {
                                // GPS locations
                                content += 'Floor ' + feature.getProperty('Floor');
                            } else if (feature.getProperty('Content') != null) {
                                content = '<h3 style="margin: 0">' + feature.getProperty('Name') + '</h3>' + feature.getProperty('Content');
                            } else {
                                content = feature.getProperty('Name');
                            }
                        }

                        if (feature.getProperty('Comment') != null) {
                            content += '<br><i>' + feature.getProperty('Comment') + '</i>';
                        }
                        var infowindow = new google.maps.InfoWindow({
                            content: content
                        });
                        infowindow.setPosition(feature.getGeometry().get());
                        infowindow.setOptions({
                            pixelOffset: new google.maps.Size(0, -30)
                        });
                        infowindow.open(map);
                        infoWindows[feature.getProperty('Name')] = infowindow;
                        google.maps.event.addListener(infowindow, 'closeclick', function() {
                            infoWindows[feature.getProperty('Name')] = null;
                        });
                    });
                    layersToggled.push(layerID);
                    $(element).addClass('button-enabled');
                }
            }
        });
    } else {
        map.data.forEach(function(feature) {
            if (feature.getProperty('layer') == layerID) {
                map.data.remove(feature);
            }
        });
        var features = Object.keys(infoWindows);
        for (var i = 0; i < features.length; i++) {
            if (infoWindows[features[i]]) {
                infoWindows[features[i]].close();
                infoWindows[features[i]] = null;
            }
        }
        layersToggled.splice(index, 1);
        $(element).removeClass('button-enabled');
    }
}
