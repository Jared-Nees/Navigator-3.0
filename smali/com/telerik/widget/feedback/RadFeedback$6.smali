.class Lcom/telerik/widget/feedback/RadFeedback$6;
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


# direct methods
.method constructor <init>(Lcom/telerik/widget/feedback/RadFeedback;Lcom/telerik/widget/feedback/RadFeedback$OnAuthorPromptConfirmedListener;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/telerik/widget/feedback/RadFeedback$6;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    iput-object p2, p0, Lcom/telerik/widget/feedback/RadFeedback$6;->val$promptConfirmedListener:Lcom/telerik/widget/feedback/RadFeedback$OnAuthorPromptConfirmedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 568
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback$6;->val$promptConfirmedListener:Lcom/telerik/widget/feedback/RadFeedback$OnAuthorPromptConfirmedListener;

    invoke-interface {v0}, Lcom/telerik/widget/feedback/RadFeedback$OnAuthorPromptConfirmedListener;->onAuthorPromptConfirmed()V

    .line 569
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback$6;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/telerik/widget/feedback/RadFeedback;->storeShouldShowPrefPrompt(Z)V

    .line 570
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 571
    return-void
.end method
