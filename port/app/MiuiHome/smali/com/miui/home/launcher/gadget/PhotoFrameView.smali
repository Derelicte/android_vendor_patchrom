.class public Lcom/miui/home/launcher/gadget/PhotoFrameView;
.super Landroid/view/View;
.source "PhotoFrameView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/PhotoFrameView$OnSizeChangedListener;
    }
.end annotation


# instance fields
.field private mAutoAdjustMinZoom:Z

.field private mBitmapDisplayed:Landroid/graphics/Bitmap;

.field private mCurrentDownTime:J

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field private final mDown:Landroid/graphics/PointF;

.field private mFilterBitmap:Landroid/graphics/Bitmap;

.field private mFilterPaint:Landroid/graphics/Paint;

.field private mFrameBitmap:Landroid/graphics/Bitmap;

.field private final mLastDown:Landroid/graphics/PointF;

.field private mLastDownTime:J

.field private final mLastMove:Landroid/graphics/PointF;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private final mMatrixTemp:Landroid/graphics/Matrix;

.field private final mMatrixValuesTemp:[F

.field private final mMidPoint:Landroid/graphics/PointF;

.field private mMinZoom:F

.field private mMode:I

.field private mOldDist:F

.field private mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPrepareValues:[F

.field private mRotation:I

.field private mSizeChangedListener:Lcom/miui/home/launcher/gadget/PhotoFrameView$OnSizeChangedListener;

.field private mTempBitmap:Landroid/graphics/Bitmap;

.field private mTransformedFilterBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 207
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDown:Landroid/graphics/PointF;

    .line 208
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mLastMove:Landroid/graphics/PointF;

    .line 209
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMidPoint:Landroid/graphics/PointF;

    .line 210
    iput v3, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMode:I

    .line 211
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mOldDist:F

    .line 213
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mLastDown:Landroid/graphics/PointF;

    .line 214
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mCurrentDownTime:J

    .line 215
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mLastDownTime:J

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mAutoAdjustMinZoom:Z

    .line 335
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 338
    iput v3, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mRotation:I

    .line 344
    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mPrepareValues:[F

    .line 347
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    .line 349
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    .line 352
    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 355
    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    .line 358
    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    .line 360
    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    .line 362
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMinZoom:F

    .line 363
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFilterPaint:Landroid/graphics/Paint;

    .line 364
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMaskPaint:Landroid/graphics/Paint;

    .line 365
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x7

    invoke-direct {v0, v3, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    .line 391
    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFilterPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMaskPaint:Landroid/graphics/Paint;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 46
    return-void
.end method

.method private center(ZZ)V
    .locals 12
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 507
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 508
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->invalidate()V

    .line 544
    :goto_0
    return-void

    .line 513
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 514
    .local v4, rect:Landroid/graphics/RectF;
    iget-object v8, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 516
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 517
    .local v3, height:F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 519
    .local v7, width:F
    const/4 v1, 0x0

    .local v1, deltaX:F
    const/4 v2, 0x0

    .line 521
    .local v2, deltaY:F
    if-eqz p2, :cond_1

    .line 522
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getHeight()I

    move-result v5

    .line 523
    .local v5, viewHeight:I
    int-to-float v8, v5

    cmpg-float v8, v3, v8

    if-gez v8, :cond_3

    .line 524
    int-to-float v8, v5

    sub-float/2addr v8, v3

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v2, v8, v9

    .line 532
    .end local v5           #viewHeight:I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 533
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getWidth()I

    move-result v6

    .line 534
    .local v6, viewWidth:I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    .line 535
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v1, v8, v9

    .line 542
    .end local v6           #viewWidth:I
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 543
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->invalidate()V

    goto :goto_0

    .line 525
    .restart local v5       #viewHeight:I
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    .line 526
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v2, v8

    goto :goto_1

    .line 527
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 528
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v8, v9

    goto :goto_1

    .line 536
    .end local v5           #viewHeight:I
    .restart local v6       #viewWidth:I
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 537
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v1, v8

    goto :goto_2

    .line 538
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 539
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v1, v8, v9

    goto :goto_2
.end method

.method private convertMatrixReference([FZ)Z
    .locals 6
    .parameter "values"
    .parameter "toRaw"

    .prologue
    const/4 v3, 0x1

    .line 547
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getWidth()I

    move-result v4

    if-nez v4, :cond_1

    .line 548
    const/4 v3, 0x0

    .line 566
    :cond_0
    :goto_0
    return v3

    .line 551
    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 555
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 556
    .local v2, m:Landroid/graphics/Matrix;
    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 558
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 559
    .local v0, dx:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 560
    .local v1, dy:I
    if-nez p2, :cond_2

    .line 561
    neg-int v0, v0

    .line 562
    neg-int v1, v1

    .line 564
    :cond_2
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 565
    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->getValues([F)V

    goto :goto_0
.end method

.method private fitCenter()V
    .locals 12

    .prologue
    const/high16 v11, 0x4000

    .line 457
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v7, :cond_0

    .line 476
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v6, v7

    .line 462
    .local v6, w:F
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 463
    .local v0, h:F
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 464
    iget v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mRotation:I

    if-eqz v7, :cond_1

    .line 465
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mRotation:I

    int-to-float v8, v8

    div-float v9, v6, v11

    div-float v10, v0, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 468
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getFitCenterScale()F

    move-result v1

    .line 469
    .local v1, scale:F
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 471
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getWidth()I

    move-result v5

    .line 472
    .local v5, viewWidth:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getHeight()I

    move-result v4

    .line 473
    .local v4, viewHeight:I
    int-to-float v7, v5

    mul-float v8, v6, v1

    sub-float/2addr v7, v8

    div-float v2, v7, v11

    .line 474
    .local v2, tranX:F
    int-to-float v7, v4

    mul-float v8, v0, v1

    sub-float/2addr v7, v8

    div-float v3, v7, v11

    .line 475
    .local v3, tranY:F
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method public static generatePhoto(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "frame"
    .parameter "filter"
    .parameter "image"
    .parameter "matrix"
    .parameter "dftHeight"
    .parameter "dftWidth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 668
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 669
    .local v1, frameHeight:I
    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 671
    .local v2, frameWidth:I
    :goto_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 673
    .local v4, result:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 674
    .local v0, dest:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 677
    if-eqz p2, :cond_0

    .line 678
    if-eqz p3, :cond_5

    .line 679
    invoke-virtual {v0, p2, p3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 686
    :cond_0
    :goto_2
    if-eqz p1, :cond_1

    .line 687
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 688
    .local v3, maskPaint:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 689
    invoke-virtual {v0, p1, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 693
    .end local v3           #maskPaint:Landroid/graphics/Paint;
    :cond_1
    if-eqz p0, :cond_2

    .line 694
    invoke-virtual {v0, p0, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 697
    :cond_2
    return-object v4

    .end local v0           #dest:Landroid/graphics/Canvas;
    .end local v1           #frameHeight:I
    .end local v2           #frameWidth:I
    .end local v4           #result:Landroid/graphics/Bitmap;
    :cond_3
    move v1, p4

    .line 668
    goto :goto_0

    .restart local v1       #frameHeight:I
    :cond_4
    move v2, p5

    .line 669
    goto :goto_1

    .line 681
    .restart local v0       #dest:Landroid/graphics/Canvas;
    .restart local v2       #frameWidth:I
    .restart local v4       #result:Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {v0, p2, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method private getImageBounds()Landroid/graphics/RectF;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 422
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 423
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 424
    const/4 v2, 0x0

    .line 438
    :cond_0
    :goto_0
    return-object v2

    .line 427
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v2, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 428
    .local v2, rect:Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 430
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 432
    .local v1, h:I
    iget v4, v2, Landroid/graphics/RectF;->left:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 433
    iget v4, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v1

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 434
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 435
    .local v3, v:I
    iget v4, v2, Landroid/graphics/RectF;->top:F

    int-to-float v5, v3

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 436
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v3

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method private getScale()F
    .locals 3

    .prologue
    .line 444
    iget v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mRotation:I

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 446
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    .line 447
    .local v0, m:Landroid/graphics/Matrix;
    iget v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mRotation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 451
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 452
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    return v1

    .line 449
    .end local v0           #m:Landroid/graphics/Matrix;
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .restart local v0       #m:Landroid/graphics/Matrix;
    goto :goto_0
.end method

.method private isDonbleClick(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/high16 v4, 0x41a0

    .line 298
    iget-wide v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mLastDownTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mLastDownTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mLastDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mLastDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVertical()Z
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mRotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "point"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 318
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 319
    .local v0, x:F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 320
    .local v1, y:F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 321
    return-void
.end method

.method private panBy(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 306
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->invalidate()V

    .line 307
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    const/4 v0, 0x0

    .line 405
    if-eqz p1, :cond_0

    .line 406
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;III)V

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;III)V

    goto :goto_0
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;III)V
    .locals 1
    .parameter "bitmap"
    .parameter "imageRawWidth"
    .parameter "imageRawHeight"
    .parameter "orientation"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 415
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mAutoAdjustMinZoom:Z

    if-eqz v0, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->updateMinZoom()V

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->invalidate()V

    .line 419
    return-void
.end method

.method private static spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 311
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 312
    .local v0, x:F
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 313
    .local v1, y:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method private updateMinZoom()V
    .locals 6

    .prologue
    const/high16 v5, 0x41a0

    .line 479
    const/high16 v2, 0x3f80

    .line 480
    .local v2, minZoom:F
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 481
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 483
    .local v1, min:I
    :goto_0
    int-to-float v3, v1

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    .line 484
    int-to-float v3, v1

    div-float v2, v5, v3

    .line 490
    .end local v1           #min:I
    :cond_0
    :goto_1
    iput v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMinZoom:F

    .line 491
    return-void

    .line 482
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_0

    .line 486
    .restart local v1       #min:I
    :cond_2
    const/high16 v2, 0x3f80

    goto :goto_1
.end method

.method private updateTempBitmap()V
    .locals 15

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getHeight()I

    move-result v9

    .line 571
    .local v9, height:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getWidth()I

    move-result v14

    .line 572
    .local v14, width:I
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v9, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eq v1, v14, :cond_1

    .line 574
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 578
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 579
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 580
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 581
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 582
    .local v6, bm:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_3

    .line 583
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 584
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_2

    .line 585
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 587
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 588
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 591
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getWidth()I

    move-result v13

    .line 592
    .local v13, viewWidth:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getHeight()I

    move-result v12

    .line 593
    .local v12, viewHeight:I
    const/4 v10, 0x0

    .line 594
    .local v10, offsetX:I
    const/4 v11, 0x0

    .line 595
    .local v11, offsetY:I
    const/4 v7, 0x0

    .line 596
    .local v7, bmHeight:I
    const/4 v8, 0x0

    .line 597
    .local v8, bmWidth:I
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 598
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v13, v1

    div-int/lit8 v10, v1, 0x2

    .line 599
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v1, v12, v1

    div-int/lit8 v11, v1, 0x2

    .line 600
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    int-to-float v2, v10

    int-to-float v3, v11

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFilterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 601
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 602
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 605
    :cond_4
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 606
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v13, v1

    div-int/lit8 v10, v1, 0x2

    .line 607
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v1, v12, v1

    div-int/lit8 v11, v1, 0x2

    .line 608
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    int-to-float v2, v10

    int-to-float v3, v11

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 609
    if-gtz v7, :cond_5

    .line 610
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 611
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 615
    :cond_5
    if-lez v10, :cond_6

    if-lez v11, :cond_6

    add-int v1, v10, v8

    if-ge v1, v13, :cond_6

    add-int v1, v11, v7

    if-ge v1, v12, :cond_6

    .line 617
    int-to-float v1, v10

    int-to-float v2, v11

    add-int v3, v10, v8

    int-to-float v3, v3

    add-int v4, v11, v7

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 619
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v13

    int-to-float v4, v12

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 621
    :cond_6
    return-void
.end method

.method private zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v3, 0x0

    .line 494
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getScale()F

    move-result v1

    .line 495
    .local v1, oldScale:F
    div-float v0, p1, v1

    .line 496
    .local v0, deltaScale:F
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 498
    invoke-direct {p0, v3, v3}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->center(ZZ)V

    .line 499
    return-void
.end method


# virtual methods
.method public generatePhoto()Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 656
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 657
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->convertMatrixReference([FZ)Z

    .line 658
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 660
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMatrixTemp:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getWidth()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->generatePhoto(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFitCenterScale()F
    .locals 9

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getWidth()I

    move-result v5

    .line 174
    .local v5, viewWidth:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getHeight()I

    move-result v4

    .line 177
    .local v4, viewHeight:I
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    .line 178
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v1, v7

    .line 179
    .local v1, frameWidth:F
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 185
    .local v0, frameHeight:F
    :goto_0
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v6, v7

    .line 186
    .local v6, w:F
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v2, v7

    .line 188
    .local v2, h:F
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->isVertical()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 189
    div-float v7, v1, v6

    div-float v8, v0, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 194
    .local v3, scale:F
    :goto_1
    return v3

    .line 181
    .end local v0           #frameHeight:F
    .end local v1           #frameWidth:F
    .end local v2           #h:F
    .end local v3           #scale:F
    .end local v6           #w:F
    :cond_0
    int-to-float v1, v5

    .line 182
    .restart local v1       #frameWidth:F
    int-to-float v0, v4

    .restart local v0       #frameHeight:F
    goto :goto_0

    .line 191
    .restart local v2       #h:F
    .restart local v6       #w:F
    :cond_1
    div-float v7, v1, v2

    div-float v8, v0, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .restart local v3       #scale:F
    goto :goto_1
.end method

.method public getMatrixValues([F)V
    .locals 1
    .parameter "values"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->convertMatrixReference([FZ)Z

    .line 147
    return-void
.end method

.method public getPhotoFramePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 624
    const/4 v3, 0x0

    .line 626
    .local v3, os:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->generatePhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 627
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 628
    const/4 v7, 0x3

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 629
    .local v1, dir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 630
    .local v6, tmp:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    .end local v3           #os:Ljava/io/OutputStream;
    .local v4, os:Ljava/io/OutputStream;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 632
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 635
    const/16 v2, 0x1f9

    .line 636
    .local v2, extraPerms:I
    or-int/lit16 v5, v2, 0x1b0

    .line 637
    .local v5, perms:I
    or-int/lit8 v5, v5, 0x4

    .line 638
    or-int/lit8 v5, v5, 0x2

    .line 639
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v7, v5, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 641
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v7

    .line 645
    if-eqz v4, :cond_0

    .line 647
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v3, v4

    .line 652
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #dir:Ljava/io/File;
    .end local v2           #extraPerms:I
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v5           #perms:I
    .end local v6           #tmp:Ljava/io/File;
    .restart local v3       #os:Ljava/io/OutputStream;
    :goto_1
    return-object v7

    .line 645
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_1
    if-eqz v3, :cond_2

    .line 647
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 652
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_2
    :goto_2
    const/4 v7, 0x0

    goto :goto_1

    .line 643
    :catch_0
    move-exception v7

    .line 645
    :goto_3
    if-eqz v3, :cond_2

    .line 647
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 648
    :catch_1
    move-exception v7

    goto :goto_2

    .line 645
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v3, :cond_3

    .line 647
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 649
    :cond_3
    :goto_5
    throw v7

    .line 648
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v2       #extraPerms:I
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v5       #perms:I
    .restart local v6       #tmp:Ljava/io/File;
    :catch_2
    move-exception v8

    goto :goto_0

    .end local v1           #dir:Ljava/io/File;
    .end local v2           #extraPerms:I
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v5           #perms:I
    .end local v6           #tmp:Ljava/io/File;
    .restart local v3       #os:Ljava/io/OutputStream;
    :catch_3
    move-exception v7

    goto :goto_2

    .end local v0           #bm:Landroid/graphics/Bitmap;
    :catch_4
    move-exception v8

    goto :goto_5

    .line 645
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v6       #tmp:Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_4

    .line 643
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catch_5
    move-exception v7

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_3
.end method

.method public getRotateDegrees()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mRotation:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 394
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 395
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 396
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->updateTempBitmap()V

    .line 397
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTempBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 398
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 370
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 371
    if-eqz p1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mPrepareValues:[F

    if-nez v0, :cond_1

    .line 373
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->fitCenter()V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mPrepareValues:[F

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    const/16 v2, 0x9

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->convertMatrixReference([FZ)Z

    .line 377
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 385
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 386
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mSizeChangedListener:Lcom/miui/home/launcher/gadget/PhotoFrameView$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mSizeChangedListener:Lcom/miui/home/launcher/gadget/PhotoFrameView$OnSizeChangedListener;

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView$OnSizeChangedListener;->onSizeChanged(Lcom/miui/home/launcher/gadget/PhotoFrameView;)V

    .line 389
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/high16 v8, 0x41a0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    .line 294
    :cond_0
    :goto_0
    :pswitch_0
    return v10

    .line 222
    :pswitch_1
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mLastDown:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDown:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDown:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 223
    iget-wide v6, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mCurrentDownTime:J

    iput-wide v6, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mLastDownTime:J

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mCurrentDownTime:J

    .line 226
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDown:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 227
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mLastMove:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 228
    iput v10, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMode:I

    goto :goto_0

    .line 232
    :pswitch_2
    invoke-static {p1}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->spacing(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mOldDist:F

    .line 233
    iget v6, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mOldDist:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_0

    .line 234
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMidPoint:Landroid/graphics/PointF;

    invoke-static {v6, p1}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 235
    iput v11, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMode:I

    goto :goto_0

    .line 239
    :pswitch_3
    iput v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMode:I

    .line 240
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->isDonbleClick(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->resetMatrix()V

    goto :goto_0

    .line 245
    :pswitch_4
    iput v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMode:I

    goto :goto_0

    .line 248
    :pswitch_5
    iget v6, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMode:I

    if-ne v6, v10, :cond_5

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mLastMove:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float v1, v6, v7

    .line 250
    .local v1, dx:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mLastMove:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v2, v6, v7

    .line 251
    .local v2, dy:F
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mLastMove:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 252
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 253
    .local v0, bound:Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 254
    cmpg-float v6, v2, v9

    if-gez v6, :cond_3

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v2

    cmpg-float v6, v6, v9

    if-gez v6, :cond_3

    .line 256
    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    neg-float v2, v6

    .line 262
    :cond_1
    :goto_1
    cmpg-float v6, v1, v9

    if-gez v6, :cond_4

    iget v6, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v1

    cmpg-float v6, v6, v9

    if-gez v6, :cond_4

    .line 264
    iget v6, v0, Landroid/graphics/RectF;->right:F

    neg-float v1, v6

    .line 269
    :cond_2
    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->panBy(FF)V

    goto/16 :goto_0

    .line 257
    :cond_3
    cmpl-float v6, v2, v9

    if-lez v6, :cond_1

    iget v6, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, v6, v7

    goto :goto_1

    .line 265
    :cond_4
    cmpl-float v6, v1, v9

    if-lez v6, :cond_2

    iget v6, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 267
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, v6, v7

    goto :goto_2

    .line 272
    .end local v0           #bound:Landroid/graphics/RectF;
    .end local v1           #dx:F
    .end local v2           #dy:F
    :cond_5
    iget v6, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMode:I

    if-ne v6, v11, :cond_0

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getRight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 277
    invoke-static {p1}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->spacing(Landroid/view/MotionEvent;)F

    move-result v3

    .line 278
    .local v3, newDist:F
    cmpl-float v6, v3, v8

    if-lez v6, :cond_0

    .line 279
    iget v6, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mOldDist:F

    div-float v4, v3, v6

    .line 280
    .local v4, rate:F
    iput v3, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mOldDist:F

    .line 281
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getScale()F

    move-result v6

    mul-float v5, v6, v4

    .line 283
    .local v5, scale:F
    iget v6, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMinZoom:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_6

    .line 284
    iget v5, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMinZoom:F

    .line 287
    :cond_6
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMidPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMidPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v5, v6, v7}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->zoomTo(FFF)V

    goto/16 :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public recyleAllBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 109
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 114
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 119
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 124
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 126
    :cond_3
    return-void
.end method

.method public resetMatrix()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->fitCenter()V

    .line 152
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->invalidate()V

    .line 154
    :cond_0
    return-void
.end method

.method public setFilterBitmap(Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "filter"

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 82
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFilterBitmap:Landroid/graphics/Bitmap;

    .line 83
    if-nez p1, :cond_0

    .line 84
    iput-object v9, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    .line 104
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 88
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 89
    .local v7, height:I
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .line 90
    .local v1, pixels:[I
    const/high16 v10, 0x5000

    .local v10, halfAlphaHighBit:I
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 91
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 92
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    array-length v4, v1

    if-ge v11, v4, :cond_2

    .line 93
    aget v4, v1, v11

    const/high16 v5, -0x100

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    .line 94
    const/high16 v4, 0x5000

    aput v4, v1, v11

    .line 92
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 98
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    .line 99
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mTransformedFilterBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 100
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 101
    const/4 v8, 0x1

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 103
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->invalidate()V

    goto :goto_0
.end method

.method public setFrameBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "frame"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mFrameBitmap:Landroid/graphics/Bitmap;

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->invalidate()V

    .line 75
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 66
    return-void
.end method

.method public setMatrixValues([F)V
    .locals 4
    .parameter "values"

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    .line 131
    new-array v0, v3, [F

    .line 132
    .local v0, v:[F
    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iput-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mPrepareValues:[F

    .line 141
    .end local v0           #v:[F
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mPrepareValues:[F

    .line 136
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->convertMatrixReference([FZ)Z

    .line 138
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mMatrixValuesTemp:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 139
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->invalidate()V

    goto :goto_0
.end method

.method public setRotateDegrees(IZ)V
    .locals 1
    .parameter "degrees"
    .parameter "refresh"

    .prologue
    .line 165
    rem-int/lit16 v0, p1, 0x168

    iput v0, p0, Lcom/miui/home/launcher/gadget/PhotoFrameView;->mRotation:I

    .line 166
    if-eqz p2, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->fitCenter()V

    .line 168
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFrameView;->invalidate()V

    .line 170
    :cond_0
    return-void
.end method
