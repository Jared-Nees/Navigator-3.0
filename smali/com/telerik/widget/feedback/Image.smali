.class public Lcom/telerik/widget/feedback/Image;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field private base64:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private createdAt:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "screenshot.png"

    iput-object v0, p0, Lcom/telerik/widget/feedback/Image;->fileName:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "source"    # Lorg/json/JSONObject;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "screenshot.png"

    iput-object v0, p0, Lcom/telerik/widget/feedback/Image;->fileName:Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Lcom/telerik/widget/feedback/Image;->init(Lorg/json/JSONObject;)V

    .line 21
    return-void
.end method

.method private init(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "source"    # Lorg/json/JSONObject;

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/telerik/widget/feedback/JSONHelper;->init(Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/telerik/widget/feedback/Image;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/telerik/widget/feedback/Image;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/telerik/widget/feedback/Image;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/telerik/widget/feedback/Image;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getbase64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/telerik/widget/feedback/Image;->base64:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/telerik/widget/feedback/Image;->contentType:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/telerik/widget/feedback/Image;->createdAt:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/telerik/widget/feedback/Image;->fileName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/telerik/widget/feedback/Image;->uri:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setbase64(Ljava/lang/String;)V
    .locals 0
    .param p1, "base64"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/telerik/widget/feedback/Image;->base64:Ljava/lang/String;

    .line 25
    return-void
.end method
