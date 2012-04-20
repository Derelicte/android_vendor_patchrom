.class public Lcom/miui/antispam/firewall/FirewallTab;
.super Landroid/app/Activity;
.source "FirewallTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mBlackWhiteFragment:Lcom/miui/antispam/firewall/BlackWhiteList;

.field private mCallLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

.field private mCurrentTab:I

.field private mMmsLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

.field private mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mSettingsFragment:Lcom/miui/antispam/firewall/FirewallSettings;

.field private mTabListener:Landroid/app/ActionBar$TabListener;

.field private mTabPager:Landroid/support/v4/view/ViewPager;

.field private mTabPagerAdapter:Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Lcom/miui/antispam/firewall/FirewallTab$1;

    invoke-direct {v0, p0}, Lcom/miui/antispam/firewall/FirewallTab$1;-><init>(Lcom/miui/antispam/firewall/FirewallTab;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 53
    new-instance v0, Lcom/miui/antispam/firewall/FirewallTab$2;

    invoke-direct {v0, p0}, Lcom/miui/antispam/firewall/FirewallTab$2;-><init>(Lcom/miui/antispam/firewall/FirewallTab;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mCurrentTab:I

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/miui/antispam/firewall/FirewallTab;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/firewall/FirewallTab;->selectTab(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/antispam/firewall/FirewallTab;)Lcom/miui/antispam/firewall/FirewallLogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mCallLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/antispam/firewall/FirewallTab;)Lcom/miui/antispam/firewall/FirewallLogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mMmsLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/antispam/firewall/FirewallTab;)Lcom/miui/antispam/firewall/BlackWhiteList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mBlackWhiteFragment:Lcom/miui/antispam/firewall/BlackWhiteList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/antispam/firewall/FirewallTab;)Lcom/miui/antispam/firewall/FirewallSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mSettingsFragment:Lcom/miui/antispam/firewall/FirewallSettings;

    return-object v0
.end method

.method private addTab(II)V
    .locals 2
    .parameter "tabState"
    .parameter "title"

    .prologue
    .line 137
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallTab;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 138
    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 139
    invoke-virtual {v0, p2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 140
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 141
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallTab;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 142
    return-void
.end method

.method private appendToCallLog(I)V
    .locals 3
    .parameter "num"

    .prologue
    const v2, 0x7f060003

    const/4 v1, 0x0

    .line 325
    if-lez p1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/FirewallTab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 332
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/FirewallTab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    goto :goto_0
.end method

.method private appendToMmsLog(I)V
    .locals 3
    .parameter "num"

    .prologue
    const v2, 0x7f060004

    const/4 v1, 0x1

    .line 335
    if-lez p1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/FirewallTab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 342
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/FirewallTab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    goto :goto_0
.end method

.method private createActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mActionBar:Landroid/app/ActionBar;

    .line 126
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 127
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 130
    const v0, 0x7f060003

    invoke-direct {p0, v2, v0}, Lcom/miui/antispam/firewall/FirewallTab;->addTab(II)V

    .line 131
    const/4 v0, 0x1

    const v1, 0x7f060004

    invoke-direct {p0, v0, v1}, Lcom/miui/antispam/firewall/FirewallTab;->addTab(II)V

    .line 132
    const v0, 0x7f060002

    invoke-direct {p0, v3, v0}, Lcom/miui/antispam/firewall/FirewallTab;->addTab(II)V

    .line 133
    const/4 v0, 0x3

    const v1, 0x7f060001

    invoke-direct {p0, v0, v1}, Lcom/miui/antispam/firewall/FirewallTab;->addTab(II)V

    .line 134
    return-void
.end method

.method private createFragments()V
    .locals 9

    .prologue
    const v8, 0x7f080016

    .line 177
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 180
    .local v4, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 182
    .local v5, transaction:Landroid/app/FragmentTransaction;
    invoke-virtual {p0, v8}, Lcom/miui/antispam/firewall/FirewallTab;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabPager:Landroid/support/v4/view/ViewPager;

    .line 183
    new-instance v6, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;

    invoke-direct {v6, p0}, Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;-><init>(Lcom/miui/antispam/firewall/FirewallTab;)V

    iput-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabPagerAdapter:Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;

    .line 184
    iget-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabPagerAdapter:Lcom/miui/antispam/firewall/FirewallTab$TabPagerAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 185
    iget-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallTab;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 187
    const-string v1, "tab-pager-calllog"

    .line 188
    .local v1, CALL_LOG_TAG:Ljava/lang/String;
    const-string v2, "tab-pager-mmslog"

    .line 189
    .local v2, MMS_LOG_TAG:Ljava/lang/String;
    const-string v0, "tab-pager-blackwhite"

    .line 190
    .local v0, BLACK_WHITE_TAG:Ljava/lang/String;
    const-string v3, "tab-pager-settings"

    .line 198
    .local v3, SETTINGS_TAG:Ljava/lang/String;
    const-string v6, "tab-pager-calllog"

    invoke-virtual {v4, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/miui/antispam/firewall/FirewallLogFragment;

    iput-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mCallLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    .line 200
    const-string v6, "tab-pager-mmslog"

    invoke-virtual {v4, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/miui/antispam/firewall/FirewallLogFragment;

    iput-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mMmsLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    .line 202
    const-string v6, "tab-pager-blackwhite"

    invoke-virtual {v4, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/miui/antispam/firewall/BlackWhiteList;

    iput-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mBlackWhiteFragment:Lcom/miui/antispam/firewall/BlackWhiteList;

    .line 204
    const-string v6, "tab-pager-settings"

    invoke-virtual {v4, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/miui/antispam/firewall/FirewallSettings;

    iput-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mSettingsFragment:Lcom/miui/antispam/firewall/FirewallSettings;

    .line 207
    iget-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mCallLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    if-nez v6, :cond_0

    .line 208
    new-instance v6, Lcom/miui/antispam/firewall/FirewallLogFragment;

    const/16 v7, 0x65

    invoke-direct {v6, v7}, Lcom/miui/antispam/firewall/FirewallLogFragment;-><init>(I)V

    iput-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mCallLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    .line 209
    new-instance v6, Lcom/miui/antispam/firewall/FirewallLogFragment;

    const/16 v7, 0x66

    invoke-direct {v6, v7}, Lcom/miui/antispam/firewall/FirewallLogFragment;-><init>(I)V

    iput-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mMmsLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    .line 210
    new-instance v6, Lcom/miui/antispam/firewall/BlackWhiteList;

    invoke-direct {v6}, Lcom/miui/antispam/firewall/BlackWhiteList;-><init>()V

    iput-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mBlackWhiteFragment:Lcom/miui/antispam/firewall/BlackWhiteList;

    .line 211
    new-instance v6, Lcom/miui/antispam/firewall/FirewallSettings;

    invoke-direct {v6}, Lcom/miui/antispam/firewall/FirewallSettings;-><init>()V

    iput-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mSettingsFragment:Lcom/miui/antispam/firewall/FirewallSettings;

    .line 213
    iget-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mCallLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    const-string v7, "tab-pager-calllog"

    invoke-virtual {v5, v8, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 214
    iget-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mMmsLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    const-string v7, "tab-pager-mmslog"

    invoke-virtual {v5, v8, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 215
    iget-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mBlackWhiteFragment:Lcom/miui/antispam/firewall/BlackWhiteList;

    const-string v7, "tab-pager-blackwhite"

    invoke-virtual {v5, v8, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 216
    iget-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mSettingsFragment:Lcom/miui/antispam/firewall/FirewallSettings;

    const-string v7, "tab-pager-settings"

    invoke-virtual {v5, v8, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 220
    :cond_0
    iget-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mCallLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    invoke-virtual {v5, v6}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 221
    iget-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mMmsLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    invoke-virtual {v5, v6}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 222
    iget-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mBlackWhiteFragment:Lcom/miui/antispam/firewall/BlackWhiteList;

    invoke-virtual {v5, v6}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 223
    iget-object v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mSettingsFragment:Lcom/miui/antispam/firewall/FirewallSettings;

    invoke-virtual {v5, v6}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 225
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 226
    invoke-virtual {v4}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 228
    iget v6, p0, Lcom/miui/antispam/firewall/FirewallTab;->mCurrentTab:I

    invoke-direct {p0, v6}, Lcom/miui/antispam/firewall/FirewallTab;->updateFragementMenuVisibility(I)V

    .line 229
    return-void
.end method

.method public static getNewBlockedMmsCount(Landroid/content/Context;)I
    .locals 11
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 366
    const/4 v7, 0x0

    .line 367
    .local v7, mmsCount:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v8

    const-string v3, "(type=? OR type=?) AND read=?"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "0"

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 377
    .local v6, cursor2:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 379
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 383
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_1
    return v7

    .line 383
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getNewBlockedPhoneCount(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 345
    const/4 v7, 0x0

    .line 346
    .local v7, phoneCount:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 347
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v8

    const-string v3, "type=? AND read=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "0"

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 352
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 354
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 358
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_1
    return v7

    .line 358
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static gotoTab(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 454
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 455
    const-class v1, Lcom/miui/antispam/firewall/FirewallTab;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 456
    const-string v1, "tab_target"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 458
    return-void
.end method

.method private selectTab(IZ)V
    .locals 2
    .parameter "tab"
    .parameter "updateFragment"

    .prologue
    .line 145
    iget v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mCurrentTab:I

    if-ne p1, v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 152
    :cond_1
    if-eqz p2, :cond_2

    .line 153
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 155
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/FirewallTab;->updateFragementMenuVisibility(I)V

    .line 156
    iput p1, p0, Lcom/miui/antispam/firewall/FirewallTab;->mCurrentTab:I

    goto :goto_0
.end method

.method private updateFragementMenuVisibility(I)V
    .locals 3
    .parameter "tab"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 160
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mCallLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    invoke-virtual {v0, v2}, Lcom/miui/antispam/firewall/FirewallLogFragment;->setMenuVisibility(Z)V

    .line 161
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mMmsLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    invoke-virtual {v0, v2}, Lcom/miui/antispam/firewall/FirewallLogFragment;->setMenuVisibility(Z)V

    .line 162
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mBlackWhiteFragment:Lcom/miui/antispam/firewall/BlackWhiteList;

    invoke-virtual {v0, v2}, Lcom/miui/antispam/firewall/BlackWhiteList;->setMenuVisibility(Z)V

    .line 163
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mSettingsFragment:Lcom/miui/antispam/firewall/FirewallSettings;

    invoke-virtual {v0, v2}, Lcom/miui/antispam/firewall/FirewallSettings;->setMenuVisibility(Z)V

    .line 165
    if-nez p1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mCallLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->setMenuVisibility(Z)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    if-ne p1, v1, :cond_2

    .line 168
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mMmsLogFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->setMenuVisibility(Z)V

    goto :goto_0

    .line 169
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mBlackWhiteFragment:Lcom/miui/antispam/firewall/BlackWhiteList;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/BlackWhiteList;->setMenuVisibility(Z)V

    goto :goto_0

    .line 171
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mSettingsFragment:Lcom/miui/antispam/firewall/FirewallSettings;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/FirewallSettings;->setMenuVisibility(Z)V

    goto :goto_0
.end method

.method public static updateNotification(Landroid/content/Context;)V
    .locals 14
    .parameter

    .prologue
    const v6, 0x7f06005a

    const/16 v13, 0x31e

    .line 418
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->updateOnNotification(Landroid/content/Context;)V

    .line 420
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/NotificationManager;

    .line 423
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getShowBlockedNotification(Landroid/content/Context;)Z

    move-result v0

    .line 425
    if-nez v0, :cond_0

    .line 426
    invoke-virtual {v9, v13}, Landroid/app/NotificationManager;->cancel(I)V

    .line 451
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getNewBlockedPhoneCount(Landroid/content/Context;)I

    move-result v1

    .line 431
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getNewBlockedMmsCount(Landroid/content/Context;)I

    move-result v7

    .line 433
    if-nez v1, :cond_1

    if-nez v7, :cond_1

    .line 434
    invoke-virtual {v9, v13}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 438
    :cond_1
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/miui/antispam/firewall/FirewallTab;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 439
    new-instance v0, Landroid/app/Notification;

    const v2, 0x7f02000b

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v10, 0x7f06005b

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v12

    const/4 v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v1

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 448
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 450
    invoke-virtual {v9, v13, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public static updateOnNotification(Landroid/content/Context;)V
    .locals 11
    .parameter

    .prologue
    const v6, 0x7f060059

    const/16 v10, 0x31f

    .line 391
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/NotificationManager;

    .line 394
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getFirewallEnalbed(Landroid/content/Context;)Z

    move-result v0

    .line 395
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getShowFirewallNotification(Landroid/content/Context;)Z

    move-result v1

    .line 397
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 398
    :cond_0
    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 415
    :goto_0
    return-void

    .line 402
    :cond_1
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/miui/antispam/firewall/FirewallTab;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    new-instance v0, Landroid/app/Notification;

    const v2, 0x7f02000a

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/miui/antispam/firewall/PatternSettings;->getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/miui/antispam/firewall/TimeSettings;->getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 412
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 414
    invoke-virtual {v9, v10, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v3, 0x7f030013

    invoke-virtual {p0, v3}, Lcom/miui/antispam/firewall/FirewallTab;->setContentView(I)V

    .line 89
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallTab;->createActionBar()V

    .line 90
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallTab;->createFragments()V

    .line 91
    const/4 v2, 0x0

    .line 92
    .local v2, tab:I
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tab_target"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tab_target"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 109
    :cond_0
    :goto_0
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/miui/antispam/firewall/FirewallTab;->selectTab(IZ)V

    .line 110
    return-void

    .line 95
    :cond_1
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getNewBlockedPhoneCount(Landroid/content/Context;)I

    move-result v0

    .line 96
    .local v0, callCount:I
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getNewBlockedMmsCount(Landroid/content/Context;)I

    move-result v1

    .line 98
    .local v1, mmsCount:I
    if-lez v0, :cond_2

    .line 99
    const/4 v2, 0x0

    goto :goto_0

    .line 100
    :cond_2
    if-lez v1, :cond_3

    .line 101
    const/4 v2, 0x1

    goto :goto_0

    .line 103
    :cond_3
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getFirewallEnalbed(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    const/4 v2, 0x3

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 116
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getNewBlockedPhoneCount(Landroid/content/Context;)I

    move-result v0

    .line 117
    .local v0, callCount:I
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getNewBlockedMmsCount(Landroid/content/Context;)I

    move-result v1

    .line 119
    .local v1, mmsCount:I
    invoke-direct {p0, v0}, Lcom/miui/antispam/firewall/FirewallTab;->appendToCallLog(I)V

    .line 120
    invoke-direct {p0, v1}, Lcom/miui/antispam/firewall/FirewallTab;->appendToMmsLog(I)V

    .line 121
    return-void
.end method
