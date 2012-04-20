.class public Lcom/miui/milk/service/CloudBackupService;
.super Landroid/app/Service;
.source "CloudBackupService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/service/CloudBackupService$TaskItem;,
        Lcom/miui/milk/service/CloudBackupService$ServiceHandler;,
        Lcom/miui/milk/service/CloudBackupService$CloudBinder;
    }
.end annotation


# instance fields
.field private final NM_BACKUP_FINISHED:I

.field private final NM_BACKUP_PROGRESS:I

.field private final NM_RESTORE_FINISHED:I

.field private final NM_RESTORE_PROGRESS:I

.field private final TASK_BACKUP:I

.field private final TASK_FINDLOST:I

.field private final TASK_RESTORE:I

.field private mAbController:Lcom/miui/milk/control/cloud/AddressBookCloudController;

.field private mAppInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoBackup:Z

.field private final mBinder:Landroid/os/IBinder;

.field private mCallsTrackerStore:Lcom/miui/milk/storage/CalllogTrackerStore;

.field private mCanceled:Z

.field private mCcController:Lcom/miui/milk/control/cloud/CalllogCloudController;

.field private mContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mContactVersionStore:Lcom/miui/milk/storage/ContactTrackerStore;

.field private mGroupVersionStore:Lcom/miui/milk/storage/GroupTrackerStore;

.field private mIsBackgroundRunning:Z

.field private mMaxCount:I

.field private mNM:Landroid/app/NotificationManager;

.field private mNcController:Lcom/miui/milk/control/cloud/NoteCloudController;

.field private mNoteFolderTrackerStore:Lcom/miui/milk/storage/NoteFolderTrackerStore;

.field private mNoteTrackerStore:Lcom/miui/milk/storage/NoteTrackerStore;

.field private mPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/service/CloudBackupService$TaskItem;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

.field private mRestoreTaskItemIndex:I

.field private mScController:Lcom/miui/milk/control/cloud/SmsCloudController;

.field private mServiceHandler:Lcom/miui/milk/service/CloudBackupService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSmsBookmarkTrackerStore:Lcom/miui/milk/storage/SmsBookmarkTrackerStore;

.field private mSmsTrackerStore:Lcom/miui/milk/storage/SmsTrackerStore;

.field private mTaskId:J

.field private mTaskRunning:Z

.field private mTaskSucceed:Z

.field private mTaskType:I

.field private mThread:Landroid/os/HandlerThread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiController:Lcom/miui/milk/control/cloud/WifiCloudController;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 81
    new-instance v0, Lcom/miui/milk/service/CloudBackupService$CloudBinder;

    invoke-direct {v0, p0}, Lcom/miui/milk/service/CloudBackupService$CloudBinder;-><init>(Lcom/miui/milk/service/CloudBackupService;)V

    iput-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mBinder:Landroid/os/IBinder;

    .line 95
    iput-boolean v1, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    .line 97
    iput-boolean v2, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z

    .line 99
    iput-boolean v1, p0, Lcom/miui/milk/service/CloudBackupService;->mAutoBackup:Z

    .line 163
    iput v2, p0, Lcom/miui/milk/service/CloudBackupService;->NM_BACKUP_FINISHED:I

    .line 164
    iput v3, p0, Lcom/miui/milk/service/CloudBackupService;->NM_RESTORE_FINISHED:I

    .line 165
    iput v4, p0, Lcom/miui/milk/service/CloudBackupService;->NM_BACKUP_PROGRESS:I

    .line 166
    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/milk/service/CloudBackupService;->NM_RESTORE_PROGRESS:I

    .line 267
    iput v2, p0, Lcom/miui/milk/service/CloudBackupService;->TASK_BACKUP:I

    .line 268
    iput v3, p0, Lcom/miui/milk/service/CloudBackupService;->TASK_RESTORE:I

    .line 269
    iput v4, p0, Lcom/miui/milk/service/CloudBackupService;->TASK_FINDLOST:I

    .line 306
    iput-boolean v1, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    .line 311
    return-void
.end method

.method static synthetic access$000(Lcom/miui/milk/service/CloudBackupService;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/milk/service/CloudBackupService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/miui/milk/service/CloudBackupService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskType:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/milk/service/CloudBackupService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/miui/milk/service/CloudBackupService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->runBackup()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/milk/service/CloudBackupService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->runRestore()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/milk/service/CloudBackupService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->runFindlostContact()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/storage/ProgressTrackerStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/milk/service/CloudBackupService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z

    return p1
.end method

.method static synthetic access$800(Lcom/miui/milk/service/CloudBackupService;Lcom/miui/milk/service/CloudBackupService$TaskItem;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/miui/milk/service/CloudBackupService;->callbackReturn(Lcom/miui/milk/service/CloudBackupService$TaskItem;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/miui/milk/service/CloudBackupService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/miui/milk/service/CloudBackupService;->mRestoreTaskItemIndex:I

    return v0
.end method

.method private addTaskDetail(Lcom/miui/milk/common/AppInfo;I)J
    .locals 4
    .parameter "appInfo"
    .parameter "taskDetailType"

    .prologue
    .line 373
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 374
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "name"

    iget-object v2, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v1, "title"

    iget-object v2, p1, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v1, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 377
    const-string v1, "task_id"

    iget-wide v2, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 378
    const-string v1, "date"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 379
    const-string v1, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    invoke-virtual {v1, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->addTaskDetail(Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method private backupTaskItem(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V
    .locals 3
    .parameter "taskItem"

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/miui/milk/service/CloudBackupService;->beginTaskItemRunning(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V

    .line 557
    new-instance v0, Lcom/miui/milk/service/CloudBackupService$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/milk/service/CloudBackupService$1;-><init>(Lcom/miui/milk/service/CloudBackupService;Lcom/miui/milk/service/CloudBackupService$TaskItem;)V

    .line 601
    .local v0, callback:Lcom/miui/milk/control/callback/AsyncTaskCallback;
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 602
    iget-object v1, p1, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    invoke-virtual {v1}, Lcom/miui/milk/control/cloud/BaseCloudController;->clearPrepared()V

    .line 603
    iget-object v1, p1, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v0, v2}, Lcom/miui/milk/control/cloud/BaseCloudController;->saveInBatchMode(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V

    .line 604
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 607
    :cond_0
    return-void
.end method

.method private beginTaskItemRunning(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V
    .locals 4
    .parameter "taskItem"

    .prologue
    .line 411
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 412
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "date"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 413
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v2, p1, Lcom/miui/milk/service/CloudBackupService$TaskItem;->id:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->updateTaskDetail(JLandroid/content/ContentValues;)V

    .line 415
    return-void
.end method

.method private callbackReturn(Lcom/miui/milk/service/CloudBackupService$TaskItem;)I
    .locals 1
    .parameter "taskItem"

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/milk/service/CloudBackupService;->updateTaskItemStatus(Lcom/miui/milk/service/CloudBackupService$TaskItem;I)V

    .line 329
    const/4 v0, 0x0

    .line 331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearAllNotifications()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 170
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 171
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 172
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f07001e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 173
    return-void
.end method

.method private clearBackupProgressNotification()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 210
    return-void
.end method

.method private clearRestoreProgressNotification()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 221
    return-void
.end method

.method private createNewTask(I)J
    .locals 4
    .parameter "taskType"

    .prologue
    .line 336
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 337
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v1, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    const-string v1, "date"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    invoke-virtual {v1, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->addTask(Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method private createNewTaskItem(JLcom/miui/milk/common/AppInfo;)Lcom/miui/milk/service/CloudBackupService$TaskItem;
    .locals 3
    .parameter "taskItemId"
    .parameter "appInfo"

    .prologue
    .line 345
    new-instance v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/milk/service/CloudBackupService$TaskItem;-><init>(Lcom/miui/milk/service/CloudBackupService$1;)V

    .line 346
    .local v0, newTaskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    iput-wide p1, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->id:J

    .line 347
    iget-wide v1, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    iput-wide v1, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->taskId:J

    .line 348
    iget-object v1, p3, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->name:Ljava/lang/String;

    .line 349
    iget-object v1, p3, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->title:Ljava/lang/String;

    .line 350
    const-string v1, "ADDRESSBOOK"

    iget-object v2, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mAbController:Lcom/miui/milk/control/cloud/AddressBookCloudController;

    iput-object v1, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    .line 361
    :cond_0
    :goto_0
    return-object v0

    .line 352
    :cond_1
    const-string v1, "CALLLOG"

    iget-object v2, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 353
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mCcController:Lcom/miui/milk/control/cloud/CalllogCloudController;

    iput-object v1, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    goto :goto_0

    .line 354
    :cond_2
    const-string v1, "SMS"

    iget-object v2, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 355
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mScController:Lcom/miui/milk/control/cloud/SmsCloudController;

    iput-object v1, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    goto :goto_0

    .line 356
    :cond_3
    const-string v1, "WIFI"

    iget-object v2, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 357
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWifiController:Lcom/miui/milk/control/cloud/WifiCloudController;

    iput-object v1, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    goto :goto_0

    .line 358
    :cond_4
    const-string v1, "NOTE"

    iget-object v2, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mNcController:Lcom/miui/milk/control/cloud/NoteCloudController;

    iput-object v1, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    goto :goto_0
.end method

.method private findlostContact(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V
    .locals 3
    .parameter "taskItem"

    .prologue
    .line 817
    invoke-direct {p0, p1}, Lcom/miui/milk/service/CloudBackupService;->beginTaskItemRunning(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V

    .line 820
    new-instance v0, Lcom/miui/milk/service/CloudBackupService$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/milk/service/CloudBackupService$3;-><init>(Lcom/miui/milk/service/CloudBackupService;Lcom/miui/milk/service/CloudBackupService$TaskItem;)V

    .line 861
    .local v0, callback:Lcom/miui/milk/control/callback/AsyncTaskCallback;
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 862
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mAbController:Lcom/miui/milk/control/cloud/AddressBookCloudController;

    invoke-virtual {v1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->clearPrepared()V

    .line 863
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mAbController:Lcom/miui/milk/control/cloud/AddressBookCloudController;

    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->importFindlostContacts(Lcom/miui/milk/control/callback/AsyncTaskCallback;Ljava/util/ArrayList;)V

    .line 864
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 867
    :cond_0
    return-void
.end method

.method private initTaskMaxInfo(I)V
    .locals 4
    .parameter "max"

    .prologue
    .line 384
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v0, cv1:Landroid/content/ContentValues;
    const-string v1, "max"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    const-string v1, "description"

    const v2, 0x7f070044

    invoke-virtual {p0, v2}, Lcom/miui/milk/service/CloudBackupService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v2, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->updateTask(JLandroid/content/ContentValues;)V

    .line 388
    return-void
.end method

.method private initTaskVariables()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 365
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mPendingList:Ljava/util/ArrayList;

    .line 367
    iput v2, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    .line 368
    iput-boolean v2, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    .line 369
    iput-boolean v2, p0, Lcom/miui/milk/service/CloudBackupService;->mAutoBackup:Z

    .line 370
    return-void
.end method

.method private restoreTaskItem(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V
    .locals 3
    .parameter "taskItem"

    .prologue
    .line 682
    invoke-direct {p0, p1}, Lcom/miui/milk/service/CloudBackupService;->beginTaskItemRunning(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V

    .line 685
    new-instance v0, Lcom/miui/milk/service/CloudBackupService$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/milk/service/CloudBackupService$2;-><init>(Lcom/miui/milk/service/CloudBackupService;Lcom/miui/milk/service/CloudBackupService$TaskItem;)V

    .line 726
    .local v0, callback:Lcom/miui/milk/control/callback/AsyncTaskCallback;
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 727
    iget-object v1, p1, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    invoke-virtual {v1}, Lcom/miui/milk/control/cloud/BaseCloudController;->clearPrepared()V

    .line 728
    iget-object v1, p1, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v0, v2}, Lcom/miui/milk/control/cloud/BaseCloudController;->read(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V

    .line 729
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 732
    :cond_0
    return-void
.end method

.method private runBackup()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    .line 481
    iget-boolean v9, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    if-eqz v9, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iput-boolean v11, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    .line 485
    iput-boolean v11, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z

    .line 486
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->clearAllNotifications()V

    .line 489
    iget-object v9, p0, Lcom/miui/milk/service/CloudBackupService;->mAppInfos:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    .line 490
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v9, p0, Lcom/miui/milk/service/CloudBackupService;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 491
    iget-object v9, p0, Lcom/miui/milk/service/CloudBackupService;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/common/AppInfo;

    .line 492
    .local v0, appInfo:Lcom/miui/milk/common/AppInfo;
    iget-boolean v9, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    if-eqz v9, :cond_2

    .line 494
    iget v9, v0, Lcom/miui/milk/common/AppInfo;->type:I

    packed-switch v9, :pswitch_data_0

    .line 490
    :cond_2
    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 500
    :pswitch_1
    invoke-direct {p0, v0, v11}, Lcom/miui/milk/service/CloudBackupService;->addTaskDetail(Lcom/miui/milk/common/AppInfo;I)J

    move-result-wide v7

    .line 501
    .local v7, taskItemId:J
    const-wide/16 v9, -0x1

    cmp-long v9, v7, v9

    if-eqz v9, :cond_2

    .line 502
    invoke-direct {p0, v7, v8, v0}, Lcom/miui/milk/service/CloudBackupService;->createNewTaskItem(JLcom/miui/milk/common/AppInfo;)Lcom/miui/milk/service/CloudBackupService$TaskItem;

    move-result-object v4

    .line 503
    .local v4, newTaskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    iget-object v9, p0, Lcom/miui/milk/service/CloudBackupService;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 510
    .end local v0           #appInfo:Lcom/miui/milk/common/AppInfo;
    .end local v4           #newTaskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    .end local v7           #taskItemId:J
    :cond_3
    iget-object v9, p0, Lcom/miui/milk/service/CloudBackupService;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/milk/service/CloudBackupService$TaskItem;

    .line 511
    .local v6, taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    iget-object v9, v6, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    invoke-virtual {v9}, Lcom/miui/milk/control/cloud/BaseCloudController;->clearPrepared()V

    .line 512
    iget-object v9, v6, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    invoke-virtual {v9}, Lcom/miui/milk/control/cloud/BaseCloudController;->calculateSyncSize()I

    move-result v5

    .line 514
    .local v5, syncSize:I
    iget v9, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    add-int/2addr v9, v5

    iput v9, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    .line 515
    div-int/lit16 v1, v5, 0xfa

    .line 516
    .local v1, batches:I
    mul-int/lit16 v9, v1, 0xfa

    if-le v5, v9, :cond_4

    .line 517
    add-int/lit8 v1, v1, 0x1

    .line 522
    :cond_4
    iget v9, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    mul-int/lit8 v10, v1, 0xa

    add-int/2addr v9, v10

    iput v9, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    .line 524
    iget v9, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    add-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    goto :goto_3

    .line 527
    .end local v1           #batches:I
    .end local v5           #syncSize:I
    .end local v6           #taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    :cond_5
    iget-wide v9, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_6

    .line 528
    iget v9, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    invoke-direct {p0, v9}, Lcom/miui/milk/service/CloudBackupService;->initTaskMaxInfo(I)V

    .line 533
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->startTaskProgressStatus()V

    .line 534
    iget-object v9, p0, Lcom/miui/milk/service/CloudBackupService;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/milk/service/CloudBackupService$TaskItem;

    .line 535
    .restart local v6       #taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    iget-boolean v9, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    if-eqz v9, :cond_7

    .line 536
    const/4 v9, -0x1

    invoke-direct {p0, v6, v9}, Lcom/miui/milk/service/CloudBackupService;->updateTaskItemStatus(Lcom/miui/milk/service/CloudBackupService$TaskItem;I)V

    goto :goto_4

    .line 540
    :cond_7
    invoke-direct {p0, v6}, Lcom/miui/milk/service/CloudBackupService;->backupTaskItem(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V

    .line 541
    iget-object v9, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v10, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    invoke-virtual {v9, v10, v11}, Lcom/miui/milk/storage/ProgressTrackerStore;->increaseTaskProcessCount(J)V

    goto :goto_4

    .line 544
    .end local v6           #taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    :cond_8
    iget v9, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    invoke-direct {p0, v9}, Lcom/miui/milk/service/CloudBackupService;->stopTaskProgressStatus(I)V

    .line 546
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    .line 547
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->clearBackupProgressNotification()V

    .line 548
    iget-boolean v9, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    if-nez v9, :cond_0

    .line 549
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->showBackupFinishedNotification()V

    goto/16 :goto_0

    .line 494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private runFindlostContact()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 783
    iget-boolean v2, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    if-eqz v2, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    iput-boolean v3, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    .line 787
    iput-boolean v3, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z

    .line 788
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->clearAllNotifications()V

    .line 791
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->startTaskProgressStatus()V

    .line 793
    iput v4, p0, Lcom/miui/milk/service/CloudBackupService;->mRestoreTaskItemIndex:I

    .line 794
    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/milk/service/CloudBackupService$TaskItem;

    .line 795
    .local v1, taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    iget-boolean v2, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    if-eqz v2, :cond_2

    .line 796
    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/miui/milk/service/CloudBackupService;->updateTaskItemStatus(Lcom/miui/milk/service/CloudBackupService$TaskItem;I)V

    goto :goto_1

    .line 800
    :cond_2
    const-string v2, "ADDRESSBOOK"

    iget-object v3, v1, Lcom/miui/milk/service/CloudBackupService$TaskItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 801
    invoke-direct {p0, v1}, Lcom/miui/milk/service/CloudBackupService;->findlostContact(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V

    .line 803
    :cond_3
    iget v2, p0, Lcom/miui/milk/service/CloudBackupService;->mRestoreTaskItemIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/milk/service/CloudBackupService;->mRestoreTaskItemIndex:I

    goto :goto_1

    .line 807
    .end local v1           #taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    :cond_4
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/miui/milk/service/CloudBackupService;->stopTaskProgressStatus(I)V

    .line 809
    iput-boolean v4, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    .line 810
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->clearRestoreProgressNotification()V

    .line 811
    iget-boolean v2, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    if-nez v2, :cond_0

    .line 812
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->showRestoreFinishedNotification()V

    goto :goto_0
.end method

.method private runRestore()V
    .locals 13

    .prologue
    const/16 v12, 0x64

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 619
    iget-boolean v7, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    if-eqz v7, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    iput-boolean v8, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    .line 623
    iput-boolean v8, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z

    .line 624
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->clearAllNotifications()V

    .line 627
    iget-object v7, p0, Lcom/miui/milk/service/CloudBackupService;->mAppInfos:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 628
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/miui/milk/service/CloudBackupService;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 629
    iget-object v7, p0, Lcom/miui/milk/service/CloudBackupService;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/common/AppInfo;

    .line 630
    .local v0, appInfo:Lcom/miui/milk/common/AppInfo;
    iget-boolean v7, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    if-eqz v7, :cond_2

    .line 633
    iget v7, v0, Lcom/miui/milk/common/AppInfo;->type:I

    packed-switch v7, :pswitch_data_0

    .line 628
    :cond_2
    :goto_2
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 639
    :pswitch_1
    const/4 v7, 0x2

    invoke-direct {p0, v0, v7}, Lcom/miui/milk/service/CloudBackupService;->addTaskDetail(Lcom/miui/milk/common/AppInfo;I)J

    move-result-wide v5

    .line 640
    .local v5, taskItemId:J
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    .line 641
    invoke-direct {p0, v5, v6, v0}, Lcom/miui/milk/service/CloudBackupService;->createNewTaskItem(JLcom/miui/milk/common/AppInfo;)Lcom/miui/milk/service/CloudBackupService$TaskItem;

    move-result-object v3

    .line 642
    .local v3, newTaskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    iget-object v7, p0, Lcom/miui/milk/service/CloudBackupService;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    iget v7, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    goto :goto_2

    .line 653
    .end local v0           #appInfo:Lcom/miui/milk/common/AppInfo;
    .end local v3           #newTaskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    .end local v5           #taskItemId:J
    :cond_3
    iget-wide v7, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    .line 654
    invoke-direct {p0, v12}, Lcom/miui/milk/service/CloudBackupService;->initTaskMaxInfo(I)V

    .line 658
    .end local v1           #i:I
    :cond_4
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->startTaskProgressStatus()V

    .line 660
    iput v11, p0, Lcom/miui/milk/service/CloudBackupService;->mRestoreTaskItemIndex:I

    .line 661
    iget-object v7, p0, Lcom/miui/milk/service/CloudBackupService;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/milk/service/CloudBackupService$TaskItem;

    .line 662
    .local v4, taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    iget-boolean v7, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    if-eqz v7, :cond_5

    .line 663
    const/4 v7, -0x1

    invoke-direct {p0, v4, v7}, Lcom/miui/milk/service/CloudBackupService;->updateTaskItemStatus(Lcom/miui/milk/service/CloudBackupService$TaskItem;I)V

    goto :goto_3

    .line 667
    :cond_5
    invoke-direct {p0, v4}, Lcom/miui/milk/service/CloudBackupService;->restoreTaskItem(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V

    .line 668
    iget v7, p0, Lcom/miui/milk/service/CloudBackupService;->mRestoreTaskItemIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/miui/milk/service/CloudBackupService;->mRestoreTaskItemIndex:I

    goto :goto_3

    .line 672
    .end local v4           #taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    :cond_6
    invoke-direct {p0, v12}, Lcom/miui/milk/service/CloudBackupService;->stopTaskProgressStatus(I)V

    .line 674
    iput-boolean v11, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    .line 675
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->clearRestoreProgressNotification()V

    .line 676
    iget-boolean v7, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    if-nez v7, :cond_0

    .line 677
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->showRestoreFinishedNotification()V

    goto/16 :goto_0

    .line 633
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private runTask(Ljava/util/ArrayList;II)J
    .locals 7
    .parameter
    .parameter "taskType"
    .parameter "messageType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;II)J"
        }
    .end annotation

    .prologue
    .local p1, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/common/AppInfo;>;"
    const-wide/16 v1, 0x0

    .line 451
    iget-boolean v3, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    if-eqz v3, :cond_0

    .line 468
    :goto_0
    return-wide v1

    .line 454
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/service/CloudBackupService;->mAppInfos:Ljava/util/ArrayList;

    .line 455
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->initTaskVariables()V

    .line 456
    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService;->mAppInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 457
    iget-wide v3, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    cmp-long v3, v3, v1

    if-nez v3, :cond_1

    .line 459
    invoke-direct {p0, p2}, Lcom/miui/milk/service/CloudBackupService;->createNewTask(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    .line 460
    iget-wide v3, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 461
    const-string v3, "CloudBackupService"

    const-string v4, "Error: runBackup "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mServiceHandler:Lcom/miui/milk/service/CloudBackupService$ServiceHandler;

    invoke-virtual {v1, p3}, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 467
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mServiceHandler:Lcom/miui/milk/service/CloudBackupService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 468
    iget-wide v1, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    goto :goto_0
.end method

.method private showBackupFinishedNotification()V
    .locals 4

    .prologue
    .line 176
    const v1, 0x7f070085

    invoke-virtual {p0, v1}, Lcom/miui/milk/service/CloudBackupService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, result:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f07006b

    invoke-virtual {p0, v2}, Lcom/miui/milk/service/CloudBackupService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_0
    const v1, 0x7f02000d

    const/4 v2, 0x1

    const v3, 0x7f07000e

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/miui/milk/service/CloudBackupService;->showResultNotification(ILjava/lang/String;II)V

    .line 184
    return-void

    .line 180
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f07006c

    invoke-virtual {p0, v2}, Lcom/miui/milk/service/CloudBackupService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showBackupProgressNotification()V
    .locals 4

    .prologue
    const v3, 0x7f07000c

    .line 199
    iget-boolean v1, p0, Lcom/miui/milk/service/CloudBackupService;->mAutoBackup:Z

    if-eqz v1, :cond_0

    .line 200
    const v1, 0x7f070082

    invoke-virtual {p0, v1}, Lcom/miui/milk/service/CloudBackupService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, tickerText:Ljava/lang/String;
    :goto_0
    const v1, 0x7f02000d

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/miui/milk/service/CloudBackupService;->showProgressNotification(ILjava/lang/String;II)V

    .line 206
    return-void

    .line 202
    .end local v0           #tickerText:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/miui/milk/service/CloudBackupService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #tickerText:Ljava/lang/String;
    goto :goto_0
.end method

.method private showProgressNotification(ILjava/lang/String;II)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/miui/milk/service/CloudBackupService;->mIsBackgroundRunning:Z

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    const-string v1, "TASK_ID"

    iget-wide v2, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 230
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 232
    const/high16 v1, 0x800

    invoke-static {p0, p3, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 235
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/miui/milk/service/CloudBackupService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p2

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/miui/backup/SysUtils;->showNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZI)V

    goto :goto_0
.end method

.method private showRestoreFinishedNotification()V
    .locals 4

    .prologue
    .line 187
    const v1, 0x7f070086

    invoke-virtual {p0, v1}, Lcom/miui/milk/service/CloudBackupService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, result:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z

    if-eqz v1, :cond_0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f07006b

    invoke-virtual {p0, v2}, Lcom/miui/milk/service/CloudBackupService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    :goto_0
    const v1, 0x7f02000d

    const/4 v2, 0x2

    const v3, 0x7f07001e

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/miui/milk/service/CloudBackupService;->showResultNotification(ILjava/lang/String;II)V

    .line 195
    return-void

    .line 191
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f07006c

    invoke-virtual {p0, v2}, Lcom/miui/milk/service/CloudBackupService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showRestoreProgressNotification()V
    .locals 4

    .prologue
    const v3, 0x7f070020

    .line 213
    const v0, 0x7f02000d

    invoke-virtual {p0, v3}, Lcom/miui/milk/service/CloudBackupService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/milk/service/CloudBackupService;->showProgressNotification(ILjava/lang/String;II)V

    .line 217
    return-void
.end method

.method private showResultNotification(ILjava/lang/String;II)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/miui/milk/service/CloudBackupService;->mIsBackgroundRunning:Z

    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 250
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/ui/ProgressResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    const-string v1, "TASK_ID"

    iget-wide v2, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 252
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 253
    const/high16 v1, 0x800

    invoke-static {p0, p3, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 256
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/miui/milk/service/CloudBackupService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p2

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/miui/backup/SysUtils;->showNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZI)V

    goto :goto_0
.end method

.method private startTaskProgressStatus()V
    .locals 4

    .prologue
    .line 391
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 392
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "date"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 393
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v2, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->updateTask(JLandroid/content/ContentValues;)V

    .line 395
    return-void
.end method

.method private stopTaskProgressStatus(I)V
    .locals 4
    .parameter "currentProgress"

    .prologue
    .line 398
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 399
    .local v0, cv2:Landroid/content/ContentValues;
    const-string v1, "current"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    iget-boolean v1, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z

    if-eqz v1, :cond_0

    .line 401
    const-string v1, "status"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v2, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->updateTask(JLandroid/content/ContentValues;)V

    .line 408
    return-void

    .line 402
    :cond_0
    iget-boolean v1, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    if-eqz v1, :cond_1

    .line 403
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 405
    :cond_1
    const-string v1, "status"

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private updateTaskItemStatus(Lcom/miui/milk/service/CloudBackupService$TaskItem;I)V
    .locals 4
    .parameter "taskItem"
    .parameter "status"

    .prologue
    .line 418
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 419
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v2, p1, Lcom/miui/milk/service/CloudBackupService$TaskItem;->id:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->updateTaskDetail(JLandroid/content/ContentValues;)V

    .line 421
    return-void
.end method


# virtual methods
.method public cancelService()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z

    .line 161
    return-void
.end method

.method public getFindlostAddressBook(Lcom/miui/milk/control/callback/AsyncTaskCallback;)Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .locals 3
    .parameter "callback"

    .prologue
    .line 297
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 298
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mAbController:Lcom/miui/milk/control/cloud/AddressBookCloudController;

    invoke-virtual {v1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->clearPrepared()V

    .line 299
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mAbController:Lcom/miui/milk/control/cloud/AddressBookCloudController;

    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-virtual {v1, p1, v2}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->getFindlostAddressBook(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v0

    .line 300
    .local v0, res:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 303
    :cond_0
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 103
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/miui/milk/service/CloudBackupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 104
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 106
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/miui/milk/service/CloudBackupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 107
    .local v1, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 108
    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 110
    new-instance v2, Lcom/miui/milk/storage/GroupTrackerStore;

    invoke-direct {v2, p0}, Lcom/miui/milk/storage/GroupTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mGroupVersionStore:Lcom/miui/milk/storage/GroupTrackerStore;

    .line 111
    new-instance v2, Lcom/miui/milk/storage/ContactTrackerStore;

    invoke-direct {v2, p0}, Lcom/miui/milk/storage/ContactTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mContactVersionStore:Lcom/miui/milk/storage/ContactTrackerStore;

    .line 112
    new-instance v2, Lcom/miui/milk/storage/CalllogTrackerStore;

    invoke-direct {v2, p0}, Lcom/miui/milk/storage/CalllogTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mCallsTrackerStore:Lcom/miui/milk/storage/CalllogTrackerStore;

    .line 113
    new-instance v2, Lcom/miui/milk/storage/SmsTrackerStore;

    invoke-direct {v2, p0}, Lcom/miui/milk/storage/SmsTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mSmsTrackerStore:Lcom/miui/milk/storage/SmsTrackerStore;

    .line 114
    new-instance v2, Lcom/miui/milk/storage/SmsBookmarkTrackerStore;

    invoke-direct {v2, p0}, Lcom/miui/milk/storage/SmsBookmarkTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mSmsBookmarkTrackerStore:Lcom/miui/milk/storage/SmsBookmarkTrackerStore;

    .line 115
    new-instance v2, Lcom/miui/milk/storage/NoteFolderTrackerStore;

    invoke-direct {v2, p0}, Lcom/miui/milk/storage/NoteFolderTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mNoteFolderTrackerStore:Lcom/miui/milk/storage/NoteFolderTrackerStore;

    .line 116
    new-instance v2, Lcom/miui/milk/storage/NoteTrackerStore;

    invoke-direct {v2, p0}, Lcom/miui/milk/storage/NoteTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mNoteTrackerStore:Lcom/miui/milk/storage/NoteTrackerStore;

    .line 118
    new-instance v2, Lcom/miui/milk/control/cloud/AddressBookCloudController;

    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService;->mGroupVersionStore:Lcom/miui/milk/storage/GroupTrackerStore;

    iget-object v4, p0, Lcom/miui/milk/service/CloudBackupService;->mContactVersionStore:Lcom/miui/milk/storage/ContactTrackerStore;

    invoke-direct {v2, p0, v3, v4}, Lcom/miui/milk/control/cloud/AddressBookCloudController;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/GroupTrackerStore;Lcom/miui/milk/storage/ContactTrackerStore;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mAbController:Lcom/miui/milk/control/cloud/AddressBookCloudController;

    .line 119
    new-instance v2, Lcom/miui/milk/control/cloud/CalllogCloudController;

    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService;->mCallsTrackerStore:Lcom/miui/milk/storage/CalllogTrackerStore;

    invoke-direct {v2, p0, v3}, Lcom/miui/milk/control/cloud/CalllogCloudController;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/CalllogTrackerStore;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mCcController:Lcom/miui/milk/control/cloud/CalllogCloudController;

    .line 120
    new-instance v2, Lcom/miui/milk/control/cloud/SmsCloudController;

    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService;->mSmsTrackerStore:Lcom/miui/milk/storage/SmsTrackerStore;

    iget-object v4, p0, Lcom/miui/milk/service/CloudBackupService;->mSmsBookmarkTrackerStore:Lcom/miui/milk/storage/SmsBookmarkTrackerStore;

    invoke-direct {v2, p0, v3, v4}, Lcom/miui/milk/control/cloud/SmsCloudController;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/SmsTrackerStore;Lcom/miui/milk/storage/SmsBookmarkTrackerStore;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mScController:Lcom/miui/milk/control/cloud/SmsCloudController;

    .line 121
    new-instance v2, Lcom/miui/milk/control/cloud/WifiCloudController;

    invoke-direct {v2, p0}, Lcom/miui/milk/control/cloud/WifiCloudController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mWifiController:Lcom/miui/milk/control/cloud/WifiCloudController;

    .line 122
    new-instance v2, Lcom/miui/milk/control/cloud/NoteCloudController;

    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService;->mNoteFolderTrackerStore:Lcom/miui/milk/storage/NoteFolderTrackerStore;

    iget-object v4, p0, Lcom/miui/milk/service/CloudBackupService;->mNoteTrackerStore:Lcom/miui/milk/storage/NoteTrackerStore;

    invoke-direct {v2, p0, v3, v4}, Lcom/miui/milk/control/cloud/NoteCloudController;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/NoteFolderTrackerStore;Lcom/miui/milk/storage/NoteTrackerStore;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mNcController:Lcom/miui/milk/control/cloud/NoteCloudController;

    .line 124
    new-instance v2, Lcom/miui/milk/storage/ProgressTrackerStore;

    invoke-direct {v2, p0}, Lcom/miui/milk/storage/ProgressTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    .line 125
    const-string v2, "SyncPref"

    invoke-virtual {p0, v2, v5}, Lcom/miui/milk/service/CloudBackupService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mSharedPref:Landroid/content/SharedPreferences;

    .line 130
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "CloudBackupService"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mThread:Landroid/os/HandlerThread;

    .line 131
    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 133
    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mServiceLooper:Landroid/os/Looper;

    .line 134
    new-instance v2, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;

    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;-><init>(Lcom/miui/milk/service/CloudBackupService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mServiceHandler:Lcom/miui/milk/service/CloudBackupService$ServiceHandler;

    .line 136
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/miui/milk/service/CloudBackupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mNM:Landroid/app/NotificationManager;

    .line 137
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 155
    const v0, 0x7f070061

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 156
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 141
    const-string v0, "CloudBackupService"

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

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public runAutoBackup(Ljava/util/ArrayList;)J
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/common/AppInfo;>;"
    invoke-virtual {p0, p1}, Lcom/miui/milk/service/CloudBackupService;->runBackup(Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 425
    .local v0, res:J
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/milk/service/CloudBackupService;->mAutoBackup:Z

    .line 426
    return-wide v0
.end method

.method public runBackup(Ljava/util/ArrayList;)J
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/common/AppInfo;>;"
    const/4 v2, 0x1

    .line 472
    invoke-direct {p0, p1, v2, v2}, Lcom/miui/milk/service/CloudBackupService;->runTask(Ljava/util/ArrayList;II)J

    move-result-wide v0

    .line 473
    .local v0, taskId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 474
    const-string v2, "CloudBackupService"

    const-string v3, "Error: runBackup "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-wide/16 v0, 0x0

    .line 477
    .end local v0           #taskId:J
    :cond_0
    return-wide v0
.end method

.method public runFindlost(Ljava/util/ArrayList;)J
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/ContactProtos2$Contact;>;"
    const-wide/16 v11, -0x1

    const v10, 0x7f07002e

    const/4 v9, 0x2

    const-wide/16 v5, 0x0

    .line 736
    iget-boolean v7, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    if-eqz v7, :cond_0

    .line 779
    :goto_0
    return-wide v5

    .line 739
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/service/CloudBackupService;->mContactList:Ljava/util/ArrayList;

    .line 740
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->initTaskVariables()V

    .line 741
    iget-wide v7, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    cmp-long v7, v7, v5

    if-nez v7, :cond_1

    .line 743
    invoke-direct {p0, v9}, Lcom/miui/milk/service/CloudBackupService;->createNewTask(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    .line 744
    iget-wide v7, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    cmp-long v7, v7, v11

    if-nez v7, :cond_1

    .line 745
    const-string v7, "CloudBackupService"

    const-string v8, "Error: runFindlost "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 752
    :cond_1
    iget-wide v7, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_3

    .line 753
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 754
    .local v0, cv:Landroid/content/ContentValues;
    const-string v7, "name"

    const-string v8, "ADDRESSBOOK"

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v7, "title"

    invoke-virtual {p0, v10}, Lcom/miui/milk/service/CloudBackupService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v7, "type"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 757
    const-string v7, "task_id"

    iget-wide v8, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 758
    const-string v7, "date"

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 759
    const-string v7, "status"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 760
    iget-object v7, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    invoke-virtual {v7, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->addTaskDetail(Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 761
    .local v3, taskItemId:J
    cmp-long v7, v3, v11

    if-eqz v7, :cond_2

    .line 762
    new-instance v2, Lcom/miui/milk/service/CloudBackupService$TaskItem;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/miui/milk/service/CloudBackupService$TaskItem;-><init>(Lcom/miui/milk/service/CloudBackupService$1;)V

    .line 763
    .local v2, newTaskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    iput-wide v3, v2, Lcom/miui/milk/service/CloudBackupService$TaskItem;->id:J

    .line 764
    iget-wide v7, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    iput-wide v7, v2, Lcom/miui/milk/service/CloudBackupService$TaskItem;->taskId:J

    .line 765
    const-string v7, "ADDRESSBOOK"

    iput-object v7, v2, Lcom/miui/milk/service/CloudBackupService$TaskItem;->name:Ljava/lang/String;

    .line 766
    invoke-virtual {p0, v10}, Lcom/miui/milk/service/CloudBackupService;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/miui/milk/service/CloudBackupService$TaskItem;->title:Ljava/lang/String;

    .line 767
    iget-object v7, p0, Lcom/miui/milk/service/CloudBackupService;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    iget v7, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    .line 773
    .end local v2           #newTaskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    :cond_2
    iget-wide v7, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    cmp-long v5, v7, v5

    if-eqz v5, :cond_3

    .line 774
    const/16 v5, 0x64

    invoke-direct {p0, v5}, Lcom/miui/milk/service/CloudBackupService;->initTaskMaxInfo(I)V

    .line 777
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v3           #taskItemId:J
    :cond_3
    iget-object v5, p0, Lcom/miui/milk/service/CloudBackupService;->mServiceHandler:Lcom/miui/milk/service/CloudBackupService$ServiceHandler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 778
    .local v1, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/miui/milk/service/CloudBackupService;->mServiceHandler:Lcom/miui/milk/service/CloudBackupService$ServiceHandler;

    invoke-virtual {v5, v1}, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 779
    iget-wide v5, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    goto/16 :goto_0
.end method

.method public runRestore(Ljava/util/ArrayList;)J
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/common/AppInfo;>;"
    const/4 v2, 0x2

    .line 610
    invoke-direct {p0, p1, v2, v2}, Lcom/miui/milk/service/CloudBackupService;->runTask(Ljava/util/ArrayList;II)J

    move-result-wide v0

    .line 611
    .local v0, taskId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 612
    const-string v2, "CloudBackupService"

    const-string v3, "Error: runRestore "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const-wide/16 v0, 0x0

    .line 615
    .end local v0           #taskId:J
    :cond_0
    return-wide v0
.end method

.method public switchToBackground()V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/service/CloudBackupService;->mIsBackgroundRunning:Z

    .line 437
    invoke-virtual {p0}, Lcom/miui/milk/service/CloudBackupService;->taskIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget v0, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskType:I

    packed-switch v0, :pswitch_data_0

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 440
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->showBackupProgressNotification()V

    goto :goto_0

    .line 444
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->showRestoreProgressNotification()V

    goto :goto_0

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public switchToForeground()V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/service/CloudBackupService;->mIsBackgroundRunning:Z

    .line 432
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->clearAllNotifications()V

    .line 433
    return-void
.end method

.method public taskIsRunning()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    return v0
.end method
