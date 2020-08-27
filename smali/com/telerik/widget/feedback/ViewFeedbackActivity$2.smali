.class Lcom/telerik/widget/feedback/ViewFeedbackActivity$2;
.super Ljava/lang/Object;
.source "ViewFeedbackActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/feedback/ViewFeedbackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/feedback/ViewFeedbackActivity;

.field final synthetic val$supportActionBar:Landroid/support/v7/app/ActionBar;


# direct methods
.method constructor <init>(Lcom/telerik/widget/feedback/ViewFeedbackActivity;Landroid/support/v7/app/ActionBar;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/telerik/widget/feedback/ViewFeedbackActivity$2;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackActivity;

    iput-object p2, p0, Lcom/telerik/widget/feedback/ViewFeedbackActivity$2;->val$supportActionBar:Landroid/support/v7/app/ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 96
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 86
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackActivity$2;->val$supportActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 91
    return-void
.end method
