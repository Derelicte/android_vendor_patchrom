.class public Lcom/miui/backup/ui/ProgressPageActivity;
.super Landroid/app/Activity;
.source "ProgressPageActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;,
        Lcom/miui/backup/ui/ProgressPageActivity$DeleteBackupTask;
    }
.end annotation


# static fields
.field private static sService:Lcom/miui/backup/BackupService;


# instance fields
.field private mButtonCancel:Landroid/widget/Button;

.field private mCancelProgressDialog:Landroid/app/ProgressDialog;

.field private mConnectServiceRunnable:Ljava/lang/Runnable;

.field private mConnection:Landroid/content/ServiceConnection;

.field protected mContentsList:Landroid/widget/ListView;

.field private mCurrCmdIndex:I

.field private mErrorDialog:Landroid/app/Dialog;

.field private final mHandler:Landroid/os/Handler;

.field private mIsBound:Z

.field private mIsFling:Z

.field private mProgressAdapter:Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;

.field private mProgressBg:Landroid/view/View;

.field private mProgressInfo:Landroid/widget/TextView;

.field private mProgressSummary:Landroid/widget/TextView;

.field private mProgressTitle:Landroid/widget/TextView;

.field private mResultImage:Landroid/widget/ImageView;

.field private mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 235
    new-instance v0, Lcom/miui/backup/ui/ProgressPageActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/backup/ui/ProgressPageActivity$4;-><init>(Lcom/miui/backup/ui/ProgressPageActivity;)V

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mHandler:Landroid/os/Handler;

    .line 512
    new-instance v0, Lcom/miui/backup/ui/ProgressPageActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/backup/ui/ProgressPageActivity$6;-><init>(Lcom/miui/backup/ui/ProgressPageActivity;)V

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mConnectServiceRunnable:Ljava/lang/Runnable;

    .line 536
    new-instance v0, Lcom/miui/backup/ui/ProgressPageActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/backup/ui/ProgressPageActivity$7;-><init>(Lcom/miui/backup/ui/ProgressPageActivity;)V

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/backup/ui/ProgressPageActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/backup/ui/ProgressPageActivity;->createDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/backup/ui/ProgressPageActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mResultImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/backup/ui/ProgressPageActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressBg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300()Lcom/miui/backup/BackupService;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/backup/BackupService;)Lcom/miui/backup/BackupService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-object p0, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/backup/ui/ProgressPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->refreshNow()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/backup/ui/ProgressPageActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/backup/ui/ProgressPageActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/backup/ui/ProgressPageActivity;->showErrorDialog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/backup/ui/ProgressPageActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/miui/backup/ui/ProgressPageActivity;->queueNextRefreshNow(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/backup/ui/ProgressPageActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mConnectServiceRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createDialog(I)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    sget-object v1, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->hasTask()Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 142
    :pswitch_0
    const/4 v0, 0x0

    .line 143
    .local v0, message:Ljava/lang/String;
    sget-object v1, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->getTaskType()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 144
    const v1, 0x7f07005a

    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07000d

    new-instance v3, Lcom/miui/backup/ui/ProgressPageActivity$2;

    invoke-direct {v3, p0}, Lcom/miui/backup/ui/ProgressPageActivity$2;-><init>(Lcom/miui/backup/ui/ProgressPageActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 146
    :cond_2
    const v1, 0x7f07005c

    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 169
    .end local v0           #message:Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x0

    .line 170
    .restart local v0       #message:Ljava/lang/String;
    sget-object v1, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->getTaskType()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 171
    const v1, 0x7f07005d

    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_2
    const-string v1, ""

    invoke-static {p0, v1, v0, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    .line 176
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 173
    :cond_3
    const v1, 0x7f07005e

    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private genContentAdapter(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/backup/CmdRunningInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, taskRunningInfo:Ljava/util/List;,"Ljava/util/List<Lcom/miui/backup/CmdRunningInfo;>;"
    new-instance v0, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;

    const v3, 0x7f03000c

    const v4, 0x1020016

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;-><init>(Lcom/miui/backup/ui/ProgressPageActivity;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressAdapter:Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;

    .line 365
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mContentsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressAdapter:Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 366
    return-void
.end method

.method private isTaskFinished()Z
    .locals 1

    .prologue
    .line 359
    sget-object v0, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->hasTask()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->isTaskFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queueNextRefreshNow(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 334
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 335
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 336
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 337
    return-void
.end method

.method private refreshListContent()V
    .locals 2

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressAdapter:Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;

    invoke-virtual {v1}, Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;->notifyDataSetChanged()V

    .line 351
    sget-object v1, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->getTaskCmdIndex()I

    move-result v0

    .line 352
    .local v0, cmdIndex:I
    iget v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCurrCmdIndex:I

    if-eq v1, v0, :cond_0

    .line 353
    iput v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCurrCmdIndex:I

    .line 354
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mContentsList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private refreshNow()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 250
    iget-boolean v5, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mIsFling:Z

    if-eqz v5, :cond_0

    .line 284
    :goto_0
    return-void

    .line 254
    :cond_0
    const v5, 0x7f070052

    invoke-virtual {p0, v5}, Lcom/miui/backup/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, errorMessage:Ljava/lang/String;
    sget-object v5, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    invoke-virtual {v5}, Lcom/miui/backup/BackupService;->hasTask()Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v4

    .line 257
    .local v2, hasTask:Z
    :goto_1
    if-eqz v2, :cond_1

    .line 259
    :try_start_0
    sget-object v5, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    invoke-virtual {v5}, Lcom/miui/backup/BackupService;->getTaskRunningInfo()Ljava/util/List;

    move-result-object v3

    .line 260
    .local v3, taskRunningInfo:Ljava/util/List;,"Ljava/util/List<Lcom/miui/backup/CmdRunningInfo;>;"
    iget-object v5, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressAdapter:Lcom/miui/backup/ui/ProgressPageActivity$ProgressItemAdapter;

    if-nez v5, :cond_1

    .line 261
    invoke-direct {p0, v3}, Lcom/miui/backup/ui/ProgressPageActivity;->genContentAdapter(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v3           #taskRunningInfo:Ljava/util/List;,"Ljava/util/List<Lcom/miui/backup/CmdRunningInfo;>;"
    :cond_1
    :goto_2
    if-eqz v2, :cond_5

    .line 275
    invoke-direct {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->isTaskFinished()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 276
    invoke-direct {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->refreshOnFinished()V

    goto :goto_0

    .line 255
    .end local v2           #hasTask:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 263
    .restart local v2       #hasTask:Z
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 265
    sget-object v5, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    invoke-virtual {v5}, Lcom/miui/backup/BackupService;->getTaskType()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 266
    const v4, 0x7f070085

    invoke-virtual {p0, v4}, Lcom/miui/backup/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f07006c

    invoke-virtual {p0, v5}, Lcom/miui/backup/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 268
    :cond_3
    const v4, 0x7f070086

    invoke-virtual {p0, v4}, Lcom/miui/backup/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 278
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->refreshPage()V

    .line 279
    const-wide/16 v4, 0x1f4

    invoke-direct {p0, v4, v5}, Lcom/miui/backup/ui/ProgressPageActivity;->queueNextRefreshNow(J)V

    goto :goto_0

    .line 282
    :cond_5
    invoke-direct {p0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private refreshOnFinished()V
    .locals 6

    .prologue
    const v5, 0x7f07006f

    const/4 v4, 0x0

    .line 295
    invoke-direct {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->refreshPage()V

    .line 296
    sget-object v2, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    invoke-virtual {v2}, Lcom/miui/backup/BackupService;->getBackupRestoreDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, fileName:Ljava/lang/String;
    :try_start_0
    invoke-static {p0, v0}, Lcom/miui/backup/BackupUtils;->getShowNameFromFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 303
    :goto_0
    sget-object v2, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    invoke-virtual {v2}, Lcom/miui/backup/BackupService;->isTaskCancel()Z

    move-result v1

    .line 304
    .local v1, isTaskCancel:Z
    iget-object v2, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mResultImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object v3, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mResultImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const v2, 0x7f020011

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    iget-object v3, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressBg:Landroid/view/View;

    if-eqz v1, :cond_2

    const v2, 0x7f020012

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 308
    iget-object v2, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressSummary:Landroid/widget/TextView;

    sget-object v3, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    invoke-virtual {v3}, Lcom/miui/backup/BackupService;->getBackupRestoreDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v2, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 310
    iget-object v2, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressInfo:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v2, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 312
    iget-object v2, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mButtonCancel:Landroid/widget/Button;

    new-instance v3, Lcom/miui/backup/ui/ProgressPageActivity$5;

    invoke-direct {v3, p0}, Lcom/miui/backup/ui/ProgressPageActivity$5;-><init>(Lcom/miui/backup/ui/ProgressPageActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v2, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    sget-object v2, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    invoke-virtual {v2}, Lcom/miui/backup/BackupService;->getTaskType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 324
    new-instance v2, Lcom/miui/backup/ui/ProgressPageActivity$DeleteBackupTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/backup/ui/ProgressPageActivity$DeleteBackupTask;-><init>(Lcom/miui/backup/ui/ProgressPageActivity;Lcom/miui/backup/ui/ProgressPageActivity$1;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/miui/backup/ui/ProgressPageActivity$DeleteBackupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 330
    :cond_0
    :goto_3
    invoke-virtual {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 331
    return-void

    .line 305
    :cond_1
    const v2, 0x7f020013

    goto :goto_1

    .line 306
    :cond_2
    const v2, 0x7f020014

    goto :goto_2

    .line 326
    :cond_3
    iget-object v2, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_3

    .line 299
    .end local v1           #isTaskCancel:Z
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private refreshPage()V
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mIsFling:Z

    if-nez v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->refreshTotalInfo()V

    .line 289
    invoke-direct {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->refreshListContent()V

    .line 291
    :cond_0
    return-void
.end method

.method private refreshTotalInfo()V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mButtonCancel:Landroid/widget/Button;

    sget-object v1, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->getTaskCancelResIdOfTask()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 341
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressTitle:Landroid/widget/TextView;

    sget-object v1, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->getProgressHintResIdOfTask()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 342
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    invoke-virtual {v2}, Lcom/miui/backup/BackupService;->getTaskProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    return-void
.end method

.method private showErrorDialog(I)V
    .locals 1
    .parameter "errorResId"

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/backup/ui/ProgressPageActivity;->showErrorDialog(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 4
    .parameter "errorMessage"

    .prologue
    .line 186
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mErrorDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 188
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mErrorDialog:Landroid/app/Dialog;

    .line 190
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07000d

    new-instance v3, Lcom/miui/backup/ui/ProgressPageActivity$3;

    invoke-direct {v3, p0}, Lcom/miui/backup/ui/ProgressPageActivity$3;-><init>(Lcom/miui/backup/ui/ProgressPageActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 203
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mErrorDialog:Landroid/app/Dialog;

    .line 204
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 205
    return-void
.end method


# virtual methods
.method doBindService(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 559
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/backup/BackupService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 560
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 561
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mIsBound:Z

    .line 562
    return-void
.end method

.method doUnbindService(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mIsBound:Z

    .line 570
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->isTaskFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 134
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-static {p0}, Lcom/miui/backup/SDCardMonitor;->getSDCardMonitor(Landroid/content/Context;)Lcom/miui/backup/SDCardMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    .line 74
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v0, p0}, Lcom/miui/backup/SDCardMonitor;->addSdCardStatusListener(Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;)V

    .line 76
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/ProgressPageActivity;->setContentView(I)V

    .line 77
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mContentsList:Landroid/widget/ListView;

    .line 78
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mContentsList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 80
    const v0, 0x7f0a0019

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressBg:Landroid/view/View;

    .line 81
    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressInfo:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressTitle:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressSummary:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mResultImage:Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mButtonCancel:Landroid/widget/Button;

    .line 87
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mButtonCancel:Landroid/widget/Button;

    new-instance v1, Lcom/miui/backup/ui/ProgressPageActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/backup/ui/ProgressPageActivity$1;-><init>(Lcom/miui/backup/ui/ProgressPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v0, p0}, Lcom/miui/backup/SDCardMonitor;->removeSdCardStatusListener(Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;)V

    .line 120
    invoke-virtual {p0, p0}, Lcom/miui/backup/ui/ProgressPageActivity;->doUnbindService(Landroid/content/Context;)V

    .line 121
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 127
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 111
    invoke-virtual {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 112
    sget-object v0, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->switchToBackground()V

    .line 115
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    invoke-virtual {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 99
    invoke-virtual {p0, p0}, Lcom/miui/backup/ui/ProgressPageActivity;->doBindService(Landroid/content/Context;)V

    .line 101
    const-wide/16 v0, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->queueNextRefreshNow(J)V

    .line 103
    sget-object v0, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/miui/backup/ui/ProgressPageActivity;->sService:Lcom/miui/backup/BackupService;

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->switchToForeground()V

    .line 106
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 224
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 213
    if-nez p2, :cond_0

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mIsFling:Z

    .line 215
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->queueNextRefreshNow(J)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mIsFling:Z

    goto :goto_0
.end method

.method public onSdcardStatusChanged(Z)V
    .locals 1
    .parameter "mount"

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    const v0, 0x7f07000b

    invoke-direct {p0, v0}, Lcom/miui/backup/ui/ProgressPageActivity;->showErrorDialog(I)V

    .line 231
    :cond_0
    return-void
.end method
