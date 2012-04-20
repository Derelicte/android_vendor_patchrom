.class public Lcom/android/browser/view/ScrollerView;
.super Landroid/widget/FrameLayout;
.source "ScrollerView.java"


# instance fields
.field private mActivePointerId:I

.field protected mChildToScrollTo:Landroid/view/View;

.field private mDownCoords:Landroid/graphics/PointF;

.field private mDownView:Landroid/view/View;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field protected mHorizontal:Z
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field protected mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field protected mIsOrthoDragged:Z

.field private mLastMotionY:F

.field private mLastOrthoCoord:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field protected mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field protected mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/view/ScrollerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 164
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/android/browser/view/ScrollerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 168
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    .line 86
    iput-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mIsLayoutDirty:Z

    .line 93
    iput-object v4, p0, Lcom/android/browser/view/ScrollerView;->mChildToScrollTo:Landroid/view/View;

    .line 100
    iput-boolean v2, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    .line 117
    iput-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mSmoothScrollingEnabled:Z

    .line 130
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    .line 138
    iput-object v4, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 139
    iput-object v4, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 150
    iput-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    .line 169
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->initScrollView()V

    .line 171
    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 174
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/browser/view/ScrollerView;->setFillViewport(Z)V

    .line 176
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 295
    invoke-virtual {p0, v2}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 297
    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_2

    .line 298
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 298
    goto :goto_0

    .line 300
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 303
    goto :goto_0
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1844
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 1860
    :cond_0
    const/4 p1, 0x0

    .line 1870
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 1862
    .restart local p1
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 1868
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private computeScrollDeltaToGetChildRectOnScreenHorizontal(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1596
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v5, v7

    .line 1650
    :cond_0
    :goto_0
    return v5

    .line 1598
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v6

    .line 1599
    .local v6, width:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollX()I

    move-result v3

    .line 1600
    .local v3, screenLeft:I
    add-int v4, v3, v6

    .line 1602
    .local v4, screenRight:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1605
    .local v1, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_2

    .line 1606
    add-int/2addr v3, v1

    .line 1610
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1611
    sub-int/2addr v4, v1

    .line 1614
    :cond_3
    const/4 v5, 0x0

    .line 1616
    .local v5, scrollXDelta:I
    iget v8, p1, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-le v8, v3, :cond_5

    .line 1621
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, v6, :cond_4

    .line 1623
    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    add-int/2addr v5, v8

    .line 1630
    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1631
    .local v2, right:I
    sub-int v0, v2, v4

    .line 1632
    .local v0, distanceToRight:I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1634
    goto :goto_0

    .line 1626
    .end local v0           #distanceToRight:I
    .end local v2           #right:I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    add-int/2addr v5, v8

    goto :goto_1

    .line 1634
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_0

    .line 1639
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 1641
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 1648
    :goto_2
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 1644
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_2
.end method

.method private computeScrollDeltaToGetChildRectOnScreenVertical(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1538
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 1592
    :cond_0
    :goto_0
    return v6

    .line 1540
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v3

    .line 1541
    .local v3, height:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v5

    .line 1542
    .local v5, screenTop:I
    add-int v4, v5, v3

    .line 1544
    .local v4, screenBottom:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1547
    .local v2, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    .line 1548
    add-int/2addr v5, v2

    .line 1552
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1553
    sub-int/2addr v4, v2

    .line 1556
    :cond_3
    const/4 v6, 0x0

    .line 1558
    .local v6, scrollYDelta:I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    .line 1563
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 1565
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 1572
    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1573
    .local v0, bottom:I
    sub-int v1, v0, v4

    .line 1574
    .local v1, distanceToBottom:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1576
    goto :goto_0

    .line 1568
    .end local v0           #bottom:I
    .end local v1           #distanceToBottom:I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 1576
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    .line 1581
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 1583
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1590
    :goto_2
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 1586
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1251
    if-eqz p1, :cond_0

    .line 1252
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_2

    .line 1253
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_1

    .line 1254
    invoke-virtual {p0, v1, p1}, Lcom/android/browser/view/ScrollerView;->smoothScrollBy(II)V

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/browser/view/ScrollerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 1259
    :cond_2
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_3

    .line 1260
    invoke-virtual {p0, v1, p1}, Lcom/android/browser/view/ScrollerView;->scrollBy(II)V

    goto :goto_0

    .line 1262
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/android/browser/view/ScrollerView;->scrollBy(II)V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1815
    iput-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    .line 1816
    iput-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsOrthoDragged:Z

    .line 1817
    iput-object v1, p0, Lcom/android/browser/view/ScrollerView;->mDownView:Landroid/view/View;

    .line 1818
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->recycleVelocityTracker()V

    .line 1819
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_0

    .line 1820
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1821
    iput-object v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1823
    :cond_0
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 14
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 981
    const/4 v13, 0x2

    invoke-virtual {p0, v13}, Lcom/android/browser/view/ScrollerView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 982
    .local v5, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v4, 0x0

    .line 991
    .local v4, focusCandidate:Landroid/view/View;
    const/4 v6, 0x0

    .line 993
    .local v6, foundFullyContainedFocusable:Z
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 994
    .local v2, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v2, :cond_c

    .line 995
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 996
    .local v8, view:Landroid/view/View;
    iget-boolean v13, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v13, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 997
    .local v12, viewTop:I
    :goto_1
    iget-boolean v13, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v13, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v9

    .line 999
    .local v9, viewBottom:I
    :goto_2
    move/from16 v0, p2

    if-ge v0, v9, :cond_0

    move/from16 v0, p3

    if-ge v12, v0, :cond_0

    .line 1005
    move/from16 v0, p2

    if-ge v0, v12, :cond_3

    move/from16 v0, p3

    if-ge v9, v0, :cond_3

    const/4 v11, 0x1

    .line 1008
    .local v11, viewIsFullyContained:Z
    :goto_3
    if-nez v4, :cond_4

    .line 1010
    move-object v4, v8

    .line 1011
    move v6, v11

    .line 994
    .end local v11           #viewIsFullyContained:Z
    :cond_0
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 996
    .end local v9           #viewBottom:I
    .end local v12           #viewTop:I
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    goto :goto_1

    .line 997
    .restart local v12       #viewTop:I
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v9

    goto :goto_2

    .line 1005
    .restart local v9       #viewBottom:I
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 1013
    .restart local v11       #viewIsFullyContained:Z
    :cond_4
    iget-boolean v13, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v13, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1014
    .local v3, ctop:I
    :goto_5
    iget-boolean v13, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v13, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1015
    .local v1, cbot:I
    :goto_6
    if-eqz p1, :cond_5

    if-lt v12, v3, :cond_6

    :cond_5
    if-nez p1, :cond_9

    if-le v9, v1, :cond_9

    :cond_6
    const/4 v10, 0x1

    .line 1019
    .local v10, viewIsCloserToBoundary:Z
    :goto_7
    if-eqz v6, :cond_a

    .line 1020
    if-eqz v11, :cond_0

    if-eqz v10, :cond_0

    .line 1026
    move-object v4, v8

    goto :goto_4

    .line 1013
    .end local v1           #cbot:I
    .end local v3           #ctop:I
    .end local v10           #viewIsCloserToBoundary:Z
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_5

    .line 1014
    .restart local v3       #ctop:I
    :cond_8
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_6

    .line 1015
    .restart local v1       #cbot:I
    :cond_9
    const/4 v10, 0x0

    goto :goto_7

    .line 1029
    .restart local v10       #viewIsCloserToBoundary:Z
    :cond_a
    if-eqz v11, :cond_b

    .line 1031
    move-object v4, v8

    .line 1032
    const/4 v6, 0x1

    goto :goto_4

    .line 1033
    :cond_b
    if-eqz v10, :cond_0

    .line 1038
    move-object v4, v8

    goto :goto_4

    .line 1045
    .end local v1           #cbot:I
    .end local v3           #ctop:I
    .end local v8           #view:Landroid/view/View;
    .end local v9           #viewBottom:I
    .end local v10           #viewIsCloserToBoundary:Z
    .end local v11           #viewIsFullyContained:Z
    .end local v12           #viewTop:I
    :cond_c
    return-object v4
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 911
    const/4 v1, 0x0

    .line 912
    .local v1, scrollRange:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 913
    invoke-virtual {p0, v5}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 914
    .local v0, child:Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v2, :cond_1

    .line 915
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 922
    .end local v0           #child:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 918
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method private inChild(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 456
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 457
    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    .line 458
    .local v1, scrollY:I
    invoke-virtual {p0, v2}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 459
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 464
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollY:I
    :cond_0
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 469
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 473
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 180
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    .line 181
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/browser/view/ScrollerView;->setFocusable(Z)V

    .line 182
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/browser/view/ScrollerView;->setDescendantFocusability(I)V

    .line 183
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/view/ScrollerView;->setWillNotDraw(Z)V

    .line 184
    iget-object v1, p0, Lcom/android/browser/view/ScrollerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 185
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/browser/view/ScrollerView;->mTouchSlop:I

    .line 186
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/browser/view/ScrollerView;->mMinimumVelocity:I

    .line 187
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/browser/view/ScrollerView;->mMaximumVelocity:I

    .line 188
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/android/browser/view/ScrollerView;->mOverscrollDistance:I

    .line 189
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/android/browser/view/ScrollerView;->mOverflingDistance:I

    .line 190
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/browser/view/ScrollerView;->mDownCoords:Landroid/graphics/PointF;

    .line 191
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 477
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 479
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 3
    .parameter "descendant"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1222
    iget-boolean v2, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v2, :cond_2

    .line 1223
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Lcom/android/browser/view/ScrollerView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1225
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1223
    goto :goto_0

    .line 1225
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/browser/view/ScrollerView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isOrthoMove(FF)Z
    .locals 2
    .parameter "moveX"
    .parameter "moveY"

    .prologue
    .line 1213
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 1776
    if-ne p1, p2, :cond_1

    .line 1781
    :cond_0
    :goto_0
    return v1

    .line 1780
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1781
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/android/browser/view/ScrollerView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 4
    .parameter "descendant"
    .parameter "delta"
    .parameter "height"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1234
    iget-object v2, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1235
    iget-object v2, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/android/browser/view/ScrollerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1236
    iget-boolean v2, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v2, :cond_2

    .line 1237
    iget-object v2, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollX()I

    move-result v3

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollX()I

    move-result v3

    add-int/2addr v3, p3

    if-gt v2, v3, :cond_1

    .line 1240
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1237
    goto :goto_0

    .line 1240
    :cond_2
    iget-object v2, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v3

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v3

    add-int/2addr v3, p3

    if-le v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 792
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 794
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 795
    .local v1, pointerId:I
    iget v3, p0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    if-ne v1, v3, :cond_1

    .line 799
    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 800
    .local v0, newPointerIndex:I
    :goto_0
    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    :goto_1
    iput v3, p0, Lcom/android/browser/view/ScrollerView;->mLastMotionY:F

    .line 801
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    .line 802
    iget-object v3, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 803
    iget-object v3, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 805
    :cond_0
    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    :goto_2
    iput v3, p0, Lcom/android/browser/view/ScrollerView;->mLastOrthoCoord:F

    .line 808
    .end local v0           #newPointerIndex:I
    :cond_1
    return-void

    .line 799
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 800
    .restart local v0       #newPointerIndex:I
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    goto :goto_1

    .line 805
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    goto :goto_2
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 486
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 1130
    const/4 v3, 0x1

    .line 1132
    .local v3, handled:Z
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v4

    .line 1133
    .local v4, height:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v1

    .line 1134
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 1135
    .local v0, containerBottom:I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    const/4 v6, 0x1

    .line 1137
    .local v6, up:Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Lcom/android/browser/view/ScrollerView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1138
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1139
    move-object v5, p0

    .line 1142
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1143
    const/4 v3, 0x0

    .line 1149
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1151
    :cond_1
    return v3

    .line 1135
    .end local v5           #newFocused:Landroid/view/View;
    .end local v6           #up:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1145
    .restart local v5       #newFocused:Landroid/view/View;
    .restart local v6       #up:Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1146
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/browser/view/ScrollerView;->doScrollY(I)V

    goto :goto_1

    .line 1145
    .end local v2           #delta:I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1488
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/view/ScrollerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1489
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/browser/view/ScrollerView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    .line 1490
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 4
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1501
    invoke-virtual {p0, p1}, Lcom/android/browser/view/ScrollerView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1502
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1503
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1504
    if-eqz p2, :cond_3

    .line 1505
    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_2

    .line 1506
    invoke-virtual {p0, v0, v2}, Lcom/android/browser/view/ScrollerView;->scrollBy(II)V

    .line 1518
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v2

    .line 1502
    goto :goto_0

    .line 1508
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/android/browser/view/ScrollerView;->scrollBy(II)V

    goto :goto_1

    .line 1511
    :cond_3
    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_4

    .line 1512
    invoke-virtual {p0, v0, v2}, Lcom/android/browser/view/ScrollerView;->smoothScrollBy(II)V

    goto :goto_1

    .line 1514
    :cond_4
    invoke-virtual {p0, v2, v0}, Lcom/android/browser/view/ScrollerView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 262
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 271
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 289
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 276
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 1163
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1164
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1166
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1168
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getMaxScrollAmount()I

    move-result v3

    .line 1170
    .local v3, maxJump:I
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Lcom/android/browser/view/ScrollerView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1171
    iget-object v7, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1172
    iget-object v7, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/android/browser/view/ScrollerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1173
    iget-object v7, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1174
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/android/browser/view/ScrollerView;->doScrollY(I)V

    .line 1175
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1197
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/android/browser/view/ScrollerView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1204
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getDescendantFocusability()I

    move-result v2

    .line 1205
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->setDescendantFocusability(I)V

    .line 1206
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->requestFocus()Z

    .line 1207
    invoke-virtual {p0, v2}, Lcom/android/browser/view/ScrollerView;->setDescendantFocusability(I)V

    .line 1209
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1178
    .end local v6           #scrollDelta:I
    :cond_3
    move v6, v3

    .line 1180
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 1181
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v6

    .line 1191
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1194
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/android/browser/view/ScrollerView;->doScrollY(I)V

    goto :goto_0

    .line 1182
    :cond_5
    if-ne p1, v10, :cond_4

    .line 1183
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1184
    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1185
    .local v1, daBottom:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    sub-int v5, v8, v9

    .line 1186
    .local v5, screenBottom:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 1187
    sub-int v6, v1, v5

    goto :goto_1

    .line 1194
    .end local v1           #daBottom:I
    .end local v5           #screenBottom:I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 1385
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1357
    iget-boolean v5, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-nez v5, :cond_1

    .line 1358
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    .line 1375
    :cond_0
    :goto_0
    return v0

    .line 1360
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v1

    .line 1361
    .local v1, count:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    sub-int v0, v5, v6

    .line 1362
    .local v0, contentWidth:I
    if-eqz v1, :cond_0

    .line 1366
    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1367
    .local v3, scrollRange:I
    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    .line 1368
    .local v4, scrollX:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1369
    .local v2, overscrollBottom:I
    if-gez v4, :cond_3

    .line 1370
    sub-int/2addr v3, v4

    :cond_2
    :goto_1
    move v0, v3

    .line 1375
    goto :goto_0

    .line 1371
    :cond_3
    if-le v4, v2, :cond_2

    .line 1372
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1452
    iget v3, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    .line 1453
    .local v3, oldX:I
    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    .line 1454
    .local v4, oldY:I
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v10

    .line 1455
    .local v10, x:I
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    .line 1457
    .local v11, y:I
    if-ne v3, v10, :cond_0

    if-eq v4, v11, :cond_1

    .line 1458
    :cond_0
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_3

    .line 1459
    sub-int v1, v10, v3

    sub-int v2, v11, v4

    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v5

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/browser/view/ScrollerView;->mOverflingDistance:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/browser/view/ScrollerView;->overScrollBy(IIIIIIIIZ)Z

    .line 1465
    :goto_0
    iget v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/android/browser/view/ScrollerView;->onScrollChanged(IIII)V

    .line 1467
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->awakenScrollBars()Z

    .line 1470
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->postInvalidate()V

    .line 1477
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_2
    :goto_1
    return-void

    .line 1462
    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_3
    sub-int v1, v10, v3

    sub-int v2, v11, v4

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v6

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/browser/view/ScrollerView;->mOverflingDistance:I

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/browser/view/ScrollerView;->overScrollBy(IIIIIIIIZ)Z

    goto :goto_0

    .line 1472
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_4
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_2

    .line 1473
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "rect"

    .prologue
    .line 1530
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_0

    .line 1531
    invoke-direct {p0, p1}, Lcom/android/browser/view/ScrollerView;->computeScrollDeltaToGetChildRectOnScreenHorizontal(Landroid/graphics/Rect;)I

    move-result v0

    .line 1533
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/browser/view/ScrollerView;->computeScrollDeltaToGetChildRectOnScreenVertical(Landroid/graphics/Rect;)I

    move-result v0

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1380
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1328
    iget-boolean v5, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v5, :cond_1

    .line 1329
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollRange()I

    move-result v0

    .line 1346
    :cond_0
    :goto_0
    return v0

    .line 1331
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v1

    .line 1332
    .local v1, count:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 1333
    .local v0, contentHeight:I
    if-eqz v1, :cond_0

    .line 1337
    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1338
    .local v3, scrollRange:I
    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    .line 1339
    .local v4, scrollY:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1340
    .local v2, overscrollBottom:I
    if-gez v4, :cond_3

    .line 1341
    sub-int/2addr v3, v4

    :cond_2
    :goto_1
    move v0, v3

    .line 1346
    goto :goto_0

    .line 1342
    :cond_3
    if-le v4, v2, :cond_2

    .line 1343
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 402
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/browser/view/ScrollerView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 904
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    .line 905
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 907
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 414
    iget-object v6, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 416
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 417
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 419
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 420
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 422
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 452
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 429
    :cond_2
    const/4 v1, 0x0

    .line 430
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 431
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 452
    goto :goto_0

    .line 433
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 434
    invoke-virtual {p0, v4}, Lcom/android/browser/view/ScrollerView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 436
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/browser/view/ScrollerView;->fullScroll(I)Z

    move-result v1

    .line 438
    goto :goto_1

    .line 440
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 441
    invoke-virtual {p0, v5}, Lcom/android/browser/view/ScrollerView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 443
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/browser/view/ScrollerView;->fullScroll(I)Z

    move-result v1

    .line 445
    goto :goto_1

    .line 447
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/browser/view/ScrollerView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 431
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method protected findViewAt(II)Landroid/view/View;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 785
    const/4 v0, 0x0

    return-object v0
.end method

.method public fling(I)V
    .locals 15
    .parameter "velocityY"

    .prologue
    .line 1792
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1793
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_2

    .line 1794
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    sub-int v14, v0, v1

    .line 1795
    .local v14, width:I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v13

    .line 1797
    .local v13, right:I
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    sub-int v6, v13, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    div-int/lit8 v9, v14, 0x2

    const/4 v10, 0x0

    move/from16 v3, p1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1806
    .end local v13           #right:I
    .end local v14           #width:I
    :goto_0
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_0

    .line 1807
    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1810
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->invalidate()V

    .line 1812
    :cond_1
    return-void

    .line 1800
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    sub-int v12, v0, v1

    .line 1801
    .local v12, height:I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 1803
    .local v11, bottom:I
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    sub-int v8, v11, v12

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v9, 0x0

    div-int/lit8 v10, v12, 0x2

    move/from16 v4, p1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    goto :goto_0
.end method

.method public fullScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1099
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1100
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v2

    .line 1102
    .local v2, height:I
    iget-object v5, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1103
    iget-object v4, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1105
    if-eqz v1, :cond_0

    .line 1106
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v0

    .line 1107
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1108
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1109
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1110
    iget-object v4, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1114
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/browser/view/ScrollerView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 1099
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 224
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 225
    const/4 v3, 0x0

    .line 242
    :goto_0
    return v3

    .line 227
    :cond_0
    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 229
    .local v1, length:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    sub-int v0, v3, v4

    .line 230
    .local v0, bottomEdge:I
    invoke-virtual {p0, v5}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 231
    .local v2, span:I
    if-ge v2, v1, :cond_2

    .line 232
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 235
    .end local v0           #bottomEdge:I
    .end local v1           #length:I
    .end local v2           #span:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 236
    .restart local v1       #length:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 237
    .restart local v0       #bottomEdge:I
    invoke-virtual {p0, v5}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 238
    .restart local v2       #span:I
    if-ge v2, v1, :cond_2

    .line 239
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 242
    :cond_2
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 250
    const/high16 v1, 0x3f00

    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/browser/view/ScrollerView;->mRight:I

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mLeft:I

    sub-int/2addr v0, v2

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/browser/view/ScrollerView;->mBottom:I

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mTop:I

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 206
    const/4 v1, 0x0

    .line 219
    :goto_0
    return v1

    .line 208
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 210
    .local v0, length:I
    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    if-ge v1, v0, :cond_2

    .line 211
    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 214
    .end local v0           #length:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 215
    .restart local v0       #length:I
    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    if-ge v1, v0, :cond_2

    .line 216
    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 219
    :cond_2
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1390
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1395
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_0

    .line 1396
    iget v3, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/android/browser/view/ScrollerView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1399
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1407
    .local v1, childWidthMeasureSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1408
    return-void

    .line 1401
    .end local v0           #childHeightMeasureSpec:I
    .end local v1           #childWidthMeasureSpec:I
    :cond_0
    iget v3, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/android/browser/view/ScrollerView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1404
    .restart local v1       #childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightMeasureSpec:I
    goto :goto_0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    const/4 v5, 0x0

    .line 1413
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1417
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_0

    .line 1418
    iget v3, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/android/browser/view/ScrollerView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1421
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1430
    .local v1, childWidthMeasureSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1431
    return-void

    .line 1424
    .end local v0           #childHeightMeasureSpec:I
    .end local v1           #childWidthMeasureSpec:I
    :cond_0
    iget v3, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/android/browser/view/ScrollerView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1427
    .restart local v1       #childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightMeasureSpec:I
    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1727
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1729
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1731
    iput-object v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1733
    :cond_0
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 1734
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1735
    iput-object v1, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1737
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 812
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_0

    .line 813
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 857
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_0
    return v8

    .line 815
    :pswitch_0
    iget-boolean v9, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    if-nez v9, :cond_0

    .line 816
    iget-boolean v9, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v9, :cond_3

    .line 817
    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 819
    .local v1, hscroll:F
    cmpl-float v9, v1, v10

    if-eqz v9, :cond_0

    .line 820
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHorizontalScrollFactor()F

    move-result v9

    mul-float/2addr v9, v1

    float-to-int v0, v9

    .line 821
    .local v0, delta:I
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v6

    .line 822
    .local v6, range:I
    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    .line 823
    .local v4, oldScrollX:I
    sub-int v2, v4, v0

    .line 824
    .local v2, newScrollX:I
    if-gez v2, :cond_2

    .line 825
    const/4 v2, 0x0

    .line 829
    :cond_1
    :goto_1
    if-eq v2, v4, :cond_0

    .line 830
    iget v9, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    invoke-super {p0, v2, v9}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0

    .line 826
    :cond_2
    if-le v2, v6, :cond_1

    .line 827
    move v2, v6

    goto :goto_1

    .line 835
    .end local v0           #delta:I
    .end local v1           #hscroll:F
    .end local v2           #newScrollX:I
    .end local v4           #oldScrollX:I
    .end local v6           #range:I
    :cond_3
    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    .line 837
    .local v7, vscroll:F
    cmpl-float v9, v7, v10

    if-eqz v9, :cond_0

    .line 838
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getVerticalScrollFactor()F

    move-result v9

    mul-float/2addr v9, v7

    float-to-int v0, v9

    .line 839
    .restart local v0       #delta:I
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v6

    .line 840
    .restart local v6       #range:I
    iget v5, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    .line 841
    .local v5, oldScrollY:I
    sub-int v3, v5, v0

    .line 842
    .local v3, newScrollY:I
    if-gez v3, :cond_5

    .line 843
    const/4 v3, 0x0

    .line 847
    :cond_4
    :goto_2
    if-eq v3, v5, :cond_0

    .line 848
    iget v9, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    invoke-super {p0, v9, v3}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0

    .line 844
    :cond_5
    if-le v3, v6, :cond_4

    .line 845
    move v3, v6

    goto :goto_2

    .line 813
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 896
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 897
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 898
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 890
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 891
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 892
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 510
    .local v7, action:I
    if-ne v7, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    if-eqz v0, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v13

    .line 513
    :cond_1
    if-ne v7, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsOrthoDragged:Z

    if-nez v0, :cond_0

    .line 516
    :cond_2
    and-int/lit16 v0, v7, 0xff

    packed-switch v0, :pswitch_data_0

    .line 618
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsOrthoDragged:Z

    if-eqz v0, :cond_5

    :cond_4
    move v3, v13

    :cond_5
    move v13, v3

    goto :goto_0

    .line 528
    :pswitch_1
    iget v8, p0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    .line 529
    .local v8, activePointerId:I
    if-eq v8, v1, :cond_3

    .line 535
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 536
    .local v10, pointerIndex:I
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 538
    .local v11, y:F
    :goto_2
    iget v0, p0, Lcom/android/browser/view/ScrollerView;->mLastMotionY:F

    sub-float v0, v11, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v12, v0

    .line 539
    .local v12, yDiff:I
    iget v0, p0, Lcom/android/browser/view/ScrollerView;->mTouchSlop:I

    if-le v12, v0, :cond_7

    .line 540
    iput-boolean v13, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    .line 541
    iput v11, p0, Lcom/android/browser/view/ScrollerView;->mLastMotionY:F

    .line 542
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->initVelocityTrackerIfNotExists()V

    .line 543
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 544
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_3

    .line 545
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_1

    .line 536
    .end local v11           #y:F
    .end local v12           #yDiff:I
    :cond_6
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    goto :goto_2

    .line 549
    .restart local v11       #y:F
    .restart local v12       #yDiff:I
    :cond_7
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 551
    .local v9, ocoord:F
    :goto_3
    iget v0, p0, Lcom/android/browser/view/ScrollerView;->mLastOrthoCoord:F

    sub-float v0, v9, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 552
    iput-boolean v13, p0, Lcom/android/browser/view/ScrollerView;->mIsOrthoDragged:Z

    .line 553
    iput v9, p0, Lcom/android/browser/view/ScrollerView;->mLastOrthoCoord:F

    .line 554
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->initVelocityTrackerIfNotExists()V

    .line 555
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 549
    .end local v9           #ocoord:F
    :cond_8
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    goto :goto_3

    .line 562
    .end local v8           #activePointerId:I
    .end local v10           #pointerIndex:I
    .end local v11           #y:F
    .end local v12           #yDiff:I
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 563
    .restart local v11       #y:F
    :goto_4
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mDownCoords:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 564
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mDownCoords:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/browser/view/ScrollerView;->inChild(II)Z

    move-result v0

    if-nez v0, :cond_a

    .line 566
    iput-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    .line 567
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->recycleVelocityTracker()V

    goto/16 :goto_1

    .line 562
    .end local v11           #y:F
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    goto :goto_4

    .line 575
    .restart local v11       #y:F
    :cond_a
    iput v11, p0, Lcom/android/browser/view/ScrollerView;->mLastMotionY:F

    .line 576
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    .line 578
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->initOrResetVelocityTracker()V

    .line 579
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 585
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v13

    :goto_5
    iput-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    .line 586
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_b

    .line 587
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 590
    :cond_b
    iput-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mIsOrthoDragged:Z

    .line 591
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 592
    .restart local v9       #ocoord:F
    :goto_6
    iput v9, p0, Lcom/android/browser/view/ScrollerView;->mLastOrthoCoord:F

    .line 593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/view/ScrollerView;->findViewAt(II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/view/ScrollerView;->mDownView:Landroid/view/View;

    goto/16 :goto_1

    .end local v9           #ocoord:F
    :cond_c
    move v0, v3

    .line 585
    goto :goto_5

    .line 591
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    goto :goto_6

    .line 600
    .end local v11           #y:F
    :pswitch_3
    iput-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    .line 601
    iput-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mIsOrthoDragged:Z

    .line 602
    iput v1, p0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    .line 603
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->recycleVelocityTracker()V

    .line 604
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v4

    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v6

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 606
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->invalidate()V

    goto/16 :goto_1

    .line 610
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/browser/view/ScrollerView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1741
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsLayoutDirty:Z

    .line 1744
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/android/browser/view/ScrollerView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1745
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/browser/view/ScrollerView;->scrollToChild(Landroid/view/View;)V

    .line 1747
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/view/ScrollerView;->mChildToScrollTo:Landroid/view/View;

    .line 1750
    iget v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/view/ScrollerView;->scrollTo(II)V

    .line 1751
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 350
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 352
    iget-boolean v7, p0, Lcom/android/browser/view/ScrollerView;->mFillViewport:Z

    if-nez v7, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 357
    .local v4, heightMode:I
    if-eqz v4, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 362
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 363
    .local v0, child:Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v7, :cond_2

    .line 364
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getMeasuredWidth()I

    move-result v6

    .line 365
    .local v6, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-ge v7, v6, :cond_0

    .line 366
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 369
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v7, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    iget v8, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v7, v8}, Lcom/android/browser/view/ScrollerView;->getChildMeasureSpec(III)I

    move-result v1

    .line 372
    .local v1, childHeightMeasureSpec:I
    iget v7, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    sub-int/2addr v6, v7

    .line 373
    iget v7, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    sub-int/2addr v6, v7

    .line 374
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 377
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 380
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v5           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v6           #width:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getMeasuredHeight()I

    move-result v3

    .line 381
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-ge v7, v3, :cond_0

    .line 382
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 385
    .restart local v5       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v7, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    iget v8, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v7, v8}, Lcom/android/browser/view/ScrollerView;->getChildMeasureSpec(III)I

    move-result v2

    .line 388
    .restart local v2       #childWidthMeasureSpec:I
    iget v7, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    sub-int/2addr v3, v7

    .line 389
    iget v7, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    sub-int/2addr v3, v7

    .line 390
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 393
    .restart local v1       #childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onOrthoDrag(Landroid/view/View;F)V
    .locals 0
    .parameter "draggedView"
    .parameter "distance"

    .prologue
    .line 861
    return-void
.end method

.method protected onOrthoDragFinished(Landroid/view/View;)V
    .locals 0
    .parameter "draggedView"

    .prologue
    .line 864
    return-void
.end method

.method protected onOrthoFling(Landroid/view/View;F)V
    .locals 0
    .parameter "draggedView"
    .parameter "velocity"

    .prologue
    .line 867
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 7
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v3, 0x0

    .line 873
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 874
    iput p1, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    .line 875
    iput p2, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    .line 876
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->invalidateParentIfNeeded()V

    .line 877
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 878
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 885
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->awakenScrollBars()Z

    .line 886
    return-void

    .line 879
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    .line 880
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    goto :goto_0

    .line 883
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onPull(I)V
    .locals 0
    .parameter "delta"

    .prologue
    .line 789
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1679
    iget-boolean v2, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v2, :cond_3

    .line 1680
    if-ne p1, v4, :cond_2

    .line 1681
    const/16 p1, 0x42

    .line 1693
    :cond_0
    :goto_0
    if-nez p2, :cond_5

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1698
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_6

    .line 1706
    :cond_1
    :goto_2
    return v1

    .line 1682
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    if-ne p1, v3, :cond_0

    .line 1683
    const/16 p1, 0x11

    goto :goto_0

    .line 1686
    :cond_3
    if-ne p1, v4, :cond_4

    .line 1687
    const/16 p1, 0x82

    goto :goto_0

    .line 1688
    :cond_4
    if-ne p1, v3, :cond_0

    .line 1689
    const/16 p1, 0x21

    goto :goto_0

    .line 1693
    :cond_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1702
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/browser/view/ScrollerView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1706
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1755
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1757
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1758
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1770
    :cond_0
    :goto_0
    return-void

    .line 1764
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Lcom/android/browser/view/ScrollerView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1765
    iget-object v2, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1766
    iget-object v2, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/view/ScrollerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1767
    iget-object v2, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/browser/view/ScrollerView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1768
    .local v1, scrollDelta:I
    invoke-direct {p0, v1}, Lcom/android/browser/view/ScrollerView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33
    .parameter "ev"

    .prologue
    .line 623
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->initVelocityTrackerIfNotExists()V

    .line 624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 626
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v21

    .line 627
    .local v21, action:I
    move/from16 v0, v21

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 780
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 629
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    .line 630
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    if-nez v3, :cond_2

    .line 631
    const/4 v3, 0x0

    goto :goto_1

    .line 629
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 638
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_3

    .line 641
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v3}, Landroid/os/StrictMode$Span;->finish()V

    .line 642
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 647
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    :goto_3
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/browser/view/ScrollerView;->mLastMotionY:F

    .line 648
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    goto :goto_0

    .line 647
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    goto :goto_3

    .line 652
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mIsOrthoDragged:Z

    if-eqz v3, :cond_6

    .line 654
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    .line 655
    .local v22, activePointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v31

    .line 656
    .local v31, x:F
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v32

    .line 657
    .local v32, y:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mDownCoords:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v31, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/view/ScrollerView;->mDownCoords:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, v32, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/browser/view/ScrollerView;->isOrthoMove(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 658
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/view/ScrollerView;->mDownView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mDownCoords:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v32, v3

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3}, Lcom/android/browser/view/ScrollerView;->onOrthoDrag(Landroid/view/View;F)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mDownCoords:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v31, v3

    goto :goto_4

    .line 662
    .end local v22           #activePointerIndex:I
    .end local v31           #x:F
    .end local v32           #y:F
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    .line 664
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    .line 665
    .restart local v22       #activePointerIndex:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v32

    .line 667
    .restart local v32       #y:F
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mLastMotionY:F

    sub-float v3, v3, v32

    float-to-int v4, v3

    .line 668
    .local v4, deltaY:I
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/view/ScrollerView;->mLastMotionY:F

    .line 670
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    move/from16 v25, v0

    .line 671
    .local v25, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    move/from16 v26, v0

    .line 672
    .local v26, oldY:I
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v8

    .line 673
    .local v8, range:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_a

    .line 674
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/browser/view/ScrollerView;->mOverscrollDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/android/browser/view/ScrollerView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 686
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v3, v5, v1, v2}, Lcom/android/browser/view/ScrollerView;->onScrollChanged(IIII)V

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->getOverScrollMode()I

    move-result v27

    .line 689
    .local v27, overscrollMode:I
    if-eqz v27, :cond_8

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_0

    if-lez v8, :cond_0

    .line 691
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_b

    add-int v28, v25, v4

    .line 692
    .local v28, pulledToY:I
    :goto_7
    if-gez v28, :cond_c

    .line 693
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/browser/view/ScrollerView;->onPull(I)V

    goto/16 :goto_0

    .line 665
    .end local v4           #deltaY:I
    .end local v8           #range:I
    .end local v25           #oldX:I
    .end local v26           #oldY:I
    .end local v27           #overscrollMode:I
    .end local v28           #pulledToY:I
    .end local v32           #y:F
    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v32

    goto :goto_5

    .line 680
    .restart local v4       #deltaY:I
    .restart local v8       #range:I
    .restart local v25       #oldX:I
    .restart local v26       #oldY:I
    .restart local v32       #y:F
    :cond_a
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/ScrollerView;->mOverscrollDistance:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v9, p0

    move v11, v4

    move v15, v8

    invoke-virtual/range {v9 .. v18}, Lcom/android/browser/view/ScrollerView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_6

    .line 691
    .restart local v27       #overscrollMode:I
    :cond_b
    add-int v28, v26, v4

    goto :goto_7

    .line 694
    .restart local v28       #pulledToY:I
    :cond_c
    move/from16 v0, v28

    if-le v0, v8, :cond_d

    .line 695
    sub-int v3, v28, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/browser/view/ScrollerView;->onPull(I)V

    goto/16 :goto_0

    .line 697
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/browser/view/ScrollerView;->onPull(I)V

    goto/16 :goto_0

    .line 703
    .end local v4           #deltaY:I
    .end local v8           #range:I
    .end local v22           #activePointerIndex:I
    .end local v25           #oldX:I
    .end local v26           #oldY:I
    .end local v27           #overscrollMode:I
    .end local v28           #pulledToY:I
    .end local v32           #y:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v30, v0

    .line 704
    .local v30, vtracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/browser/view/ScrollerView;->mMaximumVelocity:I

    int-to-float v5, v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 705
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/browser/view/ScrollerView;->isOrthoMove(FF)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mMinimumVelocity:I

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_e

    invoke-virtual/range {v30 .. v30}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    :goto_8
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v5, v3

    if-gez v3, :cond_10

    .line 709
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/view/ScrollerView;->mDownView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_f

    invoke-virtual/range {v30 .. v30}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3}, Lcom/android/browser/view/ScrollerView;->onOrthoFling(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 705
    :cond_e
    invoke-virtual/range {v30 .. v30}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    goto :goto_8

    .line 709
    :cond_f
    invoke-virtual/range {v30 .. v30}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    goto :goto_9

    .line 713
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mIsOrthoDragged:Z

    if-eqz v3, :cond_11

    .line 714
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mDownView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/browser/view/ScrollerView;->onOrthoDragFinished(Landroid/view/View;)V

    .line 715
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    .line 716
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->endDrag()V

    goto/16 :goto_0

    .line 717
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    .line 719
    .local v29, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/browser/view/ScrollerView;->mMaximumVelocity:I

    int-to-float v5, v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 720
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v24, v0

    .line 724
    .local v24, initialVelocity:I
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_13

    .line 725
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/browser/view/ScrollerView;->mMinimumVelocity:I

    if-le v3, v5, :cond_15

    .line 726
    move/from16 v0, v24

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/browser/view/ScrollerView;->fling(I)V

    .line 739
    :cond_12
    :goto_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/browser/view/ScrollerView;->onPull(I)V

    .line 742
    :cond_13
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    .line 743
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->endDrag()V

    goto/16 :goto_0

    .line 720
    .end local v24           #initialVelocity:I
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v24, v0

    goto :goto_a

    .line 728
    .restart local v24       #initialVelocity:I
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v13

    .line 729
    .local v13, bottom:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_16

    .line 730
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->invalidate()V

    goto :goto_b

    .line 734
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v13

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->invalidate()V

    goto :goto_b

    .line 747
    .end local v13           #bottom:I
    .end local v24           #initialVelocity:I
    .end local v29           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v30           #vtracker:Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mIsOrthoDragged:Z

    if-eqz v3, :cond_17

    .line 748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mDownView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/browser/view/ScrollerView;->onOrthoDragFinished(Landroid/view/View;)V

    .line 749
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    .line 750
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->endDrag()V

    goto/16 :goto_0

    .line 751
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 752
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_19

    .line 753
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->invalidate()V

    .line 761
    :cond_18
    :goto_c
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    .line 762
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->endDrag()V

    goto/16 :goto_0

    .line 757
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v20

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->invalidate()V

    goto :goto_c

    .line 766
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v23

    .line 767
    .local v23, index:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_1a

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v32

    .line 768
    .restart local v32       #y:F
    :goto_d
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/view/ScrollerView;->mLastMotionY:F

    .line 769
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_1b

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    :goto_e
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/browser/view/ScrollerView;->mLastOrthoCoord:F

    .line 770
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    goto/16 :goto_0

    .line 767
    .end local v32           #y:F
    :cond_1a
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v32

    goto :goto_d

    .line 769
    .restart local v32       #y:F
    :cond_1b
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    goto :goto_e

    .line 774
    .end local v23           #index:I
    .end local v32           #y:F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/browser/view/ScrollerView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 775
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    :goto_f
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/browser/view/ScrollerView;->mLastMotionY:F

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    goto :goto_f

    .line 627
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1063
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1064
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v2

    .line 1066
    .local v2, height:I
    if-eqz v1, :cond_2

    .line 1067
    iget-object v4, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1068
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v0

    .line 1069
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1070
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1071
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1072
    iget-object v4, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1081
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1083
    iget-object v4, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/browser/view/ScrollerView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v4

    .line 1063
    goto :goto_0

    .line 1076
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_2
    iget-object v5, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1077
    iget-object v5, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 1078
    iget-object v5, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1656
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1657
    invoke-direct {p0, p2}, Lcom/android/browser/view/ScrollerView;->scrollToChild(Landroid/view/View;)V

    .line 1662
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1663
    return-void

    .line 1660
    :cond_0
    iput-object p2, p0, Lcom/android/browser/view/ScrollerView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1713
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1716
    invoke-direct {p0, p2, p3}, Lcom/android/browser/view/ScrollerView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 490
    if-eqz p1, :cond_0

    .line 491
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->recycleVelocityTracker()V

    .line 493
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 494
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsLayoutDirty:Z

    .line 1722
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1723
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1833
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1834
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1835
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/browser/view/ScrollerView;->clamp(III)I

    move-result p1

    .line 1836
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/android/browser/view/ScrollerView;->clamp(III)I

    move-result p2

    .line 1837
    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1838
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1841
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 328
    iput-boolean p1, p0, Lcom/android/browser/view/ScrollerView;->mFillViewport:Z

    .line 329
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->requestLayout()V

    .line 331
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 194
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    .line 195
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->requestLayout()V

    .line 196
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 15
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1275
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v11

    if-nez v11, :cond_0

    .line 1308
    :goto_0
    return-void

    .line 1279
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/android/browser/view/ScrollerView;->mLastScroll:J

    sub-long v2, v11, v13

    .line 1280
    .local v2, duration:J
    const-wide/16 v11, 0xfa

    cmp-long v11, v2, v11

    if-lez v11, :cond_2

    .line 1281
    iget-boolean v11, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v11, :cond_1

    .line 1282
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v11

    iget v12, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    sub-int v10, v11, v12

    .line 1283
    .local v10, width:I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 1284
    .local v7, right:I
    const/4 v11, 0x0

    sub-int v12, v7, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1285
    .local v5, maxX:I
    iget v8, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    .line 1286
    .local v8, scrollX:I
    const/4 v11, 0x0

    add-int v12, v8, p1

    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    sub-int p1, v11, v8

    .line 1287
    iget-object v11, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    iget v12, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-virtual {v11, v8, v12, v0, v13}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1296
    .end local v5           #maxX:I
    .end local v7           #right:I
    .end local v8           #scrollX:I
    .end local v10           #width:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->invalidate()V

    .line 1307
    :goto_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/browser/view/ScrollerView;->mLastScroll:J

    goto :goto_0

    .line 1289
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v11

    iget v12, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    sub-int v4, v11, v12

    .line 1290
    .local v4, height:I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1291
    .local v1, bottom:I
    const/4 v11, 0x0

    sub-int v12, v1, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1292
    .local v6, maxY:I
    iget v9, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    .line 1293
    .local v9, scrollY:I
    const/4 v11, 0x0

    add-int v12, v9, p2

    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    sub-int p2, v11, v9

    .line 1294
    iget-object v11, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    iget v12, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-virtual {v11, v12, v9, v13, v0}, Landroid/widget/OverScroller;->startScroll(IIII)V

    goto :goto_1

    .line 1298
    .end local v1           #bottom:I
    .end local v4           #height:I
    .end local v6           #maxY:I
    .end local v9           #scrollY:I
    :cond_2
    iget-object v11, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v11}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_3

    .line 1299
    iget-object v11, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v11}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1300
    iget-object v11, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v11, :cond_3

    .line 1301
    iget-object v11, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v11}, Landroid/os/StrictMode$Span;->finish()V

    .line 1302
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1305
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lcom/android/browser/view/ScrollerView;->scrollBy(II)V

    goto :goto_2
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1317
    iget v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/view/ScrollerView;->smoothScrollBy(II)V

    .line 1318
    return-void
.end method
