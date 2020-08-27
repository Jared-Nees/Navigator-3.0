.class Lcom/telerik/widget/feedback/SendFeedbackActivity$3;
.super Ljava/lang/Object;
.source "SendFeedbackActivity.java"

# interfaces
.implements Lcom/telerik/widget/feedback/RadFeedback$OnAuthorPromptConfirmedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/feedback/SendFeedbackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/feedback/SendFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/telerik/widget/feedback/SendFeedbackActivity;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity$3;->this$0:Lcom/telerik/widget/feedback/SendFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorPromptConfirmed()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity$3;->this$0:Lcom/telerik/widget/feedback/SendFeedbackActivity;

    invoke-static {v0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->access$100(Lcom/telerik/widget/feedback/SendFeedbackActivity;)V

    .line 137
    return-void
.end method
