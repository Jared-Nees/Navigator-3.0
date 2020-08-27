.class public Lde/appplant/cordova/plugin/notification/TriggerReceiver;
.super Lde/appplant/cordova/plugin/notification/AbstractTriggerReceiver;
.source "TriggerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/AbstractTriggerReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public buildNotification(Lde/appplant/cordova/plugin/notification/Builder;)Lde/appplant/cordova/plugin/notification/Notification;
    .locals 1
    .param p1, "builder"    # Lde/appplant/cordova/plugin/notification/Builder;

    .prologue
    .line 56
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Builder;->build()Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v0

    return-object v0
.end method

.method public onTrigger(Lde/appplant/cordova/plugin/notification/Notification;Z)V
    .locals 0
    .param p1, "notification"    # Lde/appplant/cordova/plugin/notification/Notification;
    .param p2, "updated"    # Z

    .prologue
    .line 45
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Notification;->show()V

    .line 46
    return-void
.end method
