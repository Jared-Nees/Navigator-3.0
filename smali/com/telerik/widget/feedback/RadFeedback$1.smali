.class Lcom/telerik/widget/feedback/RadFeedback$1;
.super Landroid/os/AsyncTask;
.source "RadFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/feedback/RadFeedback;->getCurrentItems(Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;III)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/feedback/RadFeedback;

.field final synthetic val$callback:Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;

.field final synthetic val$filter:I

.field final synthetic val$page:I

.field final synthetic val$pageSize:I


# direct methods
.method constructor <init>(Lcom/telerik/widget/feedback/RadFeedback;IIILcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/telerik/widget/feedback/RadFeedback$1;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    iput p2, p0, Lcom/telerik/widget/feedback/RadFeedback$1;->val$filter:I

    iput p3, p0, Lcom/telerik/widget/feedback/RadFeedback$1;->val$page:I

    iput p4, p0, Lcom/telerik/widget/feedback/RadFeedback$1;->val$pageSize:I

    iput-object p5, p0, Lcom/telerik/widget/feedback/RadFeedback$1;->val$callback:Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 200
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v11, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/feedback/FeedbackItem;>;"
    new-instance v10, Lcom/telerik/widget/feedback/RadFeedback$RequestResult;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/telerik/widget/feedback/RadFeedback$1;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-direct {v10, v14}, Lcom/telerik/widget/feedback/RadFeedback$RequestResult;-><init>(Lcom/telerik/widget/feedback/RadFeedback;)V

    .line 204
    .local v10, "requestResult":Lcom/telerik/widget/feedback/RadFeedback$RequestResult;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/telerik/widget/feedback/RadFeedback;->instance()Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v15

    invoke-virtual {v15}, Lcom/telerik/widget/feedback/RadFeedback;->serviceUri()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/telerik/widget/feedback/RadFeedback;->instance()Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v15

    invoke-virtual {v15}, Lcom/telerik/widget/feedback/RadFeedback;->apiKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/threads"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 205
    .local v12, "url":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    .line 206
    .local v13, "urlConnection":Ljava/net/HttpURLConnection;
    const-string v14, "GET"

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 208
    const-string v14, "x-sort-meta"

    const-string v15, "{\"CreatedAt\" : -1}"

    invoke-virtual {v13, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "{ \"$and\" : [{ \"Uid\" : \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/telerik/widget/feedback/RadFeedback$1;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-static {v15}, Lcom/telerik/widget/feedback/RadFeedback;->access$000(Lcom/telerik/widget/feedback/RadFeedback;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\" }, {\"State\" : \"Open\"}, {\"RootId\" : null}, {\"ProjectId\" : \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/telerik/widget/feedback/RadFeedback$1;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-static {v15}, Lcom/telerik/widget/feedback/RadFeedback;->access$100(Lcom/telerik/widget/feedback/RadFeedback;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\"}]}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 210
    .local v9, "openFilter":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "{ \"$and\" : [{ \"Uid\" : \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/telerik/widget/feedback/RadFeedback$1;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-static {v15}, Lcom/telerik/widget/feedback/RadFeedback;->access$000(Lcom/telerik/widget/feedback/RadFeedback;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\" }, {\"State\" : \"Resolved\"}, {\"RootId\" : null}, {\"ProjectId\" : \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/telerik/widget/feedback/RadFeedback$1;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-static {v15}, Lcom/telerik/widget/feedback/RadFeedback;->access$100(Lcom/telerik/widget/feedback/RadFeedback;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\"}]}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "closedFilter":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "{ \"$and\" : [{ \"Uid\" : \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/telerik/widget/feedback/RadFeedback$1;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-static {v15}, Lcom/telerik/widget/feedback/RadFeedback;->access$000(Lcom/telerik/widget/feedback/RadFeedback;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\" }, {\"RootId\" : null}, {\"ProjectId\" : \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/telerik/widget/feedback/RadFeedback$1;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-static {v15}, Lcom/telerik/widget/feedback/RadFeedback;->access$100(Lcom/telerik/widget/feedback/RadFeedback;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\"}]}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "allFilter":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/telerik/widget/feedback/RadFeedback$1;->val$filter:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 213
    const-string v14, "x-filter-meta"

    invoke-virtual {v13, v14, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    :goto_0
    const-string v14, "x-skip-meta"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/telerik/widget/feedback/RadFeedback$1;->val$page:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/telerik/widget/feedback/RadFeedback$1;->val$pageSize:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v14, "x-take-meta"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/telerik/widget/feedback/RadFeedback$1;->val$pageSize:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    .line 225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/telerik/widget/feedback/RadFeedback$1;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/telerik/widget/feedback/RadFeedback;->access$200(Lcom/telerik/widget/feedback/RadFeedback;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, "jsonString":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 228
    .local v7, "jsonObject":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v5, v14, :cond_3

    .line 229
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 230
    .local v3, "current":Lorg/json/JSONObject;
    new-instance v6, Lcom/telerik/widget/feedback/FeedbackItem;

    invoke-direct {v6, v3}, Lcom/telerik/widget/feedback/FeedbackItem;-><init>(Lorg/json/JSONObject;)V

    .line 231
    .local v6, "item":Lcom/telerik/widget/feedback/FeedbackItem;
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 214
    .end local v3    # "current":Lorg/json/JSONObject;
    .end local v5    # "i":I
    .end local v6    # "item":Lcom/telerik/widget/feedback/FeedbackItem;
    .end local v7    # "jsonObject":Lorg/json/JSONArray;
    .end local v8    # "jsonString":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/telerik/widget/feedback/RadFeedback$1;->val$filter:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    .line 215
    const-string v14, "x-filter-meta"

    invoke-virtual {v13, v14, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    .end local v1    # "allFilter":Ljava/lang/String;
    .end local v2    # "closedFilter":Ljava/lang/String;
    .end local v9    # "openFilter":Ljava/lang/String;
    .end local v12    # "url":Ljava/net/URL;
    .end local v13    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v4

    .line 238
    .local v4, "e":Ljava/lang/Exception;
    iput-object v4, v10, Lcom/telerik/widget/feedback/RadFeedback$RequestResult;->exception:Ljava/lang/Exception;

    .line 240
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v10

    .line 216
    .restart local v1    # "allFilter":Ljava/lang/String;
    .restart local v2    # "closedFilter":Ljava/lang/String;
    .restart local v9    # "openFilter":Ljava/lang/String;
    .restart local v12    # "url":Ljava/net/URL;
    .restart local v13    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/telerik/widget/feedback/RadFeedback$1;->val$filter:I

    if-nez v14, :cond_0

    .line 217
    const-string v14, "x-filter-meta"

    invoke-virtual {v13, v14, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    .restart local v5    # "i":I
    .restart local v7    # "jsonObject":Lorg/json/JSONArray;
    .restart local v8    # "jsonString":Ljava/lang/String;
    :cond_3
    iput-object v11, v10, Lcom/telerik/widget/feedback/RadFeedback$RequestResult;->results:Ljava/util/ArrayList;

    .line 235
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/RadFeedback$1;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/telerik/widget/feedback/RadFeedback$1;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-static {v1}, Lcom/telerik/widget/feedback/RadFeedback;->access$300(Lcom/telerik/widget/feedback/RadFeedback;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v1, p0, Lcom/telerik/widget/feedback/RadFeedback$1;->val$callback:Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 251
    check-cast v0, Lcom/telerik/widget/feedback/RadFeedback$RequestResult;

    .line 252
    .local v0, "result":Lcom/telerik/widget/feedback/RadFeedback$RequestResult;
    iget-object v1, p0, Lcom/telerik/widget/feedback/RadFeedback$1;->val$callback:Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;

    iget-object v2, v0, Lcom/telerik/widget/feedback/RadFeedback$RequestResult;->exception:Ljava/lang/Exception;

    iget-object v3, v0, Lcom/telerik/widget/feedback/RadFeedback$RequestResult;->results:Ljava/util/ArrayList;

    invoke-interface {v1, v2, v3}, Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;->onItemsDelivered(Ljava/lang/Exception;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
