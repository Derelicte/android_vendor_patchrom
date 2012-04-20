.class public Lcom/android/browser/MiuiHome;
.super Landroid/widget/LinearLayout;
.source "MiuiHome.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/android/browser/MiuiCombinedBookmarksCallbacks;
.implements Lcom/android/browser/view/MiuiHomeTabBar$TabChangedListener;


# static fields
.field public static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final mController:Lcom/android/browser/UiController;

.field private mPaddingTop:I

.field private final mParent:Landroid/widget/FrameLayout;

.field private mShowing:Z

.field private mTabBar:Lcom/android/browser/view/MiuiHomeTabBar;

.field private mTabsAdapter:Lcom/android/browser/MiuiHomeTabsAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/android/browser/MiuiHome;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/MiuiHome;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/UiController;Landroid/widget/FrameLayout;)V
    .locals 1
    .parameter "context"
    .parameter "controller"
    .parameter "parent"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object p2, p0, Lcom/android/browser/MiuiHome;->mController:Lcom/android/browser/UiController;

    .line 33
    iput-object p3, p0, Lcom/android/browser/MiuiHome;->mParent:Landroid/widget/FrameLayout;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/browser/MiuiHome;->initLayout(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f040023

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 39
    const v1, 0x7f040022

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    const v0, 0x7f0d005c

    invoke-virtual {p0, v0}, Lcom/android/browser/MiuiHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/browser/view/MiuiHomeTabBar;

    iput-object v0, p0, Lcom/android/browser/MiuiHome;->mTabBar:Lcom/android/browser/view/MiuiHomeTabBar;

    .line 42
    iget-object v0, p0, Lcom/android/browser/MiuiHome;->mTabBar:Lcom/android/browser/view/MiuiHomeTabBar;

    invoke-virtual {v0, p0}, Lcom/android/browser/view/MiuiHomeTabBar;->setTabChangedListener(Lcom/android/browser/view/MiuiHomeTabBar$TabChangedListener;)V

    .line 43
    const v0, 0x7f0d005d

    invoke-virtual {p0, v0}, Lcom/android/browser/MiuiHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/browser/MiuiHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 44
    iget-object v0, p0, Lcom/android/browser/MiuiHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 45
    new-instance v0, Lcom/android/browser/MiuiHomeTabsAdapter;

    iget-object v1, p0, Lcom/android/browser/MiuiHome;->mController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/MiuiHome;->mTabBar:Lcom/android/browser/view/MiuiHomeTabBar;

    invoke-direct {v0, v1, v2}, Lcom/android/browser/MiuiHomeTabsAdapter;-><init>(Landroid/app/Activity;Lcom/android/browser/view/MiuiHomeTabBar;)V

    iput-object v0, p0, Lcom/android/browser/MiuiHome;->mTabsAdapter:Lcom/android/browser/MiuiHomeTabsAdapter;

    .line 46
    iget-object v0, p0, Lcom/android/browser/MiuiHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/browser/MiuiHome;->mTabsAdapter:Lcom/android/browser/MiuiHomeTabsAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 48
    iget-object v0, p0, Lcom/android/browser/MiuiHome;->mTabsAdapter:Lcom/android/browser/MiuiHomeTabsAdapter;

    const v1, 0x7f0c0162

    const-class v2, Lcom/android/browser/MiuiYellowpagePage;

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/browser/MiuiHomeTabsAdapter;->addTab(IILjava/lang/Class;Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/android/browser/MiuiHome;->mTabsAdapter:Lcom/android/browser/MiuiHomeTabsAdapter;

    const v1, 0x7f0c0006

    const-class v2, Lcom/android/browser/MiuiBrowserBookmarksPage;

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/browser/MiuiHomeTabsAdapter;->addTab(IILjava/lang/Class;Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/android/browser/MiuiHome;->mTabsAdapter:Lcom/android/browser/MiuiHomeTabsAdapter;

    const v1, 0x7f0c0008

    const-class v2, Lcom/android/browser/MiuiBrowserHistoryPage;

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/browser/MiuiHomeTabsAdapter;->addTab(IILjava/lang/Class;Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/android/browser/MiuiHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 56
    return-void
.end method

.method private notifyCurrentTab(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/browser/MiuiHome;->mController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 95
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 96
    check-cast v0, Lcom/android/browser/MiuiTab;

    .end local v0           #tab:Lcom/android/browser/Tab;
    invoke-virtual {v0, p1}, Lcom/android/browser/MiuiTab;->setMiuiHomeSelectedTabPosition(I)V

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/browser/MiuiHome;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/MiuiHome;->mShowing:Z

    .line 68
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/browser/MiuiHome;->mShowing:Z

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 133
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 120
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/browser/MiuiHome;->mTabBar:Lcom/android/browser/view/MiuiHomeTabBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/view/MiuiHomeTabBar;->selectTab(I)V

    .line 128
    invoke-direct {p0, p1}, Lcom/android/browser/MiuiHome;->notifyCurrentTab(I)V

    .line 129
    return-void
.end method

.method public onTabChanged(I)V
    .locals 1
    .parameter "tabPosition"

    .prologue
    .line 112
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/MiuiHome;->mTabsAdapter:Lcom/android/browser/MiuiHomeTabsAdapter;

    invoke-virtual {v0}, Lcom/android/browser/MiuiHomeTabsAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/browser/MiuiHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 114
    invoke-direct {p0, p1}, Lcom/android/browser/MiuiHome;->notifyCurrentTab(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public varargs openInNewTab(Z[Ljava/lang/String;)V
    .locals 7
    .parameter "setActive"
    .parameter "urls"

    .prologue
    .line 147
    iget-object v5, p0, Lcom/android/browser/MiuiHome;->mController:Lcom/android/browser/UiController;

    invoke-interface {v5}, Lcom/android/browser/UiController;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v3

    .line 148
    .local v3, parent:Lcom/android/browser/Tab;
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 149
    .local v4, url:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/browser/MiuiHome;->mController:Lcom/android/browser/UiController;

    const/4 v6, 0x1

    invoke-interface {v5, v4, v3, p1, v6}, Lcom/android/browser/UiController;->openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;

    move-result-object v3

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v4           #url:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public varargs openInNewTab([Ljava/lang/String;)V
    .locals 1
    .parameter "urls"

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/browser/MiuiHome;->openInNewTab(Z[Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/browser/MiuiHome;->mController:Lcom/android/browser/UiController;

    invoke-interface {v0, p1}, Lcom/android/browser/UiController;->loadUrlFromMiuiHome(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public select(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/browser/MiuiHome;->mTabBar:Lcom/android/browser/view/MiuiHomeTabBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/view/MiuiHomeTabBar;->selectTab(I)V

    .line 102
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/MiuiHome;->mTabsAdapter:Lcom/android/browser/MiuiHomeTabsAdapter;

    invoke-virtual {v0}, Lcom/android/browser/MiuiHomeTabsAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/browser/MiuiHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 105
    :cond_0
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 2
    .parameter "paddingTop"

    .prologue
    const/4 v1, 0x0

    .line 75
    iget v0, p0, Lcom/android/browser/MiuiHome;->mPaddingTop:I

    if-eq v0, p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/browser/MiuiHome;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 78
    :cond_0
    iput p1, p0, Lcom/android/browser/MiuiHome;->mPaddingTop:I

    .line 79
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/browser/MiuiHome;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/browser/MiuiHome;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/MiuiHome;->mShowing:Z

    goto :goto_0
.end method
