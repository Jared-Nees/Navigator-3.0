.class Lorg/apache/cordova/file/FileUtils$15;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Lorg/apache/cordova/file/FileUtils$FileOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/file/FileUtils;->execute(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/file/FileUtils;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/file/FileUtils;

    .prologue
    .line 416
    iput-object p1, p0, Lorg/apache/cordova/file/FileUtils$15;->this$0:Lorg/apache/cordova/file/FileUtils;

    iput-object p2, p0, Lorg/apache/cordova/file/FileUtils$15;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/json/JSONArray;)V
    .locals 3
    .param p1, "args"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 418
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "fname":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$15;->this$0:Lorg/apache/cordova/file/FileUtils;

    invoke-static {v2, v0}, Lorg/apache/cordova/file/FileUtils;->access$700(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 420
    .local v1, "obj":Lorg/json/JSONObject;
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$15;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 421
    return-void
.end method
