.class public Lcom/android/deskclock/WatchDial;
.super Landroid/widget/FrameLayout;
.source "WatchDial.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/WatchDial$SlipBlock;,
        Lcom/android/deskclock/WatchDial$TailCirque;,
        Lcom/android/deskclock/WatchDial$TimerCirque;,
        Lcom/android/deskclock/WatchDial$ValueChangeListener;
    }
.end annotation


# instance fields
.field private final DEFAULT_VALUEPERCIRCLE:J

.field private final HOURINSECOND:J

.field private final MAX_VALUE:J

.field private final MESSAGE_DRAWTAIL:I

.field private final MINUTEINSECOND:J

.field private final SECONDINMILLISECOND:J

.field private final SLIPBLOCK_MIN_CHANGE_DIFFER:I

.field private final WATCHDIAL_CENTERX:I

.field private final WATCHDIAL_CENTERY:I

.field private final WATCHDIAL_RADIUS:I

.field mHandler:Landroid/os/Handler;

.field private mIsRunning:Z

.field private mNumberView:Lcom/android/deskclock/NumberView;

.field private mResources:Landroid/content/res/Resources;

.field private mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

.field private mTail:Lcom/android/deskclock/WatchDial$TailCirque;

.field private mTimerCirque:Lcom/android/deskclock/WatchDial$TimerCirque;

.field private mTotalValue:J

.field private mTurnsNumber:I

.field private mValue:J

.field private mValueChangeListener:Lcom/android/deskclock/WatchDial$ValueChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/WatchDial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/WatchDial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/deskclock/WatchDial;->SECONDINMILLISECOND:J

    .line 44
    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/android/deskclock/WatchDial;->HOURINSECOND:J

    .line 45
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/android/deskclock/WatchDial;->MINUTEINSECOND:J

    .line 46
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/android/deskclock/WatchDial;->DEFAULT_VALUEPERCIRCLE:J

    .line 47
    const-wide/32 v0, 0x15752a00

    iput-wide v0, p0, Lcom/android/deskclock/WatchDial;->MAX_VALUE:J

    .line 51
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/deskclock/WatchDial;->SLIPBLOCK_MIN_CHANGE_DIFFER:I

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/deskclock/WatchDial;->MESSAGE_DRAWTAIL:I

    .line 606
    new-instance v0, Lcom/android/deskclock/WatchDial$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/WatchDial$1;-><init>(Lcom/android/deskclock/WatchDial;)V

    iput-object v0, p0, Lcom/android/deskclock/WatchDial;->mHandler:Landroid/os/Handler;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/WatchDial;->mResources:Landroid/content/res/Resources;

    .line 66
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/deskclock/WatchDial;->WATCHDIAL_CENTERX:I

    .line 67
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/deskclock/WatchDial;->WATCHDIAL_CENTERY:I

    .line 68
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/deskclock/WatchDial;->WATCHDIAL_RADIUS:I

    .line 70
    new-instance v0, Lcom/android/deskclock/NumberView;

    invoke-direct {v0, p1}, Lcom/android/deskclock/NumberView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/deskclock/WatchDial;->mNumberView:Lcom/android/deskclock/NumberView;

    .line 71
    new-instance v0, Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-direct {v0, p0, p1}, Lcom/android/deskclock/WatchDial$SlipBlock;-><init>(Lcom/android/deskclock/WatchDial;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    .line 72
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/WatchDial$SlipBlock;->setDegrees(D)V

    .line 73
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v0}, Lcom/android/deskclock/WatchDial$SlipBlock;->drawSlipBlock()V

    .line 74
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v0, p0}, Lcom/android/deskclock/WatchDial$SlipBlock;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 75
    new-instance v0, Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-direct {v0, p0, p1}, Lcom/android/deskclock/WatchDial$TailCirque;-><init>(Lcom/android/deskclock/WatchDial;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/deskclock/WatchDial;->mTail:Lcom/android/deskclock/WatchDial$TailCirque;

    .line 76
    new-instance v0, Lcom/android/deskclock/WatchDial$TimerCirque;

    invoke-direct {v0, p0, p1}, Lcom/android/deskclock/WatchDial$TimerCirque;-><init>(Lcom/android/deskclock/WatchDial;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/deskclock/WatchDial;->mTimerCirque:Lcom/android/deskclock/WatchDial$TimerCirque;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/WatchDial;->mValueChangeListener:Lcom/android/deskclock/WatchDial$ValueChangeListener;

    .line 78
    invoke-virtual {p0, v3}, Lcom/android/deskclock/WatchDial;->setIsRunning(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mTail:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/WatchDial;->addView(Landroid/view/View;)V

    .line 80
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mTail:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-virtual {v0, v3}, Lcom/android/deskclock/WatchDial$TailCirque;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/WatchDial;->addView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mTimerCirque:Lcom/android/deskclock/WatchDial$TimerCirque;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/WatchDial;->addView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mNumberView:Lcom/android/deskclock/NumberView;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/WatchDial;->addView(Landroid/view/View;)V

    .line 84
    invoke-direct {p0, v3}, Lcom/android/deskclock/WatchDial;->updateNumberView(Z)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/WatchDial;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/deskclock/WatchDial;)Lcom/android/deskclock/WatchDial$TailCirque;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mTail:Lcom/android/deskclock/WatchDial$TailCirque;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/deskclock/WatchDial;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/deskclock/WatchDial;->WATCHDIAL_CENTERX:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/deskclock/WatchDial;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/deskclock/WatchDial;->WATCHDIAL_RADIUS:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/deskclock/WatchDial;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/deskclock/WatchDial;->WATCHDIAL_CENTERY:I

    return v0
.end method

.method private drawNumberView()V
    .locals 5

    .prologue
    .line 97
    iget v2, p0, Lcom/android/deskclock/WatchDial;->WATCHDIAL_CENTERX:I

    iget-object v3, p0, Lcom/android/deskclock/WatchDial;->mNumberView:Lcom/android/deskclock/NumberView;

    invoke-virtual {v3}, Lcom/android/deskclock/NumberView;->getPrimaryWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 98
    .local v0, l:I
    iget v2, p0, Lcom/android/deskclock/WatchDial;->WATCHDIAL_CENTERY:I

    iget-object v3, p0, Lcom/android/deskclock/WatchDial;->mNumberView:Lcom/android/deskclock/NumberView;

    invoke-virtual {v3}, Lcom/android/deskclock/NumberView;->getPrimaryHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 99
    .local v1, t:I
    iget-object v2, p0, Lcom/android/deskclock/WatchDial;->mNumberView:Lcom/android/deskclock/NumberView;

    iget-object v3, p0, Lcom/android/deskclock/WatchDial;->mNumberView:Lcom/android/deskclock/NumberView;

    invoke-virtual {v3}, Lcom/android/deskclock/NumberView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/deskclock/WatchDial;->mNumberView:Lcom/android/deskclock/NumberView;

    invoke-virtual {v4}, Lcom/android/deskclock/NumberView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/deskclock/NumberView;->layout(IIII)V

    .line 100
    return-void
.end method

.method private getMotionRadian(DD)D
    .locals 22
    .parameter "x"
    .parameter "y"

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/WatchDial;->WATCHDIAL_RADIUS:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v14, v0

    .line 110
    .local v14, vectorAY:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/WatchDial;->WATCHDIAL_CENTERY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    sub-double v16, p3, v18

    .line 111
    .local v16, vectorBY:D
    mul-double v12, v14, v16

    .line 113
    .local v12, product:D
    const-wide v18, -0x414f39085f4a1273L

    cmpl-double v18, v12, v18

    if-lez v18, :cond_0

    const-wide v18, 0x3eb0c6f7a0b5ed8dL

    cmpg-double v18, v12, v18

    if-gez v18, :cond_0

    .line 114
    const-wide v18, 0x3ff921fb60000000L

    .line 125
    :goto_0
    return-wide v18

    .line 116
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/WatchDial;->WATCHDIAL_RADIUS:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v2, v0

    .line 117
    .local v2, AB:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/WatchDial;->WATCHDIAL_CENTERX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    sub-double v8, p1, v18

    .line 118
    .local v8, offX:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/WatchDial;->WATCHDIAL_CENTERY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    sub-double v10, p3, v18

    .line 119
    .local v10, offY:D
    mul-double v18, v8, v8

    mul-double v20, v10, v10

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 120
    .local v4, CB:D
    div-double v18, v12, v2

    div-double v6, v18, v4

    .line 122
    .local v6, cosD:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/WatchDial;->WATCHDIAL_CENTERX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, p1, v18

    if-gez v18, :cond_1

    .line 123
    const-wide v18, 0x401921fb54442d18L

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v20

    sub-double v18, v18, v20

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v18

    goto :goto_0
.end method

.method private updateNumberView(Z)V
    .locals 4
    .parameter "isRunning"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mNumberView:Lcom/android/deskclock/NumberView;

    invoke-virtual {p0}, Lcom/android/deskclock/WatchDial;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/deskclock/WatchDial;->getMinute()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/deskclock/WatchDial;->getSecond()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/deskclock/NumberView;->setTime(III)V

    .line 104
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mNumberView:Lcom/android/deskclock/NumberView;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/NumberView;->setIsTimerMode(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mNumberView:Lcom/android/deskclock/NumberView;

    invoke-virtual {v0}, Lcom/android/deskclock/NumberView;->showTime()V

    .line 106
    return-void
.end method


# virtual methods
.method public drawAll()V
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/deskclock/WatchDial;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mTimerCirque:Lcom/android/deskclock/WatchDial$TimerCirque;

    invoke-virtual {v0}, Lcom/android/deskclock/WatchDial$TimerCirque;->drawCirque()V

    .line 136
    :goto_0
    iget-boolean v0, p0, Lcom/android/deskclock/WatchDial;->mIsRunning:Z

    invoke-direct {p0, v0}, Lcom/android/deskclock/WatchDial;->updateNumberView(Z)V

    .line 137
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v0}, Lcom/android/deskclock/WatchDial$SlipBlock;->drawSlipBlock()V

    .line 134
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mTail:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-virtual {v0}, Lcom/android/deskclock/WatchDial$TailCirque;->invalidate()V

    goto :goto_0
.end method

.method public getHour()I
    .locals 4

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/android/deskclock/WatchDial;->mValue:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getMinute()I
    .locals 4

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/android/deskclock/WatchDial;->mValue:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getSecond()I
    .locals 4

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/android/deskclock/WatchDial;->mValue:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/android/deskclock/WatchDial;->mValue:J

    return-wide v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 92
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 93
    invoke-direct {p0}, Lcom/android/deskclock/WatchDial;->drawNumberView()V

    .line 94
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "v"
    .parameter "event"

    .prologue
    .line 540
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_0

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 603
    :cond_0
    :goto_0
    const/4 v13, 0x0

    :goto_1
    return v13

    .line 543
    :pswitch_0
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/deskclock/DeskClockPager;->sCanScroll:Z

    .line 544
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/deskclock/WatchDial$SlipBlock;->setIsPressed(Z)V

    goto :goto_0

    .line 547
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mTail:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-virtual {v13}, Lcom/android/deskclock/WatchDial$TailCirque;->stopCircleThread()V

    .line 548
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mTail:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-virtual {v13}, Lcom/android/deskclock/WatchDial$TailCirque;->startJustify()V

    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v14}, Lcom/android/deskclock/WatchDial$SlipBlock;->getLeft()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    float-to-double v9, v13

    .line 550
    .local v9, x:D
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v14}, Lcom/android/deskclock/WatchDial$SlipBlock;->getTop()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    float-to-double v11, v13

    .line 551
    .local v11, y:D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v13, v9, v10, v11, v12}, Lcom/android/deskclock/WatchDial$SlipBlock;->isInSlipCirque(DD)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 552
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/android/deskclock/WatchDial;->getMotionRadian(DD)D

    move-result-wide v5

    .line 553
    .local v5, radian:D
    invoke-static {v5, v6}, Lcom/android/deskclock/Util;->getDegreeWithRadian(D)D

    move-result-wide v1

    .line 554
    .local v1, degree:D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v13}, Lcom/android/deskclock/WatchDial$SlipBlock;->getDegrees()D

    move-result-wide v13

    invoke-static {v1, v2, v13, v14}, Lcom/android/deskclock/Util;->getDifferWithDegrees(DD)D

    move-result-wide v3

    .line 555
    .local v3, differ:D
    const-wide/high16 v13, 0x403e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/WatchDial;->mTail:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-virtual {v15}, Lcom/android/deskclock/WatchDial$TailCirque;->getDiffer()D

    move-result-wide v15

    add-double/2addr v13, v15

    cmpl-double v13, v3, v13

    if-lez v13, :cond_1

    .line 556
    const/4 v13, 0x1

    goto :goto_1

    .line 558
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/WatchDial;->WATCHDIAL_CENTERY:I

    int-to-double v13, v13

    cmpg-double v13, v11, v13

    if-gtz v13, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/WatchDial;->mTurnsNumber:I

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v13}, Lcom/android/deskclock/WatchDial$SlipBlock;->getDegrees()D

    move-result-wide v13

    const-wide v15, 0x4066800000000000L

    cmpg-double v13, v13, v15

    if-gez v13, :cond_2

    const-wide v13, 0x4066800000000000L

    cmpl-double v13, v1, v13

    if-gtz v13, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v13}, Lcom/android/deskclock/WatchDial$SlipBlock;->getDegrees()D

    move-result-wide v13

    const-wide v15, 0x3f1a36e2eb1c432dL

    cmpg-double v13, v13, v15

    if-gtz v13, :cond_3

    const-wide/high16 v13, 0x403e

    cmpl-double v13, v1, v13

    if-ltz v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/WatchDial;->mTurnsNumber:I

    if-eqz v13, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/WatchDial;->mTurnsNumber:I

    if-ltz v13, :cond_4

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/deskclock/WatchDial;->mValue:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-gez v13, :cond_5

    .line 564
    :cond_4
    const-wide/16 v1, 0x0

    .line 566
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/WatchDial;->WATCHDIAL_CENTERY:I

    int-to-double v13, v13

    cmpg-double v13, v11, v13

    if-gez v13, :cond_6

    .line 567
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v13}, Lcom/android/deskclock/WatchDial$SlipBlock;->getDegrees()D

    move-result-wide v13

    const-wide v15, 0x4066800000000000L

    cmpg-double v13, v13, v15

    if-gez v13, :cond_8

    const-wide v13, 0x4066800000000000L

    cmpl-double v13, v1, v13

    if-lez v13, :cond_8

    .line 568
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/WatchDial;->mTurnsNumber:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/deskclock/WatchDial;->mTurnsNumber:I

    .line 574
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/deskclock/WatchDial;->mTail:Lcom/android/deskclock/WatchDial$TailCirque;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v13}, Lcom/android/deskclock/WatchDial$SlipBlock;->getDegrees()D

    move-result-wide v15

    cmpg-double v13, v15, v1

    if-gtz v13, :cond_9

    const/4 v13, 0x1

    :goto_3
    invoke-virtual {v14, v13}, Lcom/android/deskclock/WatchDial$TailCirque;->setIsForward(Z)V

    .line 575
    const-wide v13, 0x4076800000000000L

    div-double v13, v1, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/deskclock/WatchDial;->mTurnsNumber:I

    int-to-double v15, v15

    add-double/2addr v13, v15

    const-wide v15, 0x413b774000000000L

    mul-double/2addr v13, v15

    double-to-long v7, v13

    .line 576
    .local v7, value:J
    const-wide/32 v13, 0x15752a00

    cmp-long v13, v7, v13

    if-lez v13, :cond_b

    .line 577
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/WatchDial;->WATCHDIAL_CENTERY:I

    int-to-double v13, v13

    cmpg-double v13, v11, v13

    if-gez v13, :cond_7

    .line 578
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v13}, Lcom/android/deskclock/WatchDial$SlipBlock;->getDegrees()D

    move-result-wide v13

    const-wide v15, 0x4066800000000000L

    cmpg-double v13, v13, v15

    if-gez v13, :cond_a

    const-wide v13, 0x4066800000000000L

    cmpl-double v13, v1, v13

    if-lez v13, :cond_a

    .line 579
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mTail:Lcom/android/deskclock/WatchDial$TailCirque;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/deskclock/WatchDial$TailCirque;->setIsForward(Z)V

    .line 580
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/WatchDial;->mTurnsNumber:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/deskclock/WatchDial;->mTurnsNumber:I

    .line 586
    :cond_7
    :goto_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 569
    .end local v7           #value:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v13}, Lcom/android/deskclock/WatchDial$SlipBlock;->getDegrees()D

    move-result-wide v13

    const-wide v15, 0x4066800000000000L

    cmpl-double v13, v13, v15

    if-lez v13, :cond_6

    const-wide v13, 0x4066800000000000L

    cmpg-double v13, v1, v13

    if-gez v13, :cond_6

    .line 570
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/WatchDial;->mTurnsNumber:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/deskclock/WatchDial;->mTurnsNumber:I

    goto/16 :goto_2

    .line 574
    :cond_9
    const/4 v13, 0x0

    goto :goto_3

    .line 581
    .restart local v7       #value:J
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v13}, Lcom/android/deskclock/WatchDial$SlipBlock;->getDegrees()D

    move-result-wide v13

    const-wide v15, 0x4066800000000000L

    cmpl-double v13, v13, v15

    if-lez v13, :cond_7

    const-wide v13, 0x4066800000000000L

    cmpg-double v13, v1, v13

    if-gez v13, :cond_7

    .line 582
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mTail:Lcom/android/deskclock/WatchDial$TailCirque;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/deskclock/WatchDial$TailCirque;->setIsForward(Z)V

    .line 583
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/deskclock/WatchDial;->mTurnsNumber:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/deskclock/WatchDial;->mTurnsNumber:I

    goto :goto_4

    .line 589
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v13, v1, v2}, Lcom/android/deskclock/WatchDial$SlipBlock;->setDegrees(D)V

    .line 590
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v13}, Lcom/android/deskclock/WatchDial$SlipBlock;->drawSlipBlock()V

    .line 591
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/deskclock/WatchDial;->setValue(J)V

    .line 592
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mTail:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-virtual {v13, v1, v2}, Lcom/android/deskclock/WatchDial$TailCirque;->setStartDegree(D)V

    .line 593
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mTail:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-virtual {v13}, Lcom/android/deskclock/WatchDial$TailCirque;->invalidate()V

    .line 594
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/deskclock/WatchDial;->updateNumberView(Z)V

    goto/16 :goto_0

    .line 598
    .end local v1           #degree:D
    .end local v3           #differ:D
    .end local v5           #radian:D
    .end local v7           #value:J
    .end local v9           #x:D
    .end local v11           #y:D
    :pswitch_2
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/deskclock/DeskClockPager;->sCanScroll:Z

    .line 599
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/deskclock/WatchDial$SlipBlock;->setIsPressed(Z)V

    goto/16 :goto_0

    .line 541
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public resetWatchDial()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 171
    iput-boolean v3, p0, Lcom/android/deskclock/WatchDial;->mIsRunning:Z

    .line 172
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/WatchDial$SlipBlock;->setDegrees(D)V

    .line 173
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mTail:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/WatchDial$TailCirque;->setStartDegree(D)V

    .line 174
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mTail:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/WatchDial$TailCirque;->setEndDegree(D)V

    .line 175
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/WatchDial;->setValue(J)V

    .line 176
    iput v3, p0, Lcom/android/deskclock/WatchDial;->mTurnsNumber:I

    .line 177
    return-void
.end method

.method public runCircle()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mTail:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-virtual {v0}, Lcom/android/deskclock/WatchDial$TailCirque;->startCircleThread()V

    .line 536
    return-void
.end method

.method public setIsRunning(Z)V
    .locals 3
    .parameter "isRunning"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/android/deskclock/WatchDial;->mIsRunning:Z

    .line 159
    iget-boolean v0, p0, Lcom/android/deskclock/WatchDial;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v0, v2}, Lcom/android/deskclock/WatchDial$SlipBlock;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mTail:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-virtual {v0, v2}, Lcom/android/deskclock/WatchDial$TailCirque;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mTimerCirque:Lcom/android/deskclock/WatchDial$TimerCirque;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/WatchDial$TimerCirque;->setVisibility(I)V

    .line 168
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mSlipBlock:Lcom/android/deskclock/WatchDial$SlipBlock;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/WatchDial$SlipBlock;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mTail:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/WatchDial$TailCirque;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mTimerCirque:Lcom/android/deskclock/WatchDial$TimerCirque;

    invoke-virtual {v0, v2}, Lcom/android/deskclock/WatchDial$TimerCirque;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTotalValue(J)V
    .locals 0
    .parameter "maxValue"

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/android/deskclock/WatchDial;->mTotalValue:J

    .line 155
    return-void
.end method

.method public setValue(J)V
    .locals 5
    .parameter "v"

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/deskclock/WatchDial;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mTimerCirque:Lcom/android/deskclock/WatchDial$TimerCirque;

    iget-wide v1, p0, Lcom/android/deskclock/WatchDial;->mTotalValue:J

    sub-long/2addr v1, p1

    long-to-double v1, v1

    iget-wide v3, p0, Lcom/android/deskclock/WatchDial;->mTotalValue:J

    long-to-double v3, v3

    div-double/2addr v1, v3

    const-wide v3, 0x4076800000000000L

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/WatchDial$TimerCirque;->setDegrees(D)V

    .line 143
    :cond_0
    iput-wide p1, p0, Lcom/android/deskclock/WatchDial;->mValue:J

    .line 144
    iget-boolean v0, p0, Lcom/android/deskclock/WatchDial;->mIsRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mValueChangeListener:Lcom/android/deskclock/WatchDial$ValueChangeListener;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/deskclock/WatchDial;->mValueChangeListener:Lcom/android/deskclock/WatchDial$ValueChangeListener;

    invoke-virtual {p0}, Lcom/android/deskclock/WatchDial;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/deskclock/WatchDial;->getMinute()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/deskclock/WatchDial;->getSecond()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/deskclock/WatchDial$ValueChangeListener;->onValueChanged(III)V

    .line 147
    :cond_1
    return-void
.end method

.method public setValueChangeListener(Lcom/android/deskclock/WatchDial$ValueChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/deskclock/WatchDial;->mValueChangeListener:Lcom/android/deskclock/WatchDial$ValueChangeListener;

    .line 89
    return-void
.end method
