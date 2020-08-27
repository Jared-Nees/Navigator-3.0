.class public interface abstract Lcom/telerik/widget/feedback/RadFeedback$OnItemsDeliveredCallback;
.super Ljava/lang/Object;
.source "RadFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/feedback/RadFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemsDeliveredCallback"
.end annotation


# virtual methods
.method public abstract onItemsDelivered(Ljava/lang/Exception;Ljava/util/ArrayList;)V
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
.end method
