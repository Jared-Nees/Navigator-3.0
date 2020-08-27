.class Lcom/telerik/widget/feedback/FragmentItemsList$1;
.super Ljava/lang/Object;
.source "FragmentItemsList.java"

# interfaces
.implements Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/feedback/FragmentItemsList;->requestItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/feedback/FragmentItemsList;


# direct methods
.method constructor <init>(Lcom/telerik/widget/feedback/FragmentItemsList;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/telerik/widget/feedback/FragmentItemsList$1;->this$0:Lcom/telerik/widget/feedback/FragmentItemsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemsDelivered(Ljava/lang/Exception;Ljava/util/ArrayList;)V
    .locals 6
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
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/feedback/FeedbackItem;>;"
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 83
    iget-object v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList$1;->this$0:Lcom/telerik/widget/feedback/FragmentItemsList;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/telerik/widget/feedback/FragmentItemsList;->access$002(Lcom/telerik/widget/feedback/FragmentItemsList;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList$1;->this$0:Lcom/telerik/widget/feedback/FragmentItemsList;

    invoke-virtual {v1}, Lcom/telerik/widget/feedback/FragmentItemsList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/telerik/widget/feedback/FragmentItemsList$1;->this$0:Lcom/telerik/widget/feedback/FragmentItemsList;

    invoke-virtual {v2}, Lcom/telerik/widget/feedback/FragmentItemsList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/telerik/widget/feedback/R$string;->feedback_not_retrieved:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 86
    iget-object v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList$1;->this$0:Lcom/telerik/widget/feedback/FragmentItemsList;

    invoke-static {v1}, Lcom/telerik/widget/feedback/FragmentItemsList;->access$100(Lcom/telerik/widget/feedback/FragmentItemsList;)V

    .line 87
    iget-object v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList$1;->this$0:Lcom/telerik/widget/feedback/FragmentItemsList;

    invoke-static {v1}, Lcom/telerik/widget/feedback/FragmentItemsList;->access$200(Lcom/telerik/widget/feedback/FragmentItemsList;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;

    iget-object v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList$1;->this$0:Lcom/telerik/widget/feedback/FragmentItemsList;

    iget-object v2, p0, Lcom/telerik/widget/feedback/FragmentItemsList$1;->this$0:Lcom/telerik/widget/feedback/FragmentItemsList;

    invoke-virtual {v2}, Lcom/telerik/widget/feedback/FragmentItemsList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4, p2}, Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;-><init>(Lcom/telerik/widget/feedback/FragmentItemsList;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 91
    .local v0, "openItemsAdapter":Lcom/telerik/widget/feedback/FragmentItemsList$FeedbackItemsAdapter;
    iget-object v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList$1;->this$0:Lcom/telerik/widget/feedback/FragmentItemsList;

    invoke-static {v1}, Lcom/telerik/widget/feedback/FragmentItemsList;->access$300(Lcom/telerik/widget/feedback/FragmentItemsList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList$1;->this$0:Lcom/telerik/widget/feedback/FragmentItemsList;

    invoke-static {v1}, Lcom/telerik/widget/feedback/FragmentItemsList;->access$100(Lcom/telerik/widget/feedback/FragmentItemsList;)V

    .line 93
    iget-object v1, p0, Lcom/telerik/widget/feedback/FragmentItemsList$1;->this$0:Lcom/telerik/widget/feedback/FragmentItemsList;

    invoke-static {v1}, Lcom/telerik/widget/feedback/FragmentItemsList;->access$200(Lcom/telerik/widget/feedback/FragmentItemsList;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
