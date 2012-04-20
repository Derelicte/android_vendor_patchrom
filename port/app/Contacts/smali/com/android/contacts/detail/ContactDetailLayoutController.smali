.class public Lcom/android/contacts/detail/ContactDetailLayoutController;
.super Ljava/lang/Object;
.source "ContactDetailLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCalllogFragment:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mContactHasCalllogs:Z

.field private mContactHasUpdates:Z

.field private mCurrentIndex:I

.field private mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mHighLightNumber:Ljava/lang/String;

.field private final mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mSavedState:Landroid/os/Bundle;

.field private mStaticPhotoView:Landroid/widget/ImageView;

.field private final mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

.field private final mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mTabCarouselIsAnimating:Z

.field private mTabs:Lcom/android/contacts/detail/ContactDetailTabs;

.field private final mTabsListener:Lcom/android/contacts/detail/ContactDetailTabs$Listener;

.field private mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

.field private final mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

.field private mViewPagerState:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "savedState"
    .parameter "fragmentManager"
    .parameter "viewContainer"
    .parameter "contactDetailFragmentListener"
    .parameter "highLightNumber"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mHighLightNumber:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mCurrentIndex:I

    .line 261
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailLayoutController$1;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 394
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailLayoutController$2;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 417
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailLayoutController$3;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabsListener:Lcom/android/contacts/detail/ContactDetailTabs$Listener;

    .line 88
    if-nez p3, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot initialize a ContactDetailLayoutController without a non-null FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-object p6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mHighLightNumber:Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    .line 96
    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 97
    iput-object p5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .line 99
    const v0, 0x7f07006f

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 100
    const v0, 0x7f070070

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    .line 101
    const v0, 0x7f07006e

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailTabs;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabs:Lcom/android/contacts/detail/ContactDetailTabs;

    .line 102
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mSavedState:Landroid/os/Bundle;

    .line 104
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->initialize()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabs:Lcom/android/contacts/detail/ContactDetailTabs;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactDetailLayoutController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerState:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/contacts/detail/ContactDetailLayoutController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->syncScrollStateBetweenLists(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/detail/ContactDetailLayoutController;Landroid/app/Fragment;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getOffsetOfFirstItemInList(Landroid/app/Fragment;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/detail/ContactDetailLayoutController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/contacts/detail/ContactDetailLayoutController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z

    return p1
.end method

.method private addTabAndFragment(Lcom/android/contacts/detail/ContactDetailTabs$TabState;ILandroid/app/Fragment;)V
    .locals 1
    .parameter "tabState"
    .parameter "contentDescription"
    .parameter "fragment"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabs:Lcom/android/contacts/detail/ContactDetailTabs;

    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v0, p3}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->addFragment(Landroid/app/Fragment;)V

    .line 155
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabs:Lcom/android/contacts/detail/ContactDetailTabs;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/detail/ContactDetailTabs;->addTab(Lcom/android/contacts/detail/ContactDetailTabs$TabState;I)V

    goto :goto_0
.end method

.method private getCurrentPageIndex()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOffsetOfFirstItemInList(Landroid/app/Fragment;)I
    .locals 2
    .parameter "fragment"

    .prologue
    .line 376
    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, tag:Ljava/lang/String;
    const-string v1, "view-pager-about-fragment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getFirstListItemOffset()I

    move-result v1

    .line 386
    :goto_0
    return v1

    .line 380
    :cond_0
    const-string v1, "view-pager-calllog-fragment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mCalllogFragment:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->getFirstListItemOffset()I

    move-result v1

    goto :goto_0

    .line 382
    :cond_1
    const-string v1, "view-pager-updates-fragment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getFirstListItemOffset()I

    move-result v1

    goto :goto_0

    .line 386
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initialize()V
    .locals 5

    .prologue
    const v4, 0x7f07006f

    .line 112
    const/4 v0, 0x1

    .line 113
    .local v0, fragmentsAddedToFragmentManager:Z
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v3, "view-pager-about-fragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 115
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v3, "view-pager-calllog-fragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mCalllogFragment:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    .line 117
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v3, "view-pager-updates-fragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    .line 121
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-nez v2, :cond_0

    .line 122
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailFragment;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 123
    new-instance v2, Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mCalllogFragment:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    .line 124
    new-instance v2, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    .line 125
    const/4 v0, 0x0

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    invoke-virtual {v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setListener(Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    .line 129
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v2, v3}, Lcom/android/contacts/NfcHandler;->register(Landroid/app/Activity;Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 131
    new-instance v2, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    .line 132
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 133
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 134
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabs:Lcom/android/contacts/detail/ContactDetailTabs;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabsListener:Lcom/android/contacts/detail/ContactDetailTabs$Listener;

    invoke-virtual {v2, v3}, Lcom/android/contacts/detail/ContactDetailTabs;->setListener(Lcom/android/contacts/detail/ContactDetailTabs$Listener;)V

    .line 136
    if-nez v0, :cond_1

    .line 137
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 138
    .local v1, transaction:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mCalllogFragment:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    const-string v3, "view-pager-calllog-fragment"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 140
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    const-string v3, "view-pager-about-fragment"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 142
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    const-string v3, "view-pager-updates-fragment"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 144
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 145
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 147
    .end local v1           #transaction:Landroid/app/FragmentTransaction;
    :cond_1
    return-void
.end method

.method private showContactData()V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mStaticPhotoView:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setPhoto(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/ImageView;)V

    .line 226
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mHighLightNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mCalllogFragment:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mCalllogFragment:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->setData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0
.end method

.method private syncScrollStateBetweenLists(I)V
    .locals 2
    .parameter "currentPageIndex"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    if-eqz v0, :cond_0

    .line 367
    sget-object v0, Lcom/android/contacts/detail/ContactDetailTabs$TabState;->TAB_ABOUT:Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailTabs$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mCalllogFragment:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->requestToMoveToOffset(I)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->requestToMoveToOffset(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPage()Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPageIndex()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid current item for ViewPager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mCalllogFragment:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    .line 244
    :goto_0
    return-object v0

    .line 242
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    goto :goto_0

    .line 244
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 258
    const-string v0, "currentPageIndex"

    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPageIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    return-void
.end method

.method public setContactData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 159
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 160
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    .line 161
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getCalllogMetaData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    :goto_1
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasCalllogs:Z

    .line 163
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabs:Lcom/android/contacts/detail/ContactDetailTabs;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailTabs;->clear()V

    .line 164
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->clear()V

    .line 167
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasCalllogs:Z

    if-eqz v1, :cond_0

    .line 168
    sget-object v1, Lcom/android/contacts/detail/ContactDetailTabs$TabState;->TAB_CALLLOG:Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    const v2, 0x7f0b01c7

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mCalllogFragment:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/contacts/detail/ContactDetailLayoutController;->addTabAndFragment(Lcom/android/contacts/detail/ContactDetailTabs$TabState;ILandroid/app/Fragment;)V

    .line 170
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mCalllogFragment:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    new-instance v2, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mCalllogFragment:Lcom/android/contacts/detail/ContactDetailCalllogFragment;

    invoke-virtual {v4, v5}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {v2, p0, v4}, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactDetailCalllogFragment;->setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 176
    :cond_0
    sget-object v1, Lcom/android/contacts/detail/ContactDetailTabs$TabState;->TAB_ABOUT:Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    const v2, 0x7f0b001a

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/contacts/detail/ContactDetailLayoutController;->addTabAndFragment(Lcom/android/contacts/detail/ContactDetailTabs$TabState;ILandroid/app/Fragment;)V

    .line 178
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    .line 179
    .local v0, detailIndex:I
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    new-instance v2, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 185
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mContactHasUpdates:Z

    if-eqz v1, :cond_2

    .line 186
    sget-object v1, Lcom/android/contacts/detail/ContactDetailTabs$TabState;->TAB_UPDATE:Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    const v2, 0x7f0b001b

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/contacts/detail/ContactDetailLayoutController;->addTabAndFragment(Lcom/android/contacts/detail/ContactDetailTabs$TabState;ILandroid/app/Fragment;)V

    .line 188
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    new-instance v2, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mUpdatesFragment:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v4, v5}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {v2, p0, v4}, Lcom/android/contacts/detail/ContactDetailLayoutController$VerticalScrollListener;-><init>(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    .line 195
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mSavedState:Landroid/os/Bundle;

    const-string v2, "currentPageIndex"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mCurrentIndex:I

    .line 200
    :goto_2
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    if-eqz v1, :cond_3

    .line 201
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v1, v3}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setVisibility(I)V

    .line 204
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->notifyDataSetChanged()V

    .line 205
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabs:Lcom/android/contacts/detail/ContactDetailTabs;

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactDetailTabs;->setCurrentTab(I)V

    .line 206
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 208
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showContactData()V

    .line 209
    return-void

    .end local v0           #detailIndex:I
    :cond_4
    move v1, v3

    .line 160
    goto/16 :goto_0

    :cond_5
    move v2, v3

    .line 161
    goto/16 :goto_1

    .line 197
    .restart local v0       #detailIndex:I
    :cond_6
    iput v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mCurrentIndex:I

    goto :goto_2
.end method

.method public setPhotoView(Landroid/widget/ImageView;)V
    .locals 0
    .parameter "photoView"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mStaticPhotoView:Landroid/widget/ImageView;

    .line 109
    return-void
.end method

.method public showEmptyState()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setVisibility(I)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController;->mDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->showEmptyState()V

    .line 216
    return-void
.end method
