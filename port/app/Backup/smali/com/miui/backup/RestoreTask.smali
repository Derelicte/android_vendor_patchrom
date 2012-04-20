.class public Lcom/miui/backup/RestoreTask;
.super Lcom/miui/backup/BackupRestoreTask;
.source "RestoreTask.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;Lcom/miui/backup/BackupRestoreCmdFactory;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "baseDir"
    .parameter "factory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;",
            "Ljava/io/File;",
            "Lcom/miui/backup/BackupRestoreCmdFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/backup/AppInfo;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/backup/BackupRestoreTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;Lcom/miui/backup/BackupRestoreCmdFactory;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getFinishedResId()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f07001e

    return v0
.end method

.method public getProgressHintResId()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f070074

    return v0
.end method

.method public getProgressResId()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f070020

    return v0
.end method

.method public getTaskCancelResId()I
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f070075

    return v0
.end method

.method public getTaskType()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x2

    return v0
.end method

.method protected handleError()Z
    .locals 2

    .prologue
    .line 72
    const-wide/32 v0, 0x100000

    invoke-static {v0, v1}, Lcom/miui/backup/SysUtils;->enoughSpaceOnData(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/miui/backup/RestoreTask;->mContext:Landroid/content/Context;

    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/backup/RestoreTask;->showErrorDialog(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected preAction()Z
    .locals 4

    .prologue
    const-wide/32 v2, 0x100000

    const/4 v0, 0x0

    .line 59
    invoke-static {v2, v3}, Lcom/miui/backup/SysUtils;->enoughSpaceOnSdCard(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/miui/backup/RestoreTask;->mContext:Landroid/content/Context;

    const v2, 0x7f070053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/backup/RestoreTask;->showErrorDialog(Ljava/lang/String;)V

    .line 67
    :goto_0
    return v0

    .line 63
    :cond_0
    invoke-static {v2, v3}, Lcom/miui/backup/SysUtils;->enoughSpaceOnData(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/miui/backup/RestoreTask;->mContext:Landroid/content/Context;

    const v2, 0x7f070055

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/backup/RestoreTask;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
