.class Lnl/xservices/plugins/SocialSharing$3$3;
.super Ljava/lang/Object;
.source "SocialSharing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/SocialSharing$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnl/xservices/plugins/SocialSharing$3;

.field final synthetic val$sendIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/SocialSharing$3;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lnl/xservices/plugins/SocialSharing$3;

    .prologue
    .line 351
    iput-object p1, p0, Lnl/xservices/plugins/SocialSharing$3$3;->this$1:Lnl/xservices/plugins/SocialSharing$3;

    iput-object p2, p0, Lnl/xservices/plugins/SocialSharing$3$3;->val$sendIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 353
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$3$3;->this$1:Lnl/xservices/plugins/SocialSharing$3;

    iget-object v1, v0, Lnl/xservices/plugins/SocialSharing$3;->val$mycordova:Lorg/apache/cordova/CordovaInterface;

    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$3$3;->this$1:Lnl/xservices/plugins/SocialSharing$3;

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$3;->val$plugin:Lorg/apache/cordova/CordovaPlugin;

    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$3$3;->val$sendIntent:Landroid/content/Intent;

    iget-object v3, p0, Lnl/xservices/plugins/SocialSharing$3$3;->this$1:Lnl/xservices/plugins/SocialSharing$3;

    iget-object v3, v3, Lnl/xservices/plugins/SocialSharing$3;->val$chooserTitle:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$3$3;->this$1:Lnl/xservices/plugins/SocialSharing$3;

    iget-boolean v0, v0, Lnl/xservices/plugins/SocialSharing$3;->val$boolResult:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    .line 354
    return-void

    .line 353
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
