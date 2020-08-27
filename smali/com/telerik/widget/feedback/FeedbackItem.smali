.class public Lcom/telerik/widget/feedback/FeedbackItem;
.super Ljava/lang/Object;
.source "FeedbackItem.java"


# instance fields
.field private author:Ljava/lang/String;

.field private commentsCount:Ljava/lang/String;

.field private createdAt:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private image:Lcom/telerik/widget/feedback/Image;

.field private modifiedAt:Ljava/lang/String;

.field private projectId:Ljava/lang/String;

.field private rootId:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private systemInfo:Lcom/telerik/widget/feedback/SystemInfo;

.field private text:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "source"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lcom/telerik/widget/feedback/FeedbackItem;->init(Lorg/json/JSONObject;)V

    .line 30
    return-void
.end method

.method private init(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "source"    # Lorg/json/JSONObject;

    .prologue
    .line 133
    invoke-static {p0, p1}, Lcom/telerik/widget/feedback/JSONHelper;->init(Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 134
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/telerik/widget/feedback/FeedbackItem;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentsCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/telerik/widget/feedback/FeedbackItem;->commentsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/telerik/widget/feedback/FeedbackItem;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/telerik/widget/feedback/FeedbackItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/telerik/widget/feedback/Image;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/telerik/widget/feedback/FeedbackItem;->image:Lcom/telerik/widget/feedback/Image;

    return-object v0
.end method

.method public getModifiedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/telerik/widget/feedback/FeedbackItem;->modifiedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/telerik/widget/feedback/FeedbackItem;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public getRootId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/telerik/widget/feedback/FeedbackItem;->rootId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/telerik/widget/feedback/FeedbackItem;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemInfo()Lcom/telerik/widget/feedback/SystemInfo;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/telerik/widget/feedback/FeedbackItem;->systemInfo:Lcom/telerik/widget/feedback/SystemInfo;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/telerik/widget/feedback/FeedbackItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/telerik/widget/feedback/FeedbackItem;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/telerik/widget/feedback/FeedbackItem;->author:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setCommentsCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "count"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/telerik/widget/feedback/FeedbackItem;->commentsCount:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/telerik/widget/feedback/FeedbackItem;->createdAt:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/telerik/widget/feedback/FeedbackItem;->id:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setImage(Lcom/telerik/widget/feedback/Image;)V
    .locals 0
    .param p1, "image"    # Lcom/telerik/widget/feedback/Image;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/telerik/widget/feedback/FeedbackItem;->image:Lcom/telerik/widget/feedback/Image;

    .line 86
    return-void
.end method

.method public setModifiedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "modifiedAt"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/telerik/widget/feedback/FeedbackItem;->modifiedAt:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setProjectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/telerik/widget/feedback/FeedbackItem;->projectId:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setRootId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/telerik/widget/feedback/FeedbackItem;->rootId:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/telerik/widget/feedback/FeedbackItem;->state:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setSystemInfo(Lcom/telerik/widget/feedback/SystemInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/telerik/widget/feedback/SystemInfo;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/telerik/widget/feedback/FeedbackItem;->systemInfo:Lcom/telerik/widget/feedback/SystemInfo;

    .line 126
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/telerik/widget/feedback/FeedbackItem;->text:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/telerik/widget/feedback/FeedbackItem;->uid:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 129
    invoke-static {p0}, Lcom/telerik/widget/feedback/JSONHelper;->toJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
