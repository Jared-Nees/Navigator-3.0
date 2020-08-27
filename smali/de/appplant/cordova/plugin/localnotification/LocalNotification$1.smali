.class Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;
.super Ljava/lang/Object;
.source "LocalNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/appplant/cordova/plugin/localnotification/LocalNotification;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$command:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    .prologue
    .line 134
    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iput-object p2, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iput-object p4, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "schedule"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$000(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;)V

    .line 138
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$100(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;)V

    .line 142
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$200(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;)V

    .line 146
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 148
    :cond_3
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "cancelAll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    invoke-static {v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$300(Lde/appplant/cordova/plugin/localnotification/LocalNotification;)V

    .line 150
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 152
    :cond_4
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "clear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$400(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;)V

    .line 154
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 156
    :cond_5
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "clearAll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    invoke-static {v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$500(Lde/appplant/cordova/plugin/localnotification/LocalNotification;)V

    .line 158
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 160
    :cond_6
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "isPresent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 161
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$600(Lde/appplant/cordova/plugin/localnotification/LocalNotification;ILorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 163
    :cond_7
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "isScheduled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 164
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$700(Lde/appplant/cordova/plugin/localnotification/LocalNotification;ILorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 166
    :cond_8
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "isTriggered"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 167
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$800(Lde/appplant/cordova/plugin/localnotification/LocalNotification;ILorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 169
    :cond_9
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "getAllIds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 170
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$900(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 172
    :cond_a
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "getScheduledIds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 173
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$1000(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 175
    :cond_b
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "getTriggeredIds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 176
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$1100(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 178
    :cond_c
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "getSingle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 179
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$1200(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 181
    :cond_d
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "getSingleScheduled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 182
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$1300(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 184
    :cond_e
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "getSingleTriggered"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 185
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$1400(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 187
    :cond_f
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "getAll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 188
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$1500(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 190
    :cond_10
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "getScheduled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 191
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$1600(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 193
    :cond_11
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "getTriggered"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 194
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$command:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$1700(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 196
    :cond_12
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "deviceready"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->access$1800()V

    goto/16 :goto_0
.end method
