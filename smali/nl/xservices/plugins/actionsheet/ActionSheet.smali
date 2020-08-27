.class public Lnl/xservices/plugins/actionsheet/ActionSheet;
.super Lorg/apache/cordova/CordovaPlugin;
.source "ActionSheet.java"


# instance fields
.field private dialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lnl/xservices/plugins/actionsheet/ActionSheet;Lorg/json/JSONArray;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnl/xservices/plugins/actionsheet/ActionSheet;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lnl/xservices/plugins/actionsheet/ActionSheet;->getStringArray(Lorg/json/JSONArray;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lnl/xservices/plugins/actionsheet/ActionSheet;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lnl/xservices/plugins/actionsheet/ActionSheet;

    .prologue
    .line 23
    iget-object v0, p0, Lnl/xservices/plugins/actionsheet/ActionSheet;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lnl/xservices/plugins/actionsheet/ActionSheet;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lnl/xservices/plugins/actionsheet/ActionSheet;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 23
    iput-object p1, p0, Lnl/xservices/plugins/actionsheet/ActionSheet;->dialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private varargs getStringArray(Lorg/json/JSONArray;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .param p2, "prepend"    # [Ljava/lang/String;

    .prologue
    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v1, "btn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, p2, v3

    .line 163
    .local v0, "aPrepend":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 164
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "aPrepend":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 170
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 171
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 175
    .end local v2    # "i":I
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 33
    const-string v7, "show"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 34
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 36
    .local v8, "options":Lorg/json/JSONObject;
    const-string v7, "title"

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "title":Ljava/lang/String;
    const-string v7, "androidTheme"

    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 38
    .local v6, "theme":I
    const-string v7, "buttonLabels"

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 40
    .local v2, "buttons":Lorg/json/JSONArray;
    const-string v7, "androidEnableCancelButton"

    invoke-virtual {v8, v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 42
    .local v4, "androidEnableCancelButton":Z
    const-string v0, "addCancelButtonWithLabel"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "addCancelButtonWithLabel":Ljava/lang/String;
    const-string v0, "addDestructiveButtonWithLabel"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "addDestructiveButtonWithLabel":Ljava/lang/String;
    move-object v0, p0

    move-object v7, p3

    .line 45
    invoke-virtual/range {v0 .. v7}, Lnl/xservices/plugins/actionsheet/ActionSheet;->show(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;ZLjava/lang/String;ILorg/apache/cordova/CallbackContext;)V

    move v0, v9

    .line 58
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "buttons":Lorg/json/JSONArray;
    .end local v3    # "addCancelButtonWithLabel":Ljava/lang/String;
    .end local v4    # "androidEnableCancelButton":Z
    .end local v5    # "addDestructiveButtonWithLabel":Ljava/lang/String;
    .end local v6    # "theme":I
    .end local v8    # "options":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    const-string v7, "hide"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 52
    iget-object v0, p0, Lnl/xservices/plugins/actionsheet/ActionSheet;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnl/xservices/plugins/actionsheet/ActionSheet;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lnl/xservices/plugins/actionsheet/ActionSheet;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 54
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v7, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const/4 v10, -0x1

    invoke-direct {v0, v7, v10}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :cond_2
    move v0, v9

    .line 56
    goto :goto_0
.end method

.method public declared-synchronized show(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;ZLjava/lang/String;ILorg/apache/cordova/CallbackContext;)V
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "buttonLabels"    # Lorg/json/JSONArray;
    .param p3, "addCancelButtonWithLabel"    # Ljava/lang/String;
    .param p4, "androidEnableCancelButton"    # Z
    .param p5, "addDestructiveButtonWithLabel"    # Ljava/lang/String;
    .param p6, "theme"    # I
    .param p7, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lnl/xservices/plugins/actionsheet/ActionSheet;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 71
    .local v2, "cordova":Lorg/apache/cordova/CordovaInterface;
    new-instance v0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;

    move-object v1, p0

    move/from16 v3, p6

    move-object v4, p1

    move v5, p4

    move-object v6, p3

    move-object v7, p2

    move-object v8, p5

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lnl/xservices/plugins/actionsheet/ActionSheet$1;-><init>(Lnl/xservices/plugins/actionsheet/ActionSheet;Lorg/apache/cordova/CordovaInterface;ILjava/lang/String;ZLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 154
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lnl/xservices/plugins/actionsheet/ActionSheet;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 69
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "cordova":Lorg/apache/cordova/CordovaInterface;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
