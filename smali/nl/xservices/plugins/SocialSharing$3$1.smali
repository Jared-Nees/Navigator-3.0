.class Lnl/xservices/plugins/SocialSharing$3$1;
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
    .line 324
    iput-object p1, p0, Lnl/xservices/plugins/SocialSharing$3$1;->this$1:Lnl/xservices/plugins/SocialSharing$3;

    iput-object p2, p0, Lnl/xservices/plugins/SocialSharing$3$1;->val$sendIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 326
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$3$1;->this$1:Lnl/xservices/plugins/SocialSharing$3;

    iget-object v0, v0, Lnl/xservices/plugins/SocialSharing$3;->val$mycordova:Lorg/apache/cordova/CordovaInterface;

    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$3$1;->this$1:Lnl/xservices/plugins/SocialSharing$3;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing$3;->val$plugin:Lorg/apache/cordova/CordovaPlugin;

    iget-object v2, p0, Lnl/xservices/plugins/SocialSharing$3$1;->val$sendIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    .line 327
    return-void
.end method
