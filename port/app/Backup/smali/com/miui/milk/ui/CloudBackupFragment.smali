.class public Lcom/miui/milk/ui/CloudBackupFragment;
.super Lcom/miui/milk/ui/ExpandableListFragment;
.source "CloudBackupFragment.java"


# static fields
.field private static sNeedRefresh:Z


# instance fields
.field private mCloudDataLabel:[Ljava/lang/CharSequence;

.field private mInit:Z

.field private mIsOperationEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/milk/ui/ExpandableListFragment;-><init>()V

    return-void
.end method

.method private backup()V
    .locals 2

    .prologue
    .line 313
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    const v1, 0x7f07008e

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/CloudBackupFragment;->showToast(I)V

    .line 323
    :goto_0
    return-void

    .line 318
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v0, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/common/AppInfo;>;"
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 320
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 322
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupFragment;->doBackup(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private canRestore()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 326
    sget-object v5, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-nez v5, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v4

    .line 330
    :cond_1
    sget-object v5, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    invoke-virtual {v5}, Lcom/miui/milk/model/MetadataProtos$Metadata;->getContainerList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/MetadataProtos$Container;

    .line 331
    .local v0, container:Lcom/miui/milk/model/MetadataProtos$Container;
    invoke-virtual {v0}, Lcom/miui/milk/model/MetadataProtos$Container;->getResourceList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/MetadataProtos$Resource;

    .line 332
    .local v3, res:Lcom/miui/milk/model/MetadataProtos$Resource;
    invoke-virtual {v3}, Lcom/miui/milk/model/MetadataProtos$Resource;->getCounts()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 333
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private getBackupItem(Ljava/lang/String;IZJJ)Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;
    .locals 4
    .parameter "titleRes"
    .parameter "localsize"
    .parameter "unknown"
    .parameter "cloudsize"
    .parameter "backupTime"

    .prologue
    const v3, 0x7f070043

    .line 115
    new-instance v0, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;

    invoke-direct {v0, p0}, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;-><init>(Lcom/miui/milk/ui/ExpandableListFragment;)V

    .line 116
    .local v0, item:Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;
    iput-object p1, v0, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;->title:Ljava/lang/String;

    .line 118
    const-wide/16 v1, 0x0

    cmp-long v1, p6, v1

    if-lez v1, :cond_1

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070087

    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/CloudBackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p6, p7}, Lcom/miui/backup/BackupUtils;->getShowNameFromDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;->backupTime:Ljava/lang/String;

    .line 127
    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    .line 128
    invoke-virtual {p0, v3}, Lcom/miui/milk/ui/CloudBackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;->cloudCount:Ljava/lang/String;

    .line 129
    invoke-virtual {p0, v3}, Lcom/miui/milk/ui/CloudBackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;->localCount:Ljava/lang/String;

    .line 134
    :goto_1
    return-object v0

    .line 121
    :cond_1
    sget-object v1, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-nez v1, :cond_2

    .line 122
    const v1, 0x7f070088

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/CloudBackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;->backupTime:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_2
    sget-object v1, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-eqz v1, :cond_0

    .line 124
    const v1, 0x7f070089

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/CloudBackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;->backupTime:Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_3
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;->cloudCount:Ljava/lang/String;

    .line 132
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;->localCount:Ljava/lang/String;

    goto :goto_1
.end method

.method private resetBackupInfo(Z)V
    .locals 12
    .parameter "unKnown"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 100
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mAccountBackupItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mSimBackupItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    iget-object v8, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mAccountBackupItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mCloudDataLabel:[Ljava/lang/CharSequence;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    aget v2, v0, v2

    move-object v0, p0

    move v3, p1

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/ui/CloudBackupFragment;->getBackupItem(Ljava/lang/String;IZJJ)Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v8, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mAccountBackupItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mCloudDataLabel:[Ljava/lang/CharSequence;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    aget v2, v0, v11

    move-object v0, p0

    move v3, p1

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/ui/CloudBackupFragment;->getBackupItem(Ljava/lang/String;IZJJ)Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v8, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mAccountBackupItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mCloudDataLabel:[Ljava/lang/CharSequence;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    const/4 v2, 0x4

    aget v2, v0, v2

    move-object v0, p0

    move v3, p1

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/ui/CloudBackupFragment;->getBackupItem(Ljava/lang/String;IZJJ)Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v8, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mSimBackupItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mCloudDataLabel:[Ljava/lang/CharSequence;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    aget v2, v0, v9

    move-object v0, p0

    move v3, p1

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/ui/CloudBackupFragment;->getBackupItem(Ljava/lang/String;IZJJ)Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v8, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mSimBackupItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mCloudDataLabel:[Ljava/lang/CharSequence;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    aget v2, v0, v10

    move-object v0, p0

    move v3, p1

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/ui/CloudBackupFragment;->getBackupItem(Ljava/lang/String;IZJJ)Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public static setNeedRefresh(Z)V
    .locals 0
    .parameter "needRefresh"

    .prologue
    .line 111
    sput-boolean p0, Lcom/miui/milk/ui/CloudBackupFragment;->sNeedRefresh:Z

    .line 112
    return-void
.end method


# virtual methods
.method public doRestore()V
    .locals 2

    .prologue
    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v0, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/common/AppInfo;>;"
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 343
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 344
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupFragment;->doRestore(Ljava/util/ArrayList;)V

    .line 345
    return-void
.end method

.method protected enableBottomButton()Z
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Lcom/miui/milk/ui/ExpandableListFragment;->enableBottomButton()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mIsOperationEnable:Z

    .line 244
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 245
    iget-boolean v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mIsOperationEnable:Z

    return v0
.end method

.method public leave()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-static {}, Lcom/miui/milk/ui/CloudBackupInfo;->reset()V

    .line 251
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/miui/backup/BackupActivity;

    invoke-static {v2}, Lcom/miui/backup/BackupActivity$TabState;->fromInt(I)Lcom/miui/backup/BackupActivity$TabState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/backup/BackupActivity;->selectTab(Lcom/miui/backup/BackupActivity$TabState;)V

    .line 252
    iput-boolean v2, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mInit:Z

    .line 253
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 62
    invoke-super {p0, p1}, Lcom/miui/milk/ui/ExpandableListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBackupFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mLogoutLayout:Landroid/view/View;

    .line 65
    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/milk/ui/CloudBackupFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/milk/ui/CloudBackupFragment$1;-><init>(Lcom/miui/milk/ui/CloudBackupFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mAccountBackupItems:Ljava/util/ArrayList;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mSimBackupItems:Ljava/util/ArrayList;

    .line 74
    invoke-direct {p0, v5}, Lcom/miui/milk/ui/CloudBackupFragment;->resetBackupInfo(Z)V

    .line 76
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mDataListView:Landroid/widget/ExpandableListView;

    .line 77
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mDataListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 78
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mDataListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 79
    new-instance v1, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;

    iget-object v2, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f03000a

    const v4, 0x7f030002

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;-><init>(Lcom/miui/milk/ui/ExpandableListFragment;Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mAppListAdapter:Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;

    .line 81
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mDataListView:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mAppListAdapter:Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 82
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mDataListView:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 83
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mDataListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v5}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 85
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mDataListView:Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mLoginLayout:Landroid/view/View;

    .line 87
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBackupFragment;->changeSelectState()V

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/miui/milk/ui/ExpandableListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBackupFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mCloudDataLabel:[Ljava/lang/CharSequence;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mAccountBackupItems:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mSimBackupItems:Ljava/util/ArrayList;

    .line 50
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/milk/ui/CloudBackupFragment;->resetBackupInfo(Z)V

    .line 51
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x0

    .line 151
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeGroup(I)V

    .line 152
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBackupFragment;->isVisible()Z

    move-result v4

    if-nez v4, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v4, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 156
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v4, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 159
    const v4, 0x7f070085

    invoke-interface {p1, v3, v6, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 160
    .local v1, backupMenu:Landroid/view/MenuItem;
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 162
    iget-boolean v4, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mIsOperationEnable:Z

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 164
    const/4 v4, 0x6

    const v5, 0x7f070086

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 165
    .local v2, restoreMenu:Landroid/view/MenuItem;
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 167
    iget-boolean v4, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mIsOperationEnable:Z

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/miui/milk/ui/CloudBackupFragment;->canRestore()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 56
    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .parameter "hidden"

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/miui/milk/ui/ExpandableListFragment;->onHiddenChanged(Z)V

    .line 141
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 144
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mInit:Z

    if-nez v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBackupFragment;->retryComputeBackupInfo()Z

    .line 147
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f07008e

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 190
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v2

    .line 191
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 237
    :goto_0
    return v0

    .line 193
    :pswitch_0
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/miui/milk/util/AccountUtil;->addAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    :cond_0
    :goto_1
    move v0, v1

    .line 237
    goto :goto_0

    .line 197
    :pswitch_1
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    invoke-virtual {p0, v4}, Lcom/miui/milk/ui/CloudBackupFragment;->showToast(I)V

    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBackupFragment;->retryComputeBackupInfo()Z

    goto :goto_1

    .line 205
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/miui/milk/ui/AutoBackupPreference;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 210
    :pswitch_3
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    invoke-virtual {p0, v4}, Lcom/miui/milk/ui/CloudBackupFragment;->showToast(I)V

    goto :goto_1

    .line 213
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/miui/milk/ui/FindlostContactSelectActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 219
    :pswitch_4
    iget-object v0, v2, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/miui/milk/util/AccountUtil;->addAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    goto :goto_1

    .line 221
    :cond_3
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBackupFragment;->isSdcardLimit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/miui/milk/ui/CloudBackupFragment;->backup()V

    goto :goto_1

    .line 227
    :pswitch_5
    iget-object v2, v2, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 228
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/miui/milk/util/AccountUtil;->addAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    goto :goto_1

    .line 229
    :cond_4
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBackupFragment;->isSdcardLimit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mContactInfo:Lcom/miui/backup/AppInfo;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mContactInfo:Lcom/miui/backup/AppInfo;

    iget-boolean v2, v2, Lcom/miui/backup/AppInfo;->checked:Z

    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupFragment;->restore(Z)V

    goto :goto_1

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 172
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeGroup(I)V

    .line 173
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBackupFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 178
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v1, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 179
    const v1, 0x7f070037

    invoke-interface {p1, v3, v3, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 181
    :cond_1
    const/4 v1, 0x4

    const v2, 0x7f070092

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 182
    const/4 v1, 0x2

    const v2, 0x7f07003a

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 183
    const/4 v1, 0x3

    const v2, 0x7f07002e

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-super {p0}, Lcom/miui/milk/ui/ExpandableListFragment;->onResume()V

    .line 93
    sget-boolean v0, Lcom/miui/milk/ui/CloudBackupFragment;->sNeedRefresh:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/CloudBackupFragment;->retryComputeBackupInfo(Z)Z

    .line 96
    :cond_0
    sput-boolean v1, Lcom/miui/milk/ui/CloudBackupFragment;->sNeedRefresh:Z

    .line 97
    return-void
.end method

.method public refreshUI(Z)Z
    .locals 18
    .parameter "requestError"

    .prologue
    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v9

    .line 258
    .local v9, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v1, v9, Lcom/miui/milk/util/AccountUtil$AccountInfo;->nickname:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/ui/CloudBackupFragment;->mLogoutLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/ui/CloudBackupFragment;->mLoginLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 262
    new-instance v14, Lcom/miui/milk/storage/ProgressTrackerStore;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v14, v1}, Lcom/miui/milk/storage/ProgressTrackerStore;-><init>(Landroid/content/Context;)V

    .line 263
    .local v14, progressStore:Lcom/miui/milk/storage/ProgressTrackerStore;
    invoke-virtual {v14}, Lcom/miui/milk/storage/ProgressTrackerStore;->cleanup()V

    .line 264
    invoke-virtual {v14}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    .line 265
    const/4 v1, 0x0

    .line 309
    .end local v14           #progressStore:Lcom/miui/milk/storage/ProgressTrackerStore;
    :goto_0
    return v1

    .line 267
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/ui/CloudBackupFragment;->mLogoutLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/ui/CloudBackupFragment;->mLoginLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/ui/CloudBackupFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    const/4 v1, 0x0

    goto :goto_0

    .line 275
    :cond_1
    invoke-super/range {p0 .. p1}, Lcom/miui/milk/ui/ExpandableListFragment;->refreshUI(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 276
    const/4 v1, 0x0

    goto :goto_0

    .line 278
    :cond_2
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/miui/milk/ui/CloudBackupFragment;->mInit:Z

    .line 279
    const/4 v4, 0x1

    .line 280
    .local v4, unknown:Z
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/miui/milk/ui/CloudBackupFragment;->resetBackupInfo(Z)V

    .line 281
    const/4 v4, 0x0

    .line 282
    sget-object v17, Lcom/miui/milk/ui/CloudBackupInfo;->chooseNumber:Ljava/lang/String;

    .line 283
    .local v17, showNumberId:Ljava/lang/String;
    sget-object v1, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    invoke-virtual {v1}, Lcom/miui/milk/model/MetadataProtos$Metadata;->getContainerList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/milk/model/MetadataProtos$Container;

    .line 284
    .local v11, container:Lcom/miui/milk/model/MetadataProtos$Container;
    const/4 v10, 0x0

    .line 285
    .local v10, backupItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;>;"
    invoke-virtual {v11}, Lcom/miui/milk/model/MetadataProtos$Container;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/ui/CloudBackupFragment;->mAccountBackupItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 287
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/milk/ui/CloudBackupFragment;->mAccountBackupItems:Ljava/util/ArrayList;

    .line 292
    :cond_4
    :goto_1
    if-eqz v10, :cond_3

    .line 293
    invoke-virtual {v11}, Lcom/miui/milk/model/MetadataProtos$Container;->getResourceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/milk/model/MetadataProtos$Resource;

    .line 294
    .local v15, res:Lcom/miui/milk/model/MetadataProtos$Resource;
    invoke-virtual {v15}, Lcom/miui/milk/model/MetadataProtos$Resource;->getType()I

    move-result v16

    .line 295
    .local v16, resType:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/ui/CloudBackupFragment;->mCloudDataLabel:[Ljava/lang/CharSequence;

    array-length v1, v1

    move/from16 v0, v16

    if-lt v1, v0, :cond_5

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/ui/CloudBackupFragment;->mCloudDataLabel:[Ljava/lang/CharSequence;

    add-int/lit8 v2, v16, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    add-int/lit8 v3, v16, -0x1

    aget v3, v1, v3

    invoke-virtual {v15}, Lcom/miui/milk/model/MetadataProtos$Resource;->getCounts()J

    move-result-wide v5

    invoke-virtual {v15}, Lcom/miui/milk/model/MetadataProtos$Resource;->getLastDate()J

    move-result-wide v7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/miui/milk/ui/CloudBackupFragment;->getBackupItem(Ljava/lang/String;IZJJ)Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 288
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #res:Lcom/miui/milk/model/MetadataProtos$Resource;
    .end local v16           #resType:I
    :cond_6
    invoke-virtual {v11}, Lcom/miui/milk/model/MetadataProtos$Container;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    invoke-virtual {v11}, Lcom/miui/milk/model/MetadataProtos$Container;->getResourceId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/ui/CloudBackupFragment;->mSimBackupItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 290
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/milk/ui/CloudBackupFragment;->mSimBackupItems:Ljava/util/ArrayList;

    goto :goto_1

    .line 307
    .end local v10           #backupItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;>;"
    .end local v11           #container:Lcom/miui/milk/model/MetadataProtos$Container;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/ui/CloudBackupFragment;->mAppListAdapter:Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;

    invoke-virtual {v1}, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->notifyDataSetChanged()V

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 309
    const/4 v1, 0x1

    goto/16 :goto_0
.end method
