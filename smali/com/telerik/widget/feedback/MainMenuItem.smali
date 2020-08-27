.class public Lcom/telerik/widget/feedback/MainMenuItem;
.super Ljava/lang/Object;
.source "MainMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/widget/feedback/MainMenuItem$InitAction;
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private initAction:Lcom/telerik/widget/feedback/MainMenuItem$InitAction;

.field private intent:Landroid/content/Intent;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/telerik/widget/feedback/MainMenuItem;->title:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/telerik/widget/feedback/MainMenuItem;->description:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/telerik/widget/feedback/MainMenuItem;->intent:Landroid/content/Intent;

    .line 22
    return-void
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/telerik/widget/feedback/MainMenuItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getInitAction()Lcom/telerik/widget/feedback/MainMenuItem$InitAction;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/telerik/widget/feedback/MainMenuItem;->initAction:Lcom/telerik/widget/feedback/MainMenuItem$InitAction;

    return-object v0
.end method

.method public intent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/telerik/widget/feedback/MainMenuItem;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public setInitAction(Lcom/telerik/widget/feedback/MainMenuItem$InitAction;)V
    .locals 0
    .param p1, "action"    # Lcom/telerik/widget/feedback/MainMenuItem$InitAction;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/telerik/widget/feedback/MainMenuItem;->initAction:Lcom/telerik/widget/feedback/MainMenuItem$InitAction;

    .line 32
    return-void
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/telerik/widget/feedback/MainMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method
