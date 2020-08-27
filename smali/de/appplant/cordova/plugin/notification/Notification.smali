.class public Lde/appplant/cordova/plugin/notification/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/appplant/cordova/plugin/notification/Notification$Type;
    }
.end annotation


# static fields
.field static final PREF_KEY:Ljava/lang/String; = "LocalNotification"

.field private static defaultReceiver:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private final context:Landroid/content/Context;

.field private final options:Lde/appplant/cordova/plugin/notification/Options;

.field private receiver:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lde/appplant/cordova/plugin/notification/TriggerReceiver;

    sput-object v0, Lde/appplant/cordova/plugin/notification/Notification;->defaultReceiver:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lde/appplant/cordova/plugin/notification/Options;Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lde/appplant/cordova/plugin/notification/Options;
    .param p3, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lde/appplant/cordova/plugin/notification/Options;",
            "Landroid/support/v4/app/NotificationCompat$Builder;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p4, "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lde/appplant/cordova/plugin/notification/Notification;->defaultReceiver:Ljava/lang/Class;

    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Notification;->receiver:Ljava/lang/Class;

    .line 83
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 85
    iput-object p3, p0, Lde/appplant/cordova/plugin/notification/Notification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 87
    if-eqz p4, :cond_0

    .end local p4    # "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iput-object p4, p0, Lde/appplant/cordova/plugin/notification/Notification;->receiver:Ljava/lang/Class;

    .line 88
    return-void

    .line 87
    .restart local p4    # "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    sget-object p4, Lde/appplant/cordova/plugin/notification/Notification;->defaultReceiver:Ljava/lang/Class;

    goto :goto_0
.end method

.method private getAlarmMgr()Landroid/app/AlarmManager;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method

.method private getNotMgr()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    const-string v1, "notification"

    .line 328
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    const-string v1, "LocalNotification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private persist()V
    .locals 3

    .prologue
    .line 290
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 292
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Options;->getIdStr()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v2}, Lde/appplant/cordova/plugin/notification/Options;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 294
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static setDefaultTriggerReceiver(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sput-object p0, Lde/appplant/cordova/plugin/notification/Notification;->defaultReceiver:Ljava/lang/Class;

    .line 346
    return-void
.end method

.method private showNotification()V
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getOptions()Lde/appplant/cordova/plugin/notification/Options;

    move-result-object v1

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Options;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 238
    .local v0, "id":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_0

    .line 240
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getNotMgr()Landroid/app/NotificationManager;

    move-result-object v1

    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Notification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getNotMgr()Landroid/app/NotificationManager;

    move-result-object v1

    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Notification;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private unpersist()V
    .locals 3

    .prologue
    .line 305
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 307
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Options;->getIdStr()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 309
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 310
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 211
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Notification;->receiver:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 212
    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getIdStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    .line 215
    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 217
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getAlarmMgr()Landroid/app/AlarmManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 218
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getNotMgr()Landroid/app/NotificationManager;

    move-result-object v2

    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 220
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->unpersist()V

    .line 221
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->isRepeating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->wasInThePast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->unpersist()V

    .line 198
    :cond_0
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->isRepeating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getNotMgr()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 200
    :cond_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Options;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOptions()Lde/appplant/cordova/plugin/notification/Options;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    return-object v0
.end method

.method public getTriggerCountSinceSchedule()I
    .locals 8

    .prologue
    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 252
    .local v0, "now":J
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getTriggerTime()J

    move-result-wide v2

    .line 254
    .local v2, "triggerTime":J
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->wasInThePast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 255
    const/4 v4, 0x0

    .line 260
    :goto_0
    return v4

    .line 257
    :cond_0
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->isRepeating()Z

    move-result v4

    if-nez v4, :cond_1

    .line 258
    const/4 v4, 0x1

    goto :goto_0

    .line 260
    :cond_1
    sub-long v4, v0, v2

    iget-object v6, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v6}, Lde/appplant/cordova/plugin/notification/Options;->getRepeatInterval()J

    move-result-wide v6

    div-long/2addr v4, v6

    long-to-int v4, v4

    goto :goto_0
.end method

.method public getType()Lde/appplant/cordova/plugin/notification/Notification$Type;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lde/appplant/cordova/plugin/notification/Notification$Type;->SCHEDULED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lde/appplant/cordova/plugin/notification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    goto :goto_0
.end method

.method public isRepeating()Z
    .locals 4

    .prologue
    .line 115
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getOptions()Lde/appplant/cordova/plugin/notification/Options;

    move-result-object v0

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Options;->getRepeatInterval()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScheduled()Z
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->isRepeating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->wasInThePast()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTriggered()Z
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->wasInThePast()Z

    move-result v0

    return v0
.end method

.method protected isUpdate(Z)Z
    .locals 4
    .param p1, "keepFlag"    # Z

    .prologue
    .line 146
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Options;->getDict()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "updated"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 148
    .local v0, "updated":Z
    if-nez p1, :cond_0

    .line 149
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Options;->getDict()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "updated"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    :cond_0
    return v0
.end method

.method public schedule()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Options;->getTriggerTime()J

    move-result-wide v2

    .line 168
    .local v2, "triggerTime":J
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->persist()V

    .line 171
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Notification;->receiver:Ljava/lang/Class;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 172
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getIdStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "NOTIFICATION_OPTIONS"

    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 173
    invoke-virtual {v5}, Lde/appplant/cordova/plugin/notification/Options;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 175
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Notification;->context:Landroid/content/Context;

    const/high16 v4, 0x10000000

    invoke-static {v0, v1, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 178
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Notification;->wasInThePast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 183
    :cond_0
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getAlarmMgr()Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 184
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getRepeatInterval()J

    move-result-wide v4

    .line 183
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->getAlarmMgr()Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public show()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Notification;->showNotification()V

    .line 229
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 267
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    .line 268
    .local v0, "dict":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 271
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Lorg/json/JSONObject;
    .local v3, "json":Lorg/json/JSONObject;
    move-object v2, v3

    .line 276
    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    const-string v4, "firstAt"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    const-string v4, "updated"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    const-string v4, "soundUri"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    const-string v4, "iconUri"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 272
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public wasInThePast()Z
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Notification;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Options;->getTriggerDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method
