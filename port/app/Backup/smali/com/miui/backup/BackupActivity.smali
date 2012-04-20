.class public Lcom/miui/backup/BackupActivity;
.super Landroid/app/Activity;
.source "BackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/backup/BackupActivity$BackupPageChangeListener;,
        Lcom/miui/backup/BackupActivity$BackupTabListener;,
        Lcom/miui/backup/BackupActivity$TabPagerAdapter;,
        Lcom/miui/backup/BackupActivity$TabState;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mBackupTabListener:Lcom/miui/backup/BackupActivity$BackupTabListener;

.field private mCloudBackupFragment:Lcom/miui/milk/ui/CloudBackupFragment;

.field private mCurrentTab:Lcom/miui/backup/BackupActivity$TabState;

.field private mLocalBackupFragment:Lcom/miui/backup/ui/LocalBackupFragment;

.field private mTabPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    sget-object v0, Lcom/miui/backup/BackupActivity$TabState;->LOCALBACKUP:Lcom/miui/backup/BackupActivity$TabState;

    iput-object v0, p0, Lcom/miui/backup/BackupActivity;->mCurrentTab:Lcom/miui/backup/BackupActivity$TabState;

    .line 227
    return-void
.end method

.method static synthetic access$200(Lcom/miui/backup/BackupActivity;)Lcom/miui/backup/ui/LocalBackupFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/backup/BackupActivity;->mLocalBackupFragment:Lcom/miui/backup/ui/LocalBackupFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/backup/BackupActivity;)Lcom/miui/milk/ui/CloudBackupFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/backup/BackupActivity;->mCloudBackupFragment:Lcom/miui/milk/ui/CloudBackupFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/backup/BackupActivity;I)Landroid/app/Fragment;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/backup/BackupActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private addTab(Lcom/miui/backup/BackupActivity$TabState;I)V
    .locals 2
    .parameter "tabState"
    .parameter "title"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/miui/backup/BackupActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 94
    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 95
    invoke-virtual {v0, p2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 96
    iget-object v1, p0, Lcom/miui/backup/BackupActivity;->mBackupTabListener:Lcom/miui/backup/BackupActivity$BackupTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 97
    iget-object v1, p0, Lcom/miui/backup/BackupActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 98
    return-void
.end method

.method private createActionBar()V
    .locals 3

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/miui/backup/BackupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/BackupActivity;->mActionBar:Landroid/app/ActionBar;

    .line 82
    new-instance v0, Lcom/miui/backup/BackupActivity$BackupTabListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/backup/BackupActivity$BackupTabListener;-><init>(Lcom/miui/backup/BackupActivity;Lcom/miui/backup/BackupActivity$1;)V

    iput-object v0, p0, Lcom/miui/backup/BackupActivity;->mBackupTabListener:Lcom/miui/backup/BackupActivity$BackupTabListener;

    .line 84
    iget-object v0, p0, Lcom/miui/backup/BackupActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 85
    iget-object v0, p0, Lcom/miui/backup/BackupActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 88
    sget-object v0, Lcom/miui/backup/BackupActivity$TabState;->LOCALBACKUP:Lcom/miui/backup/BackupActivity$TabState;

    const v1, 0x7f070002

    invoke-direct {p0, v0, v1}, Lcom/miui/backup/BackupActivity;->addTab(Lcom/miui/backup/BackupActivity$TabState;I)V

    .line 89
    sget-object v0, Lcom/miui/backup/BackupActivity$TabState;->CLOUDBACKUP:Lcom/miui/backup/BackupActivity$TabState;

    const v1, 0x7f070027

    invoke-direct {p0, v0, v1}, Lcom/miui/backup/BackupActivity;->addTab(Lcom/miui/backup/BackupActivity$TabState;I)V

    .line 90
    return-void
.end method

.method private createFragments()V
    .locals 7

    .prologue
    const/high16 v6, 0x7f0a

    .line 102
    invoke-virtual {p0}, Lcom/miui/backup/BackupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 104
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 106
    .local v3, transaction:Landroid/app/FragmentTransaction;
    invoke-virtual {p0, v6}, Lcom/miui/backup/BackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/miui/backup/BackupActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    .line 107
    new-instance v2, Lcom/miui/backup/BackupActivity$TabPagerAdapter;

    invoke-direct {v2, p0}, Lcom/miui/backup/BackupActivity$TabPagerAdapter;-><init>(Lcom/miui/backup/BackupActivity;)V

    .line 108
    .local v2, tabPagerAdapter:Lcom/miui/backup/BackupActivity$TabPagerAdapter;
    iget-object v4, p0, Lcom/miui/backup/BackupActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 109
    new-instance v0, Lcom/miui/backup/BackupActivity$BackupPageChangeListener;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/miui/backup/BackupActivity$BackupPageChangeListener;-><init>(Lcom/miui/backup/BackupActivity;Lcom/miui/backup/BackupActivity$1;)V

    .line 110
    .local v0, backupPageChangeListener:Lcom/miui/backup/BackupActivity$BackupPageChangeListener;
    iget-object v4, p0, Lcom/miui/backup/BackupActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 118
    const-string v4, "LocalBackupFragment"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/miui/backup/ui/LocalBackupFragment;

    iput-object v4, p0, Lcom/miui/backup/BackupActivity;->mLocalBackupFragment:Lcom/miui/backup/ui/LocalBackupFragment;

    .line 120
    const-string v4, "CloudBackupFragment"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/miui/milk/ui/CloudBackupFragment;

    iput-object v4, p0, Lcom/miui/backup/BackupActivity;->mCloudBackupFragment:Lcom/miui/milk/ui/CloudBackupFragment;

    .line 123
    iget-object v4, p0, Lcom/miui/backup/BackupActivity;->mLocalBackupFragment:Lcom/miui/backup/ui/LocalBackupFragment;

    if-nez v4, :cond_0

    .line 124
    new-instance v4, Lcom/miui/backup/ui/LocalBackupFragment;

    invoke-direct {v4}, Lcom/miui/backup/ui/LocalBackupFragment;-><init>()V

    iput-object v4, p0, Lcom/miui/backup/BackupActivity;->mLocalBackupFragment:Lcom/miui/backup/ui/LocalBackupFragment;

    .line 125
    iget-object v4, p0, Lcom/miui/backup/BackupActivity;->mLocalBackupFragment:Lcom/miui/backup/ui/LocalBackupFragment;

    const-string v5, "LocalBackupFragment"

    invoke-virtual {v3, v6, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 128
    :cond_0
    iget-object v4, p0, Lcom/miui/backup/BackupActivity;->mCloudBackupFragment:Lcom/miui/milk/ui/CloudBackupFragment;

    if-nez v4, :cond_1

    .line 129
    new-instance v4, Lcom/miui/milk/ui/CloudBackupFragment;

    invoke-direct {v4}, Lcom/miui/milk/ui/CloudBackupFragment;-><init>()V

    iput-object v4, p0, Lcom/miui/backup/BackupActivity;->mCloudBackupFragment:Lcom/miui/milk/ui/CloudBackupFragment;

    .line 130
    iget-object v4, p0, Lcom/miui/backup/BackupActivity;->mCloudBackupFragment:Lcom/miui/milk/ui/CloudBackupFragment;

    const-string v5, "CloudBackupFragment"

    invoke-virtual {v3, v6, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 134
    :cond_1
    iget-object v4, p0, Lcom/miui/backup/BackupActivity;->mLocalBackupFragment:Lcom/miui/backup/ui/LocalBackupFragment;

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 135
    iget-object v4, p0, Lcom/miui/backup/BackupActivity;->mCloudBackupFragment:Lcom/miui/milk/ui/CloudBackupFragment;

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 137
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 138
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 139
    return-void
.end method

.method private getFragment(I)Landroid/app/Fragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 245
    sget-object v0, Lcom/miui/backup/BackupActivity$TabState;->LOCALBACKUP:Lcom/miui/backup/BackupActivity$TabState;

    invoke-virtual {v0}, Lcom/miui/backup/BackupActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/miui/backup/BackupActivity;->mLocalBackupFragment:Lcom/miui/backup/ui/LocalBackupFragment;

    .line 248
    :goto_0
    return-object v0

    .line 247
    :cond_0
    sget-object v0, Lcom/miui/backup/BackupActivity$TabState;->CLOUDBACKUP:Lcom/miui/backup/BackupActivity$TabState;

    invoke-virtual {v0}, Lcom/miui/backup/BackupActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/miui/backup/BackupActivity;->mCloudBackupFragment:Lcom/miui/milk/ui/CloudBackupFragment;

    goto :goto_0

    .line 251
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

.method private updateFragementVisibility(IZ)V
    .locals 4
    .parameter "position"
    .parameter "visible"

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/miui/backup/BackupActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 273
    .local v0, fragment:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/miui/backup/BackupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 274
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 276
    .local v2, ft:Landroid/app/FragmentTransaction;
    if-eqz p2, :cond_1

    .line 277
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 282
    :goto_0
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 283
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 284
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 286
    :cond_0
    return-void

    .line 279
    :cond_1
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/miui/backup/BackupActivity;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/miui/backup/BackupActivity;->createFragments()V

    .line 61
    invoke-direct {p0}, Lcom/miui/backup/BackupActivity;->createActionBar()V

    .line 62
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 67
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 68
    .local v0, securityHelper:Lmiui/security/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070099

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07009a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/miui/backup/BackupActivity$1;

    invoke-direct {v3, p0}, Lcom/miui/backup/BackupActivity$1;-><init>(Lcom/miui/backup/BackupActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 78
    :cond_0
    return-void
.end method

.method public selectTab(Lcom/miui/backup/BackupActivity$TabState;)V
    .locals 4
    .parameter "tab"

    .prologue
    .line 255
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/miui/backup/BackupActivity;->mCurrentTab:Lcom/miui/backup/BackupActivity$TabState;

    invoke-virtual {v2}, Lcom/miui/backup/BackupActivity$TabState;->ordinal()I

    move-result v1

    .line 257
    .local v1, prevIndex:I
    iput-object p1, p0, Lcom/miui/backup/BackupActivity;->mCurrentTab:Lcom/miui/backup/BackupActivity$TabState;

    .line 259
    iget-object v2, p0, Lcom/miui/backup/BackupActivity;->mCurrentTab:Lcom/miui/backup/BackupActivity$TabState;

    invoke-virtual {v2}, Lcom/miui/backup/BackupActivity$TabState;->ordinal()I

    move-result v0

    .line 260
    .local v0, index:I
    iget-object v2, p0, Lcom/miui/backup/BackupActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/miui/backup/BackupActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 262
    iget-object v2, p0, Lcom/miui/backup/BackupActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 265
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/miui/backup/BackupActivity;->updateFragementVisibility(IZ)V

    .line 266
    iget-object v2, p0, Lcom/miui/backup/BackupActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 267
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/miui/backup/BackupActivity;->updateFragementVisibility(IZ)V

    .line 268
    invoke-virtual {p0}, Lcom/miui/backup/BackupActivity;->invalidateOptionsMenu()V

    .line 269
    return-void
.end method
