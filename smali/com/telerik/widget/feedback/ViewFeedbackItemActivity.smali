.class public Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "ViewFeedbackItemActivity.java"


# instance fields
.field private btnCommentDone:Landroid/widget/Button;

.field private commentsLabel:Landroid/widget/TextView;

.field private commentsView:Landroid/widget/LinearLayout;

.field private feedback:Lcom/telerik/widget/feedback/RadFeedback;

.field private feedbackText:Landroid/widget/TextView;

.field private getCommentsTaskId:Ljava/lang/Integer;

.field private itemImage:Landroid/widget/ImageView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private submitTaskId:Ljava/lang/Integer;

.field private txtDate:Landroid/widget/TextView;

.field private txtEditComment:Landroid/widget/EditText;

.field private txtStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->submitTaskId:Ljava/lang/Integer;

    .line 40
    iput-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getCommentsTaskId:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$000(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->txtEditComment:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->btnCommentDone:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Lcom/telerik/widget/feedback/RadFeedback;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->feedback:Lcom/telerik/widget/feedback/RadFeedback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->submitTaskId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;Lcom/telerik/widget/feedback/FeedbackItem;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;
    .param p1, "x1"    # Lcom/telerik/widget/feedback/FeedbackItem;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->createViewForComment(Lcom/telerik/widget/feedback/FeedbackItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->commentsView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->commentsLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->itemImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$902(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getCommentsTaskId:Ljava/lang/Integer;

    return-object p1
.end method

.method private createViewForComment(Lcom/telerik/widget/feedback/FeedbackItem;)Landroid/view/View;
    .locals 6
    .param p1, "comment"    # Lcom/telerik/widget/feedback/FeedbackItem;

    .prologue
    .line 204
    sget v4, Lcom/telerik/widget/feedback/R$layout;->feedback_comment:I

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 205
    .local v3, "view":Landroid/view/View;
    sget v4, Lcom/telerik/widget/feedback/R$id;->txtCommentText:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 206
    .local v1, "commentText":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/telerik/widget/feedback/FeedbackItem;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    sget v4, Lcom/telerik/widget/feedback/R$id;->txtAuthor:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 209
    .local v0, "authorText":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/telerik/widget/feedback/FeedbackItem;->getAuthor()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/telerik/widget/feedback/FeedbackItem;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/telerik/widget/feedback/FeedbackItem;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_0
    sget v4, Lcom/telerik/widget/feedback/R$id;->txtDate:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 214
    .local v2, "dateText":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/telerik/widget/feedback/FeedbackItem;->getCreatedAt()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/telerik/widget/feedback/DateParser;->getDateFromJSONString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-object v3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v2, Lcom/telerik/widget/feedback/R$layout;->activity_view_feedback_item:I

    invoke-virtual {p0, v2}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-static {}, Lcom/telerik/widget/feedback/RadFeedback;->instance()Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v2

    iput-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->feedback:Lcom/telerik/widget/feedback/RadFeedback;

    .line 53
    sget v2, Lcom/telerik/widget/feedback/R$id;->txtEditComment:I

    invoke-virtual {p0, v2}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->txtEditComment:Landroid/widget/EditText;

    .line 54
    sget v2, Lcom/telerik/widget/feedback/R$id;->txtStatus:I

    invoke-virtual {p0, v2}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->txtStatus:Landroid/widget/TextView;

    .line 55
    sget v2, Lcom/telerik/widget/feedback/R$id;->listComments:I

    invoke-virtual {p0, v2}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->commentsView:Landroid/widget/LinearLayout;

    .line 56
    sget v2, Lcom/telerik/widget/feedback/R$id;->txtDate:I

    invoke-virtual {p0, v2}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->txtDate:Landroid/widget/TextView;

    .line 57
    sget v2, Lcom/telerik/widget/feedback/R$id;->txtFeedbackText:I

    invoke-virtual {p0, v2}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->feedbackText:Landroid/widget/TextView;

    .line 58
    sget v2, Lcom/telerik/widget/feedback/R$id;->txtCommentsLabel:I

    invoke-virtual {p0, v2}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->commentsLabel:Landroid/widget/TextView;

    .line 59
    sget v2, Lcom/telerik/widget/feedback/R$id;->btnCommentDone:I

    invoke-virtual {p0, v2}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->btnCommentDone:Landroid/widget/Button;

    .line 60
    sget v2, Lcom/telerik/widget/feedback/R$id;->progressBar:I

    invoke-virtual {p0, v2}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 61
    iget-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->btnCommentDone:Landroid/widget/Button;

    new-instance v3, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;

    invoke-direct {v3, p0}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$1;-><init>(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    sget v2, Lcom/telerik/widget/feedback/R$id;->itemImage:I

    invoke-virtual {p0, v2}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->itemImage:Landroid/widget/ImageView;

    .line 110
    new-instance v0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$2;

    invoke-direct {v0, p0}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$2;-><init>(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)V

    .line 142
    .local v0, "downloadImageTask":Landroid/os/AsyncTask;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 143
    iget-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->feedback:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-virtual {v2}, Lcom/telerik/widget/feedback/RadFeedback;->selectedItem()Lcom/telerik/widget/feedback/FeedbackItem;

    move-result-object v1

    .line 145
    .local v1, "item":Lcom/telerik/widget/feedback/FeedbackItem;
    iget-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->txtDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/telerik/widget/feedback/FeedbackItem;->getCreatedAt()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/telerik/widget/feedback/DateParser;->getDateFromJSONString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v1}, Lcom/telerik/widget/feedback/FeedbackItem;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "open"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->txtStatus:Landroid/widget/TextView;

    sget v3, Lcom/telerik/widget/feedback/R$string;->status_open:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->txtStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/telerik/widget/feedback/R$color;->status_open_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    :goto_0
    iget-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->feedbackText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/telerik/widget/feedback/FeedbackItem;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->feedback:Lcom/telerik/widget/feedback/RadFeedback;

    iget-object v3, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->feedback:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-virtual {v3}, Lcom/telerik/widget/feedback/RadFeedback;->selectedItem()Lcom/telerik/widget/feedback/FeedbackItem;

    move-result-object v3

    new-instance v4, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$3;

    invoke-direct {v4, p0}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity$3;-><init>(Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/telerik/widget/feedback/RadFeedback;->getCommentsForItem(Lcom/telerik/widget/feedback/FeedbackItem;Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getCommentsTaskId:Ljava/lang/Integer;

    .line 176
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 177
    return-void

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->txtStatus:Landroid/widget/TextView;

    sget v3, Lcom/telerik/widget/feedback/R$string;->status_resolved:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 151
    iget-object v2, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->txtStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/telerik/widget/feedback/R$color;->status_resolved_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 182
    iget-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getCommentsTaskId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->feedback:Lcom/telerik/widget/feedback/RadFeedback;

    iget-object v1, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->getCommentsTaskId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/telerik/widget/feedback/RadFeedback;->cancelTask(I)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->submitTaskId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->feedback:Lcom/telerik/widget/feedback/RadFeedback;

    iget-object v1, p0, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->submitTaskId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/telerik/widget/feedback/RadFeedback;->cancelTask(I)V

    .line 189
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 193
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 195
    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/ViewFeedbackItemActivity;->finish()V

    .line 197
    const/4 v1, 0x1

    .line 200
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
