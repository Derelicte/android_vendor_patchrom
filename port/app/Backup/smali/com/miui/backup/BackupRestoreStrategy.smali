.class public abstract Lcom/miui/backup/BackupRestoreStrategy;
.super Ljava/lang/Object;
.source "BackupRestoreStrategy.java"


# instance fields
.field private mCanceled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/backup/BackupRestoreStrategy;->mCanceled:Z

    .line 54
    return-void
.end method

.method public execute()Z
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreStrategy;->execute_()V

    .line 35
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreStrategy;->isSucceeded()Z

    move-result v0

    return v0
.end method

.method protected abstract execute_()V
.end method

.method protected abstract getFinishedSize()J
.end method

.method public getProgress()I
    .locals 8

    .prologue
    const/16 v3, 0x64

    .line 39
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreStrategy;->getTotalSize()J

    move-result-wide v1

    .line 40
    .local v1, totalSize:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    .line 41
    const/4 v0, 0x0

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreStrategy;->getFinishedSize()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    div-long/2addr v4, v1

    long-to-int v0, v4

    .line 44
    .local v0, progress:I
    if-le v0, v3, :cond_0

    move v0, v3

    goto :goto_0
.end method

.method protected abstract getTotalSize()J
.end method

.method public isSucceeded()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/miui/backup/BackupRestoreStrategy;->mCanceled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
