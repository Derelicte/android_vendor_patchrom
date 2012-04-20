.class final Lcom/miui/backup/ScriptMvItem;
.super Lcom/miui/backup/ScriptItem;
.source "BackupRestoreStrategy.java"


# instance fields
.field private mDstFile:Ljava/io/File;

.field private mSrcPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    const/4 v0, 0x0

    .line 611
    invoke-direct {p0}, Lcom/miui/backup/ScriptItem;-><init>()V

    .line 609
    iput-object v0, p0, Lcom/miui/backup/ScriptMvItem;->mSrcPath:Ljava/io/File;

    .line 610
    iput-object v0, p0, Lcom/miui/backup/ScriptMvItem;->mDstFile:Ljava/io/File;

    .line 612
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/ScriptMvItem;->mSrcPath:Ljava/io/File;

    .line 613
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/ScriptMvItem;->mDstFile:Ljava/io/File;

    .line 614
    return-void
.end method


# virtual methods
.method public genScript()Ljava/lang/String;
    .locals 2

    .prologue
    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/backup/ScriptMvItem;->getCmdStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/backup/ScriptMvItem;->mSrcPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/backup/ScriptMvItem;->mDstFile:Ljava/io/File;

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
    .line 627
    const-string v0, "mv "

    return-object v0
.end method

.method protected getFinishedSize()J
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/miui/backup/ScriptMvItem;->mDstFile:Ljava/io/File;

    invoke-static {v0}, Lcom/miui/backup/SysUtils;->countFileSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isSucceeded()Z
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/miui/backup/ScriptMvItem;->mDstFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
