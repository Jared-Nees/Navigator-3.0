.class public Lcom/telerik/widget/feedback/CommentEditText;
.super Landroid/widget/EditText;
.source "CommentEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/widget/feedback/CommentEditText$OnKeyPreImeListener;
    }
.end annotation


# instance fields
.field private keyPreImeListener:Lcom/telerik/widget/feedback/CommentEditText$OnKeyPreImeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/telerik/widget/feedback/CommentEditText;->keyPreImeListener:Lcom/telerik/widget/feedback/CommentEditText$OnKeyPreImeListener;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/telerik/widget/feedback/CommentEditText;->keyPreImeListener:Lcom/telerik/widget/feedback/CommentEditText$OnKeyPreImeListener;

    invoke-interface {v0, p1, p2}, Lcom/telerik/widget/feedback/CommentEditText$OnKeyPreImeListener;->onKeyPreIme(ILandroid/view/KeyEvent;)V

    .line 28
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnKeyPreImeListener(Lcom/telerik/widget/feedback/CommentEditText$OnKeyPreImeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/telerik/widget/feedback/CommentEditText$OnKeyPreImeListener;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/telerik/widget/feedback/CommentEditText;->keyPreImeListener:Lcom/telerik/widget/feedback/CommentEditText$OnKeyPreImeListener;

    .line 33
    return-void
.end method
