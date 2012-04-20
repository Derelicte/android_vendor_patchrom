.class public Lcom/miui/supermarket/AppManagementFragment;
.super Landroid/app/Fragment;
.source "AppManagementFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/supermarket/AppManagementFragment$1;,
        Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;,
        Lcom/miui/supermarket/AppManagementFragment$SortByLocaleKey;,
        Lcom/miui/supermarket/AppManagementFragment$GetLocalAppInfoListTask;,
        Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;

.field private mAppUpdateNumTextView:Landroid/widget/TextView;

.field mApplicationContext:Landroid/content/Context;

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

.field private mInstalledApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/supermarket/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsDownloading:Z

.field private mListView:Landroid/widget/ListView;

.field private mMiddleDownloadingView:Landroid/view/View;

.field private mObsoleteApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOneKeyUpdateCancelBar:Landroid/view/View;

.field private mPackageMonitor:Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;

.field private mRootView:Landroid/view/View;

.field private mTotalAppNumTextView:Landroid/widget/TextView;

.field private mUpdateBarCancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mApplicationContext:Landroid/content/Context;

    .line 43
    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mRootView:Landroid/view/View;

    .line 45
    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mListView:Landroid/widget/ListView;

    .line 47
    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mOneKeyUpdateCancelBar:Landroid/view/View;

    .line 48
    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mAppUpdateNumTextView:Landroid/widget/TextView;

    .line 49
    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mTotalAppNumTextView:Landroid/widget/TextView;

    .line 51
    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mMiddleDownloadingView:Landroid/view/View;

    .line 52
    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mEmptyHintView:Landroid/widget/TextView;

    .line 54
    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mInfoList:Ljava/util/ArrayList;

    .line 55
    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mInstalledApps:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/supermarket/AppManagementFragment;->mObsoleteApps:Ljava/util/Map;

    .line 57
    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;

    .line 59
    iput-boolean v2, p0, Lcom/miui/supermarket/AppManagementFragment;->mIsDownloading:Z

    .line 60
    iput-boolean v2, p0, Lcom/miui/supermarket/AppManagementFragment;->mUpdateBarCancelled:Z

    .line 62
    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mPackageMonitor:Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;

    .line 310
    return-void
.end method

.method static synthetic access$002(Lcom/miui/supermarket/AppManagementFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/miui/supermarket/AppManagementFragment;->mIsDownloading:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/supermarket/AppManagementFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/supermarket/AppManagementFragment;->showAppUpdateBar()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/supermarket/AppManagementFragment;)Lcom/miui/supermarket/LocalAppInfoListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment;->mInstalledApps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/supermarket/AppManagementFragment;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/supermarket/AppManagementFragment;->mInstalledApps:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment;->mInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment;->mObsoleteApps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/supermarket/AppManagementFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/supermarket/AppManagementFragment;->refreshTotalAppNum()V

    return-void
.end method

.method private animationInOrOut(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "visibility"

    .prologue
    .line 174
    if-nez p2, :cond_1

    const/high16 v0, 0x10a

    .line 175
    .local v0, animId:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/supermarket/AppManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/miui/supermarket/AppManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 178
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 179
    return-void

    .line 174
    .end local v0           #animId:I
    :cond_1
    const v0, 0x10a0001

    goto :goto_0
.end method

.method private refreshTotalAppNum()V
    .locals 5

    .prologue
    .line 296
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment;->mTotalAppNumTextView:Landroid/widget/TextView;

    const v1, 0x7f060077

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/supermarket/AppManagementFragment;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/miui/supermarket/AppManagementFragment;->getStringViaAppContext(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    return-void
.end method

.method private showAppUpdateBar()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 157
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mObsoleteApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 158
    .local v0, updateNum:I
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mUpdateBarCancelled:Z

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mOneKeyUpdateCancelBar:Landroid/view/View;

    invoke-direct {p0, v1, v6}, Lcom/miui/supermarket/AppManagementFragment;->animationInOrOut(Landroid/view/View;I)V

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mOneKeyUpdateCancelBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 166
    invoke-direct {p0}, Lcom/miui/supermarket/AppManagementFragment;->refreshTotalAppNum()V

    .line 167
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mTotalAppNumTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v5}, Lcom/miui/supermarket/AppManagementFragment;->animationInOrOut(Landroid/view/View;I)V

    .line 171
    :goto_1
    return-void

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mAppUpdateNumTextView:Landroid/widget/TextView;

    const v2, 0x7f060076

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/miui/supermarket/AppManagementFragment;->getStringViaAppContext(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mOneKeyUpdateCancelBar:Landroid/view/View;

    invoke-direct {p0, v1, v5}, Lcom/miui/supermarket/AppManagementFragment;->animationInOrOut(Landroid/view/View;I)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mTotalAppNumTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v6}, Lcom/miui/supermarket/AppManagementFragment;->animationInOrOut(Landroid/view/View;I)V

    goto :goto_1
.end method


# virtual methods
.method public final varargs getStringViaAppContext(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "resId"
    .parameter "formatArgs"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public needRequestData()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    :pswitch_0
    return-void

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;

    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mObsoleteApps:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->downloadApps(Ljava/util/Map;)V

    .line 141
    iput-boolean v2, p0, Lcom/miui/supermarket/AppManagementFragment;->mUpdateBarCancelled:Z

    .line 142
    invoke-direct {p0}, Lcom/miui/supermarket/AppManagementFragment;->showAppUpdateBar()V

    goto :goto_0

    .line 147
    :pswitch_2
    iput-boolean v2, p0, Lcom/miui/supermarket/AppManagementFragment;->mUpdateBarCancelled:Z

    .line 148
    invoke-direct {p0}, Lcom/miui/supermarket/AppManagementFragment;->showAppUpdateBar()V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x7f0a003e
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/miui/supermarket/AppManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mApplicationContext:Landroid/content/Context;

    .line 69
    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mRootView:Landroid/view/View;

    .line 71
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0a003d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mOneKeyUpdateCancelBar:Landroid/view/View;

    .line 72
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mOneKeyUpdateCancelBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mOneKeyUpdateCancelBar:Landroid/view/View;

    const v2, 0x7f0a0040

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mOneKeyUpdateCancelBar:Landroid/view/View;

    const v2, 0x7f0a003e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0a003f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mAppUpdateNumTextView:Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0041

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mTotalAppNumTextView:Landroid/widget/TextView;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mInfoList:Ljava/util/ArrayList;

    .line 79
    new-instance v1, Lcom/miui/supermarket/LocalAppInfoListAdapter;

    invoke-virtual {p0}, Lcom/miui/supermarket/AppManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/supermarket/AppManagementFragment;->mInfoList:Ljava/util/ArrayList;

    const v4, 0x7f030003

    iget-object v5, p0, Lcom/miui/supermarket/AppManagementFragment;->mObsoleteApps:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/supermarket/LocalAppInfoListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/util/Map;)V

    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;

    .line 80
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mListView:Landroid/widget/ListView;

    .line 81
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/supermarket/AppManagementFragment;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0019

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, emptyView:Landroid/view/View;
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 85
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mMiddleDownloadingView:Landroid/view/View;

    .line 86
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mEmptyHintView:Landroid/widget/TextView;

    .line 88
    new-instance v1, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;

    invoke-direct {v1, p0}, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;-><init>(Lcom/miui/supermarket/AppManagementFragment;)V

    iput-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mPackageMonitor:Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;

    .line 89
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mPackageMonitor:Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;

    invoke-virtual {p0}, Lcom/miui/supermarket/AppManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 91
    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method public onDataRequest()V
    .locals 4

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/miui/supermarket/AppManagementFragment;->mIsDownloading:Z

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;

    invoke-virtual {p0}, Lcom/miui/supermarket/AppManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/supermarket/AppManagementFragment;->mMiddleDownloadingView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/supermarket/AppManagementFragment;->mEmptyHintView:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;-><init>(Lcom/miui/supermarket/AppManagementFragment;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment;->mPackageMonitor:Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;

    invoke-virtual {v0}, Lcom/miui/supermarket/AppManagementFragment$MyPackageMonitor;->unregister()V

    .line 103
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 104
    return-void
.end method

.method public onGetPathError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"
    .parameter "displayName"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->onGetPathError(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 301
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "package"

    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/supermarket/AppInfo;

    iget-object v1, v1, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 303
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, v0}, Lcom/miui/supermarket/AppManagementFragment;->startActivity(Landroid/content/Intent;)V

    .line 305
    return-void
.end method

.method public onPackageInstallError(Ljava/lang/String;I)V
    .locals 1
    .parameter "pkgName"
    .parameter "failCode"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->removeFromDownloading(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;

    invoke-virtual {v0}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->notifyDataSetChanged()V

    .line 393
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 97
    invoke-virtual {p0}, Lcom/miui/supermarket/AppManagementFragment;->requestData()V

    .line 98
    return-void
.end method

.method public refreshList()V
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/miui/supermarket/AppManagementFragment;->mIsDownloading:Z

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;

    invoke-virtual {v0}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->notifyDataSetChanged()V

    .line 132
    invoke-virtual {p0}, Lcom/miui/supermarket/AppManagementFragment;->requestData()V

    .line 134
    :cond_0
    return-void
.end method

.method public requestData()V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/miui/supermarket/AppManagementFragment;->needRequestData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/miui/supermarket/AppManagementFragment;->onDataRequest()V

    .line 112
    :cond_0
    return-void
.end method
