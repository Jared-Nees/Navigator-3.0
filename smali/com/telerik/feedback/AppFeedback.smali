.class public Lcom/telerik/feedback/AppFeedback;
.super Lorg/apache/cordova/CordovaPlugin;
.source "AppFeedback.java"

# interfaces
.implements Lcom/telerik/widget/feedback/RadFeedback$OnSendFeedbackFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk;
    }
.end annotation


# static fields
.field private static isCrosswalk:Z


# instance fields
.field private crosswalkLatch:Ljava/util/concurrent/CountDownLatch;

.field private crosswalkScreenshot:Landroid/graphics/Bitmap;

.field private radFeedback:Lcom/telerik/widget/feedback/RadFeedback;

.field private shouldShowFeedback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    :try_start_0
    const-string v0, "org.crosswalk.engine.XWalkWebViewEngine"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/telerik/feedback/AppFeedback;->isCrosswalk:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/telerik/feedback/AppFeedback;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/feedback/AppFeedback;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/telerik/feedback/AppFeedback;->crosswalkLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$102(Lcom/telerik/feedback/AppFeedback;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0
    .param p0, "x0"    # Lcom/telerik/feedback/AppFeedback;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/telerik/feedback/AppFeedback;->crosswalkLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$200(Lcom/telerik/feedback/AppFeedback;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/feedback/AppFeedback;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/telerik/feedback/AppFeedback;->crosswalkScreenshot:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private initialize(Lorg/json/JSONArray;)V
    .locals 6
    .param p1, "args"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 76
    iget-object v3, p0, Lcom/telerik/feedback/AppFeedback;->radFeedback:Lcom/telerik/widget/feedback/RadFeedback;

    if-nez v3, :cond_0

    .line 77
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "apiKey":Ljava/lang/String;
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "apiBaseUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/telerik/feedback/AppFeedback;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "uid":Ljava/lang/String;
    iput-boolean v5, p0, Lcom/telerik/feedback/AppFeedback;->shouldShowFeedback:Z

    .line 83
    invoke-static {}, Lcom/telerik/widget/feedback/RadFeedback;->instance()Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v3

    iput-object v3, p0, Lcom/telerik/feedback/AppFeedback;->radFeedback:Lcom/telerik/widget/feedback/RadFeedback;

    .line 84
    iget-object v3, p0, Lcom/telerik/feedback/AppFeedback;->radFeedback:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-virtual {v3, p0}, Lcom/telerik/widget/feedback/RadFeedback;->setOnFeedbackFinishedListener(Lcom/telerik/widget/feedback/RadFeedback$OnSendFeedbackFinishedListener;)V

    .line 85
    iget-object v3, p0, Lcom/telerik/feedback/AppFeedback;->radFeedback:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-virtual {v3, v1, v0, v2}, Lcom/telerik/widget/feedback/RadFeedback;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-boolean v3, Lcom/telerik/feedback/AppFeedback;->isCrosswalk:Z

    if-eqz v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/telerik/feedback/AppFeedback;->radFeedback:Lcom/telerik/widget/feedback/RadFeedback;

    new-instance v4, Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk;-><init>(Lcom/telerik/feedback/AppFeedback;Lcom/telerik/feedback/AppFeedback$1;)V

    invoke-virtual {v3, v4}, Lcom/telerik/widget/feedback/RadFeedback;->setBitmapResolver(Lcom/telerik/widget/feedback/BitmapResolver;)V

    .line 92
    .end local v0    # "apiBaseUrl":Ljava/lang/String;
    .end local v1    # "apiKey":Ljava/lang/String;
    .end local v2    # "uid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showFeedback()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/telerik/feedback/AppFeedback;->radFeedback:Lcom/telerik/widget/feedback/RadFeedback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/telerik/feedback/AppFeedback;->shouldShowFeedback:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/feedback/AppFeedback;->shouldShowFeedback:Z

    .line 132
    iget-object v0, p0, Lcom/telerik/feedback/AppFeedback;->radFeedback:Lcom/telerik/widget/feedback/RadFeedback;

    iget-object v1, p0, Lcom/telerik/feedback/AppFeedback;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telerik/widget/feedback/RadFeedback;->show(Landroid/content/Context;)V

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 44
    const-string v6, "GetVariables"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 45
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .local v1, "data":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 48
    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "variableName":Ljava/lang/String;
    iget-object v6, p0, Lcom/telerik/feedback/AppFeedback;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "string"

    iget-object v8, p0, Lcom/telerik/feedback/AppFeedback;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v3, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, "appResId":I
    iget-object v6, p0, Lcom/telerik/feedback/AppFeedback;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "variableValue":Ljava/lang/String;
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0    # "appResId":I
    .end local v3    # "variableName":Ljava/lang/String;
    .end local v4    # "variableValue":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 67
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "i":I
    :goto_2
    return v5

    .line 57
    :cond_1
    const-string v6, "initialize"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 58
    invoke-direct {p0, p2}, Lcom/telerik/feedback/AppFeedback;->initialize(Lorg/json/JSONArray;)V

    .line 66
    :goto_3
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_2

    .line 59
    :cond_2
    const-string v6, "showfeedback"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 60
    invoke-direct {p0}, Lcom/telerik/feedback/AppFeedback;->showFeedback()V

    goto :goto_3

    .line 62
    :cond_3
    const-string v5, "Method not found"

    invoke-virtual {p3, v5}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 63
    const/4 v5, 0x0

    goto :goto_2

    .line 52
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v2    # "i":I
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 122
    const-string v0, "onGotXWalkBitmap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "data":Ljava/lang/Object;
    iput-object p2, p0, Lcom/telerik/feedback/AppFeedback;->crosswalkScreenshot:Landroid/graphics/Bitmap;

    .line 124
    iget-object v0, p0, Lcom/telerik/feedback/AppFeedback;->crosswalkLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 126
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendFeedbackFinished()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/feedback/AppFeedback;->shouldShowFeedback:Z

    .line 73
    return-void
.end method
