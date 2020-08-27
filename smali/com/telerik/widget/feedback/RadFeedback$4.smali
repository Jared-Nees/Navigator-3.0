.class Lcom/telerik/widget/feedback/RadFeedback$4;
.super Ljava/lang/Object;
.source "RadFeedback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/feedback/RadFeedback;->show(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/feedback/RadFeedback;


# direct methods
.method constructor <init>(Lcom/telerik/widget/feedback/RadFeedback;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/telerik/widget/feedback/RadFeedback$4;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback$4;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-virtual {v0}, Lcom/telerik/widget/feedback/RadFeedback;->onSendFeedbackFinished()V

    .line 456
    return-void
.end method
