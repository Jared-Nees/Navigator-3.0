.class Lcom/telerik/widget/feedback/ViewFeedbackActivity$1;
.super Ljava/lang/Object;
.source "ViewFeedbackActivity.java"

# interfaces
.implements Landroid/support/v7/app/ActionBar$TabListener;


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


# direct methods
.method constructor <init>(Lcom/telerik/widget/feedback/ViewFeedbackActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/telerik/widget/feedback/ViewFeedbackActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "fragmentTransaction"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 77
    return-void
.end method

.method public onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 2
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "fragmentTransaction"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackActivity$1;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackActivity;

    invoke-static {v0}, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->access$000(Lcom/telerik/widget/feedback/ViewFeedbackActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 67
    return-void
.end method

.method public onTabUnselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "fragmentTransaction"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 72
    return-void
.end method
