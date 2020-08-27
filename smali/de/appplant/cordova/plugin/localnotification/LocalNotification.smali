.class public Lde/appplant/cordova/plugin/localnotification/LocalNotification;
.super Lorg/apache/cordova/CordovaPlugin;
.source "LocalNotification.java"


# static fields
.field private static deviceready:Ljava/lang/Boolean;

.field private static eventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static isInBackground:Ljava/lang/Boolean;

.field private static webView:Lorg/apache/cordova/CordovaWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready:Ljava/lang/Boolean;

    .line 58
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->isInBackground:Ljava/lang/Boolean;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->eventQueue:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->schedule(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$100(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->update(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$1000(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getScheduledIds(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1100(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getTriggeredIds(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1200(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getSingle(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1300(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getSingleScheduled(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1400(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getSingleTriggered(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1500(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getAll(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1600(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getScheduled(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1700(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getTriggered(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1800()V
    .locals 0

    .prologue
    .line 49
    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready()V

    return-void
.end method

.method static synthetic access$200(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cancel(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$300(Lde/appplant/cordova/plugin/localnotification/LocalNotification;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    .prologue
    .line 49
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cancelAll()V

    return-void
.end method

.method static synthetic access$400(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->clear(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$500(Lde/appplant/cordova/plugin/localnotification/LocalNotification;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    .prologue
    .line 49
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->clearAll()V

    return-void
.end method

.method static synthetic access$600(Lde/appplant/cordova/plugin/localnotification/LocalNotification;ILorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->isPresent(ILorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$700(Lde/appplant/cordova/plugin/localnotification/LocalNotification;ILorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->isScheduled(ILorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$800(Lde/appplant/cordova/plugin/localnotification/LocalNotification;ILorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->isTriggered(ILorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$900(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;
    .param p1, "x1"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getAllIds(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method private cancel(Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "ids"    # Lorg/json/JSONArray;

    .prologue
    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 251
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONArray;->optInt(II)I

    move-result v1

    .line 254
    .local v1, "id":I
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotificationMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lde/appplant/cordova/plugin/notification/Manager;->cancel(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v2

    .line 256
    .local v2, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    if-nez v2, :cond_0

    .line 250
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    const-string v3, "cancel"

    invoke-static {v3, v2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification;)V

    goto :goto_1

    .line 261
    .end local v1    # "id":I
    .end local v2    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    :cond_1
    return-void
.end method

.method private cancelAll()V
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotificationMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v0

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Manager;->cancelAll()V

    .line 268
    const-string v0, "cancelall"

    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method private clear(Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "ids"    # Lorg/json/JSONArray;

    .prologue
    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 279
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONArray;->optInt(II)I

    move-result v1

    .line 282
    .local v1, "id":I
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotificationMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lde/appplant/cordova/plugin/notification/Manager;->clear(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v2

    .line 284
    .local v2, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    if-nez v2, :cond_0

    .line 278
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    const-string v3, "clear"

    invoke-static {v3, v2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification;)V

    goto :goto_1

    .line 289
    .end local v1    # "id":I
    .end local v2    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    :cond_1
    return-void
.end method

.method private clearAll()V
    .locals 1

    .prologue
    .line 295
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotificationMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v0

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Manager;->clearAll()V

    .line 296
    const-string v0, "clearall"

    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method private static declared-synchronized deviceready()V
    .locals 4

    .prologue
    .line 520
    const-class v2, Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->isInBackground:Ljava/lang/Boolean;

    .line 521
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready:Ljava/lang/Boolean;

    .line 523
    sget-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "js":Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "js":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 524
    .restart local v0    # "js":Ljava/lang/String;
    invoke-static {v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->sendJavascript(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 520
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 527
    :cond_0
    :try_start_1
    sget-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    monitor-exit v2

    return-void
.end method

.method private fireEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 537
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification;)V

    .line 538
    return-void
.end method

.method static fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification;)V
    .locals 5
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "notification"    # Lde/appplant/cordova/plugin/notification/Notification;

    .prologue
    .line 549
    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getApplicationState()Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "state":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "params":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Notification;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cordova.plugins.notification.local.core.fireEvent(\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "js":Ljava/lang/String;
    invoke-static {v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->sendJavascript(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method private getAll(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 1
    .param p1, "ids"    # Lorg/json/JSONArray;
    .param p2, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 435
    sget-object v0, Lde/appplant/cordova/plugin/notification/Notification$Type;->ALL:Lde/appplant/cordova/plugin/notification/Notification$Type;

    invoke-direct {p0, p1, v0, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getOptions(Lorg/json/JSONArray;Lde/appplant/cordova/plugin/notification/Notification$Type;Lorg/apache/cordova/CallbackContext;)V

    .line 436
    return-void
.end method

.method private getAllIds(Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 359
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotificationMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v1

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Manager;->getIds()Ljava/util/List;

    move-result-object v0

    .line 361
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    .line 362
    return-void
.end method

.method static getApplicationState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->isInBackground:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "background"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "foreground"

    goto :goto_0
.end method

.method private getNotificationMgr()Lde/appplant/cordova/plugin/notification/Manager;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lde/appplant/cordova/plugin/notification/Manager;->getInstance(Landroid/content/Context;)Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v0

    return-object v0
.end method

.method private getOptions(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification$Type;Lorg/apache/cordova/CallbackContext;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Lde/appplant/cordova/plugin/notification/Notification$Type;
    .param p3, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 475
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    .line 479
    .local v0, "ids":Lorg/json/JSONArray;
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotificationMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v3

    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lde/appplant/cordova/plugin/notification/Manager;->getOptionsBy(Lde/appplant/cordova/plugin/notification/Notification$Type;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 481
    .local v1, "options":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v2, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 489
    .local v2, "result":Lorg/apache/cordova/PluginResult;
    :goto_0
    invoke-virtual {p3, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 490
    return-void

    .line 486
    .end local v2    # "result":Lorg/apache/cordova/PluginResult;
    :cond_0
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {v2, v4, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .restart local v2    # "result":Lorg/apache/cordova/PluginResult;
    goto :goto_0
.end method

.method private getOptions(Lorg/json/JSONArray;Lde/appplant/cordova/plugin/notification/Notification$Type;Lorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "ids"    # Lorg/json/JSONArray;
    .param p2, "type"    # Lde/appplant/cordova/plugin/notification/Notification$Type;
    .param p3, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 507
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 508
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotificationMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lde/appplant/cordova/plugin/notification/Manager;->getOptionsByType(Lde/appplant/cordova/plugin/notification/Notification$Type;)Ljava/util/List;

    move-result-object v0

    .line 513
    .local v0, "options":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :goto_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    .line 514
    return-void

    .line 510
    .end local v0    # "options":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :cond_0
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotificationMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v1

    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lde/appplant/cordova/plugin/notification/Manager;->getOptionsBy(Lde/appplant/cordova/plugin/notification/Notification$Type;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "options":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    goto :goto_0
.end method

.method private getScheduled(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 1
    .param p1, "ids"    # Lorg/json/JSONArray;
    .param p2, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 447
    sget-object v0, Lde/appplant/cordova/plugin/notification/Notification$Type;->SCHEDULED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    invoke-direct {p0, p1, v0, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getOptions(Lorg/json/JSONArray;Lde/appplant/cordova/plugin/notification/Notification$Type;Lorg/apache/cordova/CallbackContext;)V

    .line 448
    return-void
.end method

.method private getScheduledIds(Lorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 371
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotificationMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v1

    sget-object v2, Lde/appplant/cordova/plugin/notification/Notification$Type;->SCHEDULED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    invoke-virtual {v1, v2}, Lde/appplant/cordova/plugin/notification/Manager;->getIdsByType(Lde/appplant/cordova/plugin/notification/Notification$Type;)Ljava/util/List;

    move-result-object v0

    .line 374
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    .line 375
    return-void
.end method

.method private getSingle(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "ids"    # Lorg/json/JSONArray;
    .param p2, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/appplant/cordova/plugin/notification/Notification$Type;->ALL:Lde/appplant/cordova/plugin/notification/Notification$Type;

    invoke-direct {p0, v0, v1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getOptions(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification$Type;Lorg/apache/cordova/CallbackContext;)V

    .line 400
    return-void
.end method

.method private getSingleScheduled(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "ids"    # Lorg/json/JSONArray;
    .param p2, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 411
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/appplant/cordova/plugin/notification/Notification$Type;->SCHEDULED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    invoke-direct {p0, v0, v1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getOptions(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification$Type;Lorg/apache/cordova/CallbackContext;)V

    .line 412
    return-void
.end method

.method private getSingleTriggered(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "ids"    # Lorg/json/JSONArray;
    .param p2, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/appplant/cordova/plugin/notification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    invoke-direct {p0, v0, v1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getOptions(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification$Type;Lorg/apache/cordova/CallbackContext;)V

    .line 424
    return-void
.end method

.method private getTriggered(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 1
    .param p1, "ids"    # Lorg/json/JSONArray;
    .param p2, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 459
    sget-object v0, Lde/appplant/cordova/plugin/notification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    invoke-direct {p0, p1, v0, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getOptions(Lorg/json/JSONArray;Lde/appplant/cordova/plugin/notification/Notification$Type;Lorg/apache/cordova/CallbackContext;)V

    .line 460
    return-void
.end method

.method private getTriggeredIds(Lorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 384
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotificationMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v1

    sget-object v2, Lde/appplant/cordova/plugin/notification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    invoke-virtual {v1, v2}, Lde/appplant/cordova/plugin/notification/Manager;->getIdsByType(Lde/appplant/cordova/plugin/notification/Notification$Type;)Ljava/util/List;

    move-result-object v0

    .line 387
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    .line 388
    return-void
.end method

.method private isPresent(ILorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 308
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotificationMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lde/appplant/cordova/plugin/notification/Manager;->exist(I)Z

    move-result v0

    .line 310
    .local v0, "exist":Z
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Z)V

    .line 313
    .local v1, "result":Lorg/apache/cordova/PluginResult;
    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 314
    return-void
.end method

.method private isScheduled(ILorg/apache/cordova/CallbackContext;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 325
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotificationMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v2

    sget-object v3, Lde/appplant/cordova/plugin/notification/Notification$Type;->SCHEDULED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    invoke-virtual {v2, p1, v3}, Lde/appplant/cordova/plugin/notification/Manager;->exist(ILde/appplant/cordova/plugin/notification/Notification$Type;)Z

    move-result v0

    .line 328
    .local v0, "exist":Z
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Z)V

    .line 331
    .local v1, "result":Lorg/apache/cordova/PluginResult;
    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 332
    return-void
.end method

.method private isTriggered(ILorg/apache/cordova/CallbackContext;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "command"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 343
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotificationMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v2

    sget-object v3, Lde/appplant/cordova/plugin/notification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/notification/Notification$Type;

    invoke-virtual {v2, p1, v3}, Lde/appplant/cordova/plugin/notification/Manager;->exist(ILde/appplant/cordova/plugin/notification/Notification$Type;)Z

    move-result v0

    .line 346
    .local v0, "exist":Z
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Z)V

    .line 349
    .local v1, "result":Lorg/apache/cordova/PluginResult;
    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 350
    return-void
.end method

.method private schedule(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "notifications"    # Lorg/json/JSONArray;

    .prologue
    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 213
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 216
    .local v2, "options":Lorg/json/JSONObject;
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotificationMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v3

    const-class v4, Lde/appplant/cordova/plugin/localnotification/TriggerReceiver;

    invoke-virtual {v3, v2, v4}, Lde/appplant/cordova/plugin/notification/Manager;->schedule(Lorg/json/JSONObject;Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v1

    .line 218
    .local v1, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    const-string v3, "schedule"

    invoke-static {v3, v1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification;)V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    .end local v1    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    .end local v2    # "options":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method private static declared-synchronized sendJavascript(Ljava/lang/String;)V
    .locals 2
    .param p0, "js"    # Ljava/lang/String;

    .prologue
    .line 570
    const-class v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    :goto_0
    monitor-exit v1

    return-void

    .line 575
    :cond_0
    :try_start_1
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0, p0}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private toList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .param p1, "ary"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 588
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 591
    :cond_0
    return-object v1
.end method

.method private update(Lorg/json/JSONArray;)V
    .locals 6
    .param p1, "updates"    # Lorg/json/JSONArray;

    .prologue
    .line 229
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 230
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 231
    .local v3, "update":Lorg/json/JSONObject;
    const-string v4, "id"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 234
    .local v1, "id":I
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getNotificationMgr()Lde/appplant/cordova/plugin/notification/Manager;

    move-result-object v4

    const-class v5, Lde/appplant/cordova/plugin/localnotification/TriggerReceiver;

    invoke-virtual {v4, v1, v3, v5}, Lde/appplant/cordova/plugin/notification/Manager;->update(ILorg/json/JSONObject;Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v2

    .line 236
    .local v2, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    if-nez v2, :cond_0

    .line 229
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_0
    const-string v4, "update"

    invoke-static {v4, v2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/notification/Notification;)V

    goto :goto_1

    .line 241
    .end local v1    # "id":I
    .end local v2    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    .end local v3    # "update":Lorg/json/JSONObject;
    :cond_1
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "command"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 132
    const-class v0, Lde/appplant/cordova/plugin/localnotification/TriggerReceiver;

    invoke-static {v0}, Lde/appplant/cordova/plugin/notification/Notification;->setDefaultTriggerReceiver(Ljava/lang/Class;)V

    .line 134
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;-><init>(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 1
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/cordova/CordovaPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready:Ljava/lang/Boolean;

    .line 106
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->isInBackground:Ljava/lang/Boolean;

    .line 107
    return-void
.end method

.method public onPause(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 83
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onPause(Z)V

    .line 84
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->isInBackground:Ljava/lang/Boolean;

    .line 85
    return-void
.end method

.method public onResume(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 95
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onResume(Z)V

    .line 96
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->isInBackground:Ljava/lang/Boolean;

    .line 97
    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready()V

    .line 98
    return-void
.end method
