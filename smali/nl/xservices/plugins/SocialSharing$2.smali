.class Lnl/xservices/plugins/SocialSharing$2;
.super Ljava/lang/Object;
.source "SocialSharing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/SocialSharing;->executeInThreadPool(Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/xservices/plugins/SocialSharing;

.field final synthetic val$runnable:Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/SocialSharing;Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lnl/xservices/plugins/SocialSharing;

    .prologue
    .line 198
    iput-object p1, p0, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    iput-object p2, p0, Lnl/xservices/plugins/SocialSharing$2;->val$runnable:Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$2;->val$runnable:Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;

    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[#?].*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;->currentPageUrl:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v0, v0, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$2;->val$runnable:Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method
