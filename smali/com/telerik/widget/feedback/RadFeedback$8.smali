.class Lcom/telerik/widget/feedback/RadFeedback$8;
.super Ljava/lang/Object;
.source "RadFeedback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

.field final synthetic val$txtAuthor:Landroid/widget/EditText;

.field final synthetic val$watcher:Landroid/text/TextWatcher;


# direct methods
.method constructor <init>(Lcom/telerik/widget/feedback/RadFeedback;Landroid/widget/EditText;Landroid/text/TextWatcher;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/telerik/widget/feedback/RadFeedback$8;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    iput-object p2, p0, Lcom/telerik/widget/feedback/RadFeedback$8;->val$txtAuthor:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/telerik/widget/feedback/RadFeedback$8;->val$watcher:Landroid/text/TextWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback$8;->val$txtAuthor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/telerik/widget/feedback/RadFeedback$8;->val$watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 597
    return-void
.end method
