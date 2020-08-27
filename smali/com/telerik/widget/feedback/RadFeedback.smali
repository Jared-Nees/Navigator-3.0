.class public Lcom/telerik/widget/feedback/RadFeedback;
.super Ljava/lang/Object;
.source "RadFeedback.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/widget/feedback/RadFeedback$RequestResult;,
        Lcom/telerik/widget/feedback/RadFeedback$OnSubmitFeedbackFinishedCallback;,
        Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;,
        Lcom/telerik/widget/feedback/RadFeedback$OnSendFeedbackFinishedListener;,
        Lcom/telerik/widget/feedback/RadFeedback$OnAuthorPromptConfirmedListener;,
        Lcom/telerik/widget/feedback/RadFeedback$MainMenuAdapter;
    }
.end annotation


# static fields
.field static final ALL_ITEMS:I = 0x0

.field private static final MAX_STREAM_SIZE:D = 500000.0

.field static final OPEN_ITEMS:I = 0x1

.field private static final PNG_COMPRESS_QUALITY:B = 0x32t

.field static final RESOLVED_ITEMS:I = 0x2

.field private static final SHOW_PREFS_PROMPT:Ljava/lang/String; = "showPrefsDialog"

.field private static final SIZE_COEFFICIENT:F = 0.85f

.field static final STATUS_OPEN:Ljava/lang/String; = "open"

.field private static final USER_AUTHOR_KEY:Ljava/lang/String; = "author"

.field private static final USER_PREFS_FILENAME:Ljava/lang/String; = "feedback_user_prefs"

.field private static instance:Lcom/telerik/widget/feedback/RadFeedback;


# instance fields
.field private apiKey:Ljava/lang/String;

.field private bitmapResolver:Lcom/telerik/widget/feedback/BitmapResolver;

.field private currentAuthorName:Ljava/lang/String;

.field private customContent:Lorg/json/JSONObject;

.field feedbackFinishedListener:Lcom/telerik/widget/feedback/RadFeedback$OnSendFeedbackFinishedListener;

.field private initiatingContext:Landroid/content/Context;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/telerik/widget/feedback/MainMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private pendingTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private popup:Landroid/app/AlertDialog;

.field private selectedItem:Lcom/telerik/widget/feedback/FeedbackItem;

.field private serviceUri:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->items:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->pendingTasks:Ljava/util/HashMap;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/telerik/widget/feedback/RadFeedback;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/RadFeedback;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/telerik/widget/feedback/RadFeedback;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/RadFeedback;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/telerik/widget/feedback/RadFeedback;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/RadFeedback;
    .param p1, "x1"    # Ljava/io/InputStream;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/telerik/widget/feedback/RadFeedback;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/telerik/widget/feedback/RadFeedback;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/RadFeedback;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->pendingTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/telerik/widget/feedback/RadFeedback;)Lcom/telerik/widget/feedback/SystemInfo;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/RadFeedback;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/telerik/widget/feedback/RadFeedback;->getSystemInfo()Lcom/telerik/widget/feedback/SystemInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/telerik/widget/feedback/RadFeedback;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/RadFeedback;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->customContent:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$600(Lcom/telerik/widget/feedback/RadFeedback;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/RadFeedback;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/telerik/widget/feedback/RadFeedback;->getScaledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 264
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 265
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 269
    .local v1, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 281
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 276
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 277
    :catch_1
    move-exception v0

    .line 278
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 277
    :catch_2
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 275
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 276
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 279
    :goto_2
    throw v4

    .line 277
    :catch_3
    move-exception v0

    .line 278
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private getMenuItem(I)Lcom/telerik/widget/feedback/MainMenuItem;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 636
    iget-object v3, p0, Lcom/telerik/widget/feedback/RadFeedback;->initiatingContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/telerik/widget/feedback/RadFeedback;->prepareMenuItems(Landroid/content/Context;)V

    .line 637
    iget-object v3, p0, Lcom/telerik/widget/feedback/RadFeedback;->initiatingContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 638
    .local v2, "r":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/telerik/widget/feedback/RadFeedback;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/feedback/MainMenuItem;

    .line 639
    .local v1, "item":Lcom/telerik/widget/feedback/MainMenuItem;
    invoke-virtual {v1}, Lcom/telerik/widget/feedback/MainMenuItem;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 644
    .end local v1    # "item":Lcom/telerik/widget/feedback/MainMenuItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getScaledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "photo"    # Landroid/graphics/Bitmap;
    .param p2, "streamSize"    # I

    .prologue
    .line 659
    const-wide v4, 0x411e848000000000L    # 500000.0

    int-to-double v6, p2

    div-double v0, v4, v6

    .line 660
    .local v0, "coef":D
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 661
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v0

    const-wide v6, 0x3feb333340000000L    # 0.8500000238418579

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 662
    .local v2, "h":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/2addr v4, v2

    int-to-double v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-int v3, v4

    .line 663
    .local v3, "w":I
    const/4 v4, 0x1

    invoke-static {p1, v3, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 664
    return-object p1
.end method

.method private getSystemInfo()Lcom/telerik/widget/feedback/SystemInfo;
    .locals 7

    .prologue
    .line 490
    new-instance v4, Lcom/telerik/widget/feedback/SystemInfo;

    invoke-direct {v4}, Lcom/telerik/widget/feedback/SystemInfo;-><init>()V

    .line 491
    .local v4, "result":Lcom/telerik/widget/feedback/SystemInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/telerik/widget/feedback/SystemInfo;->setModel(Ljava/lang/String;)V

    .line 492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Android: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " API level: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/telerik/widget/feedback/SystemInfo;->setOSVersion(Ljava/lang/String;)V

    .line 494
    iget-object v5, p0, Lcom/telerik/widget/feedback/RadFeedback;->initiatingContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 495
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/telerik/widget/feedback/SystemInfo;->setAppId(Ljava/lang/String;)V

    .line 498
    :try_start_0
    iget-object v5, p0, Lcom/telerik/widget/feedback/RadFeedback;->initiatingContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/telerik/widget/feedback/RadFeedback;->initiatingContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 500
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/telerik/widget/feedback/SystemInfo;->setAppVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/telerik/widget/feedback/RadFeedback;->initiatingContext:Landroid/content/Context;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 506
    iget-object v5, p0, Lcom/telerik/widget/feedback/RadFeedback;->initiatingContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/telerik/widget/feedback/SystemInfo;->setWidthInPixels(Ljava/lang/String;)V

    .line 507
    iget-object v5, p0, Lcom/telerik/widget/feedback/RadFeedback;->initiatingContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/telerik/widget/feedback/SystemInfo;->setHeightInPixels(Ljava/lang/String;)V

    .line 509
    :cond_0
    iget-object v5, p0, Lcom/telerik/widget/feedback/RadFeedback;->uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/telerik/widget/feedback/SystemInfo;->setUuid(Ljava/lang/String;)V

    .line 510
    return-object v4

    .line 501
    :catch_0
    move-exception v1

    .line 502
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Feedback"

    const-string v6, "Error retrieving app version."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initUserDetails()V
    .locals 4

    .prologue
    .line 514
    iget-object v1, p0, Lcom/telerik/widget/feedback/RadFeedback;->initiatingContext:Landroid/content/Context;

    const-string v2, "feedback_user_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 515
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "author"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/telerik/widget/feedback/RadFeedback;->currentAuthorName:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public static instance()Lcom/telerik/widget/feedback/RadFeedback;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/telerik/widget/feedback/RadFeedback;->instance:Lcom/telerik/widget/feedback/RadFeedback;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/telerik/widget/feedback/RadFeedback;

    invoke-direct {v0}, Lcom/telerik/widget/feedback/RadFeedback;-><init>()V

    sput-object v0, Lcom/telerik/widget/feedback/RadFeedback;->instance:Lcom/telerik/widget/feedback/RadFeedback;

    .line 96
    :cond_0
    sget-object v0, Lcom/telerik/widget/feedback/RadFeedback;->instance:Lcom/telerik/widget/feedback/RadFeedback;

    return-object v0
.end method

.method private prepareMenuItems(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 605
    new-instance v2, Lcom/telerik/widget/feedback/MainMenuItem;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/telerik/widget/feedback/R$string;->action_send_feedback:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/telerik/widget/feedback/R$string;->send_feedback_desc:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/telerik/widget/feedback/SendFeedbackActivity;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/telerik/widget/feedback/MainMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 607
    .local v2, "sendItem":Lcom/telerik/widget/feedback/MainMenuItem;
    new-instance v3, Lcom/telerik/widget/feedback/RadFeedback$9;

    invoke-direct {v3, p0, v2}, Lcom/telerik/widget/feedback/RadFeedback$9;-><init>(Lcom/telerik/widget/feedback/RadFeedback;Lcom/telerik/widget/feedback/MainMenuItem;)V

    invoke-virtual {v2, v3}, Lcom/telerik/widget/feedback/MainMenuItem;->setInitAction(Lcom/telerik/widget/feedback/MainMenuItem$InitAction;)V

    .line 625
    new-instance v1, Lcom/telerik/widget/feedback/MainMenuItem;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/telerik/widget/feedback/R$string;->action_view_feedback:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/telerik/widget/feedback/R$string;->view_feedback_desc:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/telerik/widget/feedback/ViewFeedbackActivity;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v3, v4, v5}, Lcom/telerik/widget/feedback/MainMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 627
    .local v1, "readItem":Lcom/telerik/widget/feedback/MainMenuItem;
    new-instance v0, Lcom/telerik/widget/feedback/MainMenuItem;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/telerik/widget/feedback/R$string;->action_edit_settings:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/telerik/widget/feedback/R$string;->edit_settings_desc:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/telerik/widget/feedback/EditDetailsActivity;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v3, v4, v5}, Lcom/telerik/widget/feedback/MainMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 629
    .local v0, "detailsItem":Lcom/telerik/widget/feedback/MainMenuItem;
    iget-object v3, p0, Lcom/telerik/widget/feedback/RadFeedback;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 630
    iget-object v3, p0, Lcom/telerik/widget/feedback/RadFeedback;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    iget-object v3, p0, Lcom/telerik/widget/feedback/RadFeedback;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v3, p0, Lcom/telerik/widget/feedback/RadFeedback;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    return-void
.end method


# virtual methods
.method public apiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method cancelTask(I)V
    .locals 2
    .param p1, "taskHash"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->pendingTasks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->pendingTasks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 370
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->pendingTasks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_0
    return-void
.end method

.method public getBitmapResolver()Lcom/telerik/widget/feedback/BitmapResolver;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->bitmapResolver:Lcom/telerik/widget/feedback/BitmapResolver;

    return-object v0
.end method

.method getCommentsForItem(Lcom/telerik/widget/feedback/FeedbackItem;Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;)I
    .locals 4
    .param p1, "item"    # Lcom/telerik/widget/feedback/FeedbackItem;
    .param p2, "callback"    # Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;

    .prologue
    .line 383
    new-instance v0, Lcom/telerik/widget/feedback/RadFeedback$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/telerik/widget/feedback/RadFeedback$3;-><init>(Lcom/telerik/widget/feedback/RadFeedback;Lcom/telerik/widget/feedback/FeedbackItem;Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;)V

    .line 429
    .local v0, "getCommentsTask":Landroid/os/AsyncTask;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 430
    .local v1, "hash":I
    iget-object v2, p0, Lcom/telerik/widget/feedback/RadFeedback;->pendingTasks:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 432
    return v1
.end method

.method getCurrentAuthorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->currentAuthorName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/telerik/widget/feedback/RadFeedback;->initUserDetails()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->currentAuthorName:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentItems(Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;III)I
    .locals 7
    .param p1, "callback"    # Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;
    .param p2, "filter"    # I
    .param p3, "page"    # I
    .param p4, "pageSize"    # I

    .prologue
    .line 197
    new-instance v0, Lcom/telerik/widget/feedback/RadFeedback$1;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/telerik/widget/feedback/RadFeedback$1;-><init>(Lcom/telerik/widget/feedback/RadFeedback;IIILcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;)V

    .line 256
    .local v0, "getThreadsTask":Landroid/os/AsyncTask;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    .line 257
    .local v6, "hash":I
    iget-object v1, p0, Lcom/telerik/widget/feedback/RadFeedback;->pendingTasks:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 259
    return v6
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "serviceUri"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .prologue
    .line 121
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "apiKey must not be null or empty."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    :cond_2
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "serviceUri must not be null or empty."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 130
    :cond_4
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "uid must not be null or empty."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_5
    iput-object p1, p0, Lcom/telerik/widget/feedback/RadFeedback;->apiKey:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lcom/telerik/widget/feedback/RadFeedback;->serviceUri:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lcom/telerik/widget/feedback/RadFeedback;->uid:Ljava/lang/String;

    .line 136
    new-instance v0, Lcom/telerik/widget/feedback/BitmapResolverBase;

    invoke-direct {v0}, Lcom/telerik/widget/feedback/BitmapResolverBase;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->bitmapResolver:Lcom/telerik/widget/feedback/BitmapResolver;

    .line 137
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 649
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/telerik/widget/feedback/RadFeedback;->popup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 650
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/feedback/MainMenuItem;

    .line 651
    .local v1, "targetItem":Lcom/telerik/widget/feedback/MainMenuItem;
    invoke-virtual {v1}, Lcom/telerik/widget/feedback/MainMenuItem;->getInitAction()Lcom/telerik/widget/feedback/MainMenuItem$InitAction;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 652
    invoke-virtual {v1}, Lcom/telerik/widget/feedback/MainMenuItem;->getInitAction()Lcom/telerik/widget/feedback/MainMenuItem$InitAction;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/telerik/widget/feedback/MainMenuItem$InitAction;->init(Landroid/content/Context;)V

    .line 654
    :cond_0
    invoke-virtual {v1}, Lcom/telerik/widget/feedback/MainMenuItem;->intent()Landroid/content/Intent;

    move-result-object v0

    .line 655
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 656
    return-void
.end method

.method onSendFeedbackFinished()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->feedbackFinishedListener:Lcom/telerik/widget/feedback/RadFeedback$OnSendFeedbackFinishedListener;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->feedbackFinishedListener:Lcom/telerik/widget/feedback/RadFeedback$OnSendFeedbackFinishedListener;

    invoke-interface {v0}, Lcom/telerik/widget/feedback/RadFeedback$OnSendFeedbackFinishedListener;->sendFeedbackFinished()V

    .line 541
    :cond_0
    return-void
.end method

.method selectItem(Lcom/telerik/widget/feedback/FeedbackItem;)V
    .locals 0
    .param p1, "item"    # Lcom/telerik/widget/feedback/FeedbackItem;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/telerik/widget/feedback/RadFeedback;->selectedItem:Lcom/telerik/widget/feedback/FeedbackItem;

    .line 171
    return-void
.end method

.method selectedItem()Lcom/telerik/widget/feedback/FeedbackItem;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->selectedItem:Lcom/telerik/widget/feedback/FeedbackItem;

    return-object v0
.end method

.method public serviceUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->serviceUri:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalContent(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "additionalContent"    # Lorg/json/JSONObject;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/telerik/widget/feedback/RadFeedback;->customContent:Lorg/json/JSONObject;

    .line 472
    return-void
.end method

.method public setBitmapResolver(Lcom/telerik/widget/feedback/BitmapResolver;)V
    .locals 1
    .param p1, "bitmapResolver"    # Lcom/telerik/widget/feedback/BitmapResolver;

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Lcom/telerik/widget/feedback/BitmapResolverBase;

    invoke-direct {v0}, Lcom/telerik/widget/feedback/BitmapResolverBase;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback;->bitmapResolver:Lcom/telerik/widget/feedback/BitmapResolver;

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/telerik/widget/feedback/RadFeedback;->bitmapResolver:Lcom/telerik/widget/feedback/BitmapResolver;

    .line 108
    return-void
.end method

.method setCurrentAuthorName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/telerik/widget/feedback/RadFeedback;->currentAuthorName:Ljava/lang/String;

    .line 179
    invoke-virtual {p0, p1}, Lcom/telerik/widget/feedback/RadFeedback;->storeUserDetails(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public setOnFeedbackFinishedListener(Lcom/telerik/widget/feedback/RadFeedback$OnSendFeedbackFinishedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/telerik/widget/feedback/RadFeedback$OnSendFeedbackFinishedListener;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/telerik/widget/feedback/RadFeedback;->feedbackFinishedListener:Lcom/telerik/widget/feedback/RadFeedback$OnSendFeedbackFinishedListener;

    .line 147
    return-void
.end method

.method shouldShowPrefPrompt()Z
    .locals 4

    .prologue
    .line 533
    iget-object v1, p0, Lcom/telerik/widget/feedback/RadFeedback;->initiatingContext:Landroid/content/Context;

    const-string v2, "feedback_user_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 534
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "showPrefsDialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public show(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/telerik/widget/feedback/RadFeedback;->initiatingContext:Landroid/content/Context;

    .line 443
    sget v4, Lcom/telerik/widget/feedback/R$layout;->main_menu_content:I

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 444
    .local v3, "rootView":Landroid/widget/LinearLayout;
    sget v4, Lcom/telerik/widget/feedback/R$id;->menuList:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 445
    .local v2, "mainMenuList":Landroid/widget/ListView;
    new-instance v0, Lcom/telerik/widget/feedback/RadFeedback$MainMenuAdapter;

    iget-object v4, p0, Lcom/telerik/widget/feedback/RadFeedback;->items:Ljava/util/ArrayList;

    sget v5, Lcom/telerik/widget/feedback/R$layout;->main_menu_list_item:I

    invoke-direct {v0, p0, v4, p1, v5}, Lcom/telerik/widget/feedback/RadFeedback$MainMenuAdapter;-><init>(Lcom/telerik/widget/feedback/RadFeedback;Ljava/util/ArrayList;Landroid/content/Context;I)V

    .line 446
    .local v0, "adapter":Lcom/telerik/widget/feedback/RadFeedback$MainMenuAdapter;
    invoke-direct {p0, p1}, Lcom/telerik/widget/feedback/RadFeedback;->prepareMenuItems(Landroid/content/Context;)V

    .line 447
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 448
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 449
    .local v1, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/telerik/widget/feedback/RadFeedback;->popup:Landroid/app/AlertDialog;

    .line 450
    iget-object v4, p0, Lcom/telerik/widget/feedback/RadFeedback;->popup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 451
    iget-object v4, p0, Lcom/telerik/widget/feedback/RadFeedback;->popup:Landroid/app/AlertDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 452
    iget-object v4, p0, Lcom/telerik/widget/feedback/RadFeedback;->popup:Landroid/app/AlertDialog;

    new-instance v5, Lcom/telerik/widget/feedback/RadFeedback$4;

    invoke-direct {v5, p0}, Lcom/telerik/widget/feedback/RadFeedback$4;-><init>(Lcom/telerik/widget/feedback/RadFeedback;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 458
    iget-object v4, p0, Lcom/telerik/widget/feedback/RadFeedback;->popup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 459
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 460
    return-void
.end method

.method showAuthorNamePrompt(Landroid/content/Context;Lcom/telerik/widget/feedback/RadFeedback$OnAuthorPromptConfirmedListener;)V
    .locals 11
    .param p1, "callingContext"    # Landroid/content/Context;
    .param p2, "promptConfirmedListener"    # Lcom/telerik/widget/feedback/RadFeedback$OnAuthorPromptConfirmedListener;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 544
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 546
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v7, Lcom/telerik/widget/feedback/R$layout;->popup_edit_details:I

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 547
    .local v3, "rootView":Landroid/view/View;
    sget v7, Lcom/telerik/widget/feedback/R$id;->txtAuthorName:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 548
    .local v5, "txtAuthor":Landroid/widget/EditText;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 549
    iget-object v7, p0, Lcom/telerik/widget/feedback/RadFeedback;->initiatingContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/telerik/widget/feedback/R$string;->title_activity_edit_details:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 550
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 552
    new-instance v4, Landroid/text/SpannableString;

    iget-object v7, p0, Lcom/telerik/widget/feedback/RadFeedback;->initiatingContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/telerik/widget/feedback/R$string;->feedback_continue_info:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 553
    .local v4, "spString":Landroid/text/SpannableString;
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v4, v7, v10, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 555
    new-instance v7, Lcom/telerik/widget/feedback/RadFeedback$5;

    invoke-direct {v7, p0, v5, p2}, Lcom/telerik/widget/feedback/RadFeedback$5;-><init>(Lcom/telerik/widget/feedback/RadFeedback;Landroid/widget/EditText;Lcom/telerik/widget/feedback/RadFeedback$OnAuthorPromptConfirmedListener;)V

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 565
    iget-object v7, p0, Lcom/telerik/widget/feedback/RadFeedback;->initiatingContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/telerik/widget/feedback/R$string;->feedback_button_text_anonymous:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/telerik/widget/feedback/RadFeedback$6;

    invoke-direct {v8, p0, p2}, Lcom/telerik/widget/feedback/RadFeedback$6;-><init>(Lcom/telerik/widget/feedback/RadFeedback;Lcom/telerik/widget/feedback/RadFeedback$OnAuthorPromptConfirmedListener;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 574
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 575
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v6, Lcom/telerik/widget/feedback/RadFeedback$7;

    invoke-direct {v6, p0, v2}, Lcom/telerik/widget/feedback/RadFeedback$7;-><init>(Lcom/telerik/widget/feedback/RadFeedback;Landroid/app/AlertDialog;)V

    .line 591
    .local v6, "watcher":Landroid/text/TextWatcher;
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 593
    new-instance v7, Lcom/telerik/widget/feedback/RadFeedback$8;

    invoke-direct {v7, p0, v5, v6}, Lcom/telerik/widget/feedback/RadFeedback$8;-><init>(Lcom/telerik/widget/feedback/RadFeedback;Landroid/widget/EditText;Landroid/text/TextWatcher;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 599
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 600
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 601
    .local v1, "button":Landroid/widget/Button;
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 602
    return-void
.end method

.method public showSendFeedback(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/telerik/widget/feedback/RadFeedback;->initiatingContext:Landroid/content/Context;

    .line 481
    sget v2, Lcom/telerik/widget/feedback/R$string;->action_send_feedback:I

    invoke-direct {p0, v2}, Lcom/telerik/widget/feedback/RadFeedback;->getMenuItem(I)Lcom/telerik/widget/feedback/MainMenuItem;

    move-result-object v1

    .line 482
    .local v1, "sendFeedbackItem":Lcom/telerik/widget/feedback/MainMenuItem;
    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {v1}, Lcom/telerik/widget/feedback/MainMenuItem;->getInitAction()Lcom/telerik/widget/feedback/MainMenuItem$InitAction;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/telerik/widget/feedback/MainMenuItem$InitAction;->init(Landroid/content/Context;)V

    .line 484
    invoke-virtual {v1}, Lcom/telerik/widget/feedback/MainMenuItem;->intent()Landroid/content/Intent;

    move-result-object v0

    .line 485
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 487
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method storeShouldShowPrefPrompt(Z)V
    .locals 5
    .param p1, "shouldShow"    # Z

    .prologue
    .line 526
    iget-object v2, p0, Lcom/telerik/widget/feedback/RadFeedback;->initiatingContext:Landroid/content/Context;

    const-string v3, "feedback_user_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 527
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 528
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "showPrefsDialog"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 529
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 530
    return-void
.end method

.method storeUserDetails(Ljava/lang/String;)V
    .locals 5
    .param p1, "authorName"    # Ljava/lang/String;

    .prologue
    .line 519
    iget-object v2, p0, Lcom/telerik/widget/feedback/RadFeedback;->initiatingContext:Landroid/content/Context;

    const-string v3, "feedback_user_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 520
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 521
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "author"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 522
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 523
    return-void
.end method

.method submitFeedback(Ljava/util/ArrayList;Ljava/lang/String;Lcom/telerik/widget/feedback/RadFeedback$OnSubmitFeedbackFinishedCallback;)I
    .locals 4
    .param p2, "rootId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/telerik/widget/feedback/RadFeedback$OnSubmitFeedbackFinishedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/telerik/widget/feedback/FeedbackItem;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/telerik/widget/feedback/RadFeedback$OnSubmitFeedbackFinishedCallback;",
            ")I"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/feedback/FeedbackItem;>;"
    new-instance v1, Lcom/telerik/widget/feedback/RadFeedback$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/telerik/widget/feedback/RadFeedback$2;-><init>(Lcom/telerik/widget/feedback/RadFeedback;Ljava/lang/String;Ljava/util/ArrayList;Lcom/telerik/widget/feedback/RadFeedback$OnSubmitFeedbackFinishedCallback;)V

    .line 361
    .local v1, "submitFeedbackTask":Landroid/os/AsyncTask;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 362
    .local v0, "hash":I
    iget-object v2, p0, Lcom/telerik/widget/feedback/RadFeedback;->pendingTasks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 364
    return v0
.end method
