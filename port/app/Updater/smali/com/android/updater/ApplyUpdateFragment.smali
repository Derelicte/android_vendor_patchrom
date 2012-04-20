.class public Lcom/android/updater/ApplyUpdateFragment;
.super Lcom/android/updater/BaseFragment;
.source "ApplyUpdateFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;
    }
.end annotation


# static fields
.field static sInstallRomName:Ljava/lang/String;

.field public static sIsForeground:Z

.field private static sUpdateInfo:Lcom/android/updater/customTypes/UpdateInfo;


# instance fields
.field private mApplyButton:Landroid/widget/Button;

.field private mCancelButton:Landroid/widget/Button;

.field private mDescription:Landroid/widget/TextView;

.field private mDownloadDescription:Landroid/widget/TextView;

.field private mDownloadLinearLayout:Landroid/widget/LinearLayout;

.field protected final mDownloadListener:Landroid/view/View$OnClickListener;

.field private mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

.field private mDownloadProgress:I

.field private mDownloadResourceReceiver:Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mHtmlContent:Landroid/webkit/WebView;

.field private mInstallLog:Landroid/widget/TextView;

.field private mIsOtaUpdate:Z

.field private mOperationBar:Landroid/view/View;

.field private mPlainContent:Landroid/view/View;

.field private mPostponeButton:Landroid/widget/Button;

.field private final mPostponeButtonListener:Landroid/view/View$OnClickListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRemainingSize:Landroid/widget/TextView;

.field private mRomName:Ljava/lang/String;

.field private mShowCurrentVersion:Z

.field private mToast:Landroid/view/View;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mViewInstallLogMenuItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string v0, ""

    sput-object v0, Lcom/android/updater/ApplyUpdateFragment;->sInstallRomName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/updater/BaseFragment;-><init>()V

    .line 97
    new-instance v0, Lcom/android/updater/ApplyUpdateFragment$1;

    invoke-direct {v0, p0}, Lcom/android/updater/ApplyUpdateFragment$1;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mHandler:Landroid/os/Handler;

    .line 476
    new-instance v0, Lcom/android/updater/ApplyUpdateFragment$3;

    invoke-direct {v0, p0}, Lcom/android/updater/ApplyUpdateFragment$3;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mPostponeButtonListener:Landroid/view/View$OnClickListener;

    .line 568
    new-instance v0, Lcom/android/updater/ApplyUpdateFragment$6;

    invoke-direct {v0, p0}, Lcom/android/updater/ApplyUpdateFragment$6;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadListener:Landroid/view/View$OnClickListener;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/updater/ApplyUpdateFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->sendIntallLog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mPostponeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->copyToClipboard()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/updater/ApplyUpdateFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mToast:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->finishInstall()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->confirmCancel()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/updater/ApplyUpdateFragment;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/updater/ApplyUpdateFragment;->updateDownloadBar(JJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->updateDownloadNotification()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/updater/ApplyUpdateFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mPlainContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/updater/ApplyUpdateFragment;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mHtmlContent:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mInstallLog:Landroid/widget/TextView;

    return-object v0
.end method

.method private confirmCancel()V
    .locals 3

    .prologue
    .line 483
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f050022

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050023

    new-instance v2, Lcom/android/updater/ApplyUpdateFragment$4;

    invoke-direct {v2, p0}, Lcom/android/updater/ApplyUpdateFragment$4;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 492
    return-void
.end method

.method private copyToClipboard()V
    .locals 3

    .prologue
    .line 644
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v1

    .line 645
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 646
    const/4 v2, 0x0

    iget-object v1, v1, Lcom/android/updater/UpdateState;->mLog:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 647
    return-void
.end method

.method private finishInstall()V
    .locals 4

    .prologue
    .line 650
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v0

    .line 651
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadLinearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 652
    iget v1, v0, Lcom/android/updater/UpdateState;->mStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 653
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 654
    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f05005a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f05000c

    new-instance v3, Lcom/android/updater/ApplyUpdateFragment$7;

    invoke-direct {v3, p0}, Lcom/android/updater/ApplyUpdateFragment$7;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050020

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 682
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 683
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 684
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyNowListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mOperationBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    iget v0, v0, Lcom/android/updater/UpdateState;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 687
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/updater/ApplyUpdateFragment;->updateMode(I)V

    .line 688
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mRomName:Ljava/lang/String;

    sput-object v0, Lcom/android/updater/ApplyUpdateFragment;->sInstallRomName:Ljava/lang/String;

    .line 689
    invoke-virtual {p0}, Lcom/android/updater/ApplyUpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/updater/InstallUpdateService;->finishInstallNotification(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private initCurrentVersion()V
    .locals 13

    .prologue
    const v12, 0x7f05001e

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 224
    invoke-virtual {p0}, Lcom/android/updater/ApplyUpdateFragment;->getView()Landroid/view/View;

    move-result-object v5

    .line 225
    .local v5, view:Landroid/view/View;
    iget-object v6, p0, Lcom/android/updater/ApplyUpdateFragment;->mDescription:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const v6, 0x7f080006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v6, p0, Lcom/android/updater/ApplyUpdateFragment;->mPreferences:Lcom/android/updater/utils/Preferences;

    invoke-virtual {v6}, Lcom/android/updater/utils/Preferences;->getCurrVersionInfo()Lcom/android/updater/customTypes/UpdateInfo;

    move-result-object v3

    .line 228
    .local v3, ui:Lcom/android/updater/customTypes/UpdateInfo;
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getModVersion()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, systemModVersion:Ljava/lang/String;
    const-string v6, "%s%s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {p0, v12}, Lcom/android/updater/ApplyUpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v2, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, version:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/updater/customTypes/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 231
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getIncrementalVersion()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, sysVersion:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v3}, Lcom/android/updater/customTypes/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 233
    const-string v6, "%s%s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {p0, v12}, Lcom/android/updater/ApplyUpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v8, v3}, Lcom/android/updater/utils/StringUtils;->getModName(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 235
    invoke-virtual {p0, v3}, Lcom/android/updater/ApplyUpdateFragment;->setVersionInfo(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 239
    .end local v1           #sysVersion:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 240
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 241
    return-void
.end method

.method private initDownloadNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 306
    const v4, 0x7f050039

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-static {v6, v7}, Lcom/android/updater/utils/StringUtils;->getModName(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/updater/ApplyUpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, contentText:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/updater/ApplyUpdateFragment;->mRomName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 308
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadProgress:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 309
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 310
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/16 v5, 0x64

    iget v6, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadProgress:I

    invoke-virtual {v4, v5, v6, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 311
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    const v5, 0x7f020046

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 312
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 313
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 314
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 316
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-static {v4, v5}, Lcom/android/updater/utils/SysUtils;->getApplyUpdateIntent(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 317
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const/high16 v5, 0x800

    invoke-static {v4, v8, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 318
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 320
    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 321
    .local v2, notificationManager:Landroid/app/NotificationManager;
    const v4, 0x7f05003e

    iget-object v5, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 322
    return-void
.end method

.method private initMioneInstall()V
    .locals 6

    .prologue
    .line 279
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/android/updater/InstallUpdateService;->setHandler(Landroid/os/Handler;)V

    .line 280
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mRomName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/updater/InstallUpdateService;->setRomName(Ljava/lang/String;)V

    .line 281
    sget-object v3, Lcom/android/updater/InstallUpdateService;->sUpdateMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 282
    :try_start_0
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v1

    .line 284
    .local v1, updateState:Lcom/android/updater/UpdateState;
    iget v2, v1, Lcom/android/updater/UpdateState;->mStatus:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 286
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mUpdateFile:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f05000b

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->startInstall()V

    .line 290
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 299
    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    sget-object v2, Lcom/android/updater/ApplyUpdateFragment;->sInstallRomName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mRomName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/updater/ApplyUpdateFragment;->updateMode(I)V

    .line 303
    :cond_2
    return-void

    .line 291
    :cond_3
    :try_start_1
    iget v2, v1, Lcom/android/updater/UpdateState;->mStatus:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    iget v2, v1, Lcom/android/updater/UpdateState;->mStatus:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 293
    :cond_4
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "from_notification"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 295
    .local v0, fromNotification:Z
    if-eqz v0, :cond_1

    .line 296
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->finishInstall()V

    goto :goto_0

    .line 299
    .end local v0           #fromNotification:Z
    .end local v1           #updateState:Lcom/android/updater/UpdateState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private initStatus()V
    .locals 2

    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    if-eqz v1, :cond_2

    .line 264
    const/4 v0, 0x1

    .line 265
    .local v0, mode:I
    invoke-virtual {p0}, Lcom/android/updater/ApplyUpdateFragment;->showDownloading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    const/4 v0, 0x2

    .line 272
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/updater/ApplyUpdateFragment;->updateMode(I)V

    .line 276
    .end local v0           #mode:I
    :goto_1
    return-void

    .line 268
    .restart local v0       #mode:I
    :cond_1
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-static {v1}, Lcom/android/updater/utils/SysUtils;->checkExistingRomFile(Lcom/android/updater/customTypes/UpdateInfo;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 269
    const/4 v0, 0x3

    goto :goto_0

    .line 274
    .end local v0           #mode:I
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/updater/ApplyUpdateFragment;->updateMode(I)V

    goto :goto_1
.end method

.method private initTitle()V
    .locals 4

    .prologue
    .line 244
    const-string v2, ""

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mRomName:Ljava/lang/String;

    .line 245
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mUpdateFile:Landroid/net/Uri;

    .line 246
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mUpdateFile:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mUpdateFile:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mRomName:Ljava/lang/String;

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 250
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 251
    const-string v2, "update_info"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mRomName:Ljava/lang/String;

    .line 252
    const-string v2, "ota_update"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mIsOtaUpdate:Z

    .line 253
    sget-object v2, Lcom/android/updater/ApplyUpdateFragment;->sInstallRomName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    const-string v2, "install_rom"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/updater/ApplyUpdateFragment;->sInstallRomName:Ljava/lang/String;

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 259
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mRomName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 260
    return-void
.end method

.method private initUI()V
    .locals 4

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/updater/ApplyUpdateFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 185
    .local v1, view:Landroid/view/View;
    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mInstallLog:Landroid/widget/TextView;

    .line 186
    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mHtmlContent:Landroid/webkit/WebView;

    .line 187
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mHtmlContent:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 189
    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mPlainContent:Landroid/view/View;

    .line 190
    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mDescription:Landroid/widget/TextView;

    .line 191
    sget-boolean v2, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mDescription:Landroid/widget/TextView;

    const v3, 0x7f05002c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 196
    :cond_0
    const v2, 0x7f08000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mOperationBar:Landroid/view/View;

    .line 197
    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    .line 198
    const v2, 0x7f08000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mPostponeButton:Landroid/widget/Button;

    .line 199
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mPostponeButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mPostponeButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadLinearLayout:Landroid/widget/LinearLayout;

    .line 203
    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 204
    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mRemainingSize:Landroid/widget/TextView;

    .line 205
    const v2, 0x7f08000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mCancelButton:Landroid/widget/Button;

    .line 206
    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadDescription:Landroid/widget/TextView;

    .line 209
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/updater/ApplyUpdateFragment$2;

    invoke-direct {v3, p0}, Lcom/android/updater/ApplyUpdateFragment$2;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mToast:Landroid/view/View;

    .line 219
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mToast:Landroid/view/View;

    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 220
    .local v0, toastText:Landroid/widget/TextView;
    const v2, 0x30c0038

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 221
    return-void
.end method

.method private sendIntallLog()V
    .locals 5

    .prologue
    .line 631
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v0

    .line 632
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "mailto:fc@miui.com?subject=FC_OTA"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 633
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 634
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detail logs:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/android/updater/UpdateState;->mLog:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/updater/ApplyUpdateFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :goto_0
    return-void

    .line 638
    :catch_0
    move-exception v0

    .line 639
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f05000e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static setUpdateInfo(Lcom/android/updater/customTypes/UpdateInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 379
    sput-object p0, Lcom/android/updater/ApplyUpdateFragment;->sUpdateInfo:Lcom/android/updater/customTypes/UpdateInfo;

    .line 380
    return-void
.end method

.method private startInstall()V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 622
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mOperationBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadDescription:Landroid/widget/TextView;

    const v1, 0x7f050008

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "0%"

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/updater/ApplyUpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 627
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mRemainingSize:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    return-void
.end method

.method private updateDownloadBar(JJ)V
    .locals 10
    .parameter "currentBytes"
    .parameter "totalBytes"

    .prologue
    .line 337
    const-string v3, "%.1fMB / %.1fMB"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    long-to-double v6, p1

    const-wide/high16 v8, 0x4130

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    long-to-double v6, p3

    const-wide/high16 v8, 0x4130

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, remainingSize:Ljava/lang/String;
    long-to-double v3, p1

    const-wide/high16 v5, 0x4059

    mul-double/2addr v3, v5

    long-to-double v5, p3

    div-double v0, v3, v5

    .line 340
    .local v0, percent:D
    double-to-int v3, v0

    iput v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadProgress:I

    .line 341
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mRemainingSize:Landroid/widget/TextView;

    const-string v4, "%s  %.0f%%"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 343
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 344
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;

    iget v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadProgress:I

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 345
    return-void
.end method

.method private updateDownloadNotification()V
    .locals 5

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 329
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    const/16 v2, 0x64

    iget v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadProgress:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 330
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 332
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 333
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const v1, 0x7f05003e

    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method protected applyUpdate()V
    .locals 3

    .prologue
    .line 384
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_0

    .line 386
    const-string v0, ""

    sput-object v0, Lcom/android/updater/ApplyUpdateFragment;->sInstallRomName:Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/updater/InstallUpdateService;->setHandler(Landroid/os/Handler;)V

    .line 388
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mRomName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/updater/InstallUpdateService;->setRomName(Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->startInstall()V

    .line 390
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/updater/InstallUpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    const-string v1, "UPDATE_PACKAGE"

    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mUpdateFile:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 393
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f050009

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 397
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-super {p0}, Lcom/android/updater/BaseFragment;->applyUpdate()V

    goto :goto_0
.end method

.method protected needDownload()Z
    .locals 4

    .prologue
    .line 496
    invoke-super {p0}, Lcom/android/updater/BaseFragment;->needDownload()Z

    move-result v0

    .line 497
    .local v0, ret:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-static {v1, v2, v3}, Lcom/android/updater/utils/SysUtils;->downloadUpdate(Landroid/content/Context;ZLcom/android/updater/customTypes/UpdateInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-virtual {p0, v1}, Lcom/android/updater/ApplyUpdateFragment;->downloadRequestedUpdate(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 500
    :cond_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 151
    invoke-super {p0, p1}, Lcom/android/updater/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 152
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->initUI()V

    .line 154
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 155
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 156
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setUiOptions(I)V

    .line 159
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "current_version"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mShowCurrentVersion:Z

    .line 160
    iget-boolean v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mShowCurrentVersion:Z

    if-eqz v2, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->initCurrentVersion()V

    .line 180
    :goto_0
    return-void

    .line 165
    :cond_0
    sget-object v2, Lcom/android/updater/ApplyUpdateFragment;->sUpdateInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-virtual {p0, v2}, Lcom/android/updater/ApplyUpdateFragment;->setVersionInfo(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 166
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->initTitle()V

    .line 167
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->initStatus()V

    .line 169
    sget-boolean v2, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v2, :cond_1

    .line 170
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->initMioneInstall()V

    .line 173
    :cond_1
    new-instance v2, Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;

    invoke-direct {v2, p0}, Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadResourceReceiver:Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;

    .line 174
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v1, f:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v2, "android.intent.action.DOWNLOAD_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadResourceReceiver:Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadNotificationBuilder:Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 440
    invoke-super {p0, p1, p2}, Lcom/android/updater/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 442
    iget-boolean v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mShowCurrentVersion:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/updater/ShareActivity;->isShareAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    const v1, 0x7f05005f

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 444
    .local v0, addAccountItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 449
    .end local v0           #addAccountItem:Landroid/view/MenuItem;
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 145
    const/high16 v1, 0x7f03

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 401
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadResourceReceiver:Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadResourceReceiver:Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 404
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_1

    .line 405
    invoke-static {v2}, Lcom/android/updater/InstallUpdateService;->setHandler(Landroid/os/Handler;)V

    .line 406
    iput-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mHandler:Landroid/os/Handler;

    .line 408
    :cond_1
    invoke-super {p0}, Lcom/android/updater/BaseFragment;->onDestroy()V

    .line 409
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 413
    invoke-virtual {p0}, Lcom/android/updater/ApplyUpdateFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 414
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v2

    .line 415
    iget v3, v2, Lcom/android/updater/UpdateState;->mStatus:I

    if-ne v3, v0, :cond_0

    .line 416
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f050008

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/updater/ApplyUpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 434
    :goto_0
    return v0

    .line 419
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 434
    invoke-super {p0, p1}, Lcom/android/updater/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 421
    :sswitch_0
    const/high16 v3, 0x7f08

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 422
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mPlainContent:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mInstallLog:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/android/updater/UpdateState;->mLog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 426
    :sswitch_1
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 429
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 430
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/updater/ShareActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 431
    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 419
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x102002c -> :sswitch_1
        0x7f08001e -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 349
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v2

    .line 350
    .local v2, updateState:Lcom/android/updater/UpdateState;
    iget v3, v2, Lcom/android/updater/UpdateState;->mStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 351
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/updater/InstallUpdateService;->setupNotification(Landroid/content/Context;)V

    .line 352
    iget v3, v2, Lcom/android/updater/UpdateState;->mProgressScopeStart:F

    iget v4, v2, Lcom/android/updater/UpdateState;->mProgress:F

    iget v5, v2, Lcom/android/updater/UpdateState;->mProgressScopeSize:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 353
    .local v1, progress:I
    invoke-static {v1}, Lcom/android/updater/InstallUpdateService;->notifyProgress(I)V

    .line 355
    .end local v1           #progress:I
    :cond_0
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/updater/ApplyUpdateFragment;->sIsForeground:Z

    .line 356
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 359
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    if-eqz v3, :cond_1

    .line 360
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/updater/ApplyUpdateFragment;->mUpdateFolder:Ljava/io/File;

    iget-object v5, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-virtual {v5}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, destFilePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadUpdateManager:Lcom/android/updater/tasks/DownloadUpdateManager;

    invoke-virtual {v3, v0}, Lcom/android/updater/tasks/DownloadUpdateManager;->isDownloading(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 362
    invoke-direct {p0}, Lcom/android/updater/ApplyUpdateFragment;->initDownloadNotification()V

    .line 365
    .end local v0           #destFilePath:Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Lcom/android/updater/BaseFragment;->onPause()V

    .line 366
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    .line 454
    invoke-super {p0, p1}, Lcom/android/updater/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 455
    const v1, 0x7f08001b

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeGroup(I)V

    .line 457
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 458
    sget-boolean v1, Lcom/android/updater/ApplyUpdateFragment;->MANUALLY_APPLY_UPDATE:Z

    if-eqz v1, :cond_0

    .line 459
    const v1, 0x7f08001c

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 461
    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v1, :cond_1

    .line 462
    const v1, 0x7f08001d

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 463
    const v1, 0x7f08001e

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 474
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-static {}, Lcom/android/updater/UpdateState;->getInstance()Lcom/android/updater/UpdateState;

    move-result-object v0

    .line 466
    .local v0, updateState:Lcom/android/updater/UpdateState;
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mViewInstallLogMenuItem:Landroid/view/MenuItem;

    .line 467
    iget v1, v0, Lcom/android/updater/UpdateState;->mStatus:I

    if-eq v1, v3, :cond_2

    iget v1, v0, Lcom/android/updater/UpdateState;->mStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 469
    :cond_2
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mViewInstallLogMenuItem:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 471
    :cond_3
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mViewInstallLogMenuItem:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/updater/InstallUpdateService;->cleanNotification(Landroid/content/Context;)V

    .line 371
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/updater/ApplyUpdateFragment;->sIsForeground:Z

    .line 372
    invoke-virtual {p0}, Lcom/android/updater/ApplyUpdateFragment;->registerExternalStorageListener()V

    .line 374
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f05003e

    invoke-static {v0, v1}, Lcom/android/updater/utils/SysUtils;->cancelNotification(Landroid/content/Context;I)V

    .line 375
    invoke-super {p0}, Lcom/android/updater/BaseFragment;->onResume()V

    .line 376
    return-void
.end method

.method public registerExternalStorageListener()V
    .locals 3

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 695
    new-instance v0, Lcom/android/updater/ApplyUpdateFragment$8;

    invoke-direct {v0, p0}, Lcom/android/updater/ApplyUpdateFragment$8;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    iput-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 707
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 708
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 709
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 710
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 711
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 713
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 714
    return-void
.end method

.method protected setVersionInfo(Lcom/android/updater/customTypes/UpdateInfo;)V
    .locals 4
    .parameter "updateInfo"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 607
    invoke-super {p0, p1}, Lcom/android/updater/BaseFragment;->setVersionInfo(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 608
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 609
    .local v0, descriptionUrl:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 610
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mPlainContent:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 611
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mHtmlContent:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 612
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mHtmlContent:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 618
    :goto_1
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 619
    return-void

    .line 608
    .end local v0           #descriptionUrl:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-virtual {v1}, Lcom/android/updater/customTypes/UpdateInfo;->getDescriptionUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 614
    .restart local v0       #descriptionUrl:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mHtmlContent:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 615
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mPlainContent:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected updateMode(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x4b

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 517
    invoke-super {p0, p1}, Lcom/android/updater/BaseFragment;->updateMode(I)V

    .line 518
    iget v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 520
    :pswitch_0
    const v0, 0x7f050003

    .line 521
    iget-boolean v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mIsOtaUpdate:Z

    if-eqz v1, :cond_1

    .line 522
    const v0, 0x7f050004

    .line 524
    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/updater/ApplyUpdateFragment;->mThisInfo:Lcom/android/updater/customTypes/UpdateInfo;

    invoke-virtual {v2}, Lcom/android/updater/customTypes/UpdateInfo;->getFileSize()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/updater/ApplyUpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mOperationBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 531
    :pswitch_1
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mOperationBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 535
    :pswitch_2
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 536
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mDownloadLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mOperationBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 538
    sget-boolean v0, Lcom/android/updater/ApplyUpdateFragment;->MANUALLY_APPLY_UPDATE:Z

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    const v1, 0x30c0191

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 540
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mUpdateFile:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f05002a

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/updater/ApplyUpdateFragment;->mUpdateFile:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/updater/ApplyUpdateFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/android/updater/utils/SysUtils;->showDialog(Landroid/content/Context;ILjava/lang/String;)V

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyNowListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 551
    :pswitch_3
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mOperationBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    const v1, 0x7f050011

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 553
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mOperationBar:Landroid/view/View;

    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 554
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mApplyButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/updater/ApplyUpdateFragment$5;

    invoke-direct {v1, p0}, Lcom/android/updater/ApplyUpdateFragment$5;-><init>(Lcom/android/updater/ApplyUpdateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mDescription:Landroid/widget/TextView;

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 560
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mPostponeButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mViewInstallLogMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/updater/ApplyUpdateFragment;->mViewInstallLogMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
