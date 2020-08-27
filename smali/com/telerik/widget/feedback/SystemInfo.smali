.class public Lcom/telerik/widget/feedback/SystemInfo;
.super Ljava/lang/Object;
.source "SystemInfo.java"


# instance fields
.field private OSVersion:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private heightInPixels:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private widthInPixels:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "source"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/telerik/widget/feedback/SystemInfo;->init(Lorg/json/JSONObject;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/telerik/widget/feedback/SystemInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/telerik/widget/feedback/SystemInfo;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHeightInPixels()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/telerik/widget/feedback/SystemInfo;->heightInPixels:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/telerik/widget/feedback/SystemInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/telerik/widget/feedback/SystemInfo;->OSVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/telerik/widget/feedback/SystemInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getWidthInPixels()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/telerik/widget/feedback/SystemInfo;->widthInPixels:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "source"    # Lorg/json/JSONObject;

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/telerik/widget/feedback/JSONHelper;->init(Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 87
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/telerik/widget/feedback/SystemInfo;->appId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/telerik/widget/feedback/SystemInfo;->appVersion:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setHeightInPixels(Ljava/lang/String;)V
    .locals 0
    .param p1, "heightInPixels"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/telerik/widget/feedback/SystemInfo;->heightInPixels:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/telerik/widget/feedback/SystemInfo;->model:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setOSVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/telerik/widget/feedback/SystemInfo;->OSVersion:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/telerik/widget/feedback/SystemInfo;->uuid:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setWidthInPixels(Ljava/lang/String;)V
    .locals 0
    .param p1, "widthInPixels"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/telerik/widget/feedback/SystemInfo;->widthInPixels:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 82
    invoke-static {p0}, Lcom/telerik/widget/feedback/JSONHelper;->toJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
