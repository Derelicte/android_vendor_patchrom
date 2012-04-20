.class Lcom/miui/backup/ScriptCpItem;
.super Lcom/miui/backup/ScriptItem;
.source "BackupRestoreStrategy.java"


# instance fields
.field protected mBufferedSrcSize:J

.field protected mDstFile:Ljava/io/File;

.field protected mSrcFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "srcName"
    .parameter "dstName"

    .prologue
    const/4 v0, 0x0

    .line 374
    invoke-direct {p0}, Lcom/miui/backup/ScriptItem;-><init>()V

    .line 370
    iput-object v0, p0, Lcom/miui/backup/ScriptCpItem;->mSrcFile:Ljava/io/File;

    .line 371
    iput-object v0, p0, Lcom/miui/backup/ScriptCpItem;->mDstFile:Ljava/io/File;

    .line 372
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/backup/ScriptCpItem;->mBufferedSrcSize:J

    .line 375
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/ScriptCpItem;->mSrcFile:Ljava/io/File;

    .line 376
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/ScriptCpItem;->mDstFile:Ljava/io/File;

    .line 377
    return-void
.end method


# virtual methods
.method public genScript()Ljava/lang/String;
    .locals 2

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/backup/ScriptCpItem;->getCmdStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/backup/ScriptCpItem;->mSrcFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/backup/ScriptCpItem;->mDstFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCmdStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    const-string v0, "busybox cp -r"

    return-object v0
.end method

.method protected getFinishedSize()J
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/miui/backup/ScriptCpItem;->mDstFile:Ljava/io/File;

    invoke-static {v0}, Lcom/miui/backup/SysUtils;->countFileSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getTotalSize()J
    .locals 4

    .prologue
    .line 395
    iget-wide v0, p0, Lcom/miui/backup/ScriptCpItem;->mBufferedSrcSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/miui/backup/ScriptCpItem;->mSrcFile:Ljava/io/File;

    invoke-static {v0}, Lcom/miui/backup/SysUtils;->countFileSize(Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/backup/ScriptCpItem;->mBufferedSrcSize:J

    .line 398
    :cond_0
    iget-wide v0, p0, Lcom/miui/backup/ScriptCpItem;->mBufferedSrcSize:J

    return-wide v0
.end method

.method public isSucceeded()Z
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x1

    return v0
.end method
