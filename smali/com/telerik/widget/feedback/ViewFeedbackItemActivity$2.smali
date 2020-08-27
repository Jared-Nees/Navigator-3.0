.class Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$2;
.super Landroid/os/AsyncTask;
.source "ViewFeedbackItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;


# direct methods
.method constructor <init>(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$2;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "imageURL":Ljava/net/URL;
    const/4 v0, 0x0

    .line 116
    .local v0, "imageStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v4, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$2;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v4}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$200(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v4

    invoke-virtual {v4}, Lcom/telerik/widget/feedback/RadFeedback;->selectedItem()Lcom/telerik/widget/feedback/FeedbackItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/telerik/widget/feedback/FeedbackItem;->getImage()Lcom/telerik/widget/feedback/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/telerik/widget/feedback/Image;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1    # "imageURL":Ljava/net/URL;
    .local v2, "imageURL":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 118
    const-string v4, "src"

    invoke-static {v0, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 119
    .local v3, "remoteImageDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 126
    .end local v2    # "imageURL":Ljava/net/URL;
    .end local v3    # "remoteImageDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "imageURL":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 122
    :catch_0
    move-exception v4

    .line 126
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 122
    .end local v1    # "imageURL":Ljava/net/URL;
    .restart local v2    # "imageURL":Ljava/net/URL;
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "imageURL":Ljava/net/URL;
    .restart local v1    # "imageURL":Ljava/net/URL;
    goto :goto_1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 132
    if-nez p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$2;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    iget-object v1, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$2;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    sget v2, Lcom/telerik/widget/feedback/R$string;->feedback_screenshot_load_error:I

    invoke-virtual {v1, v2}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    iget-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$2;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v0}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$800(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    return-void

    .line 135
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$2;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v0}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$700(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/ImageView;

    move-result-object v0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
