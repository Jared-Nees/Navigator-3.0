.class Lnl/xservices/plugins/SocialSharing$4$1;
.super Ljava/lang/Object;
.source "SocialSharing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/SocialSharing$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnl/xservices/plugins/SocialSharing$4;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/SocialSharing$4;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lnl/xservices/plugins/SocialSharing$4;

    .prologue
    .line 618
    iput-object p1, p0, Lnl/xservices/plugins/SocialSharing$4$1;->this$1:Lnl/xservices/plugins/SocialSharing$4;

    iput-object p2, p0, Lnl/xservices/plugins/SocialSharing$4$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 620
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$4$1;->this$1:Lnl/xservices/plugins/SocialSharing$4;

    iget-object v0, v0, Lnl/xservices/plugins/SocialSharing$4;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v0, v0, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$4$1;->this$1:Lnl/xservices/plugins/SocialSharing$4;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing$4;->val$plugin:Lnl/xservices/plugins/SocialSharing;

    iget-object v2, p0, Lnl/xservices/plugins/SocialSharing$4$1;->val$intent:Landroid/content/Intent;

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    .line 621
    return-void
.end method
