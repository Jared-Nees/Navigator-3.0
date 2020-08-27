.class Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$3;
.super Ljava/lang/Object;
.source "ViewFeedbackItemActivity.java"

# interfaces
.implements Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;


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
    .line 155
    iput-object p1, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$3;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemsDelivered(Ljava/lang/Exception;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/telerik/widget/feedback/FeedbackItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/feedback/FeedbackItem;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 158
    iget-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$3;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$902(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 159
    if-eqz p1, :cond_0

    .line 160
    iget-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$3;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$3;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    sget v4, Lcom/telerik/widget/feedback/R$string;->feedback_comments_not_retrieved:I

    invoke-virtual {v3, v4}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 172
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/feedback/FeedbackItem;

    .line 165
    .local v1, "item":Lcom/telerik/widget/feedback/FeedbackItem;
    iget-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$3;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v2}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$500(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$3;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v3, v1}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$400(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;Lcom/telerik/widget/feedback/FeedbackItem;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 167
    .end local v1    # "item":Lcom/telerik/widget/feedback/FeedbackItem;
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 168
    iget-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$3;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v2}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$600(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$3;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    sget v4, Lcom/telerik/widget/feedback/R$string;->feedback_single_comment_label_format:I

    invoke-virtual {v3, v4}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$3;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v2}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$600(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$3;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    sget v4, Lcom/telerik/widget/feedback/R$string;->feedback_multiple_comments_label_format:I

    invoke-virtual {v3, v4}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
