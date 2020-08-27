.class Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter$1;
.super Ljava/lang/Object;
.source "FragmentItemsList.java"

# interfaces
.implements Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->callForMoreItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;


# direct methods
.method constructor <init>(Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter$1;->this$1:Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemsDelivered(Ljava/lang/Exception;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/telerik/widget/feedback/FeedbackItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/feedback/FeedbackItem;>;"
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter$1;->this$1:Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;

    iget-object v0, v0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->originalSource:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 195
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter$1;->this$1:Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->access$402(Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;Z)Z

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter$1;->this$1:Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;

    invoke-virtual {v0}, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;->notifyDataSetChanged()V

    .line 199
    return-void
.end method
