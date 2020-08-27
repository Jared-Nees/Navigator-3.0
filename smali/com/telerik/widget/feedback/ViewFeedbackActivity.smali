.class public Lcom/telerik/widget/feedback/ViewFeedbackActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "ViewFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/widget/feedback/ViewFeedbackActivity$FeedbackListsAdapter;
    }
.end annotation


# instance fields
.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/telerik/widget/feedback/ViewFeedbackActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/ViewFeedbackActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private refreshCurrentList()V
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/feedback/ViewFeedbackActivity$FeedbackListsAdapter;

    .line 124
    .local v0, "adapter":Lcom/telerik/widget/feedback/ViewFeedbackActivity$FeedbackListsAdapter;
    iget-object v1, v0, Lcom/telerik/widget/feedback/ViewFeedbackActivity$FeedbackListsAdapter;->currentFragment:Lcom/telerik/widget/feedback/FragmentItemsList;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, v0, Lcom/telerik/widget/feedback/ViewFeedbackActivity$FeedbackListsAdapter;->currentFragment:Lcom/telerik/widget/feedback/FragmentItemsList;

    invoke-virtual {v1}, Lcom/telerik/widget/feedback/FragmentItemsList;->requestItems()V

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 43
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget v3, Lcom/telerik/widget/feedback/R$layout;->activity_view_feedback:I

    invoke-virtual {p0, v3}, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 46
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 49
    sget v3, Lcom/telerik/widget/feedback/R$id;->viewPager:I

    invoke-virtual {p0, v3}, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 50
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/telerik/widget/feedback/ViewFeedbackActivity$FeedbackListsAdapter;

    invoke-virtual {p0}, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/telerik/widget/feedback/ViewFeedbackActivity$FeedbackListsAdapter;-><init>(Lcom/telerik/widget/feedback/ViewFeedbackActivity;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 52
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    .line 53
    .local v2, "supportActionBar":Landroid/support/v7/app/ActionBar;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 54
    invoke-virtual {v2}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    .line 55
    .local v0, "actionTab":Landroid/support/v7/app/ActionBar$Tab;
    if-nez v1, :cond_0

    .line 56
    sget v3, Lcom/telerik/widget/feedback/R$string;->view_feedback_tab_open:I

    invoke-virtual {p0, v3}, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    .line 63
    :goto_1
    new-instance v3, Lcom/telerik/widget/feedback/ViewFeedbackActivity$1;

    invoke-direct {v3, p0}, Lcom/telerik/widget/feedback/ViewFeedbackActivity$1;-><init>(Lcom/telerik/widget/feedback/ViewFeedbackActivity;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    .line 79
    invoke-virtual {v2, v0}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    if-ne v1, v6, :cond_1

    .line 59
    sget v3, Lcom/telerik/widget/feedback/R$string;->view_feedback_tab_resolved:I

    invoke-virtual {p0, v3}, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    goto :goto_1

    .line 61
    :cond_1
    sget v3, Lcom/telerik/widget/feedback/R$string;->view_feedback_tab_all:I

    invoke-virtual {p0, v3}, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    goto :goto_1

    .line 82
    .end local v0    # "actionTab":Landroid/support/v7/app/ActionBar$Tab;
    :cond_2
    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/telerik/widget/feedback/ViewFeedbackActivity$2;

    invoke-direct {v4, p0, v2}, Lcom/telerik/widget/feedback/ViewFeedbackActivity$2;-><init>(Lcom/telerik/widget/feedback/ViewFeedbackActivity;Landroid/support/v7/app/ActionBar;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 98
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/telerik/widget/feedback/R$menu;->view_feedback_items_activity_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 105
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 132
    invoke-static {}, Lcom/telerik/widget/feedback/RadFeedback;->instance()Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/feedback/RadFeedback;->onSendFeedbackFinished()V

    .line 133
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 112
    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->finish()V

    .line 114
    const/4 v1, 0x1

    .line 119
    :goto_0
    return v1

    .line 115
    :cond_0
    sget v1, Lcom/telerik/widget/feedback/R$id;->action_refresh:I

    if-ne v0, v1, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/telerik/widget/feedback/ViewFeedbackActivity;->refreshCurrentList()V

    .line 119
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
