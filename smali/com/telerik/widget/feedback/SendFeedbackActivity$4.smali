.class Lcom/telerik/widget/feedback/SendFeedbackActivity$4;
.super Ljava/lang/Object;
.source "SendFeedbackActivity.java"

# interfaces
.implements Lcom/telerik/widget/feedback/RadFeedback$OnSubmitFeedbackFinishedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/feedback/SendFeedbackActivity;->sendFeedback()V
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
    .line 275
    iput-object p1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity$4;->this$0:Lcom/telerik/widget/feedback/SendFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubmitFinished(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v3, 0x0

    .line 278
    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity$4;->this$0:Lcom/telerik/widget/feedback/SendFeedbackActivity;

    invoke-static {v0, v3}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->access$200(Lcom/telerik/widget/feedback/SendFeedbackActivity;Z)V

    .line 280
    iget-object v0, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity$4;->this$0:Lcom/telerik/widget/feedback/SendFeedbackActivity;

    iget-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity$4;->this$0:Lcom/telerik/widget/feedback/SendFeedbackActivity;

    sget v2, Lcom/telerik/widget/feedback/R$string;->feedback_not_sent:I

    invoke-virtual {v1, v2}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 285
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity$4;->this$0:Lcom/telerik/widget/feedback/SendFeedbackActivity;

    iget-object v1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity$4;->this$0:Lcom/telerik/widget/feedback/SendFeedbackActivity;

    sget v2, Lcom/telerik/widget/feedback/R$string;->feedback_sent:I

    invoke-virtual {v1, v2}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 283
    iget-object v0, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity$4;->this$0:Lcom/telerik/widget/feedback/SendFeedbackActivity;

    invoke-virtual {v0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->finish()V

    goto :goto_0
.end method
