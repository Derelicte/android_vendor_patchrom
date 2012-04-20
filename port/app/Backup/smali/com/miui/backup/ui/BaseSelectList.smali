.class public Lcom/miui/backup/ui/BaseSelectList;
.super Landroid/app/Activity;
.source "BaseSelectList.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;
    }
.end annotation


# instance fields
.field protected CONTENT_BASE_DIR:Ljava/io/File;

.field private mAppListAdapter:Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;

.field protected mBackupRestoreDir:Ljava/io/File;

.field private mCheckCount:I

.field private mConnection:Landroid/content/ServiceConnection;

.field protected mContactInfo:Lcom/miui/backup/AppInfo;

.field private mIsBound:Z

.field private mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

.field private mSelectMode:I

.field protected mService:Lcom/miui/backup/BackupService;

.field protected mSortDescComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSysDataCheckCount:I

.field protected mSysDataInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAppCheckCount:I

.field protected mUserAppInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mBackupRestoreDir:Ljava/io/File;

    .line 55
    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    .line 71
    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    .line 72
    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I

    .line 73
    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I

    .line 391
    new-instance v0, Lcom/miui/backup/ui/BaseSelectList$4;

    invoke-direct {v0, p0}, Lcom/miui/backup/ui/BaseSelectList$4;-><init>(Lcom/miui/backup/ui/BaseSelectList;)V

    iput-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSortDescComparator:Ljava/util/Comparator;

    .line 403
    iput-boolean v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mIsBound:Z

    .line 404
    iput-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mService:Lcom/miui/backup/BackupService;

    .line 405
    new-instance v0, Lcom/miui/backup/ui/BaseSelectList$5;

    invoke-direct {v0, p0}, Lcom/miui/backup/ui/BaseSelectList$5;-><init>(Lcom/miui/backup/ui/BaseSelectList;)V

    iput-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mConnection:Landroid/content/ServiceConnection;

    .line 443
    return-void
.end method

.method static synthetic access$000(Lcom/miui/backup/ui/BaseSelectList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/backup/ui/BaseSelectList;->pendingTask()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/backup/ui/BaseSelectList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/backup/ui/BaseSelectList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/backup/ui/BaseSelectList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/backup/ui/BaseSelectList;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/miui/backup/ui/BaseSelectList;->selectAllChanged(ZI)V

    return-void
.end method

.method private checkFolder()V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/miui/backup/Customization;->MIUI_BASE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/miui/backup/Customization;->MIUI_BASE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 126
    :cond_0
    sget-object v0, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    sget-object v0, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 129
    :cond_1
    sget-object v0, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    sget-object v0, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 132
    :cond_2
    return-void
.end method

.method private clickSysDataChild(I)V
    .locals 2
    .parameter "childPosition"

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, appInfo:Lcom/miui/backup/AppInfo;
    iget-object v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v0, Lcom/miui/backup/AppInfo;

    .line 186
    .restart local v0       #appInfo:Lcom/miui/backup/AppInfo;
    iget-boolean v1, v0, Lcom/miui/backup/AppInfo;->disabled:Z

    if-eqz v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-boolean v1, v0, Lcom/miui/backup/AppInfo;->checked:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/miui/backup/AppInfo;->checked:Z

    .line 190
    iget-boolean v1, v0, Lcom/miui/backup/AppInfo;->checked:Z

    if-eqz v1, :cond_2

    .line 191
    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    .line 192
    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I

    goto :goto_0

    .line 189
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 194
    :cond_2
    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    .line 195
    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I

    goto :goto_0
.end method

.method private clickUserAppChild(I)V
    .locals 2
    .parameter "childPosition"

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, appInfo:Lcom/miui/backup/AppInfo;
    iget-object v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v0, Lcom/miui/backup/AppInfo;

    .line 202
    .restart local v0       #appInfo:Lcom/miui/backup/AppInfo;
    iget-boolean v1, v0, Lcom/miui/backup/AppInfo;->disabled:Z

    if-eqz v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-boolean v1, v0, Lcom/miui/backup/AppInfo;->checked:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/miui/backup/AppInfo;->checked:Z

    .line 206
    iget-boolean v1, v0, Lcom/miui/backup/AppInfo;->checked:Z

    if-eqz v1, :cond_2

    .line 207
    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    .line 208
    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I

    goto :goto_0

    .line 205
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 210
    :cond_2
    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    .line 211
    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I

    goto :goto_0
.end method

.method private pendingTask()V
    .locals 4

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->getSelectedApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 263
    .local v0, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/backup/AppInfo;>;"
    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mBackupRestoreDir:Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->getTaskType()I

    move-result v3

    invoke-static {p0, v0, v2, v3}, Lcom/miui/backup/BackupRestoreTaskFactory;->createTask(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;I)Lcom/miui/backup/BackupRestoreTask;

    move-result-object v1

    .line 265
    .local v1, task:Lcom/miui/backup/BackupRestoreTask;
    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v2, v1}, Lcom/miui/backup/BackupService;->pendingTask(Lcom/miui/backup/BackupRestoreTask;)V

    .line 266
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->switchToProgressPage()V

    .line 267
    return-void
.end method

.method private selectAllChanged(ZI)V
    .locals 2
    .parameter "selectAll"
    .parameter "groupPosition"

    .prologue
    const/4 v1, 0x1

    .line 277
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    if-nez v0, :cond_2

    .line 278
    if-nez p2, :cond_1

    .line 279
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/BaseSelectList;->selectAllSysData(Z)V

    .line 289
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->changeSelectState()V

    .line 290
    return-void

    .line 280
    :cond_1
    if-ne p2, v1, :cond_0

    .line 281
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/BaseSelectList;->selectAllUserApp(Z)V

    goto :goto_0

    .line 283
    :cond_2
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    if-ne v0, v1, :cond_3

    .line 284
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/BaseSelectList;->selectAllSysData(Z)V

    goto :goto_0

    .line 285
    :cond_3
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 286
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/BaseSelectList;->selectAllUserApp(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected changeSelectState()V
    .locals 2

    .prologue
    .line 350
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I

    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    .line 351
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mAppListAdapter:Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;

    invoke-virtual {v0}, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->notifyDataSetChanged()V

    .line 352
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->invalidateOptionsMenu()V

    .line 353
    return-void
.end method

.method doBindService(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 427
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/backup/BackupService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 429
    iget-object v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mIsBound:Z

    .line 430
    return-void
.end method

.method doUnbindService(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mIsBound:Z

    .line 438
    :cond_0
    return-void
.end method

.method protected getBackupRestoreDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getNextButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    const-string v0, ""

    return-object v0
.end method

.method protected getSelectedApps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected getTaskType()I
    .locals 1

    .prologue
    .line 382
    const/4 v0, -0x1

    return v0
.end method

.method protected getTitleSecondaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    const-string v0, ""

    return-object v0
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    const-string v0, ""

    return-object v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 150
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    if-nez v0, :cond_2

    .line 151
    if-nez p3, :cond_1

    .line 152
    invoke-direct {p0, p4}, Lcom/miui/backup/ui/BaseSelectList;->clickSysDataChild(I)V

    .line 162
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mAppListAdapter:Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;

    invoke-virtual {v0}, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->notifyDataSetChanged()V

    .line 163
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->invalidateOptionsMenu()V

    .line 164
    const/4 v0, 0x0

    return v0

    .line 153
    :cond_1
    if-ne p3, v1, :cond_0

    .line 154
    invoke-direct {p0, p4}, Lcom/miui/backup/ui/BaseSelectList;->clickUserAppChild(I)V

    goto :goto_0

    .line 157
    :cond_2
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    if-ne v0, v1, :cond_3

    .line 158
    invoke-direct {p0, p4}, Lcom/miui/backup/ui/BaseSelectList;->clickSysDataChild(I)V

    goto :goto_0

    .line 159
    :cond_3
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 160
    invoke-direct {p0, p4}, Lcom/miui/backup/ui/BaseSelectList;->clickUserAppChild(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v3, 0x7f030009

    invoke-virtual {p0, v3}, Lcom/miui/backup/ui/BaseSelectList;->setContentView(I)V

    .line 81
    const v3, 0x7f0a0010

    invoke-virtual {p0, v3}, Lcom/miui/backup/ui/BaseSelectList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    .line 82
    .local v1, appListView:Landroid/widget/ExpandableListView;
    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 83
    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->setContentBaseDir()V

    .line 86
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->getBackupRestoreDir()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mBackupRestoreDir:Ljava/io/File;

    .line 88
    invoke-static {p0}, Lcom/miui/backup/SDCardMonitor;->getSDCardMonitor(Landroid/content/Context;)Lcom/miui/backup/SDCardMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    .line 89
    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v3, p0}, Lcom/miui/backup/SDCardMonitor;->addSdCardStatusListener(Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 92
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->getTitleText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->getTitleSecondaryText()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, secondaryText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    iput v4, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    .line 100
    iput v4, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I

    .line 101
    iput v4, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I

    .line 103
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->prepareAppInfos()V

    .line 105
    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 106
    iput v4, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    .line 113
    :cond_1
    :goto_0
    new-instance v3, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;

    const v4, 0x7f03000a

    const v5, 0x7f030008

    invoke-direct {v3, p0, p0, v4, v5}, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;-><init>(Lcom/miui/backup/ui/BaseSelectList;Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mAppListAdapter:Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;

    .line 116
    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mAppListAdapter:Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 117
    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mAppListAdapter:Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;

    invoke-virtual {v3}, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->getGroupCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 119
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->changeSelectState()V

    .line 120
    return-void

    .line 107
    :cond_2
    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 108
    const/4 v3, 0x1

    iput v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    goto :goto_0

    .line 109
    :cond_3
    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 110
    const/4 v3, 0x2

    iput v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 219
    packed-switch p1, :pswitch_data_0

    .line 237
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 221
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070058

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07000d

    new-instance v3, Lcom/miui/backup/ui/BaseSelectList$2;

    invoke-direct {v3, p0}, Lcom/miui/backup/ui/BaseSelectList$2;-><init>(Lcom/miui/backup/ui/BaseSelectList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070005

    new-instance v3, Lcom/miui/backup/ui/BaseSelectList$1;

    invoke-direct {v3, p0}, Lcom/miui/backup/ui/BaseSelectList$1;-><init>(Lcom/miui/backup/ui/BaseSelectList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 234
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 314
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 315
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->getNextButtonText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 316
    .local v0, nextMenu:Landroid/view/MenuItem;
    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 318
    iget v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    if-lez v3, :cond_0

    move v1, v2

    :cond_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 320
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v0, p0}, Lcom/miui/backup/SDCardMonitor;->removeSdCardStatusListener(Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;)V

    .line 143
    invoke-virtual {p0, p0}, Lcom/miui/backup/ui/BaseSelectList;->doUnbindService(Landroid/content/Context;)V

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 145
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 169
    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 325
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 342
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 327
    :pswitch_0
    iget-object v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mService:Lcom/miui/backup/BackupService;

    if-nez v1, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070059

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->isTaskRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/BaseSelectList;->showDialog(I)V

    goto :goto_0

    .line 335
    :cond_1
    invoke-direct {p0}, Lcom/miui/backup/ui/BaseSelectList;->checkFolder()V

    .line 336
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->startExecution()V

    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSdcardStatusChanged(Z)V
    .locals 2
    .parameter "mount"

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/BaseSelectList;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 179
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->finish()V

    .line 181
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 137
    invoke-virtual {p0, p0}, Lcom/miui/backup/ui/BaseSelectList;->doBindService(Landroid/content/Context;)V

    .line 138
    return-void
.end method

.method protected prepareAppInfos()V
    .locals 1

    .prologue
    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    .line 389
    return-void
.end method

.method protected selectAllSysData(Z)V
    .locals 3
    .parameter "selectAll"

    .prologue
    .line 293
    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 294
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/backup/AppInfo;

    .line 296
    .local v0, app:Lcom/miui/backup/AppInfo;
    iput-boolean p1, v0, Lcom/miui/backup/AppInfo;->checked:Z

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v0           #app:Lcom/miui/backup/AppInfo;
    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I

    .line 300
    .end local v1           #i:I
    :cond_1
    return-void

    .line 298
    .restart local v1       #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected selectAllUserApp(Z)V
    .locals 3
    .parameter "selectAll"

    .prologue
    .line 303
    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 304
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/backup/AppInfo;

    .line 306
    .local v0, app:Lcom/miui/backup/AppInfo;
    iput-boolean p1, v0, Lcom/miui/backup/AppInfo;->checked:Z

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v0           #app:Lcom/miui/backup/AppInfo;
    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I

    .line 310
    .end local v1           #i:I
    :cond_1
    return-void

    .line 308
    .restart local v1       #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected setContentBaseDir()V
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    iput-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->CONTENT_BASE_DIR:Ljava/io/File;

    .line 347
    return-void
.end method

.method protected startExecution()V
    .locals 5

    .prologue
    .line 242
    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mContactInfo:Lcom/miui/backup/AppInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mContactInfo:Lcom/miui/backup/AppInfo;

    iget-boolean v2, v2, Lcom/miui/backup/AppInfo;->checked:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->getTaskType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 243
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 244
    .local v1, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f070072

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070073

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07000d

    new-instance v4, Lcom/miui/backup/ui/BaseSelectList$3;

    invoke-direct {v4, p0}, Lcom/miui/backup/ui/BaseSelectList$3;-><init>(Lcom/miui/backup/ui/BaseSelectList;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070005

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 253
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 254
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 258
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v1           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-direct {p0}, Lcom/miui/backup/ui/BaseSelectList;->pendingTask()V

    goto :goto_0
.end method

.method switchToProgressPage()V
    .locals 2

    .prologue
    .line 271
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/BaseSelectList;->startActivity(Landroid/content/Intent;)V

    .line 273
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->finish()V

    .line 274
    return-void
.end method
