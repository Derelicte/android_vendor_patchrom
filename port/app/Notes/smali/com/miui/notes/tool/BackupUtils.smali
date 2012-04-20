.class public Lcom/miui/notes/tool/BackupUtils;
.super Ljava/lang/Object;
.source "BackupUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/notes/tool/BackupUtils$TextExport;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/miui/notes/tool/BackupUtils;


# instance fields
.field private mTextExport:Lcom/miui/notes/tool/BackupUtils$TextExport;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/miui/notes/tool/BackupUtils$TextExport;

    invoke-direct {v0, p1}, Lcom/miui/notes/tool/BackupUtils$TextExport;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/notes/tool/BackupUtils;->mTextExport:Lcom/miui/notes/tool/BackupUtils$TextExport;

    .line 51
    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/miui/notes/tool/BackupUtils;->externalStorageAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;II)Ljava/io/File;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 20
    invoke-static {p0, p1, p2}, Lcom/miui/notes/tool/BackupUtils;->generateFileMountedOnSDcard(Landroid/content/Context;II)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static externalStorageAvailable()Z
    .locals 2

    .prologue
    .line 54
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static generateFileMountedOnSDcard(Landroid/content/Context;II)Ljava/io/File;
    .locals 9
    .parameter "context"
    .parameter "filePathResId"
    .parameter "fileNameFormatResId"

    .prologue
    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .local v2, filedir:Ljava/io/File;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f09000a

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, p2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 309
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 311
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 312
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 321
    .end local v1           #file:Ljava/io/File;
    :cond_1
    :goto_0
    return-object v1

    .line 315
    .restart local v1       #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 321
    .end local v0           #e:Ljava/lang/SecurityException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 317
    :catch_1
    move-exception v0

    .line 318
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/notes/tool/BackupUtils;
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    const-class v1, Lcom/miui/notes/tool/BackupUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/notes/tool/BackupUtils;->sInstance:Lcom/miui/notes/tool/BackupUtils;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/miui/notes/tool/BackupUtils;

    invoke-direct {v0, p0}, Lcom/miui/notes/tool/BackupUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/notes/tool/BackupUtils;->sInstance:Lcom/miui/notes/tool/BackupUtils;

    .line 29
    :cond_0
    sget-object v0, Lcom/miui/notes/tool/BackupUtils;->sInstance:Lcom/miui/notes/tool/BackupUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public exportToText()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/notes/tool/BackupUtils;->mTextExport:Lcom/miui/notes/tool/BackupUtils$TextExport;

    invoke-virtual {v0}, Lcom/miui/notes/tool/BackupUtils$TextExport;->exportToText()I

    move-result v0

    return v0
.end method

.method public getExportedTextFileDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/notes/tool/BackupUtils;->mTextExport:Lcom/miui/notes/tool/BackupUtils$TextExport;

    #getter for: Lcom/miui/notes/tool/BackupUtils$TextExport;->mFileDirectory:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/notes/tool/BackupUtils$TextExport;->access$100(Lcom/miui/notes/tool/BackupUtils$TextExport;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExportedTextFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/notes/tool/BackupUtils;->mTextExport:Lcom/miui/notes/tool/BackupUtils$TextExport;

    #getter for: Lcom/miui/notes/tool/BackupUtils$TextExport;->mFileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/notes/tool/BackupUtils$TextExport;->access$000(Lcom/miui/notes/tool/BackupUtils$TextExport;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
