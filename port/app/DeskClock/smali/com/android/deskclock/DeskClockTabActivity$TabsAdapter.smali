.class public Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "DeskClockTabActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DeskClockTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private final mContext:Landroid/content/Context;

.field private mPreviousPage:I

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;",
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
    .line 138
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 139
    iput-object p1, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    .line 141
    iput-object p2, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 142
    iget-object v0, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 143
    iget-object v0, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 144
    return-void
.end method

.method static synthetic access$002(Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mPreviousPage:I

    return p1
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
    .line 147
    .local p2, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;

    invoke-direct {v0, p2, p3}, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 148
    .local v0, info:Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;
    invoke-virtual {p1, v0}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 149
    invoke-virtual {p1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 150
    iget-object v1, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v1, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->notifyDataSetChanged()V

    .line 153
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 4
    .parameter "position"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;

    .line 163
    .local v0, info:Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;
    #getter for: Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;->access$100(Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mContext:Landroid/content/Context;

    #getter for: Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v0}, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;->access$200(Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;->access$300(Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    #setter for: Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0, v1}, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;->access$102(Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 166
    :cond_0
    #getter for: Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;->access$100(Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter$TabInfo;)Landroid/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 190
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 171
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x3

    .line 175
    iget-object v0, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 179
    :cond_0
    if-ne p1, v2, :cond_2

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/TimerFragment;

    invoke-virtual {v0}, Lcom/android/deskclock/TimerFragment;->operationAfterTimerShown()V

    .line 184
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mPreviousPage:I

    .line 185
    iget-object v0, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 186
    return-void

    .line 181
    :cond_2
    iget v0, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mPreviousPage:I

    if-ne v0, v2, :cond_1

    .line 182
    invoke-virtual {p0, v2}, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/TimerFragment;

    invoke-virtual {v0}, Lcom/android/deskclock/TimerFragment;->operationAfterTimerDismiss()V

    goto :goto_0
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 208
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 195
    .local v1, tag:Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/deskclock/DeskClockTabActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 195
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 204
    return-void
.end method
