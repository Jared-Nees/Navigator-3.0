.class Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;
.super Ljava/lang/Object;
.source "ViewFeedbackItemActivity.java"

# interfaces
.implements Lcom/telerik/widget/feedback/RadFeedback$OnSubmitFeedbackFinishedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;

.field final synthetic val$itemsToSubmit:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;->this$1:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;

    iput-object p2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;->val$itemsToSubmit:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubmitFinished(Ljava/lang/Exception;)V
    .locals 9
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 85
    if-nez p1, :cond_1

    .line 86
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;->val$itemsToSubmit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/feedback/FeedbackItem;

    .line 87
    .local v2, "itemToAdd":Lcom/telerik/widget/feedback/FeedbackItem;
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;->this$1:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;

    iget-object v3, v3, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v3}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$500(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;->this$1:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;

    iget-object v4, v4, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v4, v2}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$400(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;Lcom/telerik/widget/feedback/FeedbackItem;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 89
    .end local v2    # "itemToAdd":Lcom/telerik/widget/feedback/FeedbackItem;
    :cond_0
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;->this$1:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;

    iget-object v3, v3, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    iget-object v4, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;->this$1:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;

    iget-object v4, v4, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    sget v5, Lcom/telerik/widget/feedback/R$string;->feedback_comment_sent:I

    invoke-virtual {v4, v5}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 94
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;->this$1:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;

    iget-object v3, v3, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v3}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$500(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 95
    .local v0, "commentsCount":I
    if-ne v0, v7, :cond_2

    .line 96
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;->this$1:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;

    iget-object v3, v3, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v3}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$600(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;->this$1:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;

    iget-object v4, v4, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    sget v5, Lcom/telerik/widget/feedback/R$string;->feedback_single_comment_label_format:I

    invoke-virtual {v4, v5}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_2
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;->this$1:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;

    iget-object v3, v3, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v3}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$100(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;->this$1:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;

    iget-object v3, v3, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v3}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$000(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 102
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;->this$1:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;

    iget-object v3, v3, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$302(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 103
    return-void

    .line 91
    .end local v0    # "commentsCount":I
    :cond_1
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;->this$1:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;

    iget-object v3, v3, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    iget-object v4, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;->this$1:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;

    iget-object v4, v4, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    sget v5, Lcom/telerik/widget/feedback/R$string;->feedback_comment_not_sent:I

    invoke-virtual {v4, v5}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 98
    .restart local v0    # "commentsCount":I
    :cond_2
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;->this$1:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;

    iget-object v3, v3, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v3}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$600(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;->this$1:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;

    iget-object v4, v4, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    sget v5, Lcom/telerik/widget/feedback/R$string;->feedback_multiple_comments_label_format:I

    invoke-virtual {v4, v5}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
