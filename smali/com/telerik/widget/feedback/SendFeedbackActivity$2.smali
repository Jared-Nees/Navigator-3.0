.class Lcom/telerik/widget/feedback/SendFeedbackActivity$2;
.super Ljava/lang/Object;
.source "SendFeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 82
    iput-object p1, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity$2;->this$0:Lcom/telerik/widget/feedback/SendFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/telerik/widget/feedback/SendFeedbackActivity$2;->this$0:Lcom/telerik/widget/feedback/SendFeedbackActivity;

    invoke-static {v0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->access$000(Lcom/telerik/widget/feedback/SendFeedbackActivity;)V

    .line 86
    return-void
.end method
