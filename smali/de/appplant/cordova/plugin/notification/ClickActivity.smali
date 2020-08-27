.class public Lde/appplant/cordova/plugin/notification/ClickActivity;
.super Lde/appplant/cordova/plugin/notification/AbstractClickActivity;
.source "ClickActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/AbstractClickActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public buildNotification(Lde/appplant/cordova/plugin/notification/Builder;)Lde/appplant/cordova/plugin/notification/Notification;
    .locals 1
    .param p1, "builder"    # Lde/appplant/cordova/plugin/notification/Builder;

    .prologue
    .line 58
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Builder;->build()Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Lde/appplant/cordova/plugin/notification/Notification;)V
    .locals 1
    .param p1, "notification"    # Lde/appplant/cordova/plugin/notification/Notification;

    .prologue
    .line 42
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/ClickActivity;->launchApp()V

    .line 44
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Notification;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Notification;->clear()V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Notification;->cancel()V

    goto :goto_0
.end method
