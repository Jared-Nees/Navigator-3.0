.class public Lde/appplant/cordova/plugin/notification/Options;
.super Ljava/lang/Object;
.source "Options.java"


# static fields
.field static final EXTRA:Ljava/lang/String; = "NOTIFICATION_OPTIONS"


# instance fields
.field private final assets:Lde/appplant/cordova/plugin/notification/AssetUtil;

.field private final context:Landroid/content/Context;

.field private interval:J

.field private options:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lde/appplant/cordova/plugin/notification/Options;->interval:J

    .line 67
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Options;->context:Landroid/content/Context;

    .line 68
    invoke-static {p1}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getInstance(Landroid/content/Context;)Lde/appplant/cordova/plugin/notification/AssetUtil;

    move-result-object v0

    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->assets:Lde/appplant/cordova/plugin/notification/AssetUtil;

    .line 69
    return-void
.end method

.method private parseAssets()V
    .locals 7

    .prologue
    .line 132
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v4, "iconUri"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v4, "updated"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Options;->assets:Lde/appplant/cordova/plugin/notification/AssetUtil;

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v5, "icon"

    const-string v6, "icon"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/appplant/cordova/plugin/notification/AssetUtil;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 136
    .local v1, "iconUri":Landroid/net/Uri;
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Options;->assets:Lde/appplant/cordova/plugin/notification/AssetUtil;

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v5, "sound"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/appplant/cordova/plugin/notification/AssetUtil;->parseSound(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 139
    .local v2, "soundUri":Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v4, "iconUri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v4, "soundUri"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseInterval()V
    .locals 4

    .prologue
    .line 90
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v3, "every"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "every":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lde/appplant/cordova/plugin/notification/Options;->interval:J

    .line 125
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v2, "second"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lde/appplant/cordova/plugin/notification/Options;->interval:J

    goto :goto_0

    .line 98
    :cond_1
    const-string v2, "minute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lde/appplant/cordova/plugin/notification/Options;->interval:J

    goto :goto_0

    .line 101
    :cond_2
    const-string v2, "hour"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    const-wide/32 v2, 0x36ee80

    iput-wide v2, p0, Lde/appplant/cordova/plugin/notification/Options;->interval:J

    goto :goto_0

    .line 104
    :cond_3
    const-string v2, "day"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    const-wide/32 v2, 0x5265c00

    iput-wide v2, p0, Lde/appplant/cordova/plugin/notification/Options;->interval:J

    goto :goto_0

    .line 107
    :cond_4
    const-string v2, "week"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 108
    const-wide/32 v2, 0x240c8400

    iput-wide v2, p0, Lde/appplant/cordova/plugin/notification/Options;->interval:J

    goto :goto_0

    .line 110
    :cond_5
    const-string v2, "month"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 111
    const-wide v2, 0x9fa52400L

    iput-wide v2, p0, Lde/appplant/cordova/plugin/notification/Options;->interval:J

    goto :goto_0

    .line 113
    :cond_6
    const-string v2, "quarter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 114
    const-wide v2, 0x1d5ec4b00L

    iput-wide v2, p0, Lde/appplant/cordova/plugin/notification/Options;->interval:J

    goto :goto_0

    .line 116
    :cond_7
    const-string v2, "year"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 117
    const-wide v2, 0x757b12c00L

    iput-wide v2, p0, Lde/appplant/cordova/plugin/notification/Options;->interval:J

    goto :goto_0

    .line 120
    :cond_8
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const v3, 0xea60

    mul-int/2addr v2, v3

    int-to-long v2, v2

    iput-wide v2, p0, Lde/appplant/cordova/plugin/notification/Options;->interval:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getBadgeNumber()I
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "badge"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 5

    .prologue
    .line 263
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v3, "color"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "hex":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 266
    const/4 v2, 0x0

    .line 271
    :goto_0
    return v2

    .line 269
    :cond_0
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 271
    .local v0, "aRGB":I
    const/high16 v2, -0x1000000

    add-int/2addr v2, v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->context:Landroid/content/Context;

    return-object v0
.end method

.method getDict()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getIcon()I
    .locals 5

    .prologue
    .line 310
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v3, "icon"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "icon":Ljava/lang/String;
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->assets:Lde/appplant/cordova/plugin/notification/AssetUtil;

    invoke-virtual {v2, v0}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getResIdForDrawable(Ljava/lang/String;)I

    move-result v1

    .line 314
    .local v1, "resId":I
    if-nez v1, :cond_0

    .line 315
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Options;->getSmallIcon()I

    move-result v1

    .line 318
    :cond_0
    if-nez v1, :cond_1

    .line 319
    const v1, 0x108005e

    .line 322
    :cond_1
    return v1
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 296
    :try_start_0
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v4, "iconUri"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 297
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Options;->assets:Lde/appplant/cordova/plugin/notification/AssetUtil;

    invoke-virtual {v3, v2}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getIconFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 303
    .end local v2    # "uri":Landroid/net/Uri;
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 298
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/Options;->assets:Lde/appplant/cordova/plugin/notification/AssetUtil;

    const-string v4, "icon"

    invoke-virtual {v3, v4}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getIconFromDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getIdStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Options;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLedColor()I
    .locals 5

    .prologue
    .line 246
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v3, "led"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "hex":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 249
    const/4 v2, 0x4

    .line 254
    :goto_0
    return v2

    .line 252
    :cond_0
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 254
    .local v0, "aRGB":I
    const/high16 v2, -0x1000000

    add-int/2addr v2, v0

    goto :goto_0
.end method

.method public getRepeatInterval()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lde/appplant/cordova/plugin/notification/Options;->interval:J

    return-wide v0
.end method

.method public getSmallIcon()I
    .locals 4

    .prologue
    .line 329
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v2, "smallIcon"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "icon":Ljava/lang/String;
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Options;->assets:Lde/appplant/cordova/plugin/notification/AssetUtil;

    invoke-virtual {v1, v0}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getResIdForDrawable(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getSoundUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 281
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v3, "soundUri"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 286
    :goto_0
    return-object v1

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "text"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 231
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v2, "title"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Options;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Options;->context:Landroid/content/Context;

    .line 235
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 234
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 235
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_0
    return-object v0
.end method

.method public getTriggerDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 213
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Options;->getTriggerTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTriggerTime()J
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "at"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public isAutoClear()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "autoClear"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOngoing()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "ongoing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lde/appplant/cordova/plugin/notification/Options;
    .locals 0
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 78
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    .line 80
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Options;->parseInterval()V

    .line 81
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Options;->parseAssets()V

    .line 83
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Options;->options:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
