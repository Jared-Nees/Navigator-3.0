.class public Lde/appplant/cordova/plugin/notification/Manager;
.super Ljava/lang/Object;
.source "Manager.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Manager;->context:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lde/appplant/cordova/plugin/notification/Manager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    new-instance v0, Lde/appplant/cordova/plugin/notification/Manager;

    invoke-direct {v0, p0}, Lde/appplant/cordova/plugin/notification/Manager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getNotMgr()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Manager;->context:Landroid/content/Context;

    const-string v1, "notification"

    .line 455
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Manager;->context:Landroid/content/Context;

    const-string v1, "LocalNotification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private mergeJSONObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "obj1"    # Lorg/json/JSONObject;
    .param p2, "obj2"    # Lorg/json/JSONObject;

    .prologue
    .line 428
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 430
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 432
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 434
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 440
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public cancel(I)Lde/appplant/cordova/plugin/notification/Notification;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/notification/Manager;->get(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v0

    .line 154
    .local v0, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Notification;->cancel()V

    .line 158
    :cond_0
    return-object v0
.end method

.method public cancelAll()V
    .locals 4

    .prologue
    .line 178
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getAll()Ljava/util/List;

    move-result-object v1

    .line 180
    .local v1, "notifications":Ljava/util/List;, "Ljava/util/List<Lde/appplant/cordova/plugin/notification/Notification;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/appplant/cordova/plugin/notification/Notification;

    .line 181
    .local v0, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Notification;->cancel()V

    goto :goto_0

    .line 184
    .end local v0    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    :cond_0
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getNotMgr()Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->cancelAll()V

    .line 185
    return-void
.end method

.method public clear(I)Lde/appplant/cordova/plugin/notification/Notification;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/notification/Manager;->get(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v0

    .line 138
    .local v0, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Notification;->clear()V

    .line 142
    :cond_0
    return-object v0
.end method

.method public clearAll()V
    .locals 4

    .prologue
    .line 165
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getAll()Ljava/util/List;

    move-result-object v1

    .line 167
    .local v1, "notifications":Ljava/util/List;, "Ljava/util/List<Lde/appplant/cordova/plugin/notification/Notification;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/appplant/cordova/plugin/notification/Notification;

    .line 168
    .local v0, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Notification;->clear()V

    goto :goto_0

    .line 171
    .end local v0    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    :cond_0
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getNotMgr()Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->cancelAll()V

    .line 172
    return-void
.end method

.method public exist(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/notification/Manager;->get(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exist(ILde/appplant/cordova/plugin/notification/Notification$Type;)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "type"    # Lde/appplant/cordova/plugin/notification/Notification$Type;

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/notification/Manager;->get(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v0

    .line 317
    .local v0, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Notification;->getType()Lde/appplant/cordova/plugin/notification/Notification$Type;

    move-result-object v1

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(I)Lde/appplant/cordova/plugin/notification/Notification;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    .line 398
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 399
    .local v0, "alarms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, "notId":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 416
    :goto_0
    return-object v6

    .line 407
    :cond_0
    :try_start_0
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, "json":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .local v5, "options":Lorg/json/JSONObject;
    new-instance v1, Lde/appplant/cordova/plugin/notification/Builder;

    iget-object v6, p0, Lde/appplant/cordova/plugin/notification/Manager;->context:Landroid/content/Context;

    invoke-direct {v1, v6, v5}, Lde/appplant/cordova/plugin/notification/Builder;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 416
    .local v1, "builder":Lde/appplant/cordova/plugin/notification/Builder;
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Builder;->build()Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v6

    goto :goto_0

    .line 409
    .end local v1    # "builder":Lde/appplant/cordova/plugin/notification/Builder;
    .end local v3    # "json":Ljava/lang/String;
    .end local v5    # "options":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 410
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/appplant/cordova/plugin/notification/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/appplant/cordova/plugin/notification/Manager;->getByIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBy(Lde/appplant/cordova/plugin/notification/Notification$Type;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1, "type"    # Lde/appplant/cordova/plugin/notification/Notification$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/appplant/cordova/plugin/notification/Notification$Type;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lde/appplant/cordova/plugin/notification/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v2, "notifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/appplant/cordova/plugin/notification/Notification;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 286
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lde/appplant/cordova/plugin/notification/Manager;->get(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v1

    .line 288
    .local v1, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Notification;->isScheduled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    .end local v0    # "id":I
    .end local v1    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    :cond_1
    return-object v2
.end method

.method public getByIds(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lde/appplant/cordova/plugin/notification/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v2, "notifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/appplant/cordova/plugin/notification/Notification;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 234
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lde/appplant/cordova/plugin/notification/Manager;->get(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v1

    .line 236
    .local v1, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    .end local v0    # "id":I
    .end local v1    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    :cond_1
    return-object v2
.end method

.method public getByType(Lde/appplant/cordova/plugin/notification/Notification$Type;)Ljava/util/List;
    .locals 5
    .param p1, "type"    # Lde/appplant/cordova/plugin/notification/Notification$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/appplant/cordova/plugin/notification/Notification$Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Lde/appplant/cordova/plugin/notification/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getAll()Ljava/util/List;

    move-result-object v2

    .line 259
    .local v2, "notifications":Ljava/util/List;, "Ljava/util/List<Lde/appplant/cordova/plugin/notification/Notification;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/appplant/cordova/plugin/notification/Notification;>;"
    sget-object v3, Lde/appplant/cordova/plugin/notification/Notification$Type;->ALL:Lde/appplant/cordova/plugin/notification/Notification$Type;

    if-ne p1, v3, :cond_0

    .line 270
    .end local v2    # "notifications":Ljava/util/List;, "Ljava/util/List<Lde/appplant/cordova/plugin/notification/Notification;>;"
    :goto_0
    return-object v2

    .line 264
    .restart local v2    # "notifications":Ljava/util/List;, "Ljava/util/List<Lde/appplant/cordova/plugin/notification/Notification;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/appplant/cordova/plugin/notification/Notification;

    .line 265
    .local v1, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Notification;->getType()Lde/appplant/cordova/plugin/notification/Notification$Type;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 266
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    :cond_2
    move-object v2, v0

    .line 270
    goto :goto_0
.end method

.method public getIds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 192
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 196
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getIdsByType(Lde/appplant/cordova/plugin/notification/Notification$Type;)Ljava/util/List;
    .locals 5
    .param p1, "type"    # Lde/appplant/cordova/plugin/notification/Notification$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/appplant/cordova/plugin/notification/Notification$Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getAll()Ljava/util/List;

    move-result-object v2

    .line 213
    .local v2, "notifications":Ljava/util/List;, "Ljava/util/List<Lde/appplant/cordova/plugin/notification/Notification;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/appplant/cordova/plugin/notification/Notification;

    .line 216
    .local v1, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Notification;->getType()Lde/appplant/cordova/plugin/notification/Notification$Type;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 217
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Notification;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    .end local v1    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    :cond_1
    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Manager;->getIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/appplant/cordova/plugin/notification/Manager;->getOptionsById(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsBy(Lde/appplant/cordova/plugin/notification/Notification$Type;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1, "type"    # Lde/appplant/cordova/plugin/notification/Notification$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/appplant/cordova/plugin/notification/Notification$Type;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v3, Lde/appplant/cordova/plugin/notification/Notification$Type;->ALL:Lde/appplant/cordova/plugin/notification/Notification$Type;

    if-ne p1, v3, :cond_1

    .line 377
    invoke-virtual {p0, p2}, Lde/appplant/cordova/plugin/notification/Manager;->getOptionsById(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 388
    :cond_0
    return-object v2

    .line 379
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-virtual {p0, p2}, Lde/appplant/cordova/plugin/notification/Manager;->getByIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 382
    .local v1, "notifications":Ljava/util/List;, "Ljava/util/List<Lde/appplant/cordova/plugin/notification/Notification;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/appplant/cordova/plugin/notification/Notification;

    .line 383
    .local v0, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Notification;->getType()Lde/appplant/cordova/plugin/notification/Notification$Type;

    move-result-object v4

    if-ne v4, p1, :cond_2

    .line 384
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Notification;->getOptions()Lde/appplant/cordova/plugin/notification/Options;

    move-result-object v4

    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getDict()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getOptionsById(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 337
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lde/appplant/cordova/plugin/notification/Manager;->get(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v1

    .line 339
    .local v1, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Notification;->getOptions()Lde/appplant/cordova/plugin/notification/Options;

    move-result-object v3

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/Options;->getDict()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    .end local v0    # "id":I
    .end local v1    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    :cond_1
    return-object v2
.end method

.method public getOptionsByType(Lde/appplant/cordova/plugin/notification/Notification$Type;)Ljava/util/List;
    .locals 5
    .param p1, "type"    # Lde/appplant/cordova/plugin/notification/Notification$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/appplant/cordova/plugin/notification/Notification$Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/notification/Manager;->getByType(Lde/appplant/cordova/plugin/notification/Notification$Type;)Ljava/util/List;

    move-result-object v1

    .line 357
    .local v1, "notifications":Ljava/util/List;, "Ljava/util/List<Lde/appplant/cordova/plugin/notification/Notification;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/appplant/cordova/plugin/notification/Notification;

    .line 358
    .local v0, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Notification;->getOptions()Lde/appplant/cordova/plugin/notification/Options;

    move-result-object v4

    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/Options;->getDict()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    .end local v0    # "notification":Lde/appplant/cordova/plugin/notification/Notification;
    :cond_0
    return-object v2
.end method

.method public schedule(Lde/appplant/cordova/plugin/notification/Options;Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Notification;
    .locals 2
    .param p1, "options"    # Lde/appplant/cordova/plugin/notification/Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/appplant/cordova/plugin/notification/Options;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lde/appplant/cordova/plugin/notification/Notification;"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Lde/appplant/cordova/plugin/notification/Builder;

    invoke-direct {v1, p1}, Lde/appplant/cordova/plugin/notification/Builder;-><init>(Lde/appplant/cordova/plugin/notification/Options;)V

    .line 93
    invoke-virtual {v1, p2}, Lde/appplant/cordova/plugin/notification/Builder;->setTriggerReceiver(Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Builder;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Builder;->build()Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v0

    .line 96
    .local v0, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Notification;->schedule()V

    .line 98
    return-object v0
.end method

.method public schedule(Lorg/json/JSONObject;Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Notification;
    .locals 2
    .param p1, "options"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lde/appplant/cordova/plugin/notification/Notification;"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lde/appplant/cordova/plugin/notification/Options;

    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Manager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/appplant/cordova/plugin/notification/Options;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lde/appplant/cordova/plugin/notification/Options;->parse(Lorg/json/JSONObject;)Lde/appplant/cordova/plugin/notification/Options;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lde/appplant/cordova/plugin/notification/Manager;->schedule(Lde/appplant/cordova/plugin/notification/Options;Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v0

    return-object v0
.end method

.method public update(ILorg/json/JSONObject;Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Notification;
    .locals 4
    .param p1, "id"    # I
    .param p2, "updates"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lde/appplant/cordova/plugin/notification/Notification;"
        }
    .end annotation

    .prologue
    .line 112
    .local p3, "receiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/notification/Manager;->get(I)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v0

    .line 114
    .local v0, "notification":Lde/appplant/cordova/plugin/notification/Notification;
    if-nez v0, :cond_0

    .line 115
    const/4 v2, 0x0

    .line 126
    :goto_0
    return-object v2

    .line 117
    :cond_0
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Notification;->cancel()V

    .line 120
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/Notification;->getOptions()Lde/appplant/cordova/plugin/notification/Options;

    move-result-object v2

    invoke-virtual {v2}, Lde/appplant/cordova/plugin/notification/Options;->getDict()Lorg/json/JSONObject;

    move-result-object v2

    .line 119
    invoke-direct {p0, v2, p2}, Lde/appplant/cordova/plugin/notification/Manager;->mergeJSONObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 123
    .local v1, "options":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "updated"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_1
    invoke-virtual {p0, v1, p3}, Lde/appplant/cordova/plugin/notification/Manager;->schedule(Lorg/json/JSONObject;Ljava/lang/Class;)Lde/appplant/cordova/plugin/notification/Notification;

    move-result-object v2

    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    goto :goto_1
.end method
