.class Lorg/apache/cordova/splashscreen/SplashScreen$5;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/splashscreen/SplashScreen;->spinnerStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/splashscreen/SplashScreen;


# direct methods
.method constructor <init>(Lorg/apache/cordova/splashscreen/SplashScreen;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/splashscreen/SplashScreen;

    .prologue
    .line 333
    iput-object p1, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 335
    iget-object v3, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v3}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$300(Lorg/apache/cordova/splashscreen/SplashScreen;)V

    .line 337
    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    iget-object v4, v4, Lorg/apache/cordova/splashscreen/SplashScreen;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1002(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 338
    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1000()Landroid/app/ProgressDialog;

    move-result-object v3

    new-instance v4, Lorg/apache/cordova/splashscreen/SplashScreen$5$1;

    invoke-direct {v4, p0}, Lorg/apache/cordova/splashscreen/SplashScreen$5$1;-><init>(Lorg/apache/cordova/splashscreen/SplashScreen$5;)V

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 344
    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1000()Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 345
    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1000()Landroid/app/ProgressDialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 347
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    iget-object v3, v3, Lorg/apache/cordova/splashscreen/SplashScreen;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 348
    .local v0, "centeredLayout":Landroid/widget/RelativeLayout;
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 349
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    new-instance v2, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lorg/apache/cordova/splashscreen/SplashScreen$5;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    iget-object v3, v3, Lorg/apache/cordova/splashscreen/SplashScreen;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 352
    .local v2, "progressBar":Landroid/widget/ProgressBar;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 353
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 354
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 358
    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1000()Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 359
    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1000()Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1000()Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 362
    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1000()Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    .line 363
    return-void
.end method
