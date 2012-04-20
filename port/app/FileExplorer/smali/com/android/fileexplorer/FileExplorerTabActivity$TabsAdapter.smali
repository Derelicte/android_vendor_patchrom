.class public Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "FileExplorerTabActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileExplorerTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private final mContext:Landroid/content/Context;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .parameter "activity"
    .parameter "pager"

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 155
    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    .line 157
    iput-object p2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 158
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 159
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 160
    return-void
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .parameter "tab"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 163
    .local p2, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;

    invoke-direct {v0, p2, p3}, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 164
    .local v0, info:Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;
    invoke-virtual {p1, v0}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 165
    invoke-virtual {p1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 166
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->notifyDataSetChanged()V

    .line 169
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 4
    .parameter "position"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;

    .line 179
    .local v0, info:Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;
    #getter for: Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;->access$000(Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->mContext:Landroid/content/Context;

    #getter for: Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;->access$100(Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;->access$200(Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    #setter for: Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;->access$002(Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 182
    :cond_0
    #getter for: Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;->access$000(Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter$TabInfo;)Landroid/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 202
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 187
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    .line 193
    .local v0, actionMode:Landroid/view/ActionMode;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 198
    .end local v0           #actionMode:Landroid/view/ActionMode;
    :cond_1
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 227
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 5
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 207
    .local v2, tag:Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 208
    iget-object v3, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_0

    .line 209
    iget-object v3, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v3

    sget v4, Lcom/android/fileexplorer/Util;->CATEGORY_TAB_INDEX:I

    if-ne v3, v4, :cond_2

    .line 213
    sget v3, Lcom/android/fileexplorer/Util;->CATEGORY_TAB_INDEX:I

    invoke-virtual {p0, v3}, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileCategoryActivity;

    .line 214
    .local v0, categoryFragment:Lcom/android/fileexplorer/FileCategoryActivity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileCategoryActivity;->getConfigurationChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    iget-object v3, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$TabsAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {v3}, Lcom/android/fileexplorer/FileExplorerTabActivity;->reInstantiateCategoryTab()V

    .line 216
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/FileCategoryActivity;->setConfigurationChanged(Z)V

    .line 219
    .end local v0           #categoryFragment:Lcom/android/fileexplorer/FileCategoryActivity;
    :cond_2
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 223
    return-void
.end method
