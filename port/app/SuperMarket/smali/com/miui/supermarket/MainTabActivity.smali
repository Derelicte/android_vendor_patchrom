.class public Lcom/miui/supermarket/MainTabActivity;
.super Landroid/app/Activity;
.source "MainTabActivity.java"

# interfaces
.implements Lcom/miui/supermarket/ErrorObserver;
.implements Lcom/miui/supermarket/ErrorProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/supermarket/MainTabActivity$6;,
        Lcom/miui/supermarket/MainTabActivity$InitTask;,
        Lcom/miui/supermarket/MainTabActivity$MainPageChangeListener;,
        Lcom/miui/supermarket/MainTabActivity$MainTabListener;,
        Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;,
        Lcom/miui/supermarket/MainTabActivity$TabState;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAB:Lcom/miui/supermarket/MainTabActivity$TabState;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mAppManagementFragment:Lcom/miui/supermarket/AppManagementFragment;

.field private mCurrentTab:Lcom/miui/supermarket/MainTabActivity$TabState;

.field private mHandler:Landroid/os/Handler;

.field private mMainPageChangeListener:Lcom/miui/supermarket/MainTabActivity$MainPageChangeListener;

.field private mMainTabListener:Lcom/miui/supermarket/MainTabActivity$MainTabListener;

.field private mNecessaryFragment:Lcom/miui/supermarket/NecessaryFragment;

.field private mNoConnectionDialog:Landroid/app/AlertDialog;

.field private mNonWifiDialog:Landroid/app/AlertDialog;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mTabPager:Landroid/support/v4/view/ViewPager;

.field private mTabPagerAdapter:Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/miui/supermarket/MainTabActivity$TabState;->NECESSARY:Lcom/miui/supermarket/MainTabActivity$TabState;

    sput-object v0, Lcom/miui/supermarket/MainTabActivity;->DEFAULT_TAB:Lcom/miui/supermarket/MainTabActivity$TabState;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Lcom/miui/supermarket/MainTabActivity$MainTabListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/supermarket/MainTabActivity$MainTabListener;-><init>(Lcom/miui/supermarket/MainTabActivity;Lcom/miui/supermarket/MainTabActivity$1;)V

    iput-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mMainTabListener:Lcom/miui/supermarket/MainTabActivity$MainTabListener;

    .line 48
    new-instance v0, Lcom/miui/supermarket/MainTabActivity$MainPageChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/supermarket/MainTabActivity$MainPageChangeListener;-><init>(Lcom/miui/supermarket/MainTabActivity;Lcom/miui/supermarket/MainTabActivity$1;)V

    iput-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mMainPageChangeListener:Lcom/miui/supermarket/MainTabActivity$MainPageChangeListener;

    .line 53
    iput-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mNoConnectionDialog:Landroid/app/AlertDialog;

    .line 54
    iput-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mNonWifiDialog:Landroid/app/AlertDialog;

    .line 56
    iput-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mHandler:Landroid/os/Handler;

    .line 62
    sget-object v0, Lcom/miui/supermarket/MainTabActivity;->DEFAULT_TAB:Lcom/miui/supermarket/MainTabActivity$TabState;

    iput-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mCurrentTab:Lcom/miui/supermarket/MainTabActivity$TabState;

    .line 421
    return-void
.end method

.method static synthetic access$200(Lcom/miui/supermarket/MainTabActivity;)Lcom/miui/supermarket/NecessaryFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mNecessaryFragment:Lcom/miui/supermarket/NecessaryFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/supermarket/MainTabActivity;)Lcom/miui/supermarket/AppManagementFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mAppManagementFragment:Lcom/miui/supermarket/AppManagementFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/supermarket/MainTabActivity;I)Landroid/app/Fragment;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/miui/supermarket/MainTabActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/supermarket/MainTabActivity;Lcom/miui/supermarket/MainTabActivity$TabState;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/miui/supermarket/MainTabActivity;->selectTab(Lcom/miui/supermarket/MainTabActivity$TabState;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/supermarket/MainTabActivity;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/miui/supermarket/MainTabActivity;->behaveOnNetworkInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/supermarket/MainTabActivity;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/miui/supermarket/MainTabActivity;->handleMessageImpl(Landroid/os/Message;)V

    return-void
.end method

.method private addTab(Lcom/miui/supermarket/MainTabActivity$TabState;I)V
    .locals 2
    .parameter "tabState"
    .parameter "title"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 176
    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 177
    invoke-virtual {v0, p2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 178
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mMainTabListener:Lcom/miui/supermarket/MainTabActivity$MainTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 179
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 180
    return-void
.end method

.method private declared-synchronized behaveOnDisconnectivity()V
    .locals 3

    .prologue
    .line 448
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/supermarket/MainTabActivity;->isResumed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 467
    :goto_0
    monitor-exit p0

    return-void

    .line 452
    :cond_0
    :try_start_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060038

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060013

    new-instance v2, Lcom/miui/supermarket/MainTabActivity$2;

    invoke-direct {v2, p0}, Lcom/miui/supermarket/MainTabActivity$2;-><init>(Lcom/miui/supermarket/MainTabActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060012

    new-instance v2, Lcom/miui/supermarket/MainTabActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/supermarket/MainTabActivity$1;-><init>(Lcom/miui/supermarket/MainTabActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mNoConnectionDialog:Landroid/app/AlertDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private behaveOnNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 437
    if-nez p1, :cond_1

    .line 438
    invoke-direct {p0}, Lcom/miui/supermarket/MainTabActivity;->behaveOnDisconnectivity()V

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/miui/supermarket/MainTabActivity;->behaveOnNonWifi()V

    goto :goto_0
.end method

.method private declared-synchronized behaveOnNonWifi()V
    .locals 3

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/supermarket/MainTabActivity;->isResumed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 497
    :goto_0
    monitor-exit p0

    return-void

    .line 474
    :cond_0
    :try_start_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060082

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060011

    new-instance v2, Lcom/miui/supermarket/MainTabActivity$4;

    invoke-direct {v2, p0}, Lcom/miui/supermarket/MainTabActivity$4;-><init>(Lcom/miui/supermarket/MainTabActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060012

    new-instance v2, Lcom/miui/supermarket/MainTabActivity$3;

    invoke-direct {v2, p0}, Lcom/miui/supermarket/MainTabActivity$3;-><init>(Lcom/miui/supermarket/MainTabActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mNonWifiDialog:Landroid/app/AlertDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createActionBar()V
    .locals 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/miui/supermarket/MainTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mActionBar:Landroid/app/ActionBar;

    .line 162
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 163
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 166
    sget-object v0, Lcom/miui/supermarket/MainTabActivity$TabState;->NECESSARY:Lcom/miui/supermarket/MainTabActivity$TabState;

    const v1, 0x7f060006

    invoke-direct {p0, v0, v1}, Lcom/miui/supermarket/MainTabActivity;->addTab(Lcom/miui/supermarket/MainTabActivity$TabState;I)V

    .line 167
    sget-object v0, Lcom/miui/supermarket/MainTabActivity$TabState;->APP_MANAGEMENT:Lcom/miui/supermarket/MainTabActivity$TabState;

    const v1, 0x7f060007

    invoke-direct {p0, v0, v1}, Lcom/miui/supermarket/MainTabActivity;->addTab(Lcom/miui/supermarket/MainTabActivity$TabState;I)V

    .line 169
    invoke-direct {p0}, Lcom/miui/supermarket/MainTabActivity;->loadLastTabPreference()Lcom/miui/supermarket/MainTabActivity$TabState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mCurrentTab:Lcom/miui/supermarket/MainTabActivity$TabState;

    .line 170
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mCurrentTab:Lcom/miui/supermarket/MainTabActivity$TabState;

    invoke-virtual {v1}, Lcom/miui/supermarket/MainTabActivity$TabState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 171
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mCurrentTab:Lcom/miui/supermarket/MainTabActivity$TabState;

    invoke-virtual {v1}, Lcom/miui/supermarket/MainTabActivity$TabState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 172
    return-void
.end method

.method private createFragments()V
    .locals 5

    .prologue
    const v4, 0x7f0a002f

    .line 183
    invoke-virtual {p0}, Lcom/miui/supermarket/MainTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 185
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 187
    .local v1, transaction:Landroid/app/FragmentTransaction;
    invoke-virtual {p0, v4}, Lcom/miui/supermarket/MainTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/miui/supermarket/MainTabActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    .line 188
    new-instance v2, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;

    invoke-direct {v2, p0}, Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;-><init>(Lcom/miui/supermarket/MainTabActivity;)V

    iput-object v2, p0, Lcom/miui/supermarket/MainTabActivity;->mTabPagerAdapter:Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;

    .line 189
    iget-object v2, p0, Lcom/miui/supermarket/MainTabActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/miui/supermarket/MainTabActivity;->mTabPagerAdapter:Lcom/miui/supermarket/MainTabActivity$TabPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 190
    iget-object v2, p0, Lcom/miui/supermarket/MainTabActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/miui/supermarket/MainTabActivity;->mMainPageChangeListener:Lcom/miui/supermarket/MainTabActivity$MainPageChangeListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 198
    const-string v2, "NecessaryFragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/miui/supermarket/NecessaryFragment;

    iput-object v2, p0, Lcom/miui/supermarket/MainTabActivity;->mNecessaryFragment:Lcom/miui/supermarket/NecessaryFragment;

    .line 200
    const-string v2, "AppManagementFragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/miui/supermarket/AppManagementFragment;

    iput-object v2, p0, Lcom/miui/supermarket/MainTabActivity;->mAppManagementFragment:Lcom/miui/supermarket/AppManagementFragment;

    .line 203
    iget-object v2, p0, Lcom/miui/supermarket/MainTabActivity;->mNecessaryFragment:Lcom/miui/supermarket/NecessaryFragment;

    if-nez v2, :cond_0

    .line 204
    new-instance v2, Lcom/miui/supermarket/NecessaryFragment;

    invoke-direct {v2}, Lcom/miui/supermarket/NecessaryFragment;-><init>()V

    iput-object v2, p0, Lcom/miui/supermarket/MainTabActivity;->mNecessaryFragment:Lcom/miui/supermarket/NecessaryFragment;

    .line 205
    iget-object v2, p0, Lcom/miui/supermarket/MainTabActivity;->mNecessaryFragment:Lcom/miui/supermarket/NecessaryFragment;

    const-string v3, "NecessaryFragment"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/miui/supermarket/MainTabActivity;->mAppManagementFragment:Lcom/miui/supermarket/AppManagementFragment;

    if-nez v2, :cond_1

    .line 209
    new-instance v2, Lcom/miui/supermarket/AppManagementFragment;

    invoke-direct {v2}, Lcom/miui/supermarket/AppManagementFragment;-><init>()V

    iput-object v2, p0, Lcom/miui/supermarket/MainTabActivity;->mAppManagementFragment:Lcom/miui/supermarket/AppManagementFragment;

    .line 210
    iget-object v2, p0, Lcom/miui/supermarket/MainTabActivity;->mAppManagementFragment:Lcom/miui/supermarket/AppManagementFragment;

    const-string v3, "AppManagementFragment"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/miui/supermarket/MainTabActivity;->mNecessaryFragment:Lcom/miui/supermarket/NecessaryFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 215
    iget-object v2, p0, Lcom/miui/supermarket/MainTabActivity;->mAppManagementFragment:Lcom/miui/supermarket/AppManagementFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 217
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 218
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 219
    return-void
.end method

.method private getFragment(I)Landroid/app/Fragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 329
    sget-object v0, Lcom/miui/supermarket/MainTabActivity$TabState;->NECESSARY:Lcom/miui/supermarket/MainTabActivity$TabState;

    invoke-virtual {v0}, Lcom/miui/supermarket/MainTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mNecessaryFragment:Lcom/miui/supermarket/NecessaryFragment;

    .line 332
    :goto_0
    return-object v0

    .line 331
    :cond_0
    sget-object v0, Lcom/miui/supermarket/MainTabActivity$TabState;->APP_MANAGEMENT:Lcom/miui/supermarket/MainTabActivity$TabState;

    invoke-virtual {v0}, Lcom/miui/supermarket/MainTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mAppManagementFragment:Lcom/miui/supermarket/AppManagementFragment;

    goto :goto_0

    .line 335
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleMessageImpl(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 508
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 519
    :goto_0
    return-void

    .line 510
    :pswitch_0
    invoke-static {p0, p1, p0}, Lcom/miui/supermarket/util/ErrorUtil;->processGettingPathError(Landroid/content/Context;Landroid/os/Message;Lcom/miui/supermarket/ErrorProcessor;)V

    goto :goto_0

    .line 513
    :pswitch_1
    invoke-static {p0, p1, p0}, Lcom/miui/supermarket/util/ErrorUtil;->processPackageInstallError(Landroid/content/Context;Landroid/os/Message;Lcom/miui/supermarket/ErrorProcessor;)V

    goto :goto_0

    .line 508
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 500
    new-instance v0, Lcom/miui/supermarket/MainTabActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/supermarket/MainTabActivity$5;-><init>(Lcom/miui/supermarket/MainTabActivity;)V

    iput-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mHandler:Landroid/os/Handler;

    .line 505
    return-void
.end method

.method private loadLastTabPreference()Lcom/miui/supermarket/MainTabActivity$TabState;
    .locals 4

    .prologue
    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "supermarket.lastTab"

    sget-object v3, Lcom/miui/supermarket/MainTabActivity;->DEFAULT_TAB:Lcom/miui/supermarket/MainTabActivity$TabState;

    invoke-virtual {v3}, Lcom/miui/supermarket/MainTabActivity$TabState;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/miui/supermarket/MainTabActivity$TabState;->fromInt(I)Lcom/miui/supermarket/MainTabActivity$TabState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 417
    :goto_0
    return-object v1

    .line 415
    :catch_0
    move-exception v0

    .line 417
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/miui/supermarket/MainTabActivity;->DEFAULT_TAB:Lcom/miui/supermarket/MainTabActivity$TabState;

    goto :goto_0
.end method

.method private makeMenuItemVisible(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "itemId"
    .parameter "visible"

    .prologue
    .line 378
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 379
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 380
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 382
    :cond_0
    return-void
.end method

.method private saveLastTabPreference(Lcom/miui/supermarket/MainTabActivity$TabState;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "supermarket.lastTab"

    invoke-virtual {p1}, Lcom/miui/supermarket/MainTabActivity$TabState;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 410
    return-void
.end method

.method private selectTab(Lcom/miui/supermarket/MainTabActivity$TabState;Z)V
    .locals 4
    .parameter "tab"
    .parameter "updateFragment"

    .prologue
    .line 339
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mCurrentTab:Lcom/miui/supermarket/MainTabActivity$TabState;

    if-ne p1, v1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iput-object p1, p0, Lcom/miui/supermarket/MainTabActivity;->mCurrentTab:Lcom/miui/supermarket/MainTabActivity$TabState;

    .line 345
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mCurrentTab:Lcom/miui/supermarket/MainTabActivity$TabState;

    invoke-virtual {v1}, Lcom/miui/supermarket/MainTabActivity$TabState;->ordinal()I

    move-result v0

    .line 346
    .local v0, index:I
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 348
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 351
    :cond_2
    if-eqz p2, :cond_3

    .line 352
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Lcom/miui/supermarket/MainTabActivity$TabState;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 354
    :cond_3
    invoke-virtual {p0}, Lcom/miui/supermarket/MainTabActivity;->invalidateOptionsMenu()V

    .line 355
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mCurrentTab:Lcom/miui/supermarket/MainTabActivity$TabState;

    invoke-direct {p0, v1}, Lcom/miui/supermarket/MainTabActivity;->saveLastTabPreference(Lcom/miui/supermarket/MainTabActivity$TabState;)V

    goto :goto_0
.end method


# virtual methods
.method public obtainErrorMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "msgId"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Lcom/miui/supermarket/util/ErrorUtil;->obtainMessage(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/miui/supermarket/MainTabActivity;->setContentView(I)V

    .line 84
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 86
    invoke-direct {p0}, Lcom/miui/supermarket/MainTabActivity;->initHandler()V

    .line 88
    invoke-direct {p0}, Lcom/miui/supermarket/MainTabActivity;->createFragments()V

    .line 89
    invoke-direct {p0}, Lcom/miui/supermarket/MainTabActivity;->createActionBar()V

    .line 91
    invoke-static {p0}, Lcom/miui/supermarket/util/ErrorUtil;->registerErrorObserver(Lcom/miui/supermarket/ErrorObserver;)V

    .line 92
    new-instance v0, Lcom/miui/supermarket/MainTabActivity$InitTask;

    invoke-direct {v0, p0}, Lcom/miui/supermarket/MainTabActivity$InitTask;-><init>(Lcom/miui/supermarket/MainTabActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/supermarket/MainTabActivity$InitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/miui/supermarket/MainTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 153
    invoke-static {}, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoCache;->clear()V

    .line 154
    invoke-static {}, Lcom/miui/supermarket/util/SuperMarketUtil$UserInfoCache;->clear()V

    .line 156
    invoke-static {p0}, Lcom/miui/supermarket/util/ErrorUtil;->unregisterErrorObserver(Lcom/miui/supermarket/ErrorObserver;)V

    .line 157
    return-void
.end method

.method public onGetPathError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"
    .parameter "displayName"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mNecessaryFragment:Lcom/miui/supermarket/NecessaryFragment;

    invoke-virtual {v0, p1, p2}, Lcom/miui/supermarket/NecessaryFragment;->onGetPathError(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mAppManagementFragment:Lcom/miui/supermarket/AppManagementFragment;

    invoke-virtual {v0, p1, p2}, Lcom/miui/supermarket/AppManagementFragment;->onGetPathError(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/MainTabActivity;->setIntent(Landroid/content/Intent;)V

    .line 137
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 386
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 404
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 388
    :sswitch_0
    sget-object v1, Lcom/miui/supermarket/MainTabActivity$6;->$SwitchMap$com$miui$supermarket$MainTabActivity$TabState:[I

    iget-object v2, p0, Lcom/miui/supermarket/MainTabActivity;->mCurrentTab:Lcom/miui/supermarket/MainTabActivity$TabState;

    invoke-virtual {v2}, Lcom/miui/supermarket/MainTabActivity$TabState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 390
    :pswitch_0
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mNecessaryFragment:Lcom/miui/supermarket/NecessaryFragment;

    invoke-virtual {v1}, Lcom/miui/supermarket/NecessaryFragment;->refreshList()V

    goto :goto_0

    .line 393
    :pswitch_1
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mAppManagementFragment:Lcom/miui/supermarket/AppManagementFragment;

    invoke-virtual {v1}, Lcom/miui/supermarket/AppManagementFragment;->refreshList()V

    goto :goto_0

    .line 399
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/supermarket/EliteAppsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 400
    invoke-virtual {p0, v1}, Lcom/miui/supermarket/MainTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 386
    :sswitch_data_0
    .sparse-switch
        0x7f0a004c -> :sswitch_0
        0x7f0a0050 -> :sswitch_1
    .end sparse-switch

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPackageInstallError(Ljava/lang/String;I)V
    .locals 1
    .parameter "pkgName"
    .parameter "failCode"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mNecessaryFragment:Lcom/miui/supermarket/NecessaryFragment;

    invoke-virtual {v0, p1, p2}, Lcom/miui/supermarket/NecessaryFragment;->onPackageInstallError(Ljava/lang/String;I)V

    .line 540
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mAppManagementFragment:Lcom/miui/supermarket/AppManagementFragment;

    invoke-virtual {v0, p1, p2}, Lcom/miui/supermarket/AppManagementFragment;->onPackageInstallError(Ljava/lang/String;I)V

    .line 541
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 142
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mNoConnectionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mNoConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mNonWifiDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mNonWifiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 148
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const v3, 0x7f0a0050

    const/4 v2, 0x1

    .line 366
    sget-object v0, Lcom/miui/supermarket/MainTabActivity$6;->$SwitchMap$com$miui$supermarket$MainTabActivity$TabState:[I

    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity;->mCurrentTab:Lcom/miui/supermarket/MainTabActivity$TabState;

    invoke-virtual {v1}, Lcom/miui/supermarket/MainTabActivity$TabState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 374
    :goto_0
    return v2

    .line 368
    :pswitch_0
    invoke-direct {p0, p1, v3, v2}, Lcom/miui/supermarket/MainTabActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    goto :goto_0

    .line 371
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v3, v0}, Lcom/miui/supermarket/MainTabActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    invoke-virtual {p0}, Lcom/miui/supermarket/MainTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 101
    .local v7, intent:Landroid/content/Intent;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 103
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/miui/supermarket/MainTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "entity"

    aput-object v4, v2, v11

    const-string v4, "_data"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 110
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 111
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 113
    .local v9, packageName:Ljava/lang/String;
    invoke-static {p0, v9}, Lcom/miui/supermarket/util/SuperMarketUtil;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 115
    .local v8, launch:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/miui/supermarket/MainTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 116
    .local v10, pm:Landroid/content/pm/PackageManager;
    if-nez v8, :cond_0

    invoke-static {p0, v9, v11}, Lcom/miui/supermarket/util/SuperMarketUtil;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 117
    new-instance v8, Landroid/content/Intent;

    .end local v8           #launch:Landroid/content/Intent;
    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .restart local v8       #launch:Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    :cond_0
    if-eqz v8, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/miui/supermarket/MainTabActivity;->finish()V

    .line 123
    const/high16 v0, 0x1

    invoke-static {v10, v8, v0}, Lcom/miui/supermarket/util/SuperMarketUtil;->hasIntentActivities(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0, v8}, Lcom/miui/supermarket/MainTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    .end local v8           #launch:Landroid/content/Intent;
    .end local v9           #packageName:Ljava/lang/String;
    .end local v10           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 131
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method public sendErrorMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/miui/supermarket/MainTabActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Lcom/miui/supermarket/util/ErrorUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 529
    return-void
.end method
