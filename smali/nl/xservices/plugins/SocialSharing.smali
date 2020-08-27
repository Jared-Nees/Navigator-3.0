.class public Lnl/xservices/plugins/SocialSharing;
.super Lorg/apache/cordova/CordovaPlugin;
.source "SocialSharing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_AVAILABLE_EVENT:Ljava/lang/String; = "available"

.field private static final ACTION_CAN_SHARE_VIA:Ljava/lang/String; = "canShareVia"

.field private static final ACTION_CAN_SHARE_VIA_EMAIL:Ljava/lang/String; = "canShareViaEmail"

.field private static final ACTION_SHARE_EVENT:Ljava/lang/String; = "share"

.field private static final ACTION_SHARE_VIA:Ljava/lang/String; = "shareVia"

.field private static final ACTION_SHARE_VIA_EMAIL_EVENT:Ljava/lang/String; = "shareViaEmail"

.field private static final ACTION_SHARE_VIA_FACEBOOK_EVENT:Ljava/lang/String; = "shareViaFacebook"

.field private static final ACTION_SHARE_VIA_FACEBOOK_WITH_PASTEMESSAGEHINT:Ljava/lang/String; = "shareViaFacebookWithPasteMessageHint"

.field private static final ACTION_SHARE_VIA_INSTAGRAM_EVENT:Ljava/lang/String; = "shareViaInstagram"

.field private static final ACTION_SHARE_VIA_SMS_EVENT:Ljava/lang/String; = "shareViaSMS"

.field private static final ACTION_SHARE_VIA_TWITTER_EVENT:Ljava/lang/String; = "shareViaTwitter"

.field private static final ACTION_SHARE_VIA_WHATSAPP_EVENT:Ljava/lang/String; = "shareViaWhatsApp"

.field private static final ACTION_SHARE_WITH_OPTIONS_EVENT:Ljava/lang/String; = "shareWithOptions"

.field private static final ACTIVITY_CODE_SENDVIAEMAIL:I = 0x3

.field private static final ACTIVITY_CODE_SENDVIAWHATSAPP:I = 0x4

.field private static final ACTIVITY_CODE_SEND__BOOLRESULT:I = 0x1

.field private static final ACTIVITY_CODE_SEND__OBJECT:I = 0x2

.field private static final RELATIVE_PREFIX:Ljava/lang/String; = "./"

.field private static final WWW:Ljava/lang/String; = "www/"


# instance fields
.field private final MIME_MapTable:[[Ljava/lang/String;

.field private _callbackContext:Lorg/apache/cordova/CallbackContext;

.field private pasteMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 498
    const/16 v0, 0x42

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ".3gp"

    aput-object v2, v1, v4

    const-string v2, "video/3gpp"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ".apk"

    aput-object v2, v1, v4

    const-string v2, "application/vnd.android.package-archive"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ".asf"

    aput-object v2, v1, v4

    const-string v2, "video/x-ms-asf"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".avi"

    aput-object v3, v2, v4

    const-string v3, "video/x-msvideo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".bin"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".bmp"

    aput-object v3, v2, v4

    const-string v3, "image/bmp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".c"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".class"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".conf"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".cpp"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".doc"

    aput-object v3, v2, v4

    const-string v3, "application/msword"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".docx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xls"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xlsx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".exe"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".gif"

    aput-object v3, v2, v4

    const-string v3, "image/gif"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".gtar"

    aput-object v3, v2, v4

    const-string v3, "application/x-gtar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".gz"

    aput-object v3, v2, v4

    const-string v3, "application/x-gzip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".h"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".htm"

    aput-object v3, v2, v4

    const-string v3, "text/html"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".html"

    aput-object v3, v2, v4

    const-string v3, "text/html"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".jar"

    aput-object v3, v2, v4

    const-string v3, "application/java-archive"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".java"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".jpeg"

    aput-object v3, v2, v4

    const-string v3, "image/jpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".jpg"

    aput-object v3, v2, v4

    const-string v3, "image/*"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".js"

    aput-object v3, v2, v4

    const-string v3, "application/x-javascript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".log"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m3u"

    aput-object v3, v2, v4

    const-string v3, "audio/x-mpegurl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m4a"

    aput-object v3, v2, v4

    const-string v3, "audio/mp4a-latm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m4b"

    aput-object v3, v2, v4

    const-string v3, "audio/mp4a-latm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m4p"

    aput-object v3, v2, v4

    const-string v3, "audio/mp4a-latm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m4u"

    aput-object v3, v2, v4

    const-string v3, "video/vnd.mpegurl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m4v"

    aput-object v3, v2, v4

    const-string v3, "video/x-m4v"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mov"

    aput-object v3, v2, v4

    const-string v3, "video/quicktime"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mp2"

    aput-object v3, v2, v4

    const-string v3, "audio/x-mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mp3"

    aput-object v3, v2, v4

    const-string v3, "audio/x-mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mp4"

    aput-object v3, v2, v4

    const-string v3, "video/mp4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.mpohun.certificate"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpe"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpeg"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpg"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpg4"

    aput-object v3, v2, v4

    const-string v3, "video/mp4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpga"

    aput-object v3, v2, v4

    const-string v3, "audio/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".msg"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-outlook"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ogg"

    aput-object v3, v2, v4

    const-string v3, "audio/ogg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pdf"

    aput-object v3, v2, v4

    const-string v3, "application/pdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".png"

    aput-object v3, v2, v4

    const-string v3, "image/png"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pps"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ppt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pptx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".prop"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".rc"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".rmvb"

    aput-object v3, v2, v4

    const-string v3, "audio/x-pn-realaudio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".rtf"

    aput-object v3, v2, v4

    const-string v3, "application/rtf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".sh"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".tar"

    aput-object v3, v2, v4

    const-string v3, "application/x-tar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".tgz"

    aput-object v3, v2, v4

    const-string v3, "application/x-compressed"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".txt"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wav"

    aput-object v3, v2, v4

    const-string v3, "audio/x-wav"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wma"

    aput-object v3, v2, v4

    const-string v3, "audio/x-ms-wma"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wmv"

    aput-object v3, v2, v4

    const-string v3, "audio/x-ms-wmv"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wps"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-works"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xml"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".z"

    aput-object v3, v2, v4

    const-string v3, "application/x-compress"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".zip"

    aput-object v3, v2, v4

    const-string v3, "application/x-zip-compressed"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v4

    const-string v3, "*/*"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lnl/xservices/plugins/SocialSharing;->MIME_MapTable:[[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Lnl/xservices/plugins/SocialSharing;->notEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p0}, Lnl/xservices/plugins/SocialSharing;->toStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lnl/xservices/plugins/SocialSharing;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnl/xservices/plugins/SocialSharing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lnl/xservices/plugins/SocialSharing;->getDownloadDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lnl/xservices/plugins/SocialSharing;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/net/URI;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lnl/xservices/plugins/SocialSharing;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct/range {p0 .. p6}, Lnl/xservices/plugins/SocialSharing;->getFileUriAndSetType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/net/URI;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p0, "x0"    # Lnl/xservices/plugins/SocialSharing;
    .param p1, "x1"    # Lorg/apache/cordova/CallbackContext;
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lnl/xservices/plugins/SocialSharing;->getActivity(Lorg/apache/cordova/CallbackContext;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lnl/xservices/plugins/SocialSharing;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnl/xservices/plugins/SocialSharing;

    .prologue
    .line 36
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing;->pasteMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lnl/xservices/plugins/SocialSharing;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnl/xservices/plugins/SocialSharing;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lnl/xservices/plugins/SocialSharing;->copyHintToClipboard(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lnl/xservices/plugins/SocialSharing;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnl/xservices/plugins/SocialSharing;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lnl/xservices/plugins/SocialSharing;->showPasteMessage(Ljava/lang/String;)V

    return-void
.end method

.method private cleanupOldFiles(Ljava/io/File;)V
    .locals 4
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 792
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 794
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 792
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 796
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private copyHintToClipboard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 365
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 371
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v2, p0, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 369
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    invoke-static {p2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 370
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0
.end method

.method private createOrCleanDir(Ljava/lang/String;)V
    .locals 3
    .param p1, "downloadDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 743
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 744
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 745
    new-instance v1, Ljava/io/IOException;

    const-string v2, "CREATE_DIRS_FAILED"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 748
    :cond_0
    invoke-direct {p0, v0}, Lnl/xservices/plugins/SocialSharing;->cleanupOldFiles(Ljava/io/File;)V

    .line 750
    :cond_1
    return-void
.end method

.method private doSendIntent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 13
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "files"    # Lorg/json/JSONArray;
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "appPackageName"    # Ljava/lang/String;
    .param p7, "chooserTitle"    # Ljava/lang/String;
    .param p8, "peek"    # Z
    .param p9, "boolResult"    # Z

    .prologue
    .line 244
    iget-object v9, p0, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 245
    .local v9, "mycordova":Lorg/apache/cordova/CordovaInterface;
    move-object v10, p0

    .line 247
    .local v10, "plugin":Lorg/apache/cordova/CordovaPlugin;
    new-instance v0, Lnl/xservices/plugins/SocialSharing$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v11, p7

    move/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lnl/xservices/plugins/SocialSharing$3;-><init>(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaPlugin;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lnl/xservices/plugins/SocialSharing;->executeInThreadPool(Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;)V

    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method private executeInThreadPool(Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;)V
    .locals 2
    .param p1, "runnable"    # Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;

    .prologue
    .line 198
    iget-object v0, p0, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lnl/xservices/plugins/SocialSharing$2;

    invoke-direct {v1, p0, p1}, Lnl/xservices/plugins/SocialSharing$2;-><init>(Lnl/xservices/plugins/SocialSharing;Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method private getActivity(Lorg/apache/cordova/CallbackContext;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 6
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .param p2, "shareIntent"    # Landroid/content/Intent;
    .param p3, "appPackageName"    # Ljava/lang/String;

    .prologue
    .line 693
    iget-object v3, p0, Lnl/xservices/plugins/SocialSharing;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 694
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 695
    .local v0, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 696
    .local v1, "app":Landroid/content/pm/ResolveInfo;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 697
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 702
    .end local v1    # "app":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v3

    .line 701
    :cond_1
    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p0, v0}, Lnl/xservices/plugins/SocialSharing;->getShareActivities(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONArray;)V

    invoke-virtual {p1, v3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 702
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getBytes(Ljava/io/InputStream;)[B
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 767
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 769
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x4000

    new-array v1, v3, [B

    .line 770
    .local v1, "data":[B
    :goto_0
    array-length v3, v1

    invoke-virtual {p1, v1, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "nRead":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 771
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 773
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 774
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private getDownloadDir()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 209
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnl/xservices/plugins/SocialSharing;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/socialsharing-downloads"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "dir":Ljava/lang/String;
    invoke-direct {p0, v0}, Lnl/xservices/plugins/SocialSharing;->createOrCleanDir(Ljava/lang/String;)V

    .line 215
    .end local v0    # "dir":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 753
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 754
    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 756
    :cond_0
    const-string v1, ".*/([^?#]+)?"

    .line 757
    .local v1, "pattern":Ljava/lang/String;
    const-string v3, ".*/([^?#]+)?"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 758
    .local v2, "r":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 759
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 760
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 762
    :goto_0
    return-object v3

    :cond_1
    const-string v3, "file"

    goto :goto_0
.end method

.method private getFileUriAndSetType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/net/URI;)Landroid/net/Uri;
    .locals 9
    .param p1, "sendIntent"    # Landroid/content/Intent;
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "image"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "nthFile"    # I
    .param p6, "currentPageURI"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    move-object v4, p3

    .line 386
    .local v4, "localImage":Ljava/lang/String;
    const-string v6, "mp4"

    invoke-virtual {p3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "mov"

    invoke-virtual {p3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "3gp"

    invoke-virtual {p3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 387
    :cond_0
    const-string v6, "video/*"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    :goto_0
    const-string v6, "http"

    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 393
    invoke-direct {p0, p2, p3}, Lnl/xservices/plugins/SocialSharing;->saveFromWeb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 443
    :goto_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_2
    return-object v6

    .line 389
    :cond_1
    const-string v6, "image/*"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 394
    :cond_2
    const-string v6, "www/"

    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 395
    const-string v6, "www/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2, v6, p6}, Lnl/xservices/plugins/SocialSharing;->saveFromRelativeLocal(Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 396
    :cond_3
    const-string v6, "./"

    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 397
    const-string v6, "./"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2, v6, p6}, Lnl/xservices/plugins/SocialSharing;->saveFromRelativeLocal(Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 398
    :cond_4
    const-string v6, "data:"

    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 400
    const-string v6, ";base64,"

    invoke-virtual {p3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 401
    const-string v6, "text/plain"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const/4 v6, 0x0

    goto :goto_2

    .line 405
    :cond_5
    const-string v6, ";base64,"

    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {p3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "encodedImg":Ljava/lang/String;
    const-string v6, "data:image/"

    invoke-virtual {p3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 408
    const-string v6, "data:"

    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x5

    const-string v7, ";base64"

    invoke-virtual {p3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    :cond_6
    const-string v6, "/"

    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const-string v7, ";base64"

    invoke-virtual {p3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, "imgExtension":Ljava/lang/String;
    invoke-static {p4}, Lnl/xservices/plugins/SocialSharing;->notEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 416
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Lnl/xservices/plugins/SocialSharing;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p5, :cond_7

    const-string v6, ""

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "fileName":Ljava/lang/String;
    :goto_4
    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {p0, v6, p2, v1}, Lnl/xservices/plugins/SocialSharing;->saveFile([BLjava/lang/String;Ljava/lang/String;)V

    .line 421
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 422
    goto/16 :goto_1

    .line 416
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 418
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p5, :cond_9

    const-string v6, ""

    :goto_5
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fileName":Ljava/lang/String;
    goto :goto_4

    .end local v1    # "fileName":Ljava/lang/String;
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 422
    .end local v0    # "encodedImg":Ljava/lang/String;
    .end local v3    # "imgExtension":Ljava/lang/String;
    :cond_a
    const-string v6, "df:"

    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 424
    const-string v6, ";base64,"

    invoke-virtual {p3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 425
    const-string v6, "text/plain"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 429
    :cond_b
    const-string v6, "df:"

    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    const-string v7, ";data:"

    invoke-virtual {p3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 430
    .restart local v1    # "fileName":Ljava/lang/String;
    const-string v6, ";data:"

    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    const-string v7, ";base64,"

    invoke-virtual {p3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "fileType":Ljava/lang/String;
    const-string v6, ";base64,"

    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {p3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 432
    .restart local v0    # "encodedImg":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-static {v1}, Lnl/xservices/plugins/SocialSharing;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, p2, v7}, Lnl/xservices/plugins/SocialSharing;->saveFile([BLjava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 435
    goto/16 :goto_1

    .end local v0    # "encodedImg":Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "fileType":Ljava/lang/String;
    :cond_c
    const-string v6, "file://"

    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 436
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "URL_NOT_SUPPORTED"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 439
    :cond_d
    invoke-direct {p0, p3}, Lnl/xservices/plugins/SocialSharing;->getMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 441
    .local v5, "type":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method private getMIMEType(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 483
    const-string v4, "*/*"

    .line 484
    .local v4, "type":Ljava/lang/String;
    move-object v2, p1

    .line 485
    .local v2, "fName":Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 486
    .local v0, "dotIndex":I
    if-gez v0, :cond_0

    move-object v5, v4

    .line 495
    .end local v4    # "type":Ljava/lang/String;
    .local v5, "type":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 489
    .end local v5    # "type":Ljava/lang/String;
    .restart local v4    # "type":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "end":Ljava/lang/String;
    const-string v6, ""

    if-ne v1, v6, :cond_1

    move-object v5, v4

    .end local v4    # "type":Ljava/lang/String;
    .restart local v5    # "type":Ljava/lang/String;
    goto :goto_0

    .line 491
    .end local v5    # "type":Ljava/lang/String;
    .restart local v4    # "type":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lnl/xservices/plugins/SocialSharing;->MIME_MapTable:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_3

    .line 492
    iget-object v6, p0, Lnl/xservices/plugins/SocialSharing;->MIME_MapTable:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 493
    iget-object v6, p0, Lnl/xservices/plugins/SocialSharing;->MIME_MapTable:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    aget-object v4, v6, v7

    .line 491
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object v5, v4

    .line 495
    .end local v4    # "type":Ljava/lang/String;
    .restart local v5    # "type":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getPhoneNumbersWithManufacturerSpecificSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "phonenumbers"    # Ljava/lang/String;

    .prologue
    .line 680
    invoke-static {p0}, Lnl/xservices/plugins/SocialSharing;->notEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 682
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "samsung"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    const/16 v0, 0x2c

    .line 687
    .local v0, "separator":C
    :goto_0
    const/16 v1, 0x3b

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 689
    .end local v0    # "separator":C
    :goto_1
    return-object v1

    .line 685
    :cond_0
    const/16 v0, 0x3b

    .restart local v0    # "separator":C
    goto :goto_0

    .line 689
    .end local v0    # "separator":C
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getShareActivities(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 706
    .local p1, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 708
    .local v0, "app":Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 710
    .end local v0    # "app":Landroid/content/pm/ResolveInfo;
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method private invokeEmailIntent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .locals 10
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "to"    # Lorg/json/JSONArray;
    .param p5, "cc"    # Lorg/json/JSONArray;
    .param p6, "bcc"    # Lorg/json/JSONArray;
    .param p7, "files"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 132
    move-object v9, p0

    .line 134
    .local v9, "plugin":Lnl/xservices/plugins/SocialSharing;
    new-instance v0, Lnl/xservices/plugins/SocialSharing$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lnl/xservices/plugins/SocialSharing$1;-><init>(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lnl/xservices/plugins/SocialSharing;)V

    invoke-direct {p0, v0}, Lnl/xservices/plugins/SocialSharing;->executeInThreadPool(Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;)V

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method private invokeSMSIntent(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 8
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .param p2, "options"    # Lorg/json/JSONObject;
    .param p3, "p_phonenumbers"    # Ljava/lang/String;

    .prologue
    .line 632
    const-string v0, "message"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 636
    .local v4, "message":Ljava/lang/String;
    const/4 v5, 0x0

    .line 637
    .local v5, "subject":Ljava/lang/String;
    const/4 v6, 0x0

    .line 638
    .local v6, "image":Ljava/lang/String;
    invoke-static {p3}, Lnl/xservices/plugins/SocialSharing;->getPhoneNumbersWithManufacturerSpecificSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 639
    .local v3, "phonenumbers":Ljava/lang/String;
    move-object v7, p0

    .line 641
    .local v7, "plugin":Lnl/xservices/plugins/SocialSharing;
    new-instance v0, Lnl/xservices/plugins/SocialSharing$5;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lnl/xservices/plugins/SocialSharing$5;-><init>(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnl/xservices/plugins/SocialSharing;)V

    invoke-direct {p0, v0}, Lnl/xservices/plugins/SocialSharing;->executeInThreadPool(Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;)V

    .line 676
    const/4 v0, 0x1

    return v0
.end method

.method private isEmailAvailable()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "mailto"

    const-string v4, "someone@domain.com"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static notEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "what"    # Ljava/lang/String;

    .prologue
    .line 799
    if-eqz p0, :cond_0

    const-string v0, ""

    .line 800
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 801
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 813
    const-string v0, "[:\\\\/*?|<> ]"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveFile([BLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "dirName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 778
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 779
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 780
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 781
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 782
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 783
    return-void
.end method

.method private saveFromRelativeLocal(Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)Ljava/lang/String;
    .locals 7
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "image"    # Ljava/lang/String;
    .param p3, "currentPageURI"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {p2}, Lnl/xservices/plugins/SocialSharing;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "filename":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "localImage":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 450
    .local v0, "currentPageDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 451
    .local v4, "relativeImageFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 454
    .local v2, "imageStream":Ljava/io/InputStream;
    :goto_0
    invoke-direct {p0, v2}, Lnl/xservices/plugins/SocialSharing;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v5

    invoke-direct {p0, v5, p1, v1}, Lnl/xservices/plugins/SocialSharing;->saveFile([BLjava/lang/String;Ljava/lang/String;)V

    .line 455
    return-object v3

    .line 451
    .end local v2    # "imageStream":Ljava/io/InputStream;
    :cond_0
    iget-object v5, p0, Lnl/xservices/plugins/SocialSharing;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 453
    invoke-interface {v5}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0
.end method

.method private saveFromWeb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-static {p2}, Lnl/xservices/plugins/SocialSharing;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, "filename":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 463
    .local v4, "localImage":Ljava/lang/String;
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 464
    .local v0, "connection":Ljava/net/URLConnection;
    const-string v6, "Content-Disposition"

    invoke-virtual {v0, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "disposition":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 466
    const-string v6, "filename=([^;]+)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 467
    .local v2, "dispositionPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 468
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 469
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "[^a-zA-Z0-9._-]"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 470
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 472
    const-string v3, "file"

    .line 474
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 477
    .end local v2    # "dispositionPattern":Ljava/util/regex/Pattern;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {p0, v6}, Lnl/xservices/plugins/SocialSharing;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v6

    invoke-direct {p0, v6, p1, v3}, Lnl/xservices/plugins/SocialSharing;->saveFile([BLjava/lang/String;Ljava/lang/String;)V

    .line 479
    return-object v4
.end method

.method private shareViaWhatsAppDirectly(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "files"    # Lorg/json/JSONArray;
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "number"    # Ljava/lang/String;

    .prologue
    .line 569
    invoke-static {p5}, Lnl/xservices/plugins/SocialSharing;->notEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-static {p2}, Lnl/xservices/plugins/SocialSharing;->notEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 576
    :cond_0
    :goto_0
    move-object v4, p2

    .line 577
    .local v4, "shareMessage":Ljava/lang/String;
    move-object v7, p0

    .line 578
    .local v7, "plugin":Lnl/xservices/plugins/SocialSharing;
    new-instance v0, Lnl/xservices/plugins/SocialSharing$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lnl/xservices/plugins/SocialSharing$4;-><init>(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lnl/xservices/plugins/SocialSharing;)V

    invoke-direct {p0, v0}, Lnl/xservices/plugins/SocialSharing;->executeInThreadPool(Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;)V

    .line 628
    const/4 v0, 0x1

    return v0

    .line 573
    .end local v4    # "shareMessage":Ljava/lang/String;
    .end local v7    # "plugin":Lnl/xservices/plugins/SocialSharing;
    :cond_1
    move-object p2, p5

    goto :goto_0
.end method

.method private shareWithOptions(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)Z
    .locals 10
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 220
    const-string v0, "message"

    .line 222
    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "subject"

    .line 223
    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "files"

    .line 224
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    const-string v0, "url"

    .line 225
    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "chooserTitle"

    .line 227
    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v9, v8

    .line 220
    invoke-direct/range {v0 .. v9}, Lnl/xservices/plugins/SocialSharing;->doSendIntent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0

    .line 224
    :cond_0
    const-string v0, "files"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    goto :goto_0
.end method

.method private showPasteMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "label"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 375
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 381
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 379
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 380
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private static toStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 3
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 805
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 806
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 807
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 806
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 809
    :cond_0
    return-object v1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 76
    iput-object p3, p0, Lnl/xservices/plugins/SocialSharing;->_callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lnl/xservices/plugins/SocialSharing;->pasteMessage:Ljava/lang/String;

    .line 78
    const-string v0, "available"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 80
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    .line 81
    :cond_0
    const-string v0, "share"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v9}, Lnl/xservices/plugins/SocialSharing;->doSendIntent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0

    .line 83
    :cond_1
    const-string v0, "shareWithOptions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lnl/xservices/plugins/SocialSharing;->shareWithOptions(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)Z

    move-result v0

    goto :goto_0

    .line 85
    :cond_2
    const-string v0, "shareViaTwitter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "twitter"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v9}, Lnl/xservices/plugins/SocialSharing;->doSendIntent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0

    .line 87
    :cond_3
    const-string v0, "shareViaFacebook"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.facebook.katana"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v9}, Lnl/xservices/plugins/SocialSharing;->doSendIntent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    goto/16 :goto_0

    .line 89
    :cond_4
    const-string v0, "shareViaFacebookWithPasteMessageHint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 90
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnl/xservices/plugins/SocialSharing;->pasteMessage:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.facebook.katana"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v9}, Lnl/xservices/plugins/SocialSharing;->doSendIntent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    goto/16 :goto_0

    .line 92
    :cond_5
    const-string v0, "shareViaWhatsApp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 93
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnl/xservices/plugins/SocialSharing;->notEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lnl/xservices/plugins/SocialSharing;->shareViaWhatsAppDirectly(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 96
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "whatsapp"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v9}, Lnl/xservices/plugins/SocialSharing;->doSendIntent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    goto/16 :goto_0

    .line 98
    :cond_7
    const-string v0, "shareViaInstagram"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnl/xservices/plugins/SocialSharing;->notEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Instagram paste message"

    invoke-direct {p0, v0, v1}, Lnl/xservices/plugins/SocialSharing;->copyHintToClipboard(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "instagram"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v9}, Lnl/xservices/plugins/SocialSharing;->doSendIntent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    goto/16 :goto_0

    .line 103
    :cond_9
    const-string v0, "canShareVia"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v9}, Lnl/xservices/plugins/SocialSharing;->doSendIntent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    goto/16 :goto_0

    .line 105
    :cond_a
    const-string v0, "canShareViaEmail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 106
    invoke-direct {p0}, Lnl/xservices/plugins/SocialSharing;->isEmailAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 107
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 108
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 110
    :cond_b
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const-string v2, "not available"

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 111
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 113
    :cond_c
    const-string v0, "shareVia"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v9}, Lnl/xservices/plugins/SocialSharing;->doSendIntent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    goto/16 :goto_0

    .line 115
    :cond_d
    const-string v0, "shareViaSMS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v0, v1}, Lnl/xservices/plugins/SocialSharing;->invokeSMSIntent(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 117
    :cond_e
    const-string v0, "shareViaEmail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v5, 0x0

    :goto_1
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v6, 0x0

    :goto_2
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v7, 0x0

    :goto_3
    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v7}, Lnl/xservices/plugins/SocialSharing;->invokeEmailIntent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v0

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    goto :goto_1

    :cond_10
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    goto :goto_2

    :cond_11
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    goto :goto_3

    .line 120
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "socialSharing."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a supported function. Did you mean \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "share"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 715
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 716
    iget-object v4, p0, Lnl/xservices/plugins/SocialSharing;->_callbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v4, :cond_0

    .line 717
    packed-switch p1, :pswitch_data_0

    .line 736
    iget-object v2, p0, Lnl/xservices/plugins/SocialSharing;->_callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 719
    :pswitch_0
    iget-object v4, p0, Lnl/xservices/plugins/SocialSharing;->_callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v5, Lorg/apache/cordova/PluginResult;

    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    if-ne p2, v7, :cond_1

    :goto_1
    invoke-direct {v5, v6, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Z)V

    invoke-virtual {v4, v5}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 724
    :pswitch_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 726
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "completed"

    if-ne p2, v7, :cond_2

    :goto_2
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 727
    const-string v2, "app"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    iget-object v2, p0, Lnl/xservices/plugins/SocialSharing;->_callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v3, v4, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lnl/xservices/plugins/SocialSharing;->_callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    move v2, v3

    .line 726
    goto :goto_2

    .line 717
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
