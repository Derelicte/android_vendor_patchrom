.class public Lcom/miui/supermarket/NecessaryFragment;
.super Landroid/app/Fragment;
.source "NecessaryFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/supermarket/NecessaryFragment$1;,
        Lcom/miui/supermarket/NecessaryFragment$ModeCallback;,
        Lcom/miui/supermarket/NecessaryFragment$MyPackageMonitor;,
        Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;,
        Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;,
        Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;,
        Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeSelectionMenu:Lcom/miui/supermarket/CustomMenu$DropDownMenu;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

.field private mEmptyHintView:Landroid/widget/TextView;

.field private mInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/supermarket/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsDownloading:Z

.field private mListView:Landroid/widget/ExpandableListView;

.field private mMiddleDownloadingView:Landroid/view/View;

.field private mModeCallBack:Lcom/miui/supermarket/NecessaryFragment$ModeCallback;

.field private mPackageMonitor:Lcom/miui/supermarket/NecessaryFragment$MyPackageMonitor;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/miui/supermarket/NecessaryFragment;->mActivity:Landroid/app/Activity;

    .line 40
    iput-object v1, p0, Lcom/miui/supermarket/NecessaryFragment;->mRootView:Landroid/view/View;

    .line 41
    iput-object v1, p0, Lcom/miui/supermarket/NecessaryFragment;->mListView:Landroid/widget/ExpandableListView;

    .line 43
    iput-object v1, p0, Lcom/miui/supermarket/NecessaryFragment;->mMiddleDownloadingView:Landroid/view/View;

    .line 44
    iput-object v1, p0, Lcom/miui/supermarket/NecessaryFragment;->mEmptyHintView:Landroid/widget/TextView;

    .line 46
    iput-object v1, p0, Lcom/miui/supermarket/NecessaryFragment;->mActionModeSelectionMenu:Lcom/miui/supermarket/CustomMenu$DropDownMenu;

    .line 47
    iput-object v1, p0, Lcom/miui/supermarket/NecessaryFragment;->mActionMode:Landroid/view/ActionMode;

    .line 48
    iput-object v1, p0, Lcom/miui/supermarket/NecessaryFragment;->mModeCallBack:Lcom/miui/supermarket/NecessaryFragment$ModeCallback;

    .line 50
    iput-object v1, p0, Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    .line 51
    iput-object v1, p0, Lcom/miui/supermarket/NecessaryFragment;->mInfoList:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mIsDownloading:Z

    .line 54
    iput-object v1, p0, Lcom/miui/supermarket/NecessaryFragment;->mPackageMonitor:Lcom/miui/supermarket/NecessaryFragment$MyPackageMonitor;

    .line 547
    return-void
.end method

.method static synthetic access$002(Lcom/miui/supermarket/NecessaryFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/miui/supermarket/NecessaryFragment;->mIsDownloading:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/supermarket/NecessaryFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/miui/supermarket/NecessaryFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/supermarket/NecessaryFragment;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/miui/supermarket/NecessaryFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/supermarket/NecessaryFragment;)Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/supermarket/NecessaryFragment;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/supermarket/NecessaryFragment;Landroid/widget/ListView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/miui/supermarket/NecessaryFragment;->uncheckAllListItems(Landroid/widget/ListView;)V

    return-void
.end method

.method private uncheckAllListItems(Landroid/widget/ListView;)V
    .locals 6
    .parameter "lv"

    .prologue
    const/4 v5, 0x0

    .line 631
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 632
    .local v0, checkedPositionList:Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 633
    .local v1, checkedPositionListSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 634
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 635
    .local v3, position:I
    invoke-virtual {v0, v3, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 636
    invoke-virtual {p1, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 633
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 639
    .end local v3           #position:I
    :cond_1
    return-void
.end method


# virtual methods
.method public needRequestData()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 59
    invoke-virtual {p0}, Lcom/miui/supermarket/NecessaryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mActivity:Landroid/app/Activity;

    .line 60
    const v0, 0x7f030018

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mRootView:Landroid/view/View;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mInfoList:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f030019

    const v4, 0x7f030004

    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment;->mInfoList:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;-><init>(Lcom/miui/supermarket/NecessaryFragment;Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    .line 65
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mListView:Landroid/widget/ExpandableListView;

    .line 66
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mListView:Landroid/widget/ExpandableListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setChoiceMode(I)V

    .line 67
    new-instance v0, Lcom/miui/supermarket/NecessaryFragment$ModeCallback;

    invoke-direct {v0, p0}, Lcom/miui/supermarket/NecessaryFragment$ModeCallback;-><init>(Lcom/miui/supermarket/NecessaryFragment;)V

    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mModeCallBack:Lcom/miui/supermarket/NecessaryFragment$ModeCallback;

    .line 68
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/miui/supermarket/NecessaryFragment;->mModeCallBack:Lcom/miui/supermarket/NecessaryFragment$ModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 69
    iget-object v7, p0, Lcom/miui/supermarket/NecessaryFragment;->mListView:Landroid/widget/ExpandableListView;

    .line 70
    .local v7, expdList:Landroid/widget/ExpandableListView;
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    invoke-virtual {v7, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 71
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    invoke-virtual {v7, v0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 74
    .local v6, emptyView:Landroid/view/View;
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v6}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mMiddleDownloadingView:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mEmptyHintView:Landroid/widget/TextView;

    .line 78
    new-instance v0, Lcom/miui/supermarket/NecessaryFragment$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/miui/supermarket/NecessaryFragment$MyPackageMonitor;-><init>(Lcom/miui/supermarket/NecessaryFragment;)V

    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mPackageMonitor:Lcom/miui/supermarket/NecessaryFragment$MyPackageMonitor;

    .line 79
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mPackageMonitor:Lcom/miui/supermarket/NecessaryFragment$MyPackageMonitor;

    iget-object v1, p0, Lcom/miui/supermarket/NecessaryFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v8}, Lcom/miui/supermarket/NecessaryFragment$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 81
    invoke-virtual {p0, v8}, Lcom/miui/supermarket/NecessaryFragment;->setHasOptionsMenu(Z)V

    .line 83
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDataRequest()V
    .locals 4

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mIsDownloading:Z

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;

    iget-object v1, p0, Lcom/miui/supermarket/NecessaryFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment;->mMiddleDownloadingView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/supermarket/NecessaryFragment;->mEmptyHintView:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;-><init>(Lcom/miui/supermarket/NecessaryFragment;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mPackageMonitor:Lcom/miui/supermarket/NecessaryFragment$MyPackageMonitor;

    invoke-virtual {v0}, Lcom/miui/supermarket/NecessaryFragment$MyPackageMonitor;->unregister()V

    .line 96
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 97
    return-void
.end method

.method public onGetPathError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"
    .parameter "displayName"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    #getter for: Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;
    invoke-static {v0}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->access$500(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;)Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->onGetPathError(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 132
    return-void
.end method

.method public onPackageInstallError(Ljava/lang/String;I)V
    .locals 1
    .parameter "pkgName"
    .parameter "failCode"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->removeDownloadingApp(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    invoke-virtual {v0}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->notifyDataSetChanged()V

    .line 541
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 90
    invoke-virtual {p0}, Lcom/miui/supermarket/NecessaryFragment;->requestData()V

    .line 91
    return-void
.end method

.method public refreshList()V
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mIsDownloading:Z

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    invoke-virtual {v0}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->notifyDataSetChanged()V

    .line 103
    invoke-virtual {p0}, Lcom/miui/supermarket/NecessaryFragment;->requestData()V

    .line 105
    :cond_0
    return-void
.end method

.method public requestData()V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/miui/supermarket/NecessaryFragment;->needRequestData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/miui/supermarket/NecessaryFragment;->onDataRequest()V

    .line 117
    :cond_0
    return-void
.end method

.method updateActionModeMenuTitle()V
    .locals 5

    .prologue
    .line 642
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment;->mActionMode:Landroid/view/ActionMode;

    const v1, 0x7f060089

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    invoke-virtual {v4}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->getSelectedSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/miui/supermarket/NecessaryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 645
    :cond_0
    return-void
.end method

.method updateActionModeSelectionMenu()V
    .locals 0

    .prologue
    .line 654
    return-void
.end method
