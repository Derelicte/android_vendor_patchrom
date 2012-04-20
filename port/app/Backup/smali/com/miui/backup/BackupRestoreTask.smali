.class public abstract Lcom/miui/backup/BackupRestoreTask;
.super Ljava/lang/Object;
.source "BackupRestoreTask.java"


# static fields
.field public static ALL_NOTIFY_IDS:[I


# instance fields
.field protected mApkCount:I

.field protected mBaseDir:Ljava/io/File;

.field protected mCmdFactory:Lcom/miui/backup/BackupRestoreCmdFactory;

.field private mCmdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/backup/BackupRestoreCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mCmdSize:I

.field protected mContext:Landroid/content/Context;

.field private volatile mCurrAppIndex:I

.field private mFailed:Z

.field private mRunningInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/backup/CmdRunningInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mSysAppCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/backup/BackupRestoreTask;->ALL_NOTIFY_IDS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xct 0x0t 0x7t 0x7ft
        0xet 0x0t 0x7t 0x7ft
        0x20t 0x0t 0x7t 0x7ft
        0x1et 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;Lcom/miui/backup/BackupRestoreCmdFactory;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "baseDir"
    .parameter "cmdFactory"
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
    .line 43
    .local p2, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/backup/AppInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdList:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/backup/BackupRestoreTask;->mRunningInfo:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lcom/miui/backup/BackupRestoreTask;->mContext:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/miui/backup/BackupRestoreTask;->mBaseDir:Ljava/io/File;

    .line 46
    iput-object p4, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdFactory:Lcom/miui/backup/BackupRestoreCmdFactory;

    .line 47
    invoke-virtual {p0, p2}, Lcom/miui/backup/BackupRestoreTask;->createCmdList(Ljava/util/ArrayList;)V

    .line 48
    return-void
.end method

.method private nextCmd()Lcom/miui/backup/BackupRestoreCmd;
    .locals 4

    .prologue
    .line 130
    monitor-enter p0

    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, cmd:Lcom/miui/backup/BackupRestoreCmd;
    :try_start_0
    iget v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    iget v3, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I

    if-ge v2, v3, :cond_0

    .line 133
    iget-object v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdList:Ljava/util/List;

    iget v3, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/miui/backup/BackupRestoreCmd;

    move-object v1, v0

    .line 135
    :cond_0
    monitor-exit p0

    return-object v1

    .line 136
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method protected action()V
    .locals 4

    .prologue
    .line 143
    :goto_0
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreTask;->nextCmd()Lcom/miui/backup/BackupRestoreCmd;

    move-result-object v0

    .local v0, cmd:Lcom/miui/backup/BackupRestoreCmd;
    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {v0}, Lcom/miui/backup/BackupRestoreCmd;->execute()Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreTask;->handleError()Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget v1, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    .local v1, i:I
    :goto_1
    iget v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I

    if-ge v1, v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/backup/BackupRestoreCmd;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/backup/BackupRestoreCmd;->cancel(Z)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    :cond_0
    iget v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I

    iput v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    .line 151
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/backup/BackupRestoreTask;->mFailed:Z

    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 155
    .end local v1           #i:I
    :cond_1
    monitor-enter p0

    .line 156
    :try_start_1
    iget v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    .line 157
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 152
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 159
    :cond_2
    return-void
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget v0, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/backup/BackupRestoreCmd;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/backup/BackupRestoreCmd;->cancel(Z)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    monitor-exit p0

    .line 66
    return-void

    .line 65
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected createCmdList(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/backup/AppInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/backup/AppInfo;

    .line 182
    .local v0, appInfo:Lcom/miui/backup/AppInfo;
    iget-boolean v3, v0, Lcom/miui/backup/AppInfo;->checked:Z

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdFactory:Lcom/miui/backup/BackupRestoreCmdFactory;

    iget-object v4, p0, Lcom/miui/backup/BackupRestoreTask;->mBaseDir:Ljava/io/File;

    iget-object v5, p0, Lcom/miui/backup/BackupRestoreTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v4, v5}, Lcom/miui/backup/BackupRestoreCmdFactory;->createCmd(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)Lcom/miui/backup/BackupRestoreCmd;

    move-result-object v1

    .line 184
    .local v1, cmd:Lcom/miui/backup/BackupRestoreCmd;
    if-eqz v1, :cond_1

    .line 185
    iget-object v3, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_1
    iget v3, v0, Lcom/miui/backup/AppInfo;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 188
    iget v3, p0, Lcom/miui/backup/BackupRestoreTask;->mApkCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/backup/BackupRestoreTask;->mApkCount:I

    goto :goto_0

    .line 190
    :cond_2
    iget v3, p0, Lcom/miui/backup/BackupRestoreTask;->mSysAppCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/backup/BackupRestoreTask;->mSysAppCount:I

    goto :goto_0

    .line 195
    .end local v0           #appInfo:Lcom/miui/backup/AppInfo;
    .end local v1           #cmd:Lcom/miui/backup/BackupRestoreCmd;
    :cond_3
    iget-object v3, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I

    .line 196
    return-void
.end method

.method public execute()V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreTask;->preAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreTask;->action()V

    .line 54
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreTask;->postAction()V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/backup/BackupRestoreTask;->mFailed:Z

    goto :goto_0
.end method

.method public getBaseDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreTask;->mBaseDir:Ljava/io/File;

    return-object v0
.end method

.method public getCmdIndex()I
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget v0, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    monitor-exit p0

    return v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract getFinishedResId()I
.end method

.method public getProgress()I
    .locals 4

    .prologue
    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    mul-int/lit8 v1, v2, 0x64

    .line 91
    .local v1, totalProgress:I
    iget v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    iget v3, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v3, :cond_0

    .line 94
    :try_start_1
    iget-object v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdList:Ljava/util/List;

    iget v3, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/backup/BackupRestoreCmd;

    invoke-virtual {v2}, Lcom/miui/backup/BackupRestoreCmd;->getRunningInfo()Lcom/miui/backup/CmdRunningInfo;

    move-result-object v2

    iget v2, v2, Lcom/miui/backup/CmdRunningInfo;->progress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v1, v2

    .line 98
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 99
    .local v0, ret:I
    :try_start_2
    iget v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I

    if-eqz v2, :cond_1

    .line 100
    iget v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I

    div-int v0, v1, v2

    .line 102
    :cond_1
    monitor-exit p0

    return v0

    .line 103
    .end local v0           #ret:I
    .end local v1           #totalProgress:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 95
    .restart local v1       #totalProgress:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public abstract getProgressHintResId()I
.end method

.method public abstract getProgressResId()I
.end method

.method public getRunningInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/backup/CmdRunningInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreTask;->mRunningInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 81
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v2, p0, Lcom/miui/backup/BackupRestoreTask;->mRunningInfo:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/backup/BackupRestoreCmd;

    invoke-virtual {v1}, Lcom/miui/backup/BackupRestoreCmd;->getRunningInfo()Lcom/miui/backup/CmdRunningInfo;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreTask;->mRunningInfo:Ljava/util/List;

    return-object v1
.end method

.method public abstract getTaskCancelResId()I
.end method

.method public abstract getTaskType()I
.end method

.method protected handleError()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    iget v1, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/backup/BackupRestoreTask;->mFailed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected postAction()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method protected preAction()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method protected showErrorDialog(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/backup/BackupRestoreTask;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/backup/ui/ExceptionAlertActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    const-string v1, "exception_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method
