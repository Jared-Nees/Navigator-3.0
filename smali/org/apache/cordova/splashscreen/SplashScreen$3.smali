.class Lorg/apache/cordova/splashscreen/SplashScreen$3;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/splashscreen/SplashScreen;->removeSplashScreen()V
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
    .line 210
    iput-object p1, p0, Lorg/apache/cordova/splashscreen/SplashScreen$3;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 212
    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$000()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$000()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lorg/apache/cordova/splashscreen/SplashScreen$3;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v2}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$100(Lorg/apache/cordova/splashscreen/SplashScreen;)I

    move-result v1

    .line 214
    .local v1, "fadeSplashScreenDuration":I
    if-lez v1, :cond_1

    .line 215
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 216
    .local v0, "fadeOut":Landroid/view/animation/AlphaAnimation;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 217
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 219
    iget-object v2, p0, Lorg/apache/cordova/splashscreen/SplashScreen$3;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v2}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$200(Lorg/apache/cordova/splashscreen/SplashScreen;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 220
    iget-object v2, p0, Lorg/apache/cordova/splashscreen/SplashScreen$3;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v2}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$200(Lorg/apache/cordova/splashscreen/SplashScreen;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 222
    new-instance v2, Lorg/apache/cordova/splashscreen/SplashScreen$3$1;

    invoke-direct {v2, p0}, Lorg/apache/cordova/splashscreen/SplashScreen$3$1;-><init>(Lorg/apache/cordova/splashscreen/SplashScreen$3;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 248
    .end local v0    # "fadeOut":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "fadeSplashScreenDuration":I
    :cond_0
    :goto_0
    return-void

    .line 242
    .restart local v1    # "fadeSplashScreenDuration":I
    :cond_1
    iget-object v2, p0, Lorg/apache/cordova/splashscreen/SplashScreen$3;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v2}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$300(Lorg/apache/cordova/splashscreen/SplashScreen;)V

    .line 243
    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$000()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 244
    invoke-static {v3}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$002(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 245
    iget-object v2, p0, Lorg/apache/cordova/splashscreen/SplashScreen$3;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v2, v3}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$202(Lorg/apache/cordova/splashscreen/SplashScreen;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    goto :goto_0
.end method
