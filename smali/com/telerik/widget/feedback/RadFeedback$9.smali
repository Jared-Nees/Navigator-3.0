.class Lcom/telerik/widget/feedback/RadFeedback$9;
.super Ljava/lang/Object;
.source "RadFeedback.java"

# interfaces
.implements Lcom/telerik/widget/feedback/MainMenuItem$InitAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/feedback/RadFeedback;->prepareMenuItems(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/feedback/RadFeedback;

.field final synthetic val$sendItem:Lcom/telerik/widget/feedback/MainMenuItem;


# direct methods
.method constructor <init>(Lcom/telerik/widget/feedback/RadFeedback;Lcom/telerik/widget/feedback/MainMenuItem;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/telerik/widget/feedback/RadFeedback$9;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    iput-object p2, p0, Lcom/telerik/widget/feedback/RadFeedback$9;->val$sendItem:Lcom/telerik/widget/feedback/MainMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v10, 0x32

    .line 610
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const v5, 0x1020002

    invoke-virtual {p1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 611
    .local v2, "screenShotView":Landroid/view/View;
    iget-object v5, p0, Lcom/telerik/widget/feedback/RadFeedback$9;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-virtual {v5}, Lcom/telerik/widget/feedback/RadFeedback;->getBitmapResolver()Lcom/telerik/widget/feedback/BitmapResolver;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/telerik/widget/feedback/BitmapResolver;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 612
    .local v1, "screenShotBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 613
    .local v3, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v5, v10, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 614
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    .line 615
    .local v4, "streamSize":I
    :goto_0
    int-to-double v6, v4

    const-wide v8, 0x411e848000000000L    # 500000.0

    cmpl-double v5, v6, v8

    if-lez v5, :cond_0

    .line 616
    iget-object v5, p0, Lcom/telerik/widget/feedback/RadFeedback$9;->this$0:Lcom/telerik/widget/feedback/RadFeedback;

    invoke-static {v5, v1, v4}, Lcom/telerik/widget/feedback/RadFeedback;->access$600(Lcom/telerik/widget/feedback/RadFeedback;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 617
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .end local v3    # "stream":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 618
    .restart local v3    # "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v5, v10, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 619
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    goto :goto_0

    .line 621
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 622
    .local v0, "imageBytes":[B
    iget-object v5, p0, Lcom/telerik/widget/feedback/RadFeedback$9;->val$sendItem:Lcom/telerik/widget/feedback/MainMenuItem;

    invoke-virtual {v5}, Lcom/telerik/widget/feedback/MainMenuItem;->intent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "image"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 623
    return-void
.end method
