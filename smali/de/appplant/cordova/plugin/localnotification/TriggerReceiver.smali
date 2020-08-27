.class public Lde/appplant/cordova/plugin/localnotification/TriggerReceiver;
.super Lde/appplant/cordova/plugin/notification/TriggerReceiver;
.source "TriggerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/TriggerReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public buildNotification(Lde/appplant/cordova/plugin/notification/Builder;)Lde/appplant/cordova/plugin/notification/Notification;
    .locals 2
    .param p1, "builder"    # Lde/appplant/cordova/plugin/notification/Builder;

    .prologue
    .line 63
    const-class v0, Lde/appplant/cordova/plugin/localnotification/TriggerReceiver;

    .line 64
    invoke-virtual {p1, v0}, Lde/appplant/cordova/plugin/notification/Builder;->setTriggerReceiver(Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Builder;

    move-result-object v0

    const-class v1, Lde/appplant/cordova/plugin/localnotification/ClickActivity;

    .line 65
    invoke-virtual {v0, v1}, Lde/appplant/cordova/plugin/notification/Builder;->setClickActivity(Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Builder;

    move-result-object v0

    const-class v1, Lde/appplant/cordova/plugin/localnotification/ClearReceiver;

    .line 66
    invoke-virtual {v0, v1}, Lde/appplant/cordova/plugin/notification/Builder;->setClearReceiver(Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Builder;->build()Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v0

    return-object v0
.end method

.method public onTrigger(Lde/appplant/cordova/plugin/notification/Notification;Z)V
    .locals 1
    .param p1, "notification"    # Lde/appplant/cordova/plugin/notification/Notification;
    .param p2, "updated"    # Z

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lde/appplant/cordova/plugin/notification/TriggerReceiver;->onTrigger(Lde/appplant/cordova/plugin/notification/Notification;Z)V

    .line 50
    if-nez p2, :cond_0

    .line 51
    const-string v0, "trigger"

    invoke-static {v0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification;)V

    .line 53
    :cond_0
    return-void
.end method
