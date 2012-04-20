.class Lcom/android/contacts/detail/ContactDetailLayoutController$1;
.super Ljava/lang/Object;
.source "ContactDetailLayoutController.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTabCarouselAnimator:Landroid/animation/ObjectAnimator;

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cancelTabCarouselAnimator()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->mTabCarouselAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->mTabCarouselAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->mTabCarouselAnimator:Landroid/animation/ObjectAnimator;

    .line 360
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    const/4 v1, 0x0

    #setter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$902(Lcom/android/contacts/detail/ContactDetailLayoutController;Z)Z

    .line 362
    :cond_0
    return-void
.end method

.method private createTabCarouselAnimator(F)V
    .locals 4
    .parameter "desiredValue"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$200(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v0

    const-string v1, "y"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->mTabCarouselAnimator:Landroid/animation/ObjectAnimator;

    .line 351
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->mTabCarouselAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$700(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 353
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->mTabCarouselAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselAnimatorListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$800(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 354
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 8
    .parameter "state"

    .prologue
    .line 283
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$200(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v6

    if-nez v6, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerState:I
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$300(Lcom/android/contacts/detail/ContactDetailLayoutController;)I

    move-result v6

    if-nez v6, :cond_3

    .line 291
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->cancelTabCarouselAnimator()V

    .line 295
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    #calls: Lcom/android/contacts/detail/ContactDetailLayoutController;->syncScrollStateBetweenLists(I)V
    invoke-static {v6, v7}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$400(Lcom/android/contacts/detail/ContactDetailLayoutController;I)V

    .line 345
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #setter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerState:I
    invoke-static {v6, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$302(Lcom/android/contacts/detail/ContactDetailLayoutController;I)I

    goto :goto_0

    .line 297
    :cond_3
    if-nez p1, :cond_2

    .line 301
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 302
    .local v0, currentPageIndex:I
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$200(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 306
    .local v5, tabCarouselOffset:I
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPagerAdapter:Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$500(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v2

    .line 307
    .local v2, fragment:Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 311
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #calls: Lcom/android/contacts/detail/ContactDetailLayoutController;->getOffsetOfFirstItemInList(Landroid/app/Fragment;)I
    invoke-static {v6, v2}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$600(Lcom/android/contacts/detail/ContactDetailLayoutController;Landroid/app/Fragment;)I

    move-result v3

    .line 315
    .local v3, listOffset:I
    if-ne v3, v5, :cond_4

    .line 316
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$200(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v6

    int-to-float v7, v5

    invoke-virtual {v6, v0, v7}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->storeYCoordinate(IF)V

    .line 317
    const/4 v4, 0x0

    .line 336
    .local v4, shouldAnimateTabCarousel:Z
    :goto_2
    if-eqz v4, :cond_2

    .line 337
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$200(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getStoredYCoordinateForTab(I)F

    move-result v1

    .line 338
    .local v1, desiredOffset:F
    int-to-float v6, v5

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_2

    .line 339
    invoke-direct {p0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->createTabCarouselAnimator(F)V

    .line 340
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->mTabCarouselAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 341
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$200(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setAlphaLayerValue(F)V

    goto :goto_1

    .line 318
    .end local v1           #desiredOffset:F
    .end local v4           #shouldAnimateTabCarousel:Z
    :cond_4
    const/high16 v6, -0x8000

    if-ne v3, v6, :cond_5

    .line 322
    const/4 v4, 0x1

    .restart local v4       #shouldAnimateTabCarousel:Z
    goto :goto_2

    .line 323
    .end local v4           #shouldAnimateTabCarousel:Z
    :cond_5
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v6, v7, :cond_6

    .line 327
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$200(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v6

    int-to-float v7, v3

    invoke-virtual {v6, v0, v7}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->storeYCoordinate(IF)V

    .line 328
    const/4 v4, 0x1

    .restart local v4       #shouldAnimateTabCarousel:Z
    goto :goto_2

    .line 332
    .end local v4           #shouldAnimateTabCarousel:Z
    :cond_6
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarousel:Lcom/android/contacts/detail/ContactDetailTabCarousel;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$200(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabCarousel;

    move-result-object v6

    int-to-float v7, v3

    invoke-virtual {v6, v0, v7}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->storeYCoordinate(IF)V

    .line 333
    const/4 v4, 0x1

    .restart local v4       #shouldAnimateTabCarousel:Z
    goto :goto_2
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$1;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabs:Lcom/android/contacts/detail/ContactDetailTabs;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$100(Lcom/android/contacts/detail/ContactDetailLayoutController;)Lcom/android/contacts/detail/ContactDetailTabs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailTabs;->setCurrentTab(I)V

    .line 279
    return-void
.end method
