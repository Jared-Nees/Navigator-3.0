.class public Lcom/telerik/widget/feedback/EditDetailsActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "EditDetailsActivity.java"


# instance fields
.field private feedback:Lcom/telerik/widget/feedback/RadFeedback;

.field private txtAuthor:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 14
    invoke-static {}, Lcom/telerik/widget/feedback/RadFeedback;->instance()Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v0

    iput-object v0, p0, Lcom/telerik/widget/feedback/EditDetailsActivity;->feedback:Lcom/telerik/widget/feedback/RadFeedback;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 18
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    sget v0, Lcom/telerik/widget/feedback/R$layout;->activity_edit_details:I

    invoke-virtual {p0, v0}, Lcom/telerik/widget/feedback/EditDetailsActivity;->setContentView(I)V

    .line 20
    sget v0, Lcom/telerik/widget/feedback/R$id;->txtAuthorName:I

    invoke-virtual {p0, v0}, Lcom/telerik/widget/feedback/EditDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/telerik/widget/feedback/EditDetailsActivity;->txtAuthor:Landroid/widget/EditText;

    .line 21
    iget-object v0, p0, Lcom/telerik/widget/feedback/EditDetailsActivity;->txtAuthor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/telerik/widget/feedback/EditDetailsActivity;->feedback:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-virtual {v1}, Lcom/telerik/widget/feedback/RadFeedback;->getCurrentAuthorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/EditDetailsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 23
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/EditDetailsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 24
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/EditDetailsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 25
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 53
    invoke-static {}, Lcom/telerik/widget/feedback/RadFeedback;->instance()Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/feedback/RadFeedback;->onSendFeedbackFinished()V

    .line 54
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 33
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 34
    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/EditDetailsActivity;->finish()V

    .line 36
    const/4 v1, 0x1

    .line 38
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    .line 44
    iget-object v0, p0, Lcom/telerik/widget/feedback/EditDetailsActivity;->txtAuthor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telerik/widget/feedback/EditDetailsActivity;->txtAuthor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/telerik/widget/feedback/EditDetailsActivity;->feedback:Lcom/telerik/widget/feedback/RadFeedback;

    iget-object v1, p0, Lcom/telerik/widget/feedback/EditDetailsActivity;->txtAuthor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telerik/widget/feedback/RadFeedback;->setCurrentAuthorName(Ljava/lang/String;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/feedback/EditDetailsActivity;->feedback:Lcom/telerik/widget/feedback/RadFeedback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/telerik/widget/feedback/RadFeedback;->storeShouldShowPrefPrompt(Z)V

    .line 48
    return-void
.end method
