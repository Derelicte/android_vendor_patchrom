.class public Lcom/miui/gallery/ui/SlotView$Layout;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Layout"
.end annotation


# instance fields
.field private mContentLength:I

.field private mHeight:I

.field private mHorizontalPadding:I

.field private mScrollPosition:I

.field private mSlotCount:I

.field private mSlotGap:I

.field private mSlotHeight:I

.field private mSlotWidth:I

.field private mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

.field private mUnitCount:I

.field private mVerticalPadding:I

.field private mVisibleEnd:I

.field private mVisibleStart:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/SlotView$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 434
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotCount:I

    return v0
.end method

.method private initLayoutParameters()V
    .locals 7

    .prologue
    .line 525
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/miui/gallery/ui/SlotView$Spec;->slotGap:I

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    .line 527
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    .line 528
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/miui/gallery/ui/SlotView$Spec;->slotHeight:I

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    .line 536
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/miui/gallery/ui/SlotView$Spec;->slotVerticalPadding:I

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVerticalPadding:I

    .line 537
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/miui/gallery/ui/SlotView$Spec;->slotHorizontalPadding:I

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHorizontalPadding:I

    .line 541
    iget v1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHeight:I

    iget v2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mWidth:I

    iget v3, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    iget v4, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    iget v5, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHorizontalPadding:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/SlotView$Layout;->initLayoutParameters(IIIII)V

    .line 543
    invoke-direct {p0}, Lcom/miui/gallery/ui/SlotView$Layout;->updateVisibleSlotRange()V

    .line 544
    return-void

    .line 530
    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mWidth:I

    iget v1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHeight:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v6, v0, Lcom/miui/gallery/ui/SlotView$Spec;->rowsLand:I

    .line 531
    .local v6, rows:I
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/miui/gallery/ui/SlotView$Spec;->slotGap:I

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    .line 532
    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHeight:I

    add-int/lit8 v2, v6, -0x1

    iget v3, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    .line 533
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    goto :goto_0

    .line 530
    .end local v6           #rows:I
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v6, v0, Lcom/miui/gallery/ui/SlotView$Spec;->rowsPort:I

    goto :goto_1
.end method

.method private initLayoutParameters(IIIII)V
    .locals 7
    .parameter "majorLength"
    .parameter "minorLength"
    .parameter "majorUnitSize"
    .parameter "minorUnitSize"
    .parameter "padding"

    .prologue
    .line 509
    iget v4, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v4, p2

    sub-int/2addr v4, p5

    iget v5, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, p4

    div-int v2, v4, v5

    .line 510
    .local v2, unitCount:I
    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 511
    :cond_0
    iput v2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    .line 514
    iget v4, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    iget v5, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 515
    .local v0, availableUnits:I
    mul-int v4, v0, p4

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v5, v6

    add-int v3, v4, v5

    .line 519
    .local v3, usedMinorLength:I
    iget v4, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotCount:I

    iget v5, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    div-int v1, v4, v5

    .line 520
    .local v1, count:I
    mul-int v4, v1, p3

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mContentLength:I

    .line 521
    return-void
.end method

.method private setVisibleRange(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 579
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVisibleStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVisibleEnd:I

    if-ne p2, v0, :cond_0

    .line 586
    :goto_0
    return-void

    .line 580
    :cond_0
    if-ge p1, p2, :cond_1

    .line 581
    iput p1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVisibleStart:I

    .line 582
    iput p2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVisibleEnd:I

    goto :goto_0

    .line 584
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVisibleEnd:I

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVisibleStart:I

    goto :goto_0
.end method

.method private updateVisibleSlotRange()V
    .locals 8

    .prologue
    .line 553
    iget v2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mScrollPosition:I

    .line 563
    .local v2, position:I
    iget v5, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    div-int v4, v2, v5

    .line 564
    .local v4, startRow:I
    const/4 v5, 0x0

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 565
    .local v3, start:I
    iget v5, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHeight:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v1, v5, v6

    .line 567
    .local v1, endRow:I
    iget v5, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotCount:I

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 568
    .local v0, end:I
    invoke-direct {p0, v3, v0}, Lcom/miui/gallery/ui/SlotView$Layout;->setVisibleRange(II)V

    .line 570
    return-void
.end method


# virtual methods
.method public getScrollLimit()I
    .locals 3

    .prologue
    .line 631
    iget v1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mContentLength:I

    iget v2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVerticalPadding:I

    add-int v0, v1, v2

    .line 632
    .local v0, limit:I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #limit:I
    :cond_0
    return v0
.end method

.method public getSlotHeight()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    return v0
.end method

.method public getSlotIndexByPosition(FF)I
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, -0x1

    .line 597
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/lit8 v0, v6, 0x0

    .line 598
    .local v0, absoluteX:I
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mScrollPosition:I

    add-int v1, v6, v7

    .line 600
    .local v1, absoluteY:I
    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHorizontalPadding:I

    sub-int/2addr v0, v6

    .line 601
    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVerticalPadding:I

    sub-int/2addr v1, v6

    .line 603
    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    iget v7, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v2, v0, v6

    .line 604
    .local v2, columnIdx:I
    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v4, v1, v6

    .line 606
    .local v4, rowIdx:I
    if-ltz v2, :cond_0

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    if-lt v2, v6, :cond_1

    .line 626
    :cond_0
    :goto_0
    return v5

    .line 610
    :cond_1
    if-ltz v4, :cond_0

    .line 614
    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    iget v7, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    rem-int v6, v0, v6

    iget v7, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    if-ge v6, v7, :cond_0

    .line 618
    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    rem-int v6, v1, v6

    iget v7, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    if-ge v6, v7, :cond_0

    .line 622
    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v4

    add-int v3, v6, v2

    .line 626
    .local v3, index:I
    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotCount:I

    if-lt v3, v6, :cond_2

    move v3, v5

    .end local v3           #index:I
    :cond_2
    move v5, v3

    goto :goto_0
.end method

.method public getSlotRect(I)Landroid/graphics/Rect;
    .locals 7
    .parameter "index"

    .prologue
    .line 474
    iget v4, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    div-int v1, p1, v4

    .line 475
    .local v1, row:I
    iget v4, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 478
    .local v0, col:I
    iget v4, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHorizontalPadding:I

    iget v5, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v0

    add-int v2, v4, v5

    .line 479
    .local v2, x:I
    iget v4, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVerticalPadding:I

    iget v5, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v1

    add-int v3, v4, v5

    .line 480
    .local v3, y:I
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    add-int/2addr v6, v3

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public getSlotWidth()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    return v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method public setScrollPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 573
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mScrollPosition:I

    if-ne v0, p1, :cond_0

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_0
    iput p1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mScrollPosition:I

    .line 575
    invoke-direct {p0}, Lcom/miui/gallery/ui/SlotView$Layout;->updateVisibleSlotRange()V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 547
    iput p1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mWidth:I

    .line 548
    iput p2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHeight:I

    .line 549
    invoke-direct {p0}, Lcom/miui/gallery/ui/SlotView$Layout;->initLayoutParameters()V

    .line 550
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 3
    .parameter "slotCount"

    .prologue
    .line 461
    iput p1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotCount:I

    .line 462
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHorizontalPadding:I

    .line 463
    .local v0, hPadding:I
    iget v1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVerticalPadding:I

    .line 464
    .local v1, vPadding:I
    invoke-direct {p0}, Lcom/miui/gallery/ui/SlotView$Layout;->initLayoutParameters()V

    .line 465
    iget v2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVerticalPadding:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHorizontalPadding:I

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setSlotSpec(Lcom/miui/gallery/ui/SlotView$Spec;)V
    .locals 0
    .parameter "spec"

    .prologue
    .line 457
    iput-object p1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    .line 458
    return-void
.end method
