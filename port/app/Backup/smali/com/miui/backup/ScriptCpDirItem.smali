.class Lcom/miui/backup/ScriptCpDirItem;
.super Lcom/miui/backup/ScriptCpItem;
.source "BackupRestoreStrategy.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "srcName"
    .parameter "dstDir"

    .prologue
    .line 456
    invoke-direct {p0, p1, p2}, Lcom/miui/backup/ScriptCpItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method


# virtual methods
.method protected getCmdStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    const-string v0, "busybox cp -Lr"

    return-object v0
.end method

.method protected getFinishedSize()J
    .locals 3

    .prologue
    .line 466
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/backup/ScriptCpDirItem;->mDstFile:Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/ScriptCpDirItem;->mSrcFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/backup/SysUtils;->countFileSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method
