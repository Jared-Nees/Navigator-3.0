.class public Lcom/telerik/widget/feedback/FragmentItemsList;
.super Landroid/support/v4/app/Fragment;
.source "FragmentItemsList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;
    }
.end annotation


# instance fields
.field private feedbackInstance:Lcom/telerik/widget/feedback/RadFeedback;

.field itemsFilter:I

.field private itemsList:Landroid/widget/ListView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private runningTaskId:Ljava/lang/Integer;

.field private txtNoItems:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->itemsFilter:I

    .line 32
    invoke-static {}, Lcom/telerik/widget/feedback/RadFeedback;->instance()Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v0

    iput-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->feedbackInstance:Lcom/telerik/widget/feedback/RadFeedback;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->runningTaskId:Ljava/lang/Integer;

    .line 38
    return-void
.end method

.method static synthetic access$002(Lcom/telerik/widget/feedback/FragmentItemsList;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/feedback/FragmentItemsList;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->runningTaskId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/telerik/widget/feedback/FragmentItemsList;)V
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/feedback/FragmentItemsList;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/telerik/widget/feedback/FragmentItemsList;->checkToggleNoItemsView()V

    return-void
.end method

.method static synthetic access$200(Lcom/telerik/widget/feedback/FragmentItemsList;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/FragmentItemsList;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/telerik/widget/feedback/FragmentItemsList;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/FragmentItemsList;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->itemsList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/telerik/widget/feedback/FragmentItemsList;)Lcom/telerik/widget/feedback/RadFeedback;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/FragmentItemsList;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->feedbackInstance:Lcom/telerik/widget/feedback/RadFeedback;

    return-object v0
.end method

.method private checkToggleNoItemsView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->itemsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->itemsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;

    iget-object v0, v0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->originalSource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->itemsList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->txtNoItems:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->itemsList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->txtNoItems:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/FragmentItemsList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/telerik/widget/feedback/R$layout;->fragment_feedback_items:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "root":Landroid/view/View;
    sget v1, Lcom/telerik/widget/feedback/R$id;->listItems:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->itemsList:Landroid/widget/ListView;

    .line 45
    sget v1, Lcom/telerik/widget/feedback/R$id;->progressBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->progressBar:Landroid/widget/ProgressBar;

    .line 46
    iget-object v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->itemsList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 47
    sget v1, Lcom/telerik/widget/feedback/R$id;->txtNoItems:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->txtNoItems:Landroid/widget/TextView;

    .line 50
    if-eqz p3, :cond_0

    const-string v1, "itemsFilter"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->itemsFilter:I

    .line 51
    iget-object v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->progressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 52
    iget-object v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->itemsList:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 53
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/FragmentItemsList;->requestItems()V

    .line 55
    return-object v0

    .line 50
    :cond_0
    iget v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->itemsFilter:I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->runningTaskId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->feedbackInstance:Lcom/telerik/widget/feedback/RadFeedback;

    iget-object v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->runningTaskId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/telerik/widget/feedback/RadFeedback;->cancelTask(I)V

    .line 63
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 64
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/feedback/FeedbackItem;

    .line 102
    .local v1, "selectedItem":Lcom/telerik/widget/feedback/FeedbackItem;
    iget-object v2, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->feedbackInstance:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-virtual {v2, v1}, Lcom/telerik/widget/feedback/RadFeedback;->selectItem(Lcom/telerik/widget/feedback/FeedbackItem;)V

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/telerik/widget/feedback/FragmentItemsList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/telerik/widget/feedback/FragmentItemsList;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    const-string v0, "itemsFilter"

    iget v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->itemsFilter:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    return-void
.end method

.method public requestItems()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->runningTaskId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->feedbackInstance:Lcom/telerik/widget/feedback/RadFeedback;

    iget-object v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->runningTaskId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/telerik/widget/feedback/RadFeedback;->cancelTask(I)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->runningTaskId:Ljava/lang/Integer;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->itemsList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->feedbackInstance:Lcom/telerik/widget/feedback/RadFeedback;

    new-instance v1, Lcom/telerik/widget/feedback/FragmentItemsList$1;

    invoke-direct {v1, p0}, Lcom/telerik/widget/feedback/FragmentItemsList$1;-><init>(Lcom/telerik/widget/feedback/FragmentItemsList;)V

    iget v2, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->itemsFilter:I

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/telerik/widget/feedback/RadFeedback;->getCurrentItems(Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList;->runningTaskId:Ljava/lang/Integer;

    .line 96
    return-void
.end method
