.class public Lcom/telerik/widget/feedback/FeedbackIndicator;
.super Landroid/widget/FrameLayout;
.source "FeedbackIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private alert:Landroid/app/AlertDialog;

.field private feedback:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telerik/widget/feedback/FeedbackIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/telerik/widget/feedback/FeedbackIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 39
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/telerik/widget/feedback/R$layout;->feedback_indicator:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    invoke-virtual {p0, p0}, Lcom/telerik/widget/feedback/FeedbackIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getFeedback()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/telerik/widget/feedback/FeedbackIndicator;->feedback:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 46
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/FeedbackIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/feedback/SendFeedbackActivity;

    .line 47
    .local v0, "activity":Lcom/telerik/widget/feedback/SendFeedbackActivity;
    invoke-virtual {v0, p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->startInputForIndicator(Lcom/telerik/widget/feedback/FeedbackIndicator;)V

    .line 48
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/FeedbackIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/feedback/SendFeedbackActivity;

    .line 66
    .local v0, "activity":Lcom/telerik/widget/feedback/SendFeedbackActivity;
    invoke-virtual {v0, p0}, Lcom/telerik/widget/feedback/SendFeedbackActivity;->startInputForIndicator(Lcom/telerik/widget/feedback/FeedbackIndicator;)V

    .line 67
    return-void
.end method

.method public setFeedback(Ljava/lang/String;)V
    .locals 0
    .param p1, "feedback"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/telerik/widget/feedback/FeedbackIndicator;->feedback:Ljava/lang/String;

    .line 61
    return-void
.end method
