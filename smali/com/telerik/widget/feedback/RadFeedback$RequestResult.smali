.class Lcom/telerik/widget/feedback/RadFeedback$RequestResult;
.super Ljava/lang/Object;
.source "RadFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/feedback/RadFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestResult"
.end annotation


# instance fields
.field public exception:Ljava/lang/Exception;

.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/telerik/widget/feedback/FeedbackItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/telerik/widget/feedback/RadFeedback;


# direct methods
.method constructor <init>(Lcom/telerik/widget/feedback/RadFeedback;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/telerik/widget/feedback/RadFeedback$RequestResult;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
