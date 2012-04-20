.class public Lcom/android/monitor/NetworkMonitor;
.super Landroid/app/Fragment;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/monitor/NetworkMonitor$TrafficComparator;,
        Lcom/android/monitor/NetworkMonitor$NameComparator;,
        Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;,
        Lcom/android/monitor/NetworkMonitor$ListEntry;
    }
.end annotation


# instance fields
.field private mAccessListener:Landroid/view/View$OnClickListener;

.field private mActivity:Landroid/app/Activity;

.field private mCurrentComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/monitor/net/UidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFirewall:Lmiui/widget/SlidingButton;

.field private mFirewallListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mInit:Z

.field private mIsUpdate:Z

.field private mMobileAccess:Landroid/widget/ImageView;

.field private final mMobileImages:[I

.field private mNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/monitor/net/UidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Lcom/android/monitor/util/Preferences;

.field private mTrafficComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/monitor/net/UidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficService:Lcom/android/monitor/net/TrafficService;

.field private mTrafficTitle:Landroid/view/View;

.field private mUidDetailProvider:Lcom/android/monitor/net/UidDetailProvider;

.field private mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

.field private mUidInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/monitor/net/UidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiAccess:Landroid/widget/ImageView;

.field private final mWifiImages:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 271
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 65
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mMobileImages:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mWifiImages:[I

    .line 68
    new-instance v0, Lcom/android/monitor/NetworkMonitor$NameComparator;

    invoke-direct {v0, p0}, Lcom/android/monitor/NetworkMonitor$NameComparator;-><init>(Lcom/android/monitor/NetworkMonitor;)V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mNameComparator:Ljava/util/Comparator;

    .line 69
    new-instance v0, Lcom/android/monitor/NetworkMonitor$TrafficComparator;

    invoke-direct {v0, p0}, Lcom/android/monitor/NetworkMonitor$TrafficComparator;-><init>(Lcom/android/monitor/NetworkMonitor;)V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficComparator:Ljava/util/Comparator;

    .line 70
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficComparator:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;

    .line 529
    new-instance v0, Lcom/android/monitor/NetworkMonitor$4;

    invoke-direct {v0, p0}, Lcom/android/monitor/NetworkMonitor$4;-><init>(Lcom/android/monitor/NetworkMonitor;)V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mFirewallListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 562
    new-instance v0, Lcom/android/monitor/NetworkMonitor$5;

    invoke-direct {v0, p0}, Lcom/android/monitor/NetworkMonitor$5;-><init>(Lcom/android/monitor/NetworkMonitor;)V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mAccessListener:Landroid/view/View$OnClickListener;

    .line 273
    return-void

    .line 65
    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
    .end array-data

    .line 66
    :array_1
    .array-data 0x4
        0x1dt 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/monitor/NetworkMonitor;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/monitor/NetworkMonitor;)Ljava/util/Comparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/monitor/NetworkMonitor;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/monitor/NetworkMonitor;)Lcom/android/monitor/util/Preferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mPreferences:Lcom/android/monitor/util/Preferences;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/monitor/NetworkMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/monitor/NetworkMonitor;->mIsUpdate:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/monitor/NetworkMonitor;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/monitor/NetworkMonitor;Landroid/content/Context;Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/monitor/NetworkMonitor;->buildUidInfoList(Landroid/content/Context;Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/monitor/NetworkMonitor;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficTitle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/monitor/NetworkMonitor;)Lcom/android/monitor/net/TrafficService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/monitor/NetworkMonitor;ZZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/monitor/NetworkMonitor;->updateAccessImageRecesoure(ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/monitor/NetworkMonitor;)Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/monitor/NetworkMonitor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/monitor/NetworkMonitor;->updateAccessImageRecesoure(Z)V

    return-void
.end method

.method private applyOrSaveRules()V
    .locals 2

    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/monitor/net/Firewall;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 489
    .local v0, enabled:Z
    new-instance v1, Lcom/android/monitor/NetworkMonitor$3;

    invoke-direct {v1, p0, v0}, Lcom/android/monitor/NetworkMonitor$3;-><init>(Lcom/android/monitor/NetworkMonitor;Z)V

    invoke-virtual {v1}, Lcom/android/monitor/NetworkMonitor$3;->start()V

    .line 500
    return-void
.end method

.method private buildUidInfoList(Landroid/content/Context;Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V
    .locals 7
    .parameter "context"
    .parameter
    .parameter "pm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/monitor/net/UidInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 410
    .local p2, uidInfos:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/monitor/net/UidInfo;>;"
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 412
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 413
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/monitor/NetworkMonitor;->mUidDetailProvider:Lcom/android/monitor/net/UidDetailProvider;

    if-nez v4, :cond_1

    .line 430
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    :goto_1
    return-void

    .line 416
    .restart local v0       #app:Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/monitor/net/UidInfo;

    .line 417
    .local v3, uidInfo:Lcom/android/monitor/net/UidInfo;
    if-nez v3, :cond_2

    const-string v4, "android.permission.INTERNET"

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 421
    :cond_2
    if-nez v3, :cond_3

    .line 422
    new-instance v3, Lcom/android/monitor/net/UidInfo;

    .end local v3           #uidInfo:Lcom/android/monitor/net/UidInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v3, v4}, Lcom/android/monitor/net/UidInfo;-><init>(I)V

    .line 423
    .restart local v3       #uidInfo:Lcom/android/monitor/net/UidInfo;
    iget-object v4, p0, Lcom/android/monitor/NetworkMonitor;->mUidDetailProvider:Lcom/android/monitor/net/UidDetailProvider;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/monitor/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/monitor/net/UidDetail;

    move-result-object v4

    iput-object v4, v3, Lcom/android/monitor/net/UidInfo;->mUidDetail:Lcom/android/monitor/net/UidDetail;

    .line 424
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 426
    :cond_3
    invoke-virtual {v3, v0}, Lcom/android/monitor/net/UidInfo;->addApplication(Landroid/content/pm/ApplicationInfo;)V

    goto :goto_0

    .line 429
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v3           #uidInfo:Lcom/android/monitor/net/UidInfo;
    :cond_4
    invoke-static {p1, p2}, Lcom/android/monitor/net/Firewall;->loadRules(Landroid/content/Context;Landroid/util/SparseArray;)V

    goto :goto_1
.end method

.method private updateAccessImageRecesoure(ZZ)I
    .locals 5
    .parameter "isMobile"
    .parameter "reverse"

    .prologue
    .line 544
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor;->mMobileAccess:Landroid/widget/ImageView;

    .line 545
    .local v1, imageView:Landroid/widget/ImageView;
    :goto_0
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor;->mMobileImages:[I

    .line 546
    .local v3, modeImages:[I
    :goto_1
    iget-object v4, p0, Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/monitor/net/Firewall;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 547
    .local v0, enable:Z
    iget-object v4, p0, Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;

    invoke-static {v4, p1}, Lcom/android/monitor/net/Firewall;->getAccessMode(Landroid/content/Context;Z)I

    move-result v2

    .line 548
    .local v2, mode:I
    if-eqz p2, :cond_1

    .line 549
    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    if-nez v2, :cond_4

    .line 550
    :cond_0
    const/4 v2, 0x2

    .line 556
    :cond_1
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 557
    aget v4, v3, v2

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 558
    iget-object v4, p0, Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v2, p1}, Lcom/android/monitor/net/Firewall;->setAccessMode(Landroid/content/Context;IZ)V

    .line 559
    return v2

    .line 544
    .end local v0           #enable:Z
    .end local v1           #imageView:Landroid/widget/ImageView;
    .end local v2           #mode:I
    .end local v3           #modeImages:[I
    :cond_2
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor;->mWifiAccess:Landroid/widget/ImageView;

    goto :goto_0

    .line 545
    .restart local v1       #imageView:Landroid/widget/ImageView;
    :cond_3
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor;->mWifiImages:[I

    goto :goto_1

    .line 552
    .restart local v0       #enable:Z
    .restart local v2       #mode:I
    .restart local v3       #modeImages:[I
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private updateAccessImageRecesoure(Z)V
    .locals 1
    .parameter "isMobile"

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/monitor/NetworkMonitor;->updateAccessImageRecesoure(ZZ)I

    .line 541
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 284
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 285
    invoke-virtual {p0, v4}, Lcom/android/monitor/NetworkMonitor;->setHasOptionsMenu(Z)V

    .line 286
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;

    .line 287
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor;->getView()Landroid/view/View;

    move-result-object v1

    .line 288
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setFormat(I)V

    .line 290
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;

    .line 291
    new-instance v2, Lcom/android/monitor/net/UidDetailProvider;

    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/monitor/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mUidDetailProvider:Lcom/android/monitor/net/UidDetailProvider;

    .line 293
    new-instance v2, Lcom/android/monitor/util/Preferences;

    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/android/monitor/util/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mPreferences:Lcom/android/monitor/util/Preferences;

    .line 295
    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficTitle:Landroid/view/View;

    .line 297
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficComparator:Ljava/util/Comparator;

    iput-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;

    .line 298
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 299
    .local v0, listView:Landroid/widget/ListView;
    new-instance v2, Lcom/android/monitor/NetworkMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/monitor/NetworkMonitor$1;-><init>(Lcom/android/monitor/NetworkMonitor;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 314
    new-instance v2, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    invoke-direct {v2, p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;-><init>(Lcom/android/monitor/NetworkMonitor;)V

    iput-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    .line 315
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 317
    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mMobileAccess:Landroid/widget/ImageView;

    .line 318
    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mWifiAccess:Landroid/widget/ImageView;

    .line 320
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mMobileAccess:Landroid/widget/ImageView;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 321
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mWifiAccess:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 323
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mMobileAccess:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor;->mAccessListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mWifiAccess:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor;->mAccessListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, -0x2

    .line 336
    const/high16 v3, 0x7f06

    invoke-virtual {p2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 337
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/monitor/net/Firewall;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 338
    .local v1, enabled:Z
    const v3, 0x7f070023

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 339
    .local v0, actionView:Landroid/view/View;
    new-instance v2, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v2, v4, v4}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 340
    .local v2, layoutParams:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v3, 0x15

    iput v3, v2, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 341
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    const v3, 0x7f07000e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/SlidingButton;

    iput-object v3, p0, Lcom/android/monitor/NetworkMonitor;->mFirewall:Lmiui/widget/SlidingButton;

    .line 343
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor;->mFirewall:Lmiui/widget/SlidingButton;

    iget-object v4, p0, Lcom/android/monitor/NetworkMonitor;->mFirewallListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 344
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor;->mFirewall:Lmiui/widget/SlidingButton;

    invoke-virtual {v3, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 345
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 278
    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mUidDetailProvider:Lcom/android/monitor/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/monitor/net/UidDetailProvider;->clearCache()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mUidDetailProvider:Lcom/android/monitor/net/UidDetailProvider;

    .line 331
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 332
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .parameter "hidden"

    .prologue
    .line 435
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 436
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 439
    :cond_0
    iget-boolean v0, p0, Lcom/android/monitor/NetworkMonitor;->mInit:Z

    if-nez v0, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor;->update()V

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/monitor/NetworkMonitor;->mInit:Z

    .line 443
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 366
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 392
    :goto_0
    return v0

    .line 368
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor;->update()V

    :goto_1
    :sswitch_1
    move v0, v1

    .line 392
    goto :goto_0

    .line 372
    :sswitch_2
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficComparator:Ljava/util/Comparator;

    if-ne v0, v2, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mNameComparator:Ljava/util/Comparator;

    invoke-virtual {v0, v2}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->sort(Ljava/util/Comparator;)V

    .line 374
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mNameComparator:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;

    goto :goto_1

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficComparator:Ljava/util/Comparator;

    invoke-virtual {v0, v2}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->sort(Ljava/util/Comparator;)V

    .line 377
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficComparator:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;

    goto :goto_1

    .line 382
    :sswitch_3
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mPreferences:Lcom/android/monitor/util/Preferences;

    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor;->mPreferences:Lcom/android/monitor/util/Preferences;

    invoke-virtual {v3}, Lcom/android/monitor/util/Preferences;->isDisplaySystemApp()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/monitor/util/Preferences;->enableDisplaySystemApp(Z)V

    .line 383
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    invoke-virtual {v0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->setData()V

    goto :goto_1

    .line 366
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x7f070023 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 405
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 406
    invoke-direct {p0}, Lcom/android/monitor/NetworkMonitor;->applyOrSaveRules()V

    .line 407
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const v2, 0x7f050006

    const v1, 0x7f050005

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 349
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeGroup(I)V

    .line 351
    const v3, 0x7f050003

    invoke-interface {p1, v5, v5, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 352
    .local v0, item:Landroid/view/MenuItem;
    const v3, 0x3020138

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 354
    const/4 v3, 0x2

    invoke-interface {p1, v5, v3, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 355
    const v3, 0x7f020003

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 356
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficComparator:Ljava/util/Comparator;

    if-ne v3, v4, :cond_0

    const v1, 0x7f050004

    :cond_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 358
    const/4 v1, 0x3

    invoke-interface {p1, v5, v1, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 359
    const v1, 0x7f020002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 360
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor;->mPreferences:Lcom/android/monitor/util/Preferences;

    invoke-virtual {v1}, Lcom/android/monitor/util/Preferences;->isDisplaySystemApp()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f050007

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 362
    return-void

    :cond_1
    move v1, v2

    .line 360
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 397
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 398
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/monitor/NetworkMonitor;->updateAccessImageRecesoure(Z)V

    .line 399
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/monitor/NetworkMonitor;->updateAccessImageRecesoure(Z)V

    .line 400
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    invoke-virtual {v0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->notifyDataSetChanged()V

    .line 401
    return-void
.end method

.method public setTrafficService(Lcom/android/monitor/net/TrafficService;)V
    .locals 0
    .parameter "trafficService"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    .line 269
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 447
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    iput-boolean v1, p0, Lcom/android/monitor/NetworkMonitor;->mInit:Z

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-boolean v0, p0, Lcom/android/monitor/NetworkMonitor;->mIsUpdate:Z

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Lcom/android/monitor/NetworkMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/monitor/NetworkMonitor$2;-><init>(Lcom/android/monitor/NetworkMonitor;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/monitor/NetworkMonitor$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
