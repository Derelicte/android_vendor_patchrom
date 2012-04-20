.class public Lcom/android/fileexplorer/FileExplorerTabActivity;
.super Landroid/app/Activity;
.source "FileExplorerTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;,
        Lcom/android/fileexplorer/FileExplorerTabActivity$IBackPressedListener;
    }
.end annotation


# instance fields
.field mActionMode:Landroid/view/ActionMode;

.field private mIntentActionMain:Z

.field mTabsAdapter:Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 135
    return-void
.end method


# virtual methods
.method public getActionMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public getFragment(I)Landroid/app/Fragment;
    .locals 1
    .parameter "tabIndex"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mTabsAdapter:Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mTabsAdapter:Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;

    iget-object v2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity$IBackPressedListener;

    .line 99
    .local v0, backPressedListener:Lcom/android/fileexplorer/FileExplorerTabActivity$IBackPressedListener;
    invoke-interface {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity$IBackPressedListener;->onBack()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 102
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 77
    iget-object v2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mTabsAdapter:Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;

    sget v3, Lcom/android/fileexplorer/Util;->CATEGORY_TAB_INDEX:I

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileCategoryActivity;

    .line 78
    .local v0, categoryFragement:Lcom/android/fileexplorer/FileCategoryActivity;
    const/4 v1, 0x1

    .line 79
    .local v1, onConfigurationChanged:Z
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v2

    sget v3, Lcom/android/fileexplorer/Util;->CATEGORY_TAB_INDEX:I

    if-ne v2, v3, :cond_0

    .line 80
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileCategoryActivity;->isHomePage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->reInstantiateCategoryTab()V

    .line 82
    const/4 v1, 0x0

    .line 85
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->setConfigurationChanged(Z)V

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->setContentView(I)V

    .line 35
    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 37
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 38
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 39
    const/16 v0, 0xa

    invoke-virtual {v1, v5, v0}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 41
    new-instance v0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;

    iget-object v2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0, v2}, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mTabsAdapter:Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mTabsAdapter:Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f06004a

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/android/fileexplorer/FileCategoryActivity;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mTabsAdapter:Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f06004c

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/android/fileexplorer/FileViewActivity;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mTabsAdapter:Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f06004b

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/android/fileexplorer/ServerControlActivity;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    .line 52
    sget v4, Lcom/android/fileexplorer/Util;->CATEGORY_TAB_INDEX:I

    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.PICK"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz v3, :cond_2

    const-string v2, "android.intent.category.DEFAULT"

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 55
    :cond_1
    sget v0, Lcom/android/fileexplorer/Util;->SDCARD_TAB_INDEX:I

    .line 56
    iput-boolean v5, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mIntentActionMain:Z

    .line 62
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 63
    return-void

    .line 58
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "tab"

    sget v3, Lcom/android/fileexplorer/Util;->CATEGORY_TAB_INDEX:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 60
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mIntentActionMain:Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 68
    iget-boolean v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mIntentActionMain:Z

    if-eqz v1, :cond_0

    .line 69
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "tab"

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public reInstantiateCategoryTab()V
    .locals 5

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mTabsAdapter:Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    sget v2, Lcom/android/fileexplorer/Util;->CATEGORY_TAB_INDEX:I

    iget-object v3, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mTabsAdapter:Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;

    sget v4, Lcom/android/fileexplorer/Util;->CATEGORY_TAB_INDEX:I

    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mTabsAdapter:Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    sget v2, Lcom/android/fileexplorer/Util;->CATEGORY_TAB_INDEX:I

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public setActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "actionMode"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->mActionMode:Landroid/view/ActionMode;

    .line 114
    return-void
.end method
