.class abstract Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;
.super Ljava/lang/Object;
.source "SocialSharing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/xservices/plugins/SocialSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SocialSharingRunnable"
.end annotation


# instance fields
.field public callbackContext:Lorg/apache/cordova/CallbackContext;

.field public currentPageUrl:Ljava/lang/String;

.field final synthetic this$0:Lnl/xservices/plugins/SocialSharing;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p2, "cb"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 66
    iput-object p1, p0, Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;->this$0:Lnl/xservices/plugins/SocialSharing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 68
    return-void
.end method


# virtual methods
.method public getCurrentPageURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;->currentPageUrl:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
