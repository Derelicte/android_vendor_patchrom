.class public Lcom/miui/milk/ui/ExpandableListFragment;
.super Lcom/miui/milk/ui/CloudBaseFragment;
.source "ExpandableListFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;,
        Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;
    }
.end annotation


# instance fields
.field protected CONTENT_BASE_DIR:Ljava/io/File;

.field protected mAccountBackupItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountDataCheckCount:I

.field protected mAccountDataInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mAppListAdapter:Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;

.field protected mBackupRestoreDir:Ljava/io/File;

.field private mCheckCount:I

.field protected mContactInfo:Lcom/miui/backup/AppInfo;

.field protected mDataListView:Landroid/widget/ExpandableListView;

.field private mSelectMode:I

.field protected mSimBackupItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSimDataCheckCount:I

.field protected mSimDataInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/miui/milk/ui/CloudBaseFragment;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mBackupRestoreDir:Ljava/io/File;

    .line 36
    iput v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I

    .line 52
    iput v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mCheckCount:I

    .line 53
    iput v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataCheckCount:I

    .line 54
    iput v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataCheckCount:I

    .line 229
    new-instance v0, Lcom/miui/milk/ui/ExpandableListFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/milk/ui/ExpandableListFragment$1;-><init>(Lcom/miui/milk/ui/ExpandableListFragment;)V

    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSortDescComparator:Ljava/util/Comparator;

    .line 412
    return-void
.end method

.method static synthetic access$000(Lcom/miui/milk/ui/ExpandableListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/milk/ui/ExpandableListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataCheckCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/milk/ui/ExpandableListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataCheckCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/milk/ui/ExpandableListFragment;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/miui/milk/ui/ExpandableListFragment;->selectAllChanged(ZI)V

    return-void
.end method

.method private clickAccountDataChild(I)V
    .locals 2
    .parameter "childPosition"

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, appInfo:Lcom/miui/backup/AppInfo;
    iget-object v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v0, Lcom/miui/backup/AppInfo;

    .line 107
    .restart local v0       #appInfo:Lcom/miui/backup/AppInfo;
    iget-boolean v1, v0, Lcom/miui/backup/AppInfo;->checked:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/miui/backup/AppInfo;->checked:Z

    .line 108
    iget-boolean v1, v0, Lcom/miui/backup/AppInfo;->checked:Z

    if-eqz v1, :cond_1

    .line 109
    iget v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mCheckCount:I

    .line 110
    iget v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataCheckCount:I

    .line 115
    :goto_1
    return-void

    .line 107
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 112
    :cond_1
    iget v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mCheckCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mCheckCount:I

    .line 113
    iget v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataCheckCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataCheckCount:I

    goto :goto_1
.end method

.method private clickSimDataChild(I)V
    .locals 2
    .parameter "childPosition"

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, appInfo:Lcom/miui/backup/AppInfo;
    iget-object v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v0, Lcom/miui/backup/AppInfo;

    .line 120
    .restart local v0       #appInfo:Lcom/miui/backup/AppInfo;
    iget-boolean v1, v0, Lcom/miui/backup/AppInfo;->checked:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/miui/backup/AppInfo;->checked:Z

    .line 121
    iget-boolean v1, v0, Lcom/miui/backup/AppInfo;->checked:Z

    if-eqz v1, :cond_1

    .line 122
    iget v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mCheckCount:I

    .line 123
    iget v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataCheckCount:I

    .line 128
    :goto_1
    return-void

    .line 120
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 125
    :cond_1
    iget v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mCheckCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mCheckCount:I

    .line 126
    iget v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataCheckCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataCheckCount:I

    goto :goto_1
.end method

.method private selectAllChanged(ZI)V
    .locals 2
    .parameter "selectAll"
    .parameter "groupPosition"

    .prologue
    const/4 v1, 0x1

    .line 131
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I

    if-ne v0, v1, :cond_3

    .line 133
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/milk/ui/ExpandableListFragment;->selectAllAccountData(Z)V

    .line 138
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/miui/milk/ui/ExpandableListFragment;->changeSelectState()V

    .line 139
    return-void

    .line 134
    :cond_3
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I

    if-nez v0, :cond_4

    if-eq p2, v1, :cond_5

    :cond_4
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 136
    :cond_5
    invoke-virtual {p0, p1}, Lcom/miui/milk/ui/ExpandableListFragment;->selectAllSimData(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected changeSelectState()V
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataCheckCount:I

    iget v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataCheckCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mCheckCount:I

    .line 175
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAppListAdapter:Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;

    invoke-virtual {v0}, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->notifyDataSetChanged()V

    .line 176
    invoke-virtual {p0}, Lcom/miui/milk/ui/ExpandableListFragment;->enableBottomButton()Z

    .line 177
    return-void
.end method

.method protected enableBottomButton()Z
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mCheckCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBackupRestoreDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

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

    .line 83
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I

    if-ne v0, v1, :cond_3

    .line 85
    :cond_1
    invoke-direct {p0, p4}, Lcom/miui/milk/ui/ExpandableListFragment;->clickAccountDataChild(I)V

    .line 91
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAppListAdapter:Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;

    invoke-virtual {v0}, Lcom/miui/milk/ui/ExpandableListFragment$AppExpandableListAdapter;->notifyDataSetChanged()V

    .line 92
    invoke-virtual {p0}, Lcom/miui/milk/ui/ExpandableListFragment;->enableBottomButton()Z

    .line 93
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_3
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I

    if-nez v0, :cond_4

    if-eq p3, v1, :cond_5

    :cond_4
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 88
    :cond_5
    invoke-direct {p0, p4}, Lcom/miui/milk/ui/ExpandableListFragment;->clickSimDataChild(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/miui/milk/ui/CloudBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/miui/milk/ui/ExpandableListFragment;->setContentBaseDir()V

    .line 63
    invoke-virtual {p0}, Lcom/miui/milk/ui/ExpandableListFragment;->getBackupRestoreDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mBackupRestoreDir:Ljava/io/File;

    .line 65
    iput v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mCheckCount:I

    .line 66
    iput v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataCheckCount:I

    .line 67
    iput v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataCheckCount:I

    .line 69
    invoke-virtual {p0}, Lcom/miui/milk/ui/ExpandableListFragment;->prepareAppInfos()V

    .line 71
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 72
    iput v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I

    goto :goto_0
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 98
    iget v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSelectMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareAppInfos()V
    .locals 8

    .prologue
    const v7, 0x7f070024

    const/4 v6, 0x2

    .line 186
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataInfos:Ljava/util/ArrayList;

    .line 187
    invoke-virtual {p0}, Lcom/miui/milk/ui/ExpandableListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, accountPackageLabel:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 190
    new-instance v1, Lcom/miui/backup/AppInfo;

    invoke-direct {v1}, Lcom/miui/backup/AppInfo;-><init>()V

    .line 191
    .local v1, appInfo:Lcom/miui/backup/AppInfo;
    aget-object v4, v0, v2

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    .line 192
    iput v6, v1, Lcom/miui/backup/AppInfo;->type:I

    .line 193
    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/miui/backup/SystemData;->mPackageName:Ljava/lang/String;

    iput-object v4, v1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    .line 194
    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/miui/backup/SystemData;->mFilePath:Ljava/lang/String;

    iput-object v4, v1, Lcom/miui/backup/AppInfo;->dataDir:Ljava/lang/String;

    .line 195
    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/miui/backup/SystemData;->mFileName:Ljava/lang/String;

    iput-object v4, v1, Lcom/miui/backup/AppInfo;->packagePath:Ljava/lang/String;

    .line 196
    iget-object v4, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Lcom/miui/backup/AppInfo;->genSummary(Landroid/content/Context;)V

    .line 197
    iget-object v4, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Lcom/miui/backup/AppInfo;->genDisplay(Landroid/content/Context;)V

    .line 198
    iget-object v4, v1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    const-string v5, "SETTING"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/miui/milk/ui/ExpandableListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    .line 202
    :cond_0
    const-string v4, "ADDRESSBOOK"

    iget-object v5, v1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    iput-object v1, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mContactInfo:Lcom/miui/backup/AppInfo;

    .line 205
    :cond_1
    iget-object v4, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v1           #appInfo:Lcom/miui/backup/AppInfo;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataInfos:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {p0}, Lcom/miui/milk/ui/ExpandableListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, simDataLabel:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    :goto_1
    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 214
    new-instance v1, Lcom/miui/backup/AppInfo;

    invoke-direct {v1}, Lcom/miui/backup/AppInfo;-><init>()V

    .line 215
    .restart local v1       #appInfo:Lcom/miui/backup/AppInfo;
    aget-object v4, v3, v2

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    .line 216
    iput v6, v1, Lcom/miui/backup/AppInfo;->type:I

    .line 217
    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/miui/backup/SystemData;->mPackageName:Ljava/lang/String;

    iput-object v4, v1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    .line 218
    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/miui/backup/SystemData;->mFilePath:Ljava/lang/String;

    iput-object v4, v1, Lcom/miui/backup/AppInfo;->dataDir:Ljava/lang/String;

    .line 219
    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/miui/backup/SystemData;->mFileName:Ljava/lang/String;

    iput-object v4, v1, Lcom/miui/backup/AppInfo;->packagePath:Ljava/lang/String;

    .line 220
    iget-object v4, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Lcom/miui/backup/AppInfo;->genSummary(Landroid/content/Context;)V

    .line 221
    iget-object v4, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Lcom/miui/backup/AppInfo;->genDisplay(Landroid/content/Context;)V

    .line 222
    iget-object v4, v1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    const-string v5, "SETTING"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/miui/milk/ui/ExpandableListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    .line 225
    :cond_3
    iget-object v4, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 227
    .end local v1           #appInfo:Lcom/miui/backup/AppInfo;
    :cond_4
    return-void
.end method

.method protected selectAllAccountData(Z)V
    .locals 3
    .parameter "selectAll"

    .prologue
    .line 142
    iget-object v2, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 143
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/backup/AppInfo;

    .line 145
    .local v0, app:Lcom/miui/backup/AppInfo;
    iput-boolean p1, v0, Lcom/miui/backup/AppInfo;->checked:Z

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v0           #app:Lcom/miui/backup/AppInfo;
    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mAccountDataCheckCount:I

    .line 149
    .end local v1           #i:I
    :cond_1
    return-void

    .line 147
    .restart local v1       #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected selectAllSimData(Z)V
    .locals 3
    .parameter "selectAll"

    .prologue
    .line 152
    iget-object v2, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 153
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/backup/AppInfo;

    .line 155
    .local v0, app:Lcom/miui/backup/AppInfo;
    iput-boolean p1, v0, Lcom/miui/backup/AppInfo;->checked:Z

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v0           #app:Lcom/miui/backup/AppInfo;
    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/miui/milk/ui/ExpandableListFragment;->mSimDataCheckCount:I

    .line 159
    .end local v1           #i:I
    :cond_1
    return-void

    .line 157
    .restart local v1       #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected setContentBaseDir()V
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment;->CONTENT_BASE_DIR:Ljava/io/File;

    .line 171
    return-void
.end method
