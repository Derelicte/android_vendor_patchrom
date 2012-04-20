.class public Lcom/miui/backup/AppInitializer;
.super Ljava/lang/Object;
.source "AppInitializer.java"


# static fields
.field private static sInitialized:Z

.field private static sInstance:Lcom/miui/backup/AppInitializer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/miui/backup/AppInitializer;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/miui/backup/AppInitializer;->sInstance:Lcom/miui/backup/AppInitializer;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/miui/backup/AppInitializer;

    invoke-direct {v0}, Lcom/miui/backup/AppInitializer;-><init>()V

    sput-object v0, Lcom/miui/backup/AppInitializer;->sInstance:Lcom/miui/backup/AppInitializer;

    .line 23
    :cond_0
    sget-object v0, Lcom/miui/backup/AppInitializer;->sInstance:Lcom/miui/backup/AppInitializer;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 27
    sget-boolean v1, Lcom/miui/backup/AppInitializer;->sInitialized:Z

    if-eqz v1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    const-string v1, "AppInitializer"

    const-string v2, "SDCard is unmounted!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    :cond_1
    sget-object v1, Lcom/miui/backup/Customization;->MIUI_BASE_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 35
    sget-object v1, Lcom/miui/backup/Customization;->MIUI_BASE_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 37
    :cond_2
    sget-object v1, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 38
    sget-object v1, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 40
    :cond_3
    sget-object v1, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 41
    sget-object v1, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 45
    :cond_4
    :try_start_0
    sget-object v1, Lcom/miui/backup/Customization;->APP_NO_MEDIA_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 46
    sget-object v1, Lcom/miui/backup/Customization;->APP_NO_MEDIA_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_5
    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/miui/backup/AppInitializer;->sInitialized:Z

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/io/IOException;
    const-string v1, "AppInitializer"

    const-string v2, "Error create .nomedia: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
