.class Lnl/xservices/plugins/SocialSharing$4;
.super Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;
.source "SocialSharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/SocialSharing;->shareViaWhatsAppDirectly(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/xservices/plugins/SocialSharing;

.field final synthetic val$files:Lorg/json/JSONArray;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$plugin:Lnl/xservices/plugins/SocialSharing;

.field final synthetic val$shareMessage:Ljava/lang/String;

.field final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lnl/xservices/plugins/SocialSharing;)V
    .locals 0
    .param p1, "this$0"    # Lnl/xservices/plugins/SocialSharing;
    .param p2, "cb"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 578
    iput-object p1, p0, Lnl/xservices/plugins/SocialSharing$4;->this$0:Lnl/xservices/plugins/SocialSharing;

    iput-object p3, p0, Lnl/xservices/plugins/SocialSharing$4;->val$number:Ljava/lang/String;

    iput-object p4, p0, Lnl/xservices/plugins/SocialSharing$4;->val$shareMessage:Ljava/lang/String;

    iput-object p5, p0, Lnl/xservices/plugins/SocialSharing$4;->val$subject:Ljava/lang/String;

    iput-object p6, p0, Lnl/xservices/plugins/SocialSharing$4;->val$files:Lorg/json/JSONArray;

    iput-object p7, p0, Lnl/xservices/plugins/SocialSharing$4;->val$plugin:Lnl/xservices/plugins/SocialSharing;

    invoke-direct {p0, p1, p2}, Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;-><init>(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 580
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smsto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnl/xservices/plugins/SocialSharing$4;->val$number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 583
    const-string v3, "sms_body"

    iget-object v4, p0, Lnl/xservices/plugins/SocialSharing$4;->val$shareMessage:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const-string v3, "sms_subject"

    iget-object v4, p0, Lnl/xservices/plugins/SocialSharing$4;->val$subject:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const-string v3, "com.whatsapp"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    :try_start_0
    iget-object v3, p0, Lnl/xservices/plugins/SocialSharing$4;->val$files:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, ""

    iget-object v4, p0, Lnl/xservices/plugins/SocialSharing$4;->val$files:Lorg/json/JSONArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 589
    iget-object v3, p0, Lnl/xservices/plugins/SocialSharing$4;->val$files:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-le v3, v10, :cond_1

    .line 590
    .local v10, "hasMultipleAttachments":Z
    :goto_0
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$4;->this$0:Lnl/xservices/plugins/SocialSharing;

    invoke-static {v0}, Lnl/xservices/plugins/SocialSharing;->access$200(Lnl/xservices/plugins/SocialSharing;)Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, "dir":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 592
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v9, "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v8, 0x0

    .line 594
    .local v8, "fileUri":Landroid/net/Uri;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$4;->val$files:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_2

    .line 595
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$4;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v3, p0, Lnl/xservices/plugins/SocialSharing$4;->val$files:Lorg/json/JSONArray;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnl/xservices/plugins/SocialSharing$4;->val$subject:Ljava/lang/String;

    invoke-virtual {p0}, Lnl/xservices/plugins/SocialSharing$4;->getCurrentPageURI()Ljava/net/URI;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lnl/xservices/plugins/SocialSharing;->access$300(Lnl/xservices/plugins/SocialSharing;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/net/URI;)Landroid/net/Uri;

    move-result-object v8

    .line 596
    if-eqz v8, :cond_0

    .line 597
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v2    # "dir":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "fileUri":Landroid/net/Uri;
    .end local v9    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v10    # "hasMultipleAttachments":Z
    :cond_1
    move v10, v0

    .line 589
    goto :goto_0

    .line 600
    .restart local v2    # "dir":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v8    # "fileUri":Landroid/net/Uri;
    .restart local v9    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v10    # "hasMultipleAttachments":Z
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 601
    if-eqz v10, :cond_4

    .line 602
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    .end local v2    # "dir":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "fileUri":Landroid/net/Uri;
    .end local v9    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v10    # "hasMultipleAttachments":Z
    :cond_3
    :goto_2
    const/high16 v0, 0x10000000

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 618
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$4;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v0, v0, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lnl/xservices/plugins/SocialSharing$4$1;

    invoke-direct {v3, p0, v1}, Lnl/xservices/plugins/SocialSharing$4$1;-><init>(Lnl/xservices/plugins/SocialSharing$4;Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 626
    :goto_3
    return-void

    .line 604
    .restart local v2    # "dir":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v8    # "fileUri":Landroid/net/Uri;
    .restart local v9    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v10    # "hasMultipleAttachments":Z
    :cond_4
    :try_start_2
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 609
    .end local v2    # "dir":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "fileUri":Landroid/net/Uri;
    .end local v9    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v10    # "hasMultipleAttachments":Z
    :catch_0
    move-exception v7

    .line 610
    .local v7, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$4;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 623
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 624
    .restart local v7    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing$4;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_3
.end method
