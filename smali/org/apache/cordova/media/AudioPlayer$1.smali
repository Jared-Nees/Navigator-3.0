.class synthetic Lorg/apache/cordova/media/AudioPlayer$1;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/media/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$cordova$media$AudioPlayer$MODE:[I

.field static final synthetic $SwitchMap$org$apache$cordova$media$AudioPlayer$STATE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 470
    invoke-static {}, Lorg/apache/cordova/media/AudioPlayer$STATE;->values()[Lorg/apache/cordova/media/AudioPlayer$STATE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/cordova/media/AudioPlayer$1;->$SwitchMap$org$apache$cordova$media$AudioPlayer$STATE:[I

    :try_start_0
    sget-object v0, Lorg/apache/cordova/media/AudioPlayer$1;->$SwitchMap$org$apache$cordova$media$AudioPlayer$STATE:[I

    sget-object v1, Lorg/apache/cordova/media/AudioPlayer$STATE;->MEDIA_NONE:Lorg/apache/cordova/media/AudioPlayer$STATE;

    invoke-virtual {v1}, Lorg/apache/cordova/media/AudioPlayer$STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lorg/apache/cordova/media/AudioPlayer$1;->$SwitchMap$org$apache$cordova$media$AudioPlayer$STATE:[I

    sget-object v1, Lorg/apache/cordova/media/AudioPlayer$STATE;->MEDIA_LOADING:Lorg/apache/cordova/media/AudioPlayer$STATE;

    invoke-virtual {v1}, Lorg/apache/cordova/media/AudioPlayer$STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v0, Lorg/apache/cordova/media/AudioPlayer$1;->$SwitchMap$org$apache$cordova$media$AudioPlayer$STATE:[I

    sget-object v1, Lorg/apache/cordova/media/AudioPlayer$STATE;->MEDIA_STARTING:Lorg/apache/cordova/media/AudioPlayer$STATE;

    invoke-virtual {v1}, Lorg/apache/cordova/media/AudioPlayer$STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v0, Lorg/apache/cordova/media/AudioPlayer$1;->$SwitchMap$org$apache$cordova$media$AudioPlayer$STATE:[I

    sget-object v1, Lorg/apache/cordova/media/AudioPlayer$STATE;->MEDIA_RUNNING:Lorg/apache/cordova/media/AudioPlayer$STATE;

    invoke-virtual {v1}, Lorg/apache/cordova/media/AudioPlayer$STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v0, Lorg/apache/cordova/media/AudioPlayer$1;->$SwitchMap$org$apache$cordova$media$AudioPlayer$STATE:[I

    sget-object v1, Lorg/apache/cordova/media/AudioPlayer$STATE;->MEDIA_PAUSED:Lorg/apache/cordova/media/AudioPlayer$STATE;

    invoke-virtual {v1}, Lorg/apache/cordova/media/AudioPlayer$STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lorg/apache/cordova/media/AudioPlayer$1;->$SwitchMap$org$apache$cordova$media$AudioPlayer$STATE:[I

    sget-object v1, Lorg/apache/cordova/media/AudioPlayer$STATE;->MEDIA_STOPPED:Lorg/apache/cordova/media/AudioPlayer$STATE;

    invoke-virtual {v1}, Lorg/apache/cordova/media/AudioPlayer$STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    .line 136
    :goto_5
    invoke-static {}, Lorg/apache/cordova/media/AudioPlayer$MODE;->values()[Lorg/apache/cordova/media/AudioPlayer$MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/cordova/media/AudioPlayer$1;->$SwitchMap$org$apache$cordova$media$AudioPlayer$MODE:[I

    :try_start_6
    sget-object v0, Lorg/apache/cordova/media/AudioPlayer$1;->$SwitchMap$org$apache$cordova$media$AudioPlayer$MODE:[I

    sget-object v1, Lorg/apache/cordova/media/AudioPlayer$MODE;->PLAY:Lorg/apache/cordova/media/AudioPlayer$MODE;

    invoke-virtual {v1}, Lorg/apache/cordova/media/AudioPlayer$MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lorg/apache/cordova/media/AudioPlayer$1;->$SwitchMap$org$apache$cordova$media$AudioPlayer$MODE:[I

    sget-object v1, Lorg/apache/cordova/media/AudioPlayer$MODE;->NONE:Lorg/apache/cordova/media/AudioPlayer$MODE;

    invoke-virtual {v1}, Lorg/apache/cordova/media/AudioPlayer$MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lorg/apache/cordova/media/AudioPlayer$1;->$SwitchMap$org$apache$cordova$media$AudioPlayer$MODE:[I

    sget-object v1, Lorg/apache/cordova/media/AudioPlayer$MODE;->RECORD:Lorg/apache/cordova/media/AudioPlayer$MODE;

    invoke-virtual {v1}, Lorg/apache/cordova/media/AudioPlayer$MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    .line 470
    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
