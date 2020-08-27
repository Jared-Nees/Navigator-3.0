function loadPrograms(func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Navigator/Programs/'),
        dataType: "json",
        success: function(json) {
            for (var x in json.value) {
                json.value[x]['Color'] = '#' + ('000000' + (json.value[x]['Argb'] & 0xFFFFFF).toString(16)).slice(-6);
            }
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log('Error retrieving programs: ' + textStatus + ' (' + errorThrown + ')');
            func(null);
        }
    });
}

function loadProgram(programId, func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Navigator/Programs(' + programId + ')/'),
        dataType: "json",
        success: function(json) {
            for (var x in json.value) {
                json.value[x]['Color'] = '#' + ('000000' + (json.value[x]['Argb'] & 0xFFFFFF).toString(16)).slice(-6);
            }
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log('Error retrieving programs: ' + textStatus + ' (' + errorThrown + ')');
            func(null);
        }
    });
}

function loadProgramSegments(programId, func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Navigator/Programs(' + programId + ')/Segments/'),
        dataType: "json",
        success: function(json) {
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log('Error retrieving program segments: ' + textStatus + ' (' + errorThrown + ')');
            func(null);
        }
    });
}

function loadProgramEvents(programId, func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Navigator/Programs(' + programId + ')/Events/'),
        dataType: "json",
        success: function(json) {
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log('Error retrieving program events: ' + textStatus + ' (' + errorThrown + ')');
            func(null);
        }
    });
}

function loadSegmentSegments(segmentId, func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Navigator/Segments(' + segmentId + ')/Segments/'),
        dataType: "json",
        success: function(json) {
            console.debug(json)
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log('Error retrieving program segment segments: ' + textStatus + ' (' + errorThrown + ')');
            func(null);
        }
    });
}

function loadSegmentEvents(segmentId, func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Navigator/Segments(' + segmentId + ')/Events/'),
        dataType: "json",
        success: function(json) {
            for (var x in json.value) {
                if (json.value[x]['StartTime'] != null) {
                    json.value[x]['StartTime'] = moment(json.value[x]['StartTime']).format('h:mm a')
                }
                if (json.value[x]['EndTime'] != null) {
                    json.value[x]['EndTime'] = moment(json.value[x]['EndTime']).format('h:mm a')
                }
            }
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log('Error retrieving program segment events: ' + textStatus + ' (' + errorThrown + ')');
            func(null);
        }
    });
}
