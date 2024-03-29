.class public Lde/appplant/cordova/plugin/notification/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# instance fields
.field private clearReceiver:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private clickActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final options:Lde/appplant/cordova/plugin/notification/Options;

.field private triggerReceiver:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-class v0, Lde/appplant/cordova/plugin/notification/ClearReceiver;

    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Builder;->clearReceiver:Ljava/lang/Class;

    .line 55
    const-class v0, Lde/appplant/cordova/plugin/notification/ClickActivity;

    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Builder;->clickActivity:Ljava/lang/Class;

    .line 66
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Builder;->context:Landroid/content/Context;

    .line 67
    new-instance v0, Lde/appplant/cordova/plugin/notification/Options;

    invoke-direct {v0, p1}, Lde/appplant/cordova/plugin/notification/Options;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lde/appplant/cordova/plugin/notification/Options;->parse(Lorg/json/JSONObject;)Lde/appplant/cordova/plugin/notification/Options;

    move-result-object v0

    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 68
    return-void
.end method

.method public constructor <init>(Lde/appplant/cordova/plugin/notification/Options;)V
    .locals 1
    .param p1, "options"    # Lde/appplant/cordova/plugin/notification/Options;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-class v0, Lde/appplant/cordova/plugin/notification/ClearReceiver;

    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Builder;->clearReceiver:Ljava/lang/Class;

    .line 55
    const-class v0, Lde/appplant/cordova/plugin/notification/ClickActivity;

    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Builder;->clickActivity:Ljava/lang/Class;

    .line 77
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Options;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Builder;->context:Landroid/content/Context;

    .line 78
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 79
    return-void
.end method

.method private applyContentReceiver(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 6
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 181
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->clickActivity:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 194
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->context:Landroid/content/Context;

    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Builder;->clickActivity:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "NOTIFICATION_OPTIONS"

    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 185
    invoke-virtual {v5}, Lde/appplant/cordova/plugin/notification/Options;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    .line 186
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 188
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 190
    .local v2, "reqCode":I
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->context:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v3, v2, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 193
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method private applyDeleteReceiver(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 5
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 159
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Builder;->clearReceiver:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 170
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->context:Landroid/content/Context;

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->clearReceiver:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 163
    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getIdStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "NOTIFICATION_OPTIONS"

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 164
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 166
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Builder;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 169
    .local v0, "deleteIntent":Landroid/app/PendingIntent;
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method


# virtual methods
.method public build()Lde/appplant/cordova/plugin/notification/Notification;
    .locals 7

    .prologue
    const/16 v5, 0x64

    .line 118
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getSoundUri()Landroid/net/Uri;

    move-result-object v2

    .line 119
    .local v2, "sound":Landroid/net/Uri;
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getSmallIcon()I

    move-result v1

    .line 122
    .local v1, "smallIcon":I
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 123
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 124
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 125
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 126
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getBadgeNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 127
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 128
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->isAutoClear()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 129
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->isOngoing()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 130
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 131
    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getLedColor()I

    move-result v4

    invoke-virtual {v3, v4, v5, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 133
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 137
    :cond_0
    if-nez v1, :cond_1

    .line 138
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getIcon()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 144
    :goto_0
    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/notification/Builder;->applyDeleteReceiver(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 145
    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/notification/Builder;->applyContentReceiver(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 147
    new-instance v3, Lde/appplant/cordova/plugin/notification/Notification;

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Builder;->context:Landroid/content/Context;

    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    iget-object v6, p0, Lde/appplant/cordova/plugin/notification/Builder;->triggerReceiver:Ljava/lang/Class;

    invoke-direct {v3, v4, v5, v0, v6}, Lde/appplant/cordova/plugin/notification/Notification;-><init>(Landroid/content/Context;Lde/appplant/cordova/plugin/notification/Options;Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/Class;)V

    return-object v3

    .line 140
    :cond_1
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getSmallIcon()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 141
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Builder;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method public setClearReceiver(Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lde/appplant/cordova/plugin/notification/Builder;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Builder;->clearReceiver:Ljava/lang/Class;

    .line 100
    return-object p0
.end method

.method public setClickActivity(Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lde/appplant/cordova/plugin/notification/Builder;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Builder;->clickActivity:Ljava/lang/Class;

    .line 111
    return-object p0
.end method

.method public setTriggerReceiver(Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lde/appplant/cordova/plugin/notification/Builder;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Builder;->triggerReceiver:Ljava/lang/Class;

    .line 89
    return-object p0
.end method
