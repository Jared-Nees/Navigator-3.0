.class Lde/appplant/cordova/plugin/notification/AssetUtil;
.super Ljava/lang/Object;
.source "AssetUtil.java"


# static fields
.field private static final DEFAULT_SOUND:Ljava/lang/String; = "res://platform_default"

.field private static final STORAGE_FOLDER:Ljava/lang/String; = "/localnotification"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/AssetUtil;->context:Landroid/content/Context;

    .line 73
    return-void
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 293
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 294
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 296
    :cond_0
    return-void
.end method

.method private getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "resPath"    # Ljava/lang/String;

    .prologue
    .line 377
    move-object v0, p1

    .line 379
    .local v0, "drawable":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 383
    :cond_0
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    const/4 v1, 0x0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_1
    return-object v0
.end method

.method static getInstance(Landroid/content/Context;)Lde/appplant/cordova/plugin/notification/AssetUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    new-instance v0, Lde/appplant/cordova/plugin/notification/AssetUtil;

    invoke-direct {v0, p0}, Lde/appplant/cordova/plugin/notification/AssetUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/AssetUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTmpFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 399
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getTmpFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getTmpFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/AssetUtil;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 413
    .local v0, "dir":Ljava/io/File;
    if-nez v0, :cond_0

    .line 414
    const-string v2, "Asset"

    const-string v3, "Missing external cache dir"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v2, 0x0

    .line 423
    :goto_0
    return-object v2

    .line 418
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/localnotification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "storage":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 423
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getUriForResourcePath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string v7, "res://"

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, "resPath":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getResIdForDrawable(Ljava/lang/String;)I

    move-result v5

    .line 197
    .local v5, "resId":I
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getTmpFile()Ljava/io/File;

    move-result-object v1

    .line 199
    .local v1, "file":Ljava/io/File;
    if-nez v5, :cond_0

    .line 200
    const-string v7, "Asset"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 224
    :goto_0
    return-object v7

    .line 204
    :cond_0
    if-nez v1, :cond_1

    .line 205
    const-string v7, "Asset"

    const-string v8, "Missing external cache dir"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0

    .line 210
    :cond_1
    :try_start_0
    iget-object v7, p0, Lde/appplant/cordova/plugin/notification/AssetUtil;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 211
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 212
    .local v3, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 213
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-direct {p0, v2, v3}, Lde/appplant/cordova/plugin/notification/AssetUtil;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 215
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 216
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 218
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 220
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getUriFromAsset(Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v7, "file:/"

    const-string v8, "www"

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, "resPath":Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "fileName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getTmpFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 160
    .local v2, "file":Ljava/io/File;
    if-nez v2, :cond_0

    .line 161
    const-string v7, "Asset"

    const-string v8, "Missing external cache dir"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 182
    :goto_0
    return-object v7

    .line 166
    :cond_0
    :try_start_0
    iget-object v7, p0, Lde/appplant/cordova/plugin/notification/AssetUtil;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 167
    .local v0, "assets":Landroid/content/res/AssetManager;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 168
    .local v5, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 170
    .local v4, "inputStream":Ljava/io/InputStream;
    invoke-direct {p0, v4, v5}, Lde/appplant/cordova/plugin/notification/AssetUtil;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 172
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 173
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 175
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 177
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "Asset"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File not found: assets/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string v2, "file://"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "absPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    const-string v2, "Asset"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 143
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private getUriFromRemote(Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getTmpFile()Ljava/io/File;

    move-result-object v2

    .line 239
    .local v2, "file":Ljava/io/File;
    if-nez v2, :cond_0

    .line 240
    const-string v7, "Asset"

    const-string v8, "Missing external cache dir"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 278
    :goto_0
    return-object v7

    .line 245
    :cond_0
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 246
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 248
    .local v0, "connection":Ljava/net/HttpURLConnection;
    new-instance v7, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v7}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 249
    invoke-virtual {v7}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 251
    .local v5, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 253
    const-string v7, "Connection"

    const-string v8, "close"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/16 v7, 0x1388

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 255
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 257
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 258
    .local v3, "input":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 260
    .local v4, "outStream":Ljava/io/FileOutputStream;
    invoke-direct {p0, v3, v4}, Lde/appplant/cordova/plugin/notification/AssetUtil;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 262
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 263
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 265
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    goto :goto_0

    .line 267
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "outStream":Ljava/io/FileOutputStream;
    .end local v5    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/net/MalformedURLException;
    const-string v7, "Asset"

    const-string v8, "Incorrect URL"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 278
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :goto_1
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0

    .line 270
    :catch_1
    move-exception v1

    .line 271
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v7, "Asset"

    const-string v8, "Failed to create new File from HTTP Content"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 273
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 274
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "Asset"

    const-string v8, "No Input can be created from http Stream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method getIconFromDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "drawable"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/AssetUtil;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 345
    .local v1, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getResIdForDrawable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 347
    .local v0, "iconId":I
    if-nez v0, :cond_0

    .line 348
    const-string v2, "android"

    invoke-virtual {p0, v2, p1}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getResIdForDrawable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 351
    :cond_0
    if-nez v0, :cond_1

    .line 352
    const v0, 0x10800a9

    .line 355
    :cond_1
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method getIconFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/AssetUtil;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 367
    .local v0, "input":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method getResIdForDrawable(Ljava/lang/String;)I
    .locals 2
    .param p1, "resPath"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getResIdForDrawable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 307
    .local v0, "resId":I
    if-nez v0, :cond_0

    .line 308
    const-string v1, "android"

    invoke-virtual {p0, v1, p1}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getResIdForDrawable(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 311
    :cond_0
    return v0
.end method

.method getResIdForDrawable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "clsName"    # Ljava/lang/String;
    .param p2, "resPath"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-direct {p0, p2}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "drawable":Ljava/lang/String;
    const/4 v2, 0x0

    .line 327
    .local v2, "resId":I
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".R$drawable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 329
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 332
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .line 330
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method parse(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string v0, "res:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getUriForResourcePath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 114
    :cond_0
    const-string v0, "file:///"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_1
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getUriFromAsset(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_2
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/notification/AssetUtil;->getUriFromRemote(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_3
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0
.end method

.method parseSound(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 101
    :goto_0
    return-object v0

    .line 96
    :cond_1
    const-string v0, "res://platform_default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/notification/AssetUtil;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
