.class Lcom/telerik/widget/feedback/ViewFeedbackActivity$FeedbackListsAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ViewFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/feedback/ViewFeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeedbackListsAdapter"
.end annotation


# instance fields
.field currentFragment:Lcom/telerik/widget/feedback/FragmentItemsList;

.field final synthetic this$0:Lcom/telerik/widget/feedback/ViewFeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/telerik/widget/feedback/ViewFeedbackActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/telerik/widget/feedback/ViewFeedbackActivity$FeedbackListsAdapter;->this$0:Lcom/telerik/widget/feedback/ViewFeedbackActivity;

    .line 140
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 141
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "result":Lcom/telerik/widget/feedback/FragmentItemsList;
    new-instance v0, Lcom/telerik/widget/feedback/FragmentItemsList;

    .end local v0    # "result":Lcom/telerik/widget/feedback/FragmentItemsList;
    invoke-direct {v0}, Lcom/telerik/widget/feedback/FragmentItemsList;-><init>()V

    .line 153
    .restart local v0    # "result":Lcom/telerik/widget/feedback/FragmentItemsList;
    if-nez p1, :cond_0

    .line 154
    iput v1, v0, Lcom/telerik/widget/feedback/FragmentItemsList;->itemsFilter:I

    .line 161
    :goto_0
    return-object v0

    .line 155
    :cond_0
    if-ne p1, v1, :cond_1

    .line 156
    const/4 v1, 0x2

    iput v1, v0, Lcom/telerik/widget/feedback/FragmentItemsList;->itemsFilter:I

    goto :goto_0

    .line 158
    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Lcom/telerik/widget/feedback/FragmentItemsList;->itemsFilter:I

    goto :goto_0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 146
    check-cast p3, Lcom/telerik/widget/feedback/FragmentItemsList;

    .end local p3    # "object":Ljava/lang/Object;
    iput-object p3, p0, Lcom/telerik/widget/feedback/ViewFeedbackActivity$FeedbackListsAdapter;->currentFragment:Lcom/telerik/widget/feedback/FragmentItemsList;

    .line 147
    return-void
.end method
