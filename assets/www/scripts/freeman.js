var scheduleDataSource;
var classDataSource;
var instructorDataSource;
var hoursDataSource;
var tipDataSource;

function initFreeman() {
    if (window.ga) {
        window.ga.trackView('Freeman Center');
    }
    loadSchedule(function(scheduleDataSource, classDataSource, instructorDataSource) {
        this.scheduleDataSource = scheduleDataSource;
        this.classDataSource = classDataSource;
        this.instructorDataSource = instructorDataSource;
        loadHours(function(hoursDataSource) {
            this.hoursDataSource = hoursDataSource;
            initSchedule();
        });
    });
}

function initSchedule() {
  if (scheduleDataSource) {
      $("#freeman-schedule-list").kendoMobileListView({
          dataSource: scheduleDataSource,
          template: $("#schedule-template").html(),
          dataBound: function() {
              if (this.dataSource.data().length == 0) {
                  $("#freeman-schedule-list").append("<center><h3>No upcoming classes</h3></center>");
              }
          },
          fixedHeaders: true
      });
  } else {
      window.APP_INSTANCE.applyError('#freeman-schedule-list', 'Freeman schedule')
  }
}

var freemanTabsLoaded = 0;

function initClasses() {
  if (classDataSource) {
    $("#freeman-classes-list").kendoMobileListView({
        dataSource: classDataSource,
        template: $("#class-template").html(),
        dataBound: function() {
            if (this.dataSource.data().length == 0) {
                $("#freeman-classes-list").append("<center><h3>No class information</h3></center>");
            }
        },
    });
  } else {
      window.APP_INSTANCE.applyError('#freeman-classes-list', 'Freeman schedule')
  }
}

function initInstructors() {
  if (instructorDataSource) {
    $("#freeman-instructors-list").kendoMobileListView({
        dataSource: instructorDataSource,
        template: $("#instructor-template").html(),
        dataBound: function() {
            if (this.dataSource.data().length == 0) {
                $("#freeman-instructors-list").append("<center><h3>No instructor information</h3></center>");
            }
        },
    });
  } else {
      window.APP_INSTANCE.applyError('#freeman-instructors-list', 'Freeman schedule')
  }
}

function initHours() {
  if (hoursDataSource) {
    $("#freeman-hours-list").kendoMobileListView({
        dataSource: hoursDataSource,
        template: $("#hours-template").html(),
        dataBound: function() {
            if (this.dataSource.data().length == 0) {
                $("#freeman-hours-list").append("<center><h3>See the current hours of operation: <a class= onclick=\"window.open('http://cnu.edu/freemancenter/fitness/hours/', '_blank', 'location=yes');\"></h3></center>");
            }
        },
    });
  } else {
      window.APP_INSTANCE.applyError('#freeman-hours-list', 'Freeman schedule')
  }
}

function showFreemanTab() {
  freemanTabsLoaded++;
}

function showScheduleTab() {
  // If this is the first tab load, we're not going to count it since it isn't pushed into history abnormally
  if (freemanTabsLoaded > 0) {
    freemanTabsLoaded++;
  }
}

function freemanBackClick(e) {
  /*
  Okay.... bear with me:
  Kendo thinks it's an excellent idea for tab navigation to be pushed to the history stack
  so that when old people hit the back button it doesn't navigate them unexpectedly off page
  instead it navigates to the last hash/tab they were at. In theory this works well for
  browsers where the back button behavior is somewhat ambiguous, but here in the app the back
  button means go back; if the user wanted to go back to the last tab they would just click
  the button on the tab bar.
  SO since there's no way to disable this behavior (because telerik knows what's best for your users)
  we are going to keep track of how many additional tabs have been loaded and subvert this behavior
  by skipping over that many history entries when the user hits the back button.
  If you don't get it, remove this method and test out the annoyingly abnnormal
  back button behavior that results.
  */
  if (freemanTabsLoaded > 0) {
    var skip = freemanTabsLoaded + 1;
    if (window.history.length >= skip) {
      e.preventDefault();
      window.history.go(-skip);
    }
  }
  freemanTabsLoaded = 0;
}

function loadTips(func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Freeman/FitnessTips/'),
        dataType: "json",
        success: function(json) {
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log('Error retrieving fitness tips: ' + textStatus + ' (' + errorThrown + ')');
            func(null);
        }
    });
}

function loadClasses(func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Freeman/Classes/'),
        dataType: "json",
        success: function(json) {
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log('Error retrieving fitness classes: ' + textStatus + ' (' + errorThrown + ')');
            func(null);
        }
    });
}

function loadInstructors(func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Freeman/Instructors/'),
        dataType: "json",
        success: function(json) {
            var dataSource = new kendo.data.DataSource({
                data: json.value
            });
            func(dataSource);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log('Error retrieving fitness instructors: ' + textStatus + ' (' + errorThrown + ')');
            func(null);
        }
    });
}

function loadSchedule(func) {
    window.APP_INSTANCE.toggleLoading(true);
    loadClasses(function(classDataSource) {
        loadInstructors(function(instructorDataSource) {
            if (classDataSource && instructorDataSource) {
                classDataSource.fetch(function() {
                    var classes = this.data();
                    instructorDataSource.fetch(function() {
                        var instructors = this.data();
                        $.ajax({
                            type: "GET",
                            url: window.APP_INSTANCE.getAPIUrl('Freeman/Schedules/'),
                            dataType: "json",
                            success: function(json) {
                                var values = [];
                                for (var x in json.value) {
                                    var data = json.value[x];
                                    data['DateFormatted'] = moment(data.StartTime).format("MMM DD, YYYY");
                                    data['StartTimeFormatted'] = moment(data.StartTime).format("h:mm a");
                                    data['EndTimeFormatted'] = moment(data.EndTime).format("h:mm a");
                                    if (data.ClassId && data.ClassId != null) {
                                        for (var i = 0; i < classes.length; i++) {
                                            if (data.ClassId == classes[i].Id) {
                                                data['FreemanClass'] = classes[i];
                                            }
                                        }
                                    }
                                    if (data.InstructorId && data.InstructorId != null) {
                                        for (var i = 0; i < instructors.length; i++) {
                                            if (data.InstructorId == instructors[i].Id) {
                                                data['FreemanInstructor'] = instructors[i];
                                            }
                                        }
                                    }
                                    values.push(data);
                                }
                                var dataSource = new kendo.data.DataSource({
                                    data: values,
                                    group: {
                                        field: "DateFormatted",
                                        value: "date"
                                    },
                                });
                                window.APP_INSTANCE.toggleLoading(false);
                                func(dataSource, classDataSource, instructorDataSource);
                            }
                        });
                    });
                });
            } else {
                func(null, null, null);
                window.APP_INSTANCE.toggleLoading(false);
            }
        });
    });
}

function loadHours(func) {
    $.ajax({
        type: "GET",
        url: window.APP_INSTANCE.getAPIUrl('Freeman/Hours/'),
        dataType: "json",
        success: function(json) {
            var values = [];
            for (var x in json.value) {
                var data = json.value[x];
                var applicable = moment().isBetween(moment(data.StartTime), moment(data.EndTime), null, '[]');
                if (applicable) {
                    data['Description'] = data.Description.replace(/(?:\r\n|\r|\n)/g, '<br />');
                    values.push(data);
                }
            }
            var dataSource = new kendo.data.DataSource({
                data: values
            });
            func(dataSource);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log('Error retrieving fitness hours: ' + textStatus + ' (' + errorThrown + ')');
            func(null);
        }
    });
}

function fetchTOTD(func) {
    if (tipDataSource == null) {
        loadTips(function(dataSource) {
            tipDataSource = dataSource;
            pickTOTD(func);
        });
    } else {
        pickTOTD(func);
    }
}

function pickTOTD(func) {
    if (tipDataSource) {
        tipDataSource.fetch(function() {
            var data = this.data();
            var index = new Date().getDate() % data.length;
            func(data[index]);
        })
    } else {
        func({
            Text: 'Better sore than sorry.'
        });
    }
}

function fetchSchedule(func) {
    scheduleDataSource.fetch(func);
}
