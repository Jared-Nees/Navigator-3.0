.class Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;
.super Ljava/lang/Object;
.source "ViewFeedbackItemActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 61
    iput-object p1, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 64
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v3}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$000(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 65
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    iget-object v4, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    sget v5, Lcom/telerik/widget/feedback/R$string;->feedback_add_comment_reminder:I

    invoke-virtual {v4, v5}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 105
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v3}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$100(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 69
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v3}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$000(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 70
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 71
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v3}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$000(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 72
    new-instance v1, Lcom/telerik/widget/feedback/FeedbackItem;

    invoke-direct {v1}, Lcom/telerik/widget/feedback/FeedbackItem;-><init>()V

    .line 73
    .local v1, "item":Lcom/telerik/widget/feedback/FeedbackItem;
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v3}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$000(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/telerik/widget/feedback/FeedbackItem;->setText(Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v3}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$000(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/EditText;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v3}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$200(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telerik/widget/feedback/RadFeedback;->getCurrentAuthorName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 76
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v3}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$200(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telerik/widget/feedback/RadFeedback;->getCurrentAuthorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/telerik/widget/feedback/FeedbackItem;->setAuthor(Ljava/lang/String;)V

    .line 78
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, "itemsToSubmit":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/feedback/FeedbackItem;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    iget-object v4, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v4}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$200(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v4

    iget-object v5, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-static {v5}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$200(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v5

    invoke-virtual {v5}, Lcom/telerik/widget/feedback/RadFeedback;->selectedItem()Lcom/telerik/widget/feedback/FeedbackItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/telerik/widget/feedback/FeedbackItem;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;

    invoke-direct {v6, p0, v2}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1$1;-><init>(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v2, v5, v6}, Lcom/telerik/widget/feedback/RadFeedback;->submitFeedback(Ljava/util/ArrayList;Ljava/lang/String;Lcom/telerik/widget/feedback/RadFeedback$OnSubmitFeedbackFinishedCallback;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->access$302(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto/16 :goto_0
.end method
