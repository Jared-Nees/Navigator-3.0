.class Lcom/telerik/widget/feedback/RadFeedback$2;
.super Landroid/os/AsyncTask;
.source "RadFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/feedback/RadFeedback;->submitFeedback(Ljava/util/ArrayList;Ljava/lang/String;Lcom/telerik/widget/feedback/RadFeedback$OnSubmitFeedbackFinishedCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/feedback/RadFeedback;

.field final synthetic val$callback:Lcom/telerik/widget/feedback/RadFeedback$OnSubmitFeedbackFinishedCallback;

.field final synthetic val$items:Ljava/util/ArrayList;

.field final synthetic val$rootId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/telerik/widget/feedback/RadFeedback;Ljava/lang/String;Ljava/util/ArrayList;Lcom/telerik/widget/feedback/RadFeedback$OnSubmitFeedbackFinishedCallback;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/telerik/widget/feedback/RadFeedback$2;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    iput-object p2, p0, Lcom/telerik/widget/feedback/RadFeedback$2;->val$rootId:Ljava/lang/String;

    iput-object p3, p0, Lcom/telerik/widget/feedback/RadFeedback$2;->val$items:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/telerik/widget/feedback/RadFeedback$2;->val$callback:Lcom/telerik/widget/feedback/RadFeedback$OnSubmitFeedbackFinishedCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 294
    const/4 v7, 0x0

    .line 295
    .local v7, "exception":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/telerik/widget/feedback/RadFeedback$2;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/telerik/widget/feedback/RadFeedback;->access$400(Lcom/telerik/widget/feedback/RadFeedback;)Lcom/telerik/widget/feedback/SystemInfo;

    move-result-object v5

    .line 297
    .local v5, "currentSystemInfo":Lcom/telerik/widget/feedback/SystemInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/telerik/widget/feedback/RadFeedback$2;->val$rootId:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/telerik/widget/feedback/RadFeedback$2;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/telerik/widget/feedback/RadFeedback;->selectedItem()Lcom/telerik/widget/feedback/FeedbackItem;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/telerik/widget/feedback/FeedbackItem;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "commentsAppendix":Ljava/lang/String;
    :goto_0
    new-instance v15, Ljava/net/URL;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/telerik/widget/feedback/RadFeedback;->instance()Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/telerik/widget/feedback/RadFeedback;->serviceUri()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/telerik/widget/feedback/RadFeedback;->instance()Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/telerik/widget/feedback/RadFeedback;->apiKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/threads"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 299
    .local v15, "url":Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v16

    check-cast v16, Ljava/net/HttpURLConnection;

    .line 300
    .local v16, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 301
    const-string v17, "POST"

    invoke-virtual/range {v16 .. v17}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 303
    const-string v17, "Content-type"

    const-string v18, "application/json"

    invoke-virtual/range {v16 .. v18}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->connect()V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/telerik/widget/feedback/RadFeedback$2;->val$items:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/telerik/widget/feedback/FeedbackItem;

    .line 309
    .local v9, "item":Lcom/telerik/widget/feedback/FeedbackItem;
    invoke-virtual {v9, v5}, Lcom/telerik/widget/feedback/FeedbackItem;->setSystemInfo(Lcom/telerik/widget/feedback/SystemInfo;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/telerik/widget/feedback/RadFeedback$2;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/telerik/widget/feedback/RadFeedback;->access$000(Lcom/telerik/widget/feedback/RadFeedback;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/telerik/widget/feedback/FeedbackItem;->setUid(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v9}, Lcom/telerik/widget/feedback/FeedbackItem;->toJson()Lorg/json/JSONObject;

    move-result-object v10

    .line 314
    .local v10, "itemAsJson":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/telerik/widget/feedback/RadFeedback$2;->val$rootId:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/telerik/widget/feedback/RadFeedback$2;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/telerik/widget/feedback/RadFeedback;->access$500(Lcom/telerik/widget/feedback/RadFeedback;)Lorg/json/JSONObject;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/telerik/widget/feedback/RadFeedback$2;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/telerik/widget/feedback/RadFeedback;->access$500(Lcom/telerik/widget/feedback/RadFeedback;)Lorg/json/JSONObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v12

    .line 316
    .local v12, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 317
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 318
    .local v4, "currentKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/telerik/widget/feedback/RadFeedback$2;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/telerik/widget/feedback/RadFeedback;->access$500(Lcom/telerik/widget/feedback/RadFeedback;)Lorg/json/JSONObject;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 339
    .end local v3    # "commentsAppendix":Ljava/lang/String;
    .end local v4    # "currentKey":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "item":Lcom/telerik/widget/feedback/FeedbackItem;
    .end local v10    # "itemAsJson":Lorg/json/JSONObject;
    .end local v12    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15    # "url":Ljava/net/URL;
    .end local v16    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v6

    .line 340
    .local v6, "e":Ljava/lang/Exception;
    move-object v7, v6

    .line 342
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v7

    .line 297
    :cond_0
    const-string v3, ""

    goto/16 :goto_0

    .line 321
    .restart local v3    # "commentsAppendix":Ljava/lang/String;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "item":Lcom/telerik/widget/feedback/FeedbackItem;
    .restart local v10    # "itemAsJson":Lorg/json/JSONObject;
    .restart local v15    # "url":Ljava/net/URL;
    .restart local v16    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_1
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    .line 322
    .local v11, "jsonString":Ljava/lang/String;
    const-string v17, "\\"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 324
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v17, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    const-string v19, "UTF-8"

    invoke-direct/range {v17 .. v19}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 325
    .local v2, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v2, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 327
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 329
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 330
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed : HTTP error code : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 334
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/telerik/widget/feedback/RadFeedback$2;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/telerik/widget/feedback/RadFeedback;->access$200(Lcom/telerik/widget/feedback/RadFeedback;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v14

    .line 335
    .local v14, "responseString":Ljava/lang/String;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 336
    .local v13, "responseObject":Lorg/json/JSONObject;
    invoke-static {v9, v13}, Lcom/telerik/widget/feedback/JSONHelper;->init(Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 338
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v9    # "item":Lcom/telerik/widget/feedback/FeedbackItem;
    .end local v10    # "itemAsJson":Lorg/json/JSONObject;
    .end local v11    # "jsonString":Ljava/lang/String;
    .end local v13    # "responseObject":Lorg/json/JSONObject;
    .end local v14    # "responseString":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 347
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 348
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/RadFeedback$2;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/telerik/widget/feedback/RadFeedback$2;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-static {v1}, Lcom/telerik/widget/feedback/RadFeedback;->access$300(Lcom/telerik/widget/feedback/RadFeedback;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v1, p0, Lcom/telerik/widget/feedback/RadFeedback$2;->val$callback:Lcom/telerik/widget/feedback/RadFeedback$OnSubmitFeedbackFinishedCallback;

    if-eqz v1, :cond_0

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "exception":Ljava/lang/Exception;
    instance-of v1, p1, Ljava/lang/Exception;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 355
    check-cast v0, Ljava/lang/Exception;

    .line 357
    :cond_2
    iget-object v1, p0, Lcom/telerik/widget/feedback/RadFeedback$2;->val$callback:Lcom/telerik/widget/feedback/RadFeedback$OnSubmitFeedbackFinishedCallback;

    invoke-interface {v1, v0}, Lcom/telerik/widget/feedback/RadFeedback$OnSubmitFeedbackFinishedCallback;->onSubmitFinished(Ljava/lang/Exception;)V

    goto :goto_0
.end method
