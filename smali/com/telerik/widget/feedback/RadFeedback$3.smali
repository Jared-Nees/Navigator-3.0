.class Lcom/telerik/widget/feedback/RadFeedback$3;
.super Landroid/os/AsyncTask;
.source "RadFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/feedback/RadFeedback;->getCommentsForItem(Lcom/telerik/widget/feedback/FeedbackItem;Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/feedback/RadFeedback;

.field final synthetic val$callback:Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;

.field final synthetic val$item:Lcom/telerik/widget/feedback/FeedbackItem;


# direct methods
.method constructor <init>(Lcom/telerik/widget/feedback/RadFeedback;Lcom/telerik/widget/feedback/FeedbackItem;Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/telerik/widget/feedback/RadFeedback$3;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    iput-object p2, p0, Lcom/telerik/widget/feedback/RadFeedback$3;->val$item:Lcom/telerik/widget/feedback/FeedbackItem;

    iput-object p3, p0, Lcom/telerik/widget/feedback/RadFeedback$3;->val$callback:Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 386
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/feedback/FeedbackItem;>;"
    new-instance v6, Lcom/telerik/widget/feedback/RadFeedback$RequestResult;

    iget-object v10, p0, Lcom/telerik/widget/feedback/RadFeedback$3;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-direct {v6, v10}, Lcom/telerik/widget/feedback/RadFeedback$RequestResult;-><init>(Lcom/telerik/widget/feedback/RadFeedback;)V

    .line 390
    .local v6, "requestResult":Lcom/telerik/widget/feedback/RadFeedback$RequestResult;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/telerik/widget/feedback/RadFeedback;->instance()Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v11

    invoke-virtual {v11}, Lcom/telerik/widget/feedback/RadFeedback;->serviceUri()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/telerik/widget/feedback/RadFeedback;->instance()Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v11

    invoke-virtual {v11}, Lcom/telerik/widget/feedback/RadFeedback;->apiKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/threads"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 391
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 393
    .local v9, "urlConnection":Ljava/net/HttpURLConnection;
    const-string v10, "GET"

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 394
    const-string v10, "x-filter-meta"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "{ \"RootId\" : \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/telerik/widget/feedback/RadFeedback$3;->val$item:Lcom/telerik/widget/feedback/FeedbackItem;

    invoke-virtual {v12}, Lcom/telerik/widget/feedback/FeedbackItem;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v10, "x-sort-meta"

    const-string v11, "{\"CreatedAt\" : -1}"

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 398
    iget-object v10, p0, Lcom/telerik/widget/feedback/RadFeedback$3;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/telerik/widget/feedback/RadFeedback;->access$200(Lcom/telerik/widget/feedback/RadFeedback;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 399
    .local v5, "jsonString":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 401
    .local v4, "jsonObject":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_0

    .line 402
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 403
    .local v0, "current":Lorg/json/JSONObject;
    new-instance v3, Lcom/telerik/widget/feedback/FeedbackItem;

    invoke-direct {v3, v0}, Lcom/telerik/widget/feedback/FeedbackItem;-><init>(Lorg/json/JSONObject;)V

    .line 404
    .local v3, "item":Lcom/telerik/widget/feedback/FeedbackItem;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    .end local v0    # "current":Lorg/json/JSONObject;
    .end local v3    # "item":Lcom/telerik/widget/feedback/FeedbackItem;
    :cond_0
    iput-object v7, v6, Lcom/telerik/widget/feedback/RadFeedback$RequestResult;->results:Ljava/util/ArrayList;

    .line 408
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v2    # "i":I
    .end local v4    # "jsonObject":Lorg/json/JSONArray;
    .end local v5    # "jsonString":Ljava/lang/String;
    .end local v8    # "url":Ljava/net/URL;
    .end local v9    # "urlConnection":Ljava/net/HttpURLConnection;
    :goto_1
    return-object v6

    .line 410
    :catch_0
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/Exception;
    iput-object v1, v6, Lcom/telerik/widget/feedback/RadFeedback$RequestResult;->exception:Ljava/lang/Exception;

    goto :goto_1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 418
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 419
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/RadFeedback$3;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/telerik/widget/feedback/RadFeedback$3;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-static {v1}, Lcom/telerik/widget/feedback/RadFeedback;->access$300(Lcom/telerik/widget/feedback/RadFeedback;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v1, p0, Lcom/telerik/widget/feedback/RadFeedback$3;->val$callback:Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 424
    check-cast v0, Lcom/telerik/widget/feedback/RadFeedback$RequestResult;

    .line 425
    .local v0, "result":Lcom/telerik/widget/feedback/RadFeedback$RequestResult;
    iget-object v1, p0, Lcom/telerik/widget/feedback/RadFeedback$3;->val$callback:Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;

    iget-object v2, v0, Lcom/telerik/widget/feedback/RadFeedback$RequestResult;->exception:Ljava/lang/Exception;

    iget-object v3, v0, Lcom/telerik/widget/feedback/RadFeedback$RequestResult;->results:Ljava/util/ArrayList;

    invoke-interface {v1, v2, v3}, Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;->onItemsDelivered(Ljava/lang/Exception;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
