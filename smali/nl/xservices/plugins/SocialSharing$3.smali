.class Lnl/xservices/plugins/SocialSharing$3;
.super Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;
.source "SocialSharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/SocialSharing;->doSendIntent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/xservices/plugins/SocialSharing;

.field final synthetic val$appPackageName:Ljava/lang/String;

.field final synthetic val$boolResult:Z

.field final synthetic val$chooserTitle:Ljava/lang/String;

.field final synthetic val$files:Lorg/json/JSONArray;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$mycordova:Lorg/apache/cordova/CordovaInterface;

.field final synthetic val$peek:Z

.field final synthetic val$plugin:Lorg/apache/cordova/CordovaPlugin;

.field final synthetic val$subject:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaPlugin;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lnl/xservices/plugins/SocialSharing;
    .param p2, "cb"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 247
    iput-object p1, p0, Lnl/xservices/plugins/SocialSharing$3;->this$0:Lnl/xservices/plugins/SocialSharing;

    iput-object p3, p0, Lnl/xservices/plugins/SocialSharing$3;->val$msg:Ljava/lang/String;

    iput-object p4, p0, Lnl/xservices/plugins/SocialSharing$3;->val$files:Lorg/json/JSONArray;

    iput-object p5, p0, Lnl/xservices/plugins/SocialSharing$3;->val$subject:Ljava/lang/String;

    iput-object p6, p0, Lnl/xservices/plugins/SocialSharing$3;->val$url:Ljava/lang/String;

    iput-object p7, p0, Lnl/xservices/plugins/SocialSharing$3;->val$appPackageName:Ljava/lang/String;

    iput-boolean p8, p0, Lnl/xservices/plugins/SocialSharing$3;->val$peek:Z

    iput-object p9, p0, Lnl/xservices/plugins/SocialSharing$3;->val$mycordova:Lorg/apache/cordova/CordovaInterface;

    iput-object p10, p0, Lnl/xservices/plugins/SocialSharing$3;->val$plugin:Lorg/apache/cordova/CordovaPlugin;

    iput-object p11, p0, Lnl/xservices/plugins/SocialSharing$3;->val$chooserTitle:Ljava/lang/String;

    iput-boolean p12, p0, Lnl/xservices/plugins/SocialSharing$3;->val$boolResult:Z

    invoke-direct {p0, p1, p2}, Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;-><init>(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 249
    move-object/from16 v0, p0

    iget-object v15, v0, Lnl/xservices/plugins/SocialSharing$3;->val$msg:Ljava/lang/String;

    .line 250
    .local v15, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$3;->val$files:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_1

    const/4 v13, 0x1

    .line 251
    .local v13, "hasMultipleAttachments":Z
    :goto_0
    new-instance v3, Landroid/content/Intent;

    if-eqz v13, :cond_2

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    :goto_1
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v3, "sendIntent":Landroid/content/Intent;
    const/high16 v2, 0x80000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 255
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$3;->val$files:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_c

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lnl/xservices/plugins/SocialSharing$3;->val$files:Lorg/json/JSONArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$3;->this$0:Lnl/xservices/plugins/SocialSharing;

    invoke-static {v2}, Lnl/xservices/plugins/SocialSharing;->access$200(Lnl/xservices/plugins/SocialSharing;)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "dir":Ljava/lang/String;
    if-eqz v4, :cond_b

    .line 258
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v12, "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v11, 0x0

    .line 260
    .local v11, "fileUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$3;->val$files:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v7, v2, :cond_3

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$3;->this$0:Lnl/xservices/plugins/SocialSharing;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnl/xservices/plugins/SocialSharing$3;->val$files:Lorg/json/JSONArray;

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lnl/xservices/plugins/SocialSharing$3;->val$subject:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lnl/xservices/plugins/SocialSharing$3;->getCurrentPageURI()Ljava/net/URI;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lnl/xservices/plugins/SocialSharing;->access$300(Lnl/xservices/plugins/SocialSharing;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/net/URI;)Landroid/net/Uri;

    move-result-object v11

    .line 262
    if-eqz v11, :cond_0

    .line 263
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 250
    .end local v3    # "sendIntent":Landroid/content/Intent;
    .end local v4    # "dir":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v11    # "fileUri":Landroid/net/Uri;
    .end local v12    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v13    # "hasMultipleAttachments":Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 251
    .restart local v13    # "hasMultipleAttachments":Z
    :cond_2
    const-string v2, "android.intent.action.SEND"

    goto :goto_1

    .line 266
    .restart local v3    # "sendIntent":Landroid/content/Intent;
    .restart local v4    # "dir":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v11    # "fileUri":Landroid/net/Uri;
    .restart local v12    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 267
    if-eqz v13, :cond_a

    .line 268
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v3, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 283
    .end local v4    # "dir":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v11    # "fileUri":Landroid/net/Uri;
    .end local v12    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$3;->val$subject:Ljava/lang/String;

    invoke-static {v2}, Lnl/xservices/plugins/SocialSharing;->access$000(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 284
    const-string v2, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p0

    iget-object v5, v0, Lnl/xservices/plugins/SocialSharing$3;->val$subject:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$3;->val$url:Ljava/lang/String;

    invoke-static {v2}, Lnl/xservices/plugins/SocialSharing;->access$000(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 289
    invoke-static {v15}, Lnl/xservices/plugins/SocialSharing;->access$000(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lnl/xservices/plugins/SocialSharing$3;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 295
    :cond_6
    :goto_4
    invoke-static {v15}, Lnl/xservices/plugins/SocialSharing;->access$000(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 296
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v3, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v2, v5, :cond_7

    .line 299
    const-string v2, "sms_body"

    invoke-virtual {v3, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    :cond_7
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$3;->val$appPackageName:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lnl/xservices/plugins/SocialSharing$3;->val$appPackageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 308
    .local v16, "packageName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 309
    .local v17, "passedActivityName":Ljava/lang/String;
    const-string v2, "/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$3;->val$appPackageName:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 311
    .local v14, "items":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v16, v14, v2

    .line 312
    const/4 v2, 0x1

    aget-object v17, v14, v2

    .line 314
    .end local v14    # "items":[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$3;->this$0:Lnl/xservices/plugins/SocialSharing;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnl/xservices/plugins/SocialSharing$3;->callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object/from16 v0, v16

    invoke-static {v2, v5, v3, v0}, Lnl/xservices/plugins/SocialSharing;->access$400(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 315
    .local v9, "activity":Landroid/content/pm/ActivityInfo;
    if-eqz v9, :cond_9

    .line 316
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnl/xservices/plugins/SocialSharing$3;->val$peek:Z

    if-eqz v2, :cond_e

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$3;->callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v5, Lorg/apache/cordova/PluginResult;

    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v5, v6}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    invoke-virtual {v2, v5}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 358
    .end local v9    # "activity":Landroid/content/pm/ActivityInfo;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v17    # "passedActivityName":Ljava/lang/String;
    :cond_9
    :goto_5
    return-void

    .line 270
    .restart local v4    # "dir":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v11    # "fileUri":Landroid/net/Uri;
    .restart local v12    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_a
    :try_start_2
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v3, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 279
    .end local v4    # "dir":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v11    # "fileUri":Landroid/net/Uri;
    .end local v12    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catch_0
    move-exception v10

    .line 280
    .local v10, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$3;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 274
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v4    # "dir":Ljava/lang/String;
    :cond_b
    :try_start_3
    const-string v2, "text/plain"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 277
    .end local v4    # "dir":Ljava/lang/String;
    :cond_c
    const-string v2, "text/plain"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 292
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lnl/xservices/plugins/SocialSharing$3;->val$url:Ljava/lang/String;

    goto/16 :goto_4

    .line 319
    .restart local v9    # "activity":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "packageName":Ljava/lang/String;
    .restart local v17    # "passedActivityName":Ljava/lang/String;
    :cond_e
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    new-instance v2, Landroid/content/ComponentName;

    iget-object v5, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v17, :cond_f

    .end local v17    # "passedActivityName":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, v17

    invoke-direct {v2, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$3;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v2, v2, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v5, Lnl/xservices/plugins/SocialSharing$3$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3}, Lnl/xservices/plugins/SocialSharing$3$1;-><init>(Lnl/xservices/plugins/SocialSharing$3;Landroid/content/Intent;)V

    invoke-virtual {v2, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$3;->this$0:Lnl/xservices/plugins/SocialSharing;

    invoke-static {v2}, Lnl/xservices/plugins/SocialSharing;->access$500(Lnl/xservices/plugins/SocialSharing;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 332
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v5, Lnl/xservices/plugins/SocialSharing$3$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lnl/xservices/plugins/SocialSharing$3$2;-><init>(Lnl/xservices/plugins/SocialSharing$3;)V

    const-wide/16 v18, 0x7d0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v5, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_5

    .line 320
    .restart local v17    # "passedActivityName":Ljava/lang/String;
    :cond_f
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_6

    .line 346
    .end local v9    # "activity":Landroid/content/pm/ActivityInfo;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v17    # "passedActivityName":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnl/xservices/plugins/SocialSharing$3;->val$peek:Z

    if-eqz v2, :cond_11

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$3;->callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v5, Lorg/apache/cordova/PluginResult;

    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v5, v6}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    invoke-virtual {v2, v5}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto/16 :goto_5

    .line 351
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$3;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v2, v2, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v5, Lnl/xservices/plugins/SocialSharing$3$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3}, Lnl/xservices/plugins/SocialSharing$3$3;-><init>(Lnl/xservices/plugins/SocialSharing$3;Landroid/content/Intent;)V

    invoke-virtual {v2, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5
.end method
