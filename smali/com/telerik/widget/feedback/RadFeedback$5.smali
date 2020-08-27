.class Lcom/telerik/widget/feedback/RadFeedback$5;
.super Ljava/lang/Object;
.source "RadFeedback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/feedback/RadFeedback;->showAuthorNamePrompt(Landroid/content/Context;Lcom/telerik/widget/feedback/RadFeedback$OnAuthorPromptConfirmedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/feedback/RadFeedback;

.field final synthetic val$promptConfirmedListener:Lcom/telerik/widget/feedback/RadFeedback$OnAuthorPromptConfirmedListener;

.field final synthetic val$txtAuthor:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/telerik/widget/feedback/RadFeedback;Landroid/widget/EditText;Lcom/telerik/widget/feedback/RadFeedback$OnAuthorPromptConfirmedListener;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/telerik/widget/feedback/RadFeedback$5;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    iput-object p2, p0, Lcom/telerik/widget/feedback/RadFeedback$5;->val$txtAuthor:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/telerik/widget/feedback/RadFeedback$5;->val$promptConfirmedListener:Lcom/telerik/widget/feedback/RadFeedback$OnAuthorPromptConfirmedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 558
    iget-object v1, p0, Lcom/telerik/widget/feedback/RadFeedback$5;->val$txtAuthor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "authorName":Ljava/lang/String;
    iget-object v1, p0, Lcom/telerik/widget/feedback/RadFeedback$5;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-virtual {v1, v0}, Lcom/telerik/widget/feedback/RadFeedback;->setCurrentAuthorName(Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, Lcom/telerik/widget/feedback/RadFeedback$5;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/telerik/widget/feedback/RadFeedback;->storeShouldShowPrefPrompt(Z)V

    .line 561
    iget-object v1, p0, Lcom/telerik/widget/feedback/RadFeedback$5;->val$promptConfirmedListener:Lcom/telerik/widget/feedback/RadFeedback$OnAuthorPromptConfirmedListener;

    invoke-interface {v1}, Lcom/telerik/widget/feedback/RadFeedback$OnAuthorPromptConfirmedListener;->onAuthorPromptConfirmed()V

    .line 562
    return-void
.end method
