.class public Lcom/telerik/widget/feedback/BitmapResolverBase;
.super Ljava/lang/Object;
.source "BitmapResolverBase.java"

# interfaces
.implements Lcom/telerik/widget/feedback/BitmapResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 14
    .local v1, "screenShot":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    .local v0, "drawingBoard":Landroid/graphics/Canvas;
    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 16
    return-object v1
.end method
