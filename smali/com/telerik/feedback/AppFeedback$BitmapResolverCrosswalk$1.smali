.class Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk$1;
.super Ljava/lang/Object;
.source "AppFeedback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk;


# direct methods
.method constructor <init>(Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk;)V
    .locals 0
    .param p1, "this$1"    # Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk$1;->this$1:Lcom/telerik/feedback/AppFeedback$BitmapResolverCrosswalk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 109
    return-void
.end method
