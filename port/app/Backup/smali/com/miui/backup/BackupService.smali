.class public Lcom/miui/backup/BackupService;
.super Landroid/app/Service;
.source "BackupService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/backup/BackupService$CancelHandler;,
        Lcom/miui/backup/BackupService$ServiceHandler;,
        Lcom/miui/backup/BackupService$LocalBinder;
    }
.end annotation


# instance fields
.field private final NM_FINISHED:I

.field private final NM_PROGRESS:I

.field private final mBinder:Landroid/os/IBinder;

.field private mCancelHandler:Lcom/miui/backup/BackupService$CancelHandler;

.field private mCancelLooper:Landroid/os/Looper;

.field private mIsRunningBackground:Z

.field private mIsTaskCancel:Z

.field private volatile mIsTaskRunning:Z

.field private mNM:Landroid/app/NotificationManager;

.field private mServiceHandler:Lcom/miui/backup/BackupService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mTask:Lcom/miui/backup/BackupRestoreTask;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    new-instance v0, Lcom/miui/backup/BackupService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/miui/backup/BackupService$LocalBinder;-><init>(Lcom/miui/backup/BackupService;)V

    iput-object v0, p0, Lcom/miui/backup/BackupService;->mBinder:Landroid/os/IBinder;

    .line 205
    iput-object v1, p0, Lcom/miui/backup/BackupService;->mServiceHandler:Lcom/miui/backup/BackupService$ServiceHandler;

    .line 206
    iput-object v1, p0, Lcom/miui/backup/BackupService;->mServiceLooper:Landroid/os/Looper;

    .line 219
    iput-object v1, p0, Lcom/miui/backup/BackupService;->mCancelLooper:Landroid/os/Looper;

    .line 220
    iput-object v1, p0, Lcom/miui/backup/BackupService;->mCancelHandler:Lcom/miui/backup/BackupService$CancelHandler;

    .line 236
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/backup/BackupService;->NM_FINISHED:I

    .line 237
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/backup/BackupService;->NM_PROGRESS:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/backup/BackupService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/miui/backup/BackupService;->executeTask()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/backup/BackupService;)Lcom/miui/backup/BackupRestoreTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/backup/BackupService;->mTask:Lcom/miui/backup/BackupRestoreTask;

    return-object v0
.end method

.method private executeTask()V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/miui/backup/BackupService;->updateNotification()V

    .line 183
    iget-object v0, p0, Lcom/miui/backup/BackupService;->mTask:Lcom/miui/backup/BackupRestoreTask;

    invoke-virtual {v0}, Lcom/miui/backup/BackupRestoreTask;->execute()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/backup/BackupService;->mIsTaskRunning:Z

    .line 185
    invoke-direct {p0}, Lcom/miui/backup/BackupService;->updateNotification()V

    .line 186
    iget-object v0, p0, Lcom/miui/backup/BackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/miui/backup/BackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 189
    :cond_0
    return-void
.end method

.method private showNotification(II)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    const/high16 v1, 0x800

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 244
    invoke-virtual {p0, p2}, Lcom/miui/backup/BackupService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 245
    const v1, 0x7f02000d

    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/miui/backup/BackupService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object v0, p0

    move-object v4, v2

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/miui/backup/SysUtils;->showNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZI)V

    .line 253
    return-void

    .line 245
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private updateNotification()V
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/miui/backup/BackupService;->clearAllNotifications()V

    .line 193
    iget-boolean v0, p0, Lcom/miui/backup/BackupService;->mIsRunningBackground:Z

    if-eqz v0, :cond_0

    .line 194
    iget-boolean v0, p0, Lcom/miui/backup/BackupService;->mIsTaskRunning:Z

    if-eqz v0, :cond_1

    .line 195
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/miui/backup/BackupService;->mTask:Lcom/miui/backup/BackupRestoreTask;

    invoke-virtual {v1}, Lcom/miui/backup/BackupRestoreTask;->getProgressResId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/backup/BackupService;->showNotification(II)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/backup/BackupService;->mTask:Lcom/miui/backup/BackupRestoreTask;

    invoke-virtual {v1}, Lcom/miui/backup/BackupRestoreTask;->getFinishedResId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/backup/BackupService;->showNotification(II)V

    goto :goto_0
.end method


# virtual methods
.method public cancelTask()V
    .locals 2

    .prologue
    .line 128
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/backup/BackupService;->mIsTaskCancel:Z

    .line 129
    iget-object v1, p0, Lcom/miui/backup/BackupService;->mCancelHandler:Lcom/miui/backup/BackupService$CancelHandler;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService$CancelHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 130
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/backup/BackupService;->mCancelHandler:Lcom/miui/backup/BackupService$CancelHandler;

    invoke-virtual {v1, v0}, Lcom/miui/backup/BackupService$CancelHandler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    return-void
.end method

.method public clearAllNotifications()V
    .locals 5

    .prologue
    .line 256
    sget-object v0, Lcom/miui/backup/BackupRestoreTask;->ALL_NOTIFY_IDS:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 257
    .local v3, notifyId:I
    iget-object v4, p0, Lcom/miui/backup/BackupService;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v3           #notifyId:I
    :cond_0
    return-void
.end method

.method public getBackupRestoreDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/backup/BackupService;->mTask:Lcom/miui/backup/BackupRestoreTask;

    invoke-virtual {v0}, Lcom/miui/backup/BackupRestoreTask;->getBaseDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getProgressHintResIdOfTask()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/backup/BackupService;->mTask:Lcom/miui/backup/BackupRestoreTask;

    invoke-virtual {v0}, Lcom/miui/backup/BackupRestoreTask;->getProgressHintResId()I

    move-result v0

    return v0
.end method

.method public getTaskCancelResIdOfTask()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miui/backup/BackupService;->mTask:Lcom/miui/backup/BackupRestoreTask;

    invoke-virtual {v0}, Lcom/miui/backup/BackupRestoreTask;->getTaskCancelResId()I

    move-result v0

    return v0
.end method

.method public getTaskCmdIndex()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/miui/backup/BackupService;->mTask:Lcom/miui/backup/BackupRestoreTask;

    invoke-virtual {v0}, Lcom/miui/backup/BackupRestoreTask;->getCmdIndex()I

    move-result v0

    return v0
.end method

.method public getTaskProgress()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/backup/BackupService;->mTask:Lcom/miui/backup/BackupRestoreTask;

    invoke-virtual {v0}, Lcom/miui/backup/BackupRestoreTask;->getProgress()I

    move-result v0

    return v0
.end method

.method public getTaskRunningInfo()Ljava/util/List;
    .locals 1
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
    .line 162
    iget-object v0, p0, Lcom/miui/backup/BackupService;->mTask:Lcom/miui/backup/BackupRestoreTask;

    invoke-virtual {v0}, Lcom/miui/backup/BackupRestoreTask;->getRunningInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTaskType()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/backup/BackupService;->mTask:Lcom/miui/backup/BackupRestoreTask;

    invoke-virtual {v0}, Lcom/miui/backup/BackupRestoreTask;->getTaskType()I

    move-result v0

    return v0
.end method

.method public hasTask()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miui/backup/BackupService;->mTask:Lcom/miui/backup/BackupRestoreTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTaskCancel()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/miui/backup/BackupService;->mIsTaskCancel:Z

    return v0
.end method

.method public isTaskFinished()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/backup/BackupService;->mTask:Lcom/miui/backup/BackupRestoreTask;

    invoke-virtual {v0}, Lcom/miui/backup/BackupRestoreTask;->isFinished()Z

    move-result v0

    return v0
.end method

.method public isTaskRunning()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/miui/backup/BackupService;->mIsTaskRunning:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/backup/BackupService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 51
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/miui/backup/BackupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 52
    .local v2, pm:Landroid/os/PowerManager;
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/backup/BackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 57
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "BackupService_execute"

    invoke-direct {v1, v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 58
    .local v1, executeThread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 60
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/backup/BackupService;->mServiceLooper:Landroid/os/Looper;

    .line 61
    new-instance v3, Lcom/miui/backup/BackupService$ServiceHandler;

    iget-object v4, p0, Lcom/miui/backup/BackupService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, v4}, Lcom/miui/backup/BackupService$ServiceHandler;-><init>(Lcom/miui/backup/BackupService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/miui/backup/BackupService;->mServiceHandler:Lcom/miui/backup/BackupService$ServiceHandler;

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "BackupService_cancel"

    invoke-direct {v0, v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 65
    .local v0, cancelThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 67
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/backup/BackupService;->mCancelLooper:Landroid/os/Looper;

    .line 68
    new-instance v3, Lcom/miui/backup/BackupService$CancelHandler;

    iget-object v4, p0, Lcom/miui/backup/BackupService;->mCancelLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, v4}, Lcom/miui/backup/BackupService$CancelHandler;-><init>(Lcom/miui/backup/BackupService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/miui/backup/BackupService;->mCancelHandler:Lcom/miui/backup/BackupService$CancelHandler;

    .line 70
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/miui/backup/BackupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/miui/backup/BackupService;->mNM:Landroid/app/NotificationManager;

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/backup/BackupService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 84
    iget-object v0, p0, Lcom/miui/backup/BackupService;->mCancelLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 85
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 75
    const-string v0, "BackupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public pendingTask(Lcom/miui/backup/BackupRestoreTask;)V
    .locals 1
    .parameter "task"

    .prologue
    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/miui/backup/BackupService;->mIsRunningBackground:Z

    .line 112
    iput-boolean v0, p0, Lcom/miui/backup/BackupService;->mIsTaskCancel:Z

    .line 113
    iput-object p1, p0, Lcom/miui/backup/BackupService;->mTask:Lcom/miui/backup/BackupRestoreTask;

    .line 114
    return-void
.end method

.method public startExecuteTask()V
    .locals 2

    .prologue
    .line 117
    iget-object v1, p0, Lcom/miui/backup/BackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/backup/BackupService;->mIsTaskRunning:Z

    .line 119
    iget-object v1, p0, Lcom/miui/backup/BackupService;->mServiceHandler:Lcom/miui/backup/BackupService$ServiceHandler;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 120
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/backup/BackupService;->mServiceHandler:Lcom/miui/backup/BackupService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/miui/backup/BackupService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    return-void
.end method

.method public switchToBackground()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/backup/BackupService;->mIsRunningBackground:Z

    .line 98
    iget-boolean v0, p0, Lcom/miui/backup/BackupService;->mIsTaskRunning:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/miui/backup/BackupService;->updateNotification()V

    .line 101
    :cond_0
    return-void
.end method

.method public switchToForeground()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/backup/BackupService;->mIsRunningBackground:Z

    .line 89
    iget-boolean v0, p0, Lcom/miui/backup/BackupService;->mIsTaskRunning:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/miui/backup/BackupService;->updateNotification()V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/miui/backup/BackupService;->clearAllNotifications()V

    goto :goto_0
.end method
