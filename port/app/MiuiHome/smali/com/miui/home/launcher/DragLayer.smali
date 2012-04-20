.class public Lcom/miui/home/launcher/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DragLayer$LayoutParams;
    }
.end annotation


# instance fields
.field private OffsetUpdater:Ljava/lang/Runnable;

.field private mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mCurrentResizeFrame:Lcom/miui/home/launcher/AppWidgetResizeFrame;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDropAnim:Landroid/animation/ValueAnimator;

.field private mDropView:Landroid/view/View;

.field private mDropViewAlpha:F

.field private mDropViewPos:[I

.field private mDropViewScale:F

.field private mFadeOutAnim:Landroid/animation/ValueAnimator;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mOffsetChanged:Z

.field private mOldOffsetX:I

.field private final mResizeFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/AppWidgetResizeFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenSize:Landroid/graphics/Point;

.field private mTmpPos:[I

.field private mTmpPosF:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mWallpaper:Landroid/graphics/Bitmap;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperPaint:Landroid/graphics/Paint;

.field private mWpHeight:I

.field private mWpOffsetX:F

.field private mWpOffsetY:F

.field private mWpScrolling:Z

.field private mWpStepX:F

.field private mWpStepY:F

.field private mWpWidth:I

.field private mXDown:I

.field private mYDown:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput v0, p0, Lcom/miui/home/launcher/DragLayer;->mWpStepX:F

    .line 62
    iput v0, p0, Lcom/miui/home/launcher/DragLayer;->mWpStepY:F

    .line 63
    iput v0, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetX:F

    .line 64
    iput v0, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetY:F

    .line 66
    iput v1, p0, Lcom/miui/home/launcher/DragLayer;->mWpWidth:I

    .line 67
    iput v1, p0, Lcom/miui/home/launcher/DragLayer;->mWpHeight:I

    .line 68
    iput v1, p0, Lcom/miui/home/launcher/DragLayer;->mOldOffsetX:I

    .line 69
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragLayer;->mOffsetChanged:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/DragLayer;->mWpScrolling:Z

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    .line 83
    iput-object v3, p0, Lcom/miui/home/launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 84
    iput-object v3, p0, Lcom/miui/home/launcher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 85
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 86
    iput-object v3, p0, Lcom/miui/home/launcher/DragLayer;->mDropView:Landroid/view/View;

    .line 88
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mDropViewPos:[I

    .line 89
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mTmpPos:[I

    .line 90
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mTmpPosF:[F

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mTmpRect:Landroid/graphics/Rect;

    .line 323
    new-instance v0, Lcom/miui/home/launcher/DragLayer$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/DragLayer$1;-><init>(Lcom/miui/home/launcher/DragLayer;)V

    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->OffsetUpdater:Ljava/lang/Runnable;

    .line 102
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mWallpaperPaint:Landroid/graphics/Paint;

    .line 104
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mScreenSize:Landroid/graphics/Point;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/DragLayer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mDropViewPos:[I

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/DragLayer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/miui/home/launcher/DragLayer;->mDropViewScale:F

    return p1
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/DragLayer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/miui/home/launcher/DragLayer;->mDropViewAlpha:F

    return p1
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/DragLayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/miui/home/launcher/DragLayer;->fadeOutDragView()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/DragLayer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mDropView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/DragLayer;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer;->mDropView:Landroid/view/View;

    return-object p1
.end method

.method private animateViewIntoPosition(Landroid/view/View;IIIIFLjava/lang/Runnable;ZI)V
    .locals 14
    .parameter "view"
    .parameter "fromX"
    .parameter "fromY"
    .parameter "toX"
    .parameter "toY"
    .parameter "scale"
    .parameter "onCompleteRunnable"
    .parameter "fadeOut"
    .parameter "duration"

    .prologue
    .line 459
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p3

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 461
    .local v4, from:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p5

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 462
    .local v5, to:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getTouchTranslator()Lcom/miui/home/launcher/DragController$TouchTranslator;

    move-result-object v13

    .line 463
    .local v13, tt:Lcom/miui/home/launcher/DragController$TouchTranslator;
    if-eqz v13, :cond_0

    .line 464
    invoke-interface {v13, v5}, Lcom/miui/home/launcher/DragController$TouchTranslator;->translatePosition(Landroid/graphics/Rect;)V

    .line 466
    :cond_0
    const/high16 v6, 0x3f80

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v7, v2, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v2, p0

    move-object v3, p1

    move/from16 v8, p9

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v12}, Lcom/miui/home/launcher/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V

    .line 468
    return-void
.end method

.method private fadeOutDragView()V
    .locals 3

    .prologue
    .line 562
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 563
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 564
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 565
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 566
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/DragLayer$5;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/DragLayer$5;-><init>(Lcom/miui/home/launcher/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 576
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/DragLayer$6;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/DragLayer$6;-><init>(Lcom/miui/home/launcher/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 581
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 582
    return-void

    .line 564
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;Z)Z
    .locals 8
    .parameter "ev"
    .parameter "intercept"

    .prologue
    const/4 v5, 0x1

    .line 205
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 206
    .local v1, hitRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 207
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 209
    .local v4, y:I
    iget-object v6, p0, Lcom/miui/home/launcher/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;

    .line 210
    .local v0, child:Lcom/miui/home/launcher/AppWidgetResizeFrame;
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 211
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getLeft()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getTop()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {v0, v6, v7}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 213
    iput-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mCurrentResizeFrame:Lcom/miui/home/launcher/AppWidgetResizeFrame;

    .line 214
    iput v3, p0, Lcom/miui/home/launcher/DragLayer;->mXDown:I

    .line 215
    iput v4, p0, Lcom/miui/home/launcher/DragLayer;->mYDown:I

    .line 216
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    .line 221
    .end local v0           #child:Lcom/miui/home/launcher/AppWidgetResizeFrame;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addResizeFrame(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherAppWidgetHostView;Lcom/miui/home/launcher/CellLayout;)V
    .locals 8
    .parameter "itemInfo"
    .parameter "widget"
    .parameter "cellLayout"

    .prologue
    const/4 v7, -0x1

    .line 388
    new-instance v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherAppWidgetHostView;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DragLayer;)V

    .line 391
    .local v0, resizeFrame:Lcom/miui/home/launcher/AppWidgetResizeFrame;
    new-instance v6, Lcom/miui/home/launcher/DragLayer$LayoutParams;

    invoke-direct {v6, v7, v7}, Lcom/miui/home/launcher/DragLayer$LayoutParams;-><init>(II)V

    .line 392
    .local v6, lp:Lcom/miui/home/launcher/DragLayer$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v6, Lcom/miui/home/launcher/DragLayer$LayoutParams;->customPosition:Z

    .line 394
    invoke-virtual {p0, v0, v6}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget-object v1, p0, Lcom/miui/home/launcher/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 398
    return-void
.end method

.method public animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V
    .locals 17
    .parameter "view"
    .parameter "from"
    .parameter "to"
    .parameter "finalAlpha"
    .parameter "finalScale"
    .parameter "duration"
    .parameter "motionInterpolator"
    .parameter "alphaInterpolator"
    .parameter "onCompleteRunnable"
    .parameter "fadeOut"

    .prologue
    .line 493
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    const-wide/high16 v7, 0x4000

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v13, v3

    .line 495
    .local v13, dist:F
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 496
    .local v15, res:Landroid/content/res/Resources;
    const v3, 0x7f0a000a

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v14, v3

    .line 499
    .local v14, maxDist:F
    if-gez p6, :cond_0

    .line 500
    const v3, 0x7f0a0008

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p6

    .line 501
    cmpg-float v3, v13, v14

    if-gez v3, :cond_0

    .line 502
    move/from16 v0, p6

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    div-float v5, v13, v14

    invoke-interface {v4, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 p6, v0

    .line 506
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    .line 507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 510
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    .line 511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 514
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/home/launcher/DragLayer;->mDropView:Landroid/view/View;

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v12

    .line 516
    .local v12, initialAlpha:F
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miui/home/launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 517
    if-eqz p8, :cond_3

    if-nez p7, :cond_4

    .line 518
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 521
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    move/from16 v0, p6

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v16, v0

    new-instance v3, Lcom/miui/home/launcher/DragLayer$3;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p5

    move/from16 v11, p4

    invoke-direct/range {v3 .. v12}, Lcom/miui/home/launcher/DragLayer$3;-><init>(Lcom/miui/home/launcher/DragLayer;Landroid/view/View;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/graphics/Rect;Landroid/graphics/Rect;FFF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/miui/home/launcher/DragLayer$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move/from16 v2, p10

    invoke-direct {v4, v0, v1, v2}, Lcom/miui/home/launcher/DragLayer$4;-><init>(Lcom/miui/home/launcher/DragLayer;Ljava/lang/Runnable;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 559
    return-void

    .line 522
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public animateViewIntoPosition(Lcom/miui/home/launcher/DragView;Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 15
    .parameter "dragView"
    .parameter "child"
    .parameter "duration"
    .parameter "onFinishAnimationRunnable"

    .prologue
    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/CellLayout;

    if-eqz v2, :cond_1

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/miui/home/launcher/CellLayout;

    .line 423
    .local v12, cl:Lcom/miui/home/launcher/CellLayout;
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/miui/home/launcher/CellLayout;->measureChild(Landroid/view/View;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 425
    .local v13, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mTmpPos:[I

    const/4 v3, 0x0

    iget v10, v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;->x:I

    aput v10, v2, v3

    .line 426
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mTmpPos:[I

    const/4 v3, 0x1

    iget v10, v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    aput v10, v2, v3

    .line 435
    iget-object v14, p0, Lcom/miui/home/launcher/DragLayer;->mTmpRect:Landroid/graphics/Rect;

    .line 436
    .local v14, r:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v14}, Lcom/miui/home/launcher/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/miui/home/launcher/DragLayer;->mTmpPos:[I

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v8

    .line 439
    .local v8, scale:F
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mTmpPos:[I

    const/4 v3, 0x0

    aget v6, v2, v3

    .line 440
    .local v6, toX:I
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mTmpPos:[I

    const/4 v3, 0x1

    aget v7, v2, v3

    .line 442
    .local v7, toY:I
    iget v4, v14, Landroid/graphics/Rect;->left:I

    .line 443
    .local v4, fromX:I
    iget v5, v14, Landroid/graphics/Rect;->top:I

    .line 444
    .local v5, fromY:I
    const/4 v2, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 445
    new-instance v9, Lcom/miui/home/launcher/DragLayer$2;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {v9, p0, v0, v1}, Lcom/miui/home/launcher/DragLayer$2;-><init>(Lcom/miui/home/launcher/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 453
    .local v9, onCompleteRunnable:Ljava/lang/Runnable;
    const/4 v10, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/miui/home/launcher/DragLayer;->animateViewIntoPosition(Landroid/view/View;IIIIFLjava/lang/Runnable;ZI)V

    .line 454
    .end local v4           #fromX:I
    .end local v5           #fromY:I
    .end local v6           #toX:I
    .end local v7           #toY:I
    .end local v8           #scale:F
    .end local v9           #onCompleteRunnable:Ljava/lang/Runnable;
    .end local v12           #cl:Lcom/miui/home/launcher/CellLayout;
    .end local v13           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    .end local v14           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 429
    if-eqz p4, :cond_0

    .line 430
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public animateViewIntoPosition(Lcom/miui/home/launcher/DragView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "dragView"
    .parameter "child"
    .parameter "onFinishAnimationRunnable"

    .prologue
    .line 416
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/home/launcher/DragLayer;->animateViewIntoPosition(Lcom/miui/home/launcher/DragView;Landroid/view/View;ILjava/lang/Runnable;)V

    .line 417
    return-void
.end method

.method public clearAllResizeFrames()V
    .locals 3

    .prologue
    .line 370
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppWidgetResizeFrame;

    .line 372
    .local v0, frame:Lcom/miui/home/launcher/AppWidgetResizeFrame;
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 374
    .end local v0           #frame:Lcom/miui/home/launcher/AppWidgetResizeFrame;
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 376
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x1

    .line 586
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 587
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/miui/home/launcher/DragLayer;->mOldOffsetX:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/home/launcher/DragLayer;->mWallpaperPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 589
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 590
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mDropView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 593
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->save(I)I

    .line 594
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mDropViewPos:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/DragLayer;->mDropView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int v0, v2, v3

    .line 595
    .local v0, xPos:I
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mDropViewPos:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/miui/home/launcher/DragLayer;->mDropView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int v1, v2, v3

    .line 596
    .local v1, yPos:I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 597
    iget v2, p0, Lcom/miui/home/launcher/DragLayer;->mDropViewScale:F

    iget v3, p0, Lcom/miui/home/launcher/DragLayer;->mDropViewScale:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 598
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mDropView:Landroid/view/View;

    iget v3, p0, Lcom/miui/home/launcher/DragLayer;->mDropViewAlpha:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 599
    iget-object v2, p0, Lcom/miui/home/launcher/DragLayer;->mDropView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 600
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 602
    .end local v0           #xPos:I
    .end local v1           #yPos:I
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 1
    .parameter "region"

    .prologue
    .line 615
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 616
    const/4 v0, 0x0

    return v0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 9
    .parameter "descendant"
    .parameter "coord"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 116
    const/high16 v1, 0x3f80

    .line 117
    .local v1, scale:F
    const/4 v4, 0x2

    new-array v0, v4, [F

    aget v4, p2, v7

    int-to-float v4, v4

    aput v4, v0, v7

    aget v4, p2, v8

    int-to-float v4, v4

    aput v4, v0, v8

    .line 118
    .local v0, pt:[F
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 120
    aget v4, v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 121
    aget v4, v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v8

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 123
    .local v3, viewParent:Landroid/view/ViewParent;
    :goto_0
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_0

    if-eq v3, p0, :cond_0

    move-object v2, v3

    .line 124
    check-cast v2, Landroid/view/View;

    .line 125
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 126
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 127
    aget v4, v0, v7

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 128
    aget v4, v0, v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v8

    .line 129
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 130
    goto :goto_0

    .line 131
    .end local v2           #view:Landroid/view/View;
    :cond_0
    aget v4, v0, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v7

    .line 132
    aget v4, v0, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v8

    .line 133
    return v1
.end method

.method public getLocationInDragLayer(Landroid/view/View;[I)V
    .locals 2
    .parameter "child"
    .parameter "loc"

    .prologue
    const/4 v1, 0x0

    .line 271
    aput v1, p2, v1

    .line 272
    const/4 v0, 0x1

    aput v1, p2, v0

    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 274
    return-void
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "v"
    .parameter "r"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 137
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 138
    .local v1, loc:[I
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/DragLayer;->getLocationInWindow([I)V

    .line 139
    aget v5, v1, v8

    .line 140
    .local v5, x:I
    aget v6, v1, v9

    .line 142
    .local v6, y:I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 143
    aget v3, v1, v8

    .line 144
    .local v3, vX:I
    aget v4, v1, v9

    .line 146
    .local v4, vY:I
    sub-int v0, v3, v5

    .line 147
    .local v0, left:I
    sub-int v2, v4, v6

    .line 148
    .local v2, top:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p2, v0, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 149
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4
    .parameter "location"
    .parameter "dirty"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/DragLayer;->mOffsetChanged:Z

    if-eqz v0, :cond_0

    .line 607
    iget v0, p0, Lcom/miui/home/launcher/DragLayer;->mLeft:I

    iget v1, p0, Lcom/miui/home/launcher/DragLayer;->mTop:I

    iget v2, p0, Lcom/miui/home/launcher/DragLayer;->mRight:I

    iget v3, p0, Lcom/miui/home/launcher/DragLayer;->mBottom:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/DragLayer;->mOffsetChanged:Z

    .line 610
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v0, 0x1

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 227
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    :goto_0
    return v0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 355
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 356
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->getChildCount()I

    move-result v1

    .line 357
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 358
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 359
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 360
    .local v2, flp:Landroid/widget/FrameLayout$LayoutParams;
    instance-of v5, v2, Lcom/miui/home/launcher/DragLayer$LayoutParams;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 361
    check-cast v4, Lcom/miui/home/launcher/DragLayer$LayoutParams;

    .line 362
    .local v4, lp:Lcom/miui/home/launcher/DragLayer$LayoutParams;
    iget-boolean v5, v4, Lcom/miui/home/launcher/DragLayer$LayoutParams;->customPosition:Z

    if-eqz v5, :cond_0

    .line 363
    iget v5, v4, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    iget v6, v4, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    iget v7, v4, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    iget v8, v4, Lcom/miui/home/launcher/DragLayer$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v4, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    iget v9, v4, Lcom/miui/home/launcher/DragLayer$LayoutParams;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 357
    .end local v4           #lp:Lcom/miui/home/launcher/DragLayer$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 367
    .end local v0           #child:Landroid/view/View;
    .end local v2           #flp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 240
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 241
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 243
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    .line 244
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/miui/home/launcher/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v4

    .line 249
    :cond_1
    iget-object v5, p0, Lcom/miui/home/launcher/DragLayer;->mCurrentResizeFrame:Lcom/miui/home/launcher/AppWidgetResizeFrame;

    if-eqz v5, :cond_2

    .line 250
    const/4 v1, 0x1

    .line 251
    packed-switch v0, :pswitch_data_0

    .line 261
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    .line 262
    iget-object v4, p0, Lcom/miui/home/launcher/DragLayer;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v4, p1}, Lcom/miui/home/launcher/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 253
    :pswitch_0
    iget-object v5, p0, Lcom/miui/home/launcher/DragLayer;->mCurrentResizeFrame:Lcom/miui/home/launcher/AppWidgetResizeFrame;

    iget v6, p0, Lcom/miui/home/launcher/DragLayer;->mXDown:I

    sub-int v6, v2, v6

    iget v7, p0, Lcom/miui/home/launcher/DragLayer;->mYDown:I

    sub-int v7, v3, v7

    invoke-virtual {v5, v6, v7}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_1

    .line 257
    :pswitch_1
    iget-object v5, p0, Lcom/miui/home/launcher/DragLayer;->mCurrentResizeFrame:Lcom/miui/home/launcher/AppWidgetResizeFrame;

    iget v6, p0, Lcom/miui/home/launcher/DragLayer;->mXDown:I

    sub-int v6, v2, v6

    iget v7, p0, Lcom/miui/home/launcher/DragLayer;->mYDown:I

    sub-int v7, v3, v7

    invoke-virtual {v5, v6, v7}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->commitResizeForDelta(II)V

    .line 258
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/miui/home/launcher/DragLayer;->mCurrentResizeFrame:Lcom/miui/home/launcher/AppWidgetResizeFrame;

    goto :goto_1

    .line 251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 197
    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 2
    .parameter "launcher"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 278
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DragLayer;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 279
    return-void
.end method

.method public updateWallpaper()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 282
    iget-object v3, p0, Lcom/miui/home/launcher/DragLayer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 283
    .local v2, sp:Landroid/content/SharedPreferences;
    const/4 v0, 0x1

    .line 284
    .local v0, renderInTrueColor:Z
    const-string v3, "pref_key_wallpaper_scroll_type"

    const-string v4, "byTheme"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, scrollCfg:Ljava/lang/String;
    const-string v3, "byTheme"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/home/launcher/DragLayer;->mWpScrolling:Z

    .line 290
    const-string v3, "left"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    const/4 v3, 0x0

    iput v3, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetX:F

    .line 306
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/DragLayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/Window;->setFormat(I)V

    .line 307
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/home/launcher/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    .line 310
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffset()V

    .line 311
    return-void

    .line 292
    :cond_1
    const-string v3, "center"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 293
    const/high16 v3, 0x3f00

    iput v3, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetX:F

    goto :goto_0

    .line 294
    :cond_2
    const-string v3, "right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 295
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetX:F

    goto :goto_0

    .line 297
    :cond_3
    iput-boolean v5, p0, Lcom/miui/home/launcher/DragLayer;->mWpScrolling:Z

    goto :goto_0
.end method

.method public updateWallpaperOffset()V
    .locals 7

    .prologue
    .line 331
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/miui/home/launcher/DragLayer;->mWpStepX:F

    iget v2, p0, Lcom/miui/home/launcher/DragLayer;->mWpStepY:F

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 333
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRootImpl;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetX:F

    iget v3, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetY:F

    iget v4, p0, Lcom/miui/home/launcher/DragLayer;->mWpStepX:F

    iget v5, p0, Lcom/miui/home/launcher/DragLayer;->mWpStepY:F

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->OffsetUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 342
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer;->OffsetUpdater:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 345
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/DragLayer;->mWpWidth:I

    iget-object v1, p0, Lcom/miui/home/launcher/DragLayer;->mScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetX:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 346
    .local v6, left:I
    iget v0, p0, Lcom/miui/home/launcher/DragLayer;->mOldOffsetX:I

    if-eq v0, v6, :cond_2

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/DragLayer;->mOffsetChanged:Z

    .line 349
    :cond_2
    iput v6, p0, Lcom/miui/home/launcher/DragLayer;->mOldOffsetX:I

    goto :goto_0

    .line 337
    .end local v6           #left:I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateWallpaperOffset(FFFF)V
    .locals 1
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragLayer;->mWpScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetX:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_0

    .line 315
    iput p1, p0, Lcom/miui/home/launcher/DragLayer;->mWpStepX:F

    .line 316
    iput p2, p0, Lcom/miui/home/launcher/DragLayer;->mWpStepY:F

    .line 317
    iput p3, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetX:F

    .line 318
    iput p4, p0, Lcom/miui/home/launcher/DragLayer;->mWpOffsetY:F

    .line 319
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffset()V

    .line 321
    :cond_0
    return-void
.end method
