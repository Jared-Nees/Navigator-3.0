.class public Lcom/telerik/widget/feedback/RadFeedback$MainMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RadFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/feedback/RadFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/telerik/widget/feedback/MainMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/telerik/widget/feedback/MainMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/telerik/widget/feedback/RadFeedback;


# direct methods
.method public constructor <init>(Lcom/telerik/widget/feedback/RadFeedback;Ljava/util/ArrayList;Landroid/content/Context;I)V
    .locals 0
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "itemResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/telerik/widget/feedback/MainMenuItem;",
            ">;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 671
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/feedback/MainMenuItem;>;"
    iput-object p1, p0, Lcom/telerik/widget/feedback/RadFeedback$MainMenuAdapter;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    .line 672
    invoke-direct {p0, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 673
    iput-object p2, p0, Lcom/telerik/widget/feedback/RadFeedback$MainMenuAdapter;->items:Ljava/util/ArrayList;

    .line 674
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback$MainMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/telerik/widget/feedback/MainMenuItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 698
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback$MainMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/feedback/MainMenuItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 667
    invoke-virtual {p0, p1}, Lcom/telerik/widget/feedback/RadFeedback$MainMenuAdapter;->getItem(I)Lcom/telerik/widget/feedback/MainMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 688
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback$MainMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/feedback/MainMenuItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPosition(Lcom/telerik/widget/feedback/MainMenuItem;)I
    .locals 1
    .param p1, "item"    # Lcom/telerik/widget/feedback/MainMenuItem;

    .prologue
    .line 693
    iget-object v0, p0, Lcom/telerik/widget/feedback/RadFeedback$MainMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 667
    check-cast p1, Lcom/telerik/widget/feedback/MainMenuItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/telerik/widget/feedback/RadFeedback$MainMenuAdapter;->getPosition(Lcom/telerik/widget/feedback/MainMenuItem;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/telerik/widget/feedback/RadFeedback$MainMenuAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/telerik/widget/feedback/R$layout;->main_menu_list_item:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 679
    .local v1, "inflatedView":Landroid/view/View;
    sget v3, Lcom/telerik/widget/feedback/R$id;->txtTitle:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 680
    .local v2, "title":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/telerik/widget/feedback/RadFeedback$MainMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telerik/widget/feedback/MainMenuItem;

    invoke-virtual {v3}, Lcom/telerik/widget/feedback/MainMenuItem;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    sget v3, Lcom/telerik/widget/feedback/R$id;->txtDescription:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 682
    .local v0, "description":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/telerik/widget/feedback/RadFeedback$MainMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telerik/widget/feedback/MainMenuItem;

    invoke-virtual {v3}, Lcom/telerik/widget/feedback/MainMenuItem;->description()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 708
    const/4 v0, 0x1

    return v0
.end method
