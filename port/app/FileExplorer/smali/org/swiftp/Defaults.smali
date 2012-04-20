.class public Lorg/swiftp/Defaults;
.super Ljava/lang/Object;
.source "Defaults.java"


# static fields
.field public static final chrootDir:Ljava/lang/String;

.field protected static consoleLogLevel:I

.field protected static dataChunkSize:I

.field protected static inputBufferSize:I

.field public static portNumber:I

.field protected static serverLogScrollBack:I

.field protected static sessionMonitorScrollBack:I

.field protected static settingsMode:I

.field protected static settingsName:Ljava/lang/String;

.field protected static uiLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x4

    .line 26
    const/16 v0, 0x100

    sput v0, Lorg/swiftp/Defaults;->inputBufferSize:I

    .line 27
    const/high16 v0, 0x1

    sput v0, Lorg/swiftp/Defaults;->dataChunkSize:I

    .line 28
    sput v2, Lorg/swiftp/Defaults;->sessionMonitorScrollBack:I

    .line 29
    sput v2, Lorg/swiftp/Defaults;->serverLogScrollBack:I

    .line 30
    sput v1, Lorg/swiftp/Defaults;->uiLogLevel:I

    .line 31
    sput v1, Lorg/swiftp/Defaults;->consoleLogLevel:I

    .line 32
    const-string v0, "SwiFTP"

    sput-object v0, Lorg/swiftp/Defaults;->settingsName:Ljava/lang/String;

    .line 35
    const/16 v0, 0x849

    sput v0, Lorg/swiftp/Defaults;->portNumber:I

    .line 38
    invoke-static {}, Lcom/android/fileexplorer/Util;->getSdDirectory()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/swiftp/Defaults;->chrootDir:Ljava/lang/String;

    .line 100
    const/4 v0, 0x2

    sput v0, Lorg/swiftp/Defaults;->settingsMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConsoleLogLevel()I
    .locals 1

    .prologue
    .line 145
    sget v0, Lorg/swiftp/Defaults;->consoleLogLevel:I

    return v0
.end method

.method public static getDataChunkSize()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lorg/swiftp/Defaults;->dataChunkSize:I

    return v0
.end method

.method public static getInputBufferSize()I
    .locals 1

    .prologue
    .line 111
    sget v0, Lorg/swiftp/Defaults;->inputBufferSize:I

    return v0
.end method

.method public static getServerLogScrollBack()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lorg/swiftp/Defaults;->serverLogScrollBack:I

    return v0
.end method

.method public static getSettingsMode()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lorg/swiftp/Defaults;->settingsMode:I

    return v0
.end method

.method public static getSettingsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lorg/swiftp/Defaults;->settingsName:Ljava/lang/String;

    return-object v0
.end method

.method public static getUiLogLevel()I
    .locals 1

    .prologue
    .line 103
    sget v0, Lorg/swiftp/Defaults;->uiLogLevel:I

    return v0
.end method
