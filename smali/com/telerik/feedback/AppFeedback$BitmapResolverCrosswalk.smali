.class Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk;
.super Ljava/lang/Object;
.source "AppFeedback.java"

# interfaces
.implements Lcom/telerik/widget/feedback/BitmapResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/feedback/AppFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapResolverCrosswalk"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/feedback/AppFeedback;


# direct methods
.method private constructor <init>(Lcom/telerik/feedback/AppFeedback;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk;->this$0:Lcom/telerik/feedback/AppFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/telerik/feedback/AppFeedback;Lcom/telerik/feedback/AppFeedback$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/telerik/feedback/AppFeedback;
    .param p2, "x1"    # Lcom/telerik/feedback/AppFeedback$1;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk;-><init>(Lcom/telerik/feedback/AppFeedback;)V

    return-void
.end method


# virtual methods
.method public getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v3, p0, Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk;->this$0:Lcom/telerik/feedback/AppFeedback;

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v3, v4}, Lcom/telerik/feedback/AppFeedback;->access$102(Lcom/telerik/feedback/AppFeedback;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 98
    iget-object v3, p0, Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk;->this$0:Lcom/telerik/feedback/AppFeedback;

    iget-object v3, v3, Lcom/telerik/feedback/AppFeedback;->webView:Lorg/apache/cordova/CordovaWebView;

    const-string v4, "captureXWalkBitmap"

    invoke-interface {v3, v4, p0}, Lorg/apache/cordova/CordovaWebView;->postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :try_start_0
    iget-object v3, p0, Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk;->this$0:Lcom/telerik/feedback/AppFeedback;

    invoke-static {v3}, Lcom/telerik/feedback/AppFeedback;->access$100(Lcom/telerik/feedback/AppFeedback;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    iget-object v3, p0, Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk;->this$0:Lcom/telerik/feedback/AppFeedback;

    invoke-static {v3}, Lcom/telerik/feedback/AppFeedback;->access$200(Lcom/telerik/feedback/AppFeedback;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk;->this$0:Lcom/telerik/feedback/AppFeedback;

    iget-object v3, v3, Lcom/telerik/feedback/AppFeedback;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v2, "latchErrorBuilder":Landroid/app/AlertDialog$Builder;
    const-string v3, "AppFeedback Error"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 106
    const-string v3, "Cancel"

    new-instance v4, Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk$1;

    invoke-direct {v4, p0}, Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk$1;-><init>(Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 113
    .local v1, "latchError":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
