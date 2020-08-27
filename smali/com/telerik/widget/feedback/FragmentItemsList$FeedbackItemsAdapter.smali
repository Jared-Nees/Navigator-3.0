.class public Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FragmentItemsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/feedback/FragmentItemsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeedbackItemsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/telerik/widget/feedback/FeedbackItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final pageSize:I = 0xa


# instance fields
.field private currentPage:I

.field originalSource:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/telerik/widget/feedback/FeedbackItem;",
            ">;"
        }
    .end annotation
.end field

.field private showProgress:Z

.field final synthetic this$0:Lcom/telerik/widget/feedback/FragmentItemsList;


# direct methods
.method public constructor <init>(Lcom/telerik/widget/feedback/FragmentItemsList;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/telerik/widget/feedback/FeedbackItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/feedback/FeedbackItem;>;"
    iput-object p1, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->this$0:Lcom/telerik/widget/feedback/FragmentItemsList;

    .line 126
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->currentPage:I

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->showProgress:Z

    .line 127
    iput-object p4, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->originalSource:Ljava/util/ArrayList;

    .line 128
    return-void
.end method

.method static synthetic access$402(Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->showProgress:Z

    return p1
.end method

.method private callForMoreItems()V
    .locals 5

    .prologue
    .line 190
    iget v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->currentPage:I

    .line 191
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->this$0:Lcom/telerik/widget/feedback/FragmentItemsList;

    invoke-static {v0}, Lcom/telerik/widget/feedback/FragmentItemsList;->access$500(Lcom/telerik/widget/feedback/FragmentItemsList;)Lcom/telerik/widget/feedback/RadFeedback;

    move-result-object v0

    new-instance v1, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter$1;

    invoke-direct {v1, p0}, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter$1;-><init>(Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;)V

    iget-object v2, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->this$0:Lcom/telerik/widget/feedback/FragmentItemsList;

    iget v2, v2, Lcom/telerik/widget/feedback/FragmentItemsList;->itemsFilter:I

    iget v3, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->currentPage:I

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/telerik/widget/feedback/RadFeedback;->getCurrentItems(Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;III)I

    .line 201
    return-void
.end method

.method private getProgressView()Landroid/view/View;
    .locals 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/telerik/widget/feedback/R$layout;->list_progress_indicator:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->showProgress:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->originalSource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->originalSource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/telerik/widget/feedback/FeedbackItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->originalSource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->originalSource:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/feedback/FeedbackItem;

    .line 144
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/telerik/widget/feedback/FeedbackItem;

    invoke-direct {v0}, Lcom/telerik/widget/feedback/FeedbackItem;-><init>()V

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->getItem(I)Lcom/telerik/widget/feedback/FeedbackItem;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 154
    iget-object v8, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->originalSource:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne p1, v8, :cond_0

    iget-boolean v8, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->showProgress:Z

    if-eqz v8, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->getProgressView()Landroid/view/View;

    move-result-object v3

    .line 156
    .local v3, "progressView":Landroid/view/View;
    invoke-direct {p0}, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->callForMoreItems()V

    .line 182
    .end local v3    # "progressView":Landroid/view/View;
    :goto_0
    return-object v3

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/telerik/widget/feedback/R$layout;->feedback_item:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 160
    .local v2, "itemView":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->getItem(I)Lcom/telerik/widget/feedback/FeedbackItem;

    move-result-object v0

    .line 161
    .local v0, "associatedItem":Lcom/telerik/widget/feedback/FeedbackItem;
    sget v8, Lcom/telerik/widget/feedback/R$id;->txtText:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 162
    .local v7, "txtText":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/telerik/widget/feedback/FeedbackItem;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    sget v8, Lcom/telerik/widget/feedback/R$id;->txtStatus:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 164
    .local v6, "txtStatus":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/telerik/widget/feedback/FeedbackItem;->getState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "open"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 165
    sget v8, Lcom/telerik/widget/feedback/R$string;->status_open:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v8, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->this$0:Lcom/telerik/widget/feedback/FragmentItemsList;

    invoke-virtual {v8}, Lcom/telerik/widget/feedback/FragmentItemsList;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/telerik/widget/feedback/R$color;->status_open_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    :goto_1
    sget v8, Lcom/telerik/widget/feedback/R$id;->txtDate:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 172
    .local v5, "txtDate":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v0}, Lcom/telerik/widget/feedback/FeedbackItem;->getCreatedAt()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/telerik/widget/feedback/DateParser;->getDateFromJSONString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    sget v8, Lcom/telerik/widget/feedback/R$id;->txtCommentsCount:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 175
    .local v4, "txtCommentsCount":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/telerik/widget/feedback/FeedbackItem;->getCommentsCount()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Lcom/telerik/widget/feedback/FeedbackItem;->getCommentsCount()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .line 176
    .local v1, "commentsCount":I
    const/4 v8, 0x1

    if-ne v1, v8, :cond_3

    .line 177
    iget-object v8, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->this$0:Lcom/telerik/widget/feedback/FragmentItemsList;

    sget v9, Lcom/telerik/widget/feedback/R$string;->feedback_activity_single_comment_label_format:I

    invoke-virtual {v8, v9}, Lcom/telerik/widget/feedback/FragmentItemsList;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    move-object v3, v2

    .line 182
    goto/16 :goto_0

    .line 168
    .end local v1    # "commentsCount":I
    .end local v4    # "txtCommentsCount":Landroid/widget/TextView;
    .end local v5    # "txtDate":Landroid/widget/TextView;
    :cond_1
    sget v8, Lcom/telerik/widget/feedback/R$string;->status_resolved:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iget-object v8, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->this$0:Lcom/telerik/widget/feedback/FragmentItemsList;

    invoke-virtual {v8}, Lcom/telerik/widget/feedback/FragmentItemsList;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/telerik/widget/feedback/R$color;->status_resolved_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 175
    .restart local v4    # "txtCommentsCount":Landroid/widget/TextView;
    .restart local v5    # "txtDate":Landroid/widget/TextView;
    :cond_2
    const-string v8, "1"

    goto :goto_2

    .line 179
    .restart local v1    # "commentsCount":I
    :cond_3
    iget-object v8, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->this$0:Lcom/telerik/widget/feedback/FragmentItemsList;

    sget v9, Lcom/telerik/widget/feedback/R$string;->feedback_activity_multiple_comments_label_format:I

    invoke-virtual {v8, v9}, Lcom/telerik/widget/feedback/FragmentItemsList;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method
