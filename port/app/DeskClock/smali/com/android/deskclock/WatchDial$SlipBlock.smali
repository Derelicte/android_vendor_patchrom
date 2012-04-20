.class Lcom/android/deskclock/WatchDial$SlipBlock;
.super Landroid/widget/ImageView;
.source "WatchDial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/WatchDial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlipBlock"
.end annotation


# instance fields
.field private final SLIPBLOCK_RADIUS:I

.field private final SLIPCIRQUE_RADIUSINNER:I

.field private final SLIPCIRQUE_RADIUSOUTER:I

.field private mDegrees:D

.field private mParams:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic this$0:Lcom/android/deskclock/WatchDial;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/WatchDial;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x1

    .line 480
    iput-object p1, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->this$0:Lcom/android/deskclock/WatchDial;

    .line 481
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 482
    #getter for: Lcom/android/deskclock/WatchDial;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/deskclock/WatchDial;->access$000(Lcom/android/deskclock/WatchDial;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->SLIPCIRQUE_RADIUSINNER:I

    .line 483
    #getter for: Lcom/android/deskclock/WatchDial;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/deskclock/WatchDial;->access$000(Lcom/android/deskclock/WatchDial;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->SLIPCIRQUE_RADIUSOUTER:I

    .line 484
    #getter for: Lcom/android/deskclock/WatchDial;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/deskclock/WatchDial;->access$000(Lcom/android/deskclock/WatchDial;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->SLIPBLOCK_RADIUS:I

    .line 486
    const v0, 0x7f020093

    invoke-virtual {p0, v0}, Lcom/android/deskclock/WatchDial$SlipBlock;->setBackgroundResource(I)V

    .line 487
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 489
    invoke-virtual {p0, v2}, Lcom/android/deskclock/WatchDial$SlipBlock;->setClickable(Z)V

    .line 490
    invoke-virtual {p0, v2}, Lcom/android/deskclock/WatchDial$SlipBlock;->setFocusable(Z)V

    .line 491
    invoke-virtual {p0, v2}, Lcom/android/deskclock/WatchDial$SlipBlock;->setFocusableInTouchMode(Z)V

    .line 492
    const v0, 0x7f020094

    invoke-virtual {p0, v0}, Lcom/android/deskclock/WatchDial$SlipBlock;->setImageResource(I)V

    .line 493
    iget-object v0, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/WatchDial$SlipBlock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    return-void
.end method


# virtual methods
.method public drawSlipBlock()V
    .locals 12

    .prologue
    .line 503
    iget-wide v6, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->mDegrees:D

    invoke-static {v6, v7}, Lcom/android/deskclock/Util;->getRadianWithDegree(D)D

    move-result-wide v0

    .line 504
    .local v0, radian:D
    iget-object v6, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->this$0:Lcom/android/deskclock/WatchDial;

    #getter for: Lcom/android/deskclock/WatchDial;->WATCHDIAL_CENTERX:I
    invoke-static {v6}, Lcom/android/deskclock/WatchDial;->access$700(Lcom/android/deskclock/WatchDial;)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget-object v10, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->this$0:Lcom/android/deskclock/WatchDial;

    #getter for: Lcom/android/deskclock/WatchDial;->WATCHDIAL_RADIUS:I
    invoke-static {v10}, Lcom/android/deskclock/WatchDial;->access$800(Lcom/android/deskclock/WatchDial;)I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    add-double v2, v6, v8

    .line 505
    .local v2, x:D
    iget-object v6, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->this$0:Lcom/android/deskclock/WatchDial;

    #getter for: Lcom/android/deskclock/WatchDial;->WATCHDIAL_CENTERY:I
    invoke-static {v6}, Lcom/android/deskclock/WatchDial;->access$900(Lcom/android/deskclock/WatchDial;)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget-object v10, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->this$0:Lcom/android/deskclock/WatchDial;

    #getter for: Lcom/android/deskclock/WatchDial;->WATCHDIAL_RADIUS:I
    invoke-static {v10}, Lcom/android/deskclock/WatchDial;->access$800(Lcom/android/deskclock/WatchDial;)I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    sub-double v4, v6, v8

    .line 506
    .local v4, y:D
    iget v6, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->SLIPBLOCK_RADIUS:I

    int-to-double v6, v6

    sub-double/2addr v2, v6

    .line 507
    iget v6, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->SLIPBLOCK_RADIUS:I

    int-to-double v6, v6

    sub-double/2addr v4, v6

    .line 508
    iget-object v6, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    double-to-int v7, v2

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 509
    iget-object v6, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    double-to-int v7, v4

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 510
    iget-object v6, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/android/deskclock/WatchDial$SlipBlock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    return-void
.end method

.method public getDegrees()D
    .locals 2

    .prologue
    .line 525
    iget-wide v0, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->mDegrees:D

    return-wide v0
.end method

.method public isInSlipCirque(DD)Z
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 514
    iget-object v6, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->this$0:Lcom/android/deskclock/WatchDial;

    #getter for: Lcom/android/deskclock/WatchDial;->WATCHDIAL_CENTERX:I
    invoke-static {v6}, Lcom/android/deskclock/WatchDial;->access$700(Lcom/android/deskclock/WatchDial;)I

    move-result v6

    int-to-double v6, v6

    sub-double v2, p1, v6

    .line 515
    .local v2, offX:D
    iget-object v6, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->this$0:Lcom/android/deskclock/WatchDial;

    #getter for: Lcom/android/deskclock/WatchDial;->WATCHDIAL_CENTERY:I
    invoke-static {v6}, Lcom/android/deskclock/WatchDial;->access$900(Lcom/android/deskclock/WatchDial;)I

    move-result v6

    int-to-double v6, v6

    sub-double v4, p3, v6

    .line 516
    .local v4, offY:D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 517
    .local v0, l:D
    iget v6, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->SLIPCIRQUE_RADIUSINNER:I

    int-to-double v6, v6

    cmpl-double v6, v0, v6

    if-lez v6, :cond_0

    iget v6, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->SLIPCIRQUE_RADIUSOUTER:I

    int-to-double v6, v6

    cmpg-double v6, v0, v6

    if-gez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 498
    iget-wide v0, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->mDegrees:D

    double-to-float v0, v0

    iget v1, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->SLIPBLOCK_RADIUS:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->SLIPBLOCK_RADIUS:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 499
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 500
    return-void
.end method

.method public setDegrees(D)V
    .locals 0
    .parameter "degrees"

    .prologue
    .line 521
    iput-wide p1, p0, Lcom/android/deskclock/WatchDial$SlipBlock;->mDegrees:D

    .line 522
    return-void
.end method

.method public setIsPressed(Z)V
    .locals 1
    .parameter "isPressed"

    .prologue
    .line 529
    if-eqz p1, :cond_0

    const v0, 0x7f020095

    .line 530
    .local v0, resId:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/deskclock/WatchDial$SlipBlock;->setBackgroundResource(I)V

    .line 531
    return-void

    .line 529
    .end local v0           #resId:I
    :cond_0
    const v0, 0x7f020093

    goto :goto_0
.end method
