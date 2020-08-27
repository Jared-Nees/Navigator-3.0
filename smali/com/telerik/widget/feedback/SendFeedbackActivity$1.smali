.class Lcom/telerik/widget/feedback/SendFeedbackActivity$1;
.super Ljava/lang/Object;
.source "SendFeedbackActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/feedback/SendFeedbackActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 71
    iput-object p1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity$1;->this$0:Lcom/telerik/widget/feedback/SendFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 74
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity$1;->this$0:Lcom/telerik/widget/feedback/SendFeedbackActivity;

    invoke-static {v0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->access$000(Lcom/telerik/widget/feedback/SendFeedbackActivity;)V

    .line 76
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
