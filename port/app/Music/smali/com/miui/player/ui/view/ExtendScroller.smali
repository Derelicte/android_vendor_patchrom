.class public Lcom/miui/player/ui/view/ExtendScroller;
.super Ljava/lang/Object;
.source "ExtendScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/view/ExtendScroller$Scrollable;,
        Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;
    }
.end annotation


# static fields
.field private static DO_HORIZONTAL_SCROLL:I

.field private static DO_VERTICAL_SCROLL:I

.field private static NONE:I


# instance fields
.field private final MIN_THRESHOLD:I

.field private donewithclick:Z

.field private firstclick:Z

.field private firstx:F

.field private firsty:F

.field private gestureRecipient:I

.field private lastRawx:F

.field private lastRawy:F

.field private lastx:F

.field private lasty:F

.field private mExtendScrollListener:Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;

.field private final mScrollable:Lcom/miui/player/ui/view/ExtendScroller$Scrollable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, -0x1

    sput v0, Lcom/miui/player/ui/view/ExtendScroller;->NONE:I

    .line 10
    const/4 v0, 0x0

    sput v0, Lcom/miui/player/ui/view/ExtendScroller;->DO_VERTICAL_SCROLL:I

    .line 12
    const/4 v0, 0x1

    sput v0, Lcom/miui/player/ui/view/ExtendScroller;->DO_HORIZONTAL_SCROLL:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/player/ui/view/ExtendScroller$Scrollable;)V
    .locals 2
    .parameter "scrollable"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/miui/player/ui/view/ExtendScroller;->lastx:F

    .line 16
    iput v0, p0, Lcom/miui/player/ui/view/ExtendScroller;->lasty:F

    .line 18
    iput v0, p0, Lcom/miui/player/ui/view/ExtendScroller;->firstx:F

    .line 20
    iput v0, p0, Lcom/miui/player/ui/view/ExtendScroller;->firsty:F

    .line 22
    iput v0, p0, Lcom/miui/player/ui/view/ExtendScroller;->lastRawx:F

    .line 24
    iput v0, p0, Lcom/miui/player/ui/view/ExtendScroller;->lastRawy:F

    .line 26
    sget v0, Lcom/miui/player/ui/view/ExtendScroller;->NONE:I

    iput v0, p0, Lcom/miui/player/ui/view/ExtendScroller;->gestureRecipient:I

    .line 28
    iput-boolean v1, p0, Lcom/miui/player/ui/view/ExtendScroller;->donewithclick:Z

    .line 30
    iput-boolean v1, p0, Lcom/miui/player/ui/view/ExtendScroller;->firstclick:Z

    .line 34
    const/16 v0, 0xa

    iput v0, p0, Lcom/miui/player/ui/view/ExtendScroller;->MIN_THRESHOLD:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/view/ExtendScroller;->mExtendScrollListener:Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;

    .line 39
    iput-object p1, p0, Lcom/miui/player/ui/view/ExtendScroller;->mScrollable:Lcom/miui/player/ui/view/ExtendScroller$Scrollable;

    .line 40
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/player/ui/view/ExtendScroller;->mExtendScrollListener:Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/miui/player/ui/view/ExtendScroller;->mExtendScrollListener:Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;

    invoke-interface {v0, p1}, Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/view/ExtendScroller;->mScrollable:Lcom/miui/player/ui/view/ExtendScroller$Scrollable;

    invoke-interface {v0, p1}, Lcom/miui/player/ui/view/ExtendScroller$Scrollable;->handleInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x4120

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/high16 v9, -0x4080

    .line 47
    const/4 v3, 0x1

    .line 49
    .local v3, retthis:Z
    iget-boolean v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->donewithclick:Z

    if-eqz v6, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->firstx:F

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->firsty:F

    .line 52
    iget v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->firstx:F

    iput v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->lastx:F

    .line 53
    iget v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->firsty:F

    iput v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->lasty:F

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->lastRawx:F

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->lastRawy:F

    .line 56
    iput-boolean v12, p0, Lcom/miui/player/ui/view/ExtendScroller;->donewithclick:Z

    .line 57
    iput-boolean v10, p0, Lcom/miui/player/ui/view/ExtendScroller;->firstclick:Z

    .line 58
    iget-object v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->mScrollable:Lcom/miui/player/ui/view/ExtendScroller$Scrollable;

    invoke-interface {v6, p1}, Lcom/miui/player/ui/view/ExtendScroller$Scrollable;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 63
    :cond_0
    iget v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->gestureRecipient:I

    sget v7, Lcom/miui/player/ui/view/ExtendScroller;->NONE:I

    if-ne v6, v7, :cond_3

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/miui/player/ui/view/ExtendScroller;->firstx:F

    sub-float v4, v6, v7

    .line 67
    .local v4, xdiff:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/miui/player/ui/view/ExtendScroller;->firsty:F

    sub-float v5, v6, v7

    .line 68
    .local v5, ydiff:F
    cmpg-float v6, v4, v8

    if-gez v6, :cond_1

    .line 69
    mul-float/2addr v4, v9

    .line 70
    :cond_1
    cmpg-float v6, v5, v8

    if-gez v6, :cond_2

    .line 71
    mul-float/2addr v5, v9

    .line 73
    :cond_2
    cmpl-float v6, v4, v5

    if-lez v6, :cond_b

    cmpl-float v6, v4, v11

    if-lez v6, :cond_b

    .line 74
    sget v6, Lcom/miui/player/ui/view/ExtendScroller;->DO_HORIZONTAL_SCROLL:I

    iput v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->gestureRecipient:I

    .line 80
    .end local v4           #xdiff:F
    .end local v5           #ydiff:F
    :cond_3
    :goto_0
    iget v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->gestureRecipient:I

    sget v7, Lcom/miui/player/ui/view/ExtendScroller;->DO_HORIZONTAL_SCROLL:I

    if-ne v6, v7, :cond_c

    .line 81
    iget-boolean v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->firstclick:Z

    if-nez v6, :cond_4

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/miui/player/ui/view/ExtendScroller;->lastx:F

    sub-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget v8, p0, Lcom/miui/player/ui/view/ExtendScroller;->lastRawx:F

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float v1, v6, v9

    .line 87
    .local v1, offsetx:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/miui/player/ui/view/ExtendScroller;->lasty:F

    sub-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget v8, p0, Lcom/miui/player/ui/view/ExtendScroller;->lastRawy:F

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float v2, v6, v9

    .line 88
    .local v2, offsety:F
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 90
    .end local v1           #offsetx:F
    .end local v2           #offsety:F
    :cond_4
    iget-object v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->mExtendScrollListener:Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;

    if-eqz v6, :cond_5

    .line 91
    iget-object v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->mExtendScrollListener:Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;

    invoke-interface {v6, p1}, Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 93
    :cond_5
    iput-boolean v12, p0, Lcom/miui/player/ui/view/ExtendScroller;->firstclick:Z

    .line 104
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 105
    .local v0, action:I
    if-eq v0, v10, :cond_7

    const/4 v6, 0x3

    if-eq v0, v6, :cond_7

    const/4 v6, 0x4

    if-ne v0, v6, :cond_a

    .line 109
    :cond_7
    iget v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->firstx:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_e

    iget v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->firsty:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_e

    .line 112
    iget-object v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->mExtendScrollListener:Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;

    if-eqz v6, :cond_8

    .line 113
    iget-object v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->mExtendScrollListener:Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;

    invoke-interface {v6, p1}, Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 120
    :cond_8
    :goto_2
    iget v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->gestureRecipient:I

    sget v7, Lcom/miui/player/ui/view/ExtendScroller;->DO_HORIZONTAL_SCROLL:I

    if-ne v6, v7, :cond_9

    .line 121
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 123
    :cond_9
    iget-object v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->mScrollable:Lcom/miui/player/ui/view/ExtendScroller$Scrollable;

    invoke-interface {v6, p1}, Lcom/miui/player/ui/view/ExtendScroller$Scrollable;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 125
    iput-boolean v10, p0, Lcom/miui/player/ui/view/ExtendScroller;->donewithclick:Z

    .line 126
    sget v6, Lcom/miui/player/ui/view/ExtendScroller;->NONE:I

    iput v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->gestureRecipient:I

    .line 129
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->lastx:F

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->lasty:F

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->lastRawx:F

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->lastRawy:F

    .line 133
    return v3

    .line 75
    .end local v0           #action:I
    .restart local v4       #xdiff:F
    .restart local v5       #ydiff:F
    :cond_b
    cmpl-float v6, v5, v4

    if-lez v6, :cond_3

    cmpl-float v6, v5, v11

    if-lez v6, :cond_3

    .line 76
    sget v6, Lcom/miui/player/ui/view/ExtendScroller;->DO_VERTICAL_SCROLL:I

    iput v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->gestureRecipient:I

    goto/16 :goto_0

    .line 94
    .end local v4           #xdiff:F
    .end local v5           #ydiff:F
    :cond_c
    iget v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->gestureRecipient:I

    sget v7, Lcom/miui/player/ui/view/ExtendScroller;->DO_VERTICAL_SCROLL:I

    if-ne v6, v7, :cond_6

    .line 95
    iget-object v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->mExtendScrollListener:Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;

    if-eqz v6, :cond_d

    .line 96
    iget-object v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->mExtendScrollListener:Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;

    invoke-interface {v6, p1}, Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;->onScroll(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 99
    :cond_d
    if-nez v3, :cond_6

    .line 100
    iget-object v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->mScrollable:Lcom/miui/player/ui/view/ExtendScroller$Scrollable;

    invoke-interface {v6, p1}, Lcom/miui/player/ui/view/ExtendScroller$Scrollable;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    .line 116
    .restart local v0       #action:I
    :cond_e
    iget-object v6, p0, Lcom/miui/player/ui/view/ExtendScroller;->mExtendScrollListener:Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;

    invoke-interface {v6, p1}, Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2
.end method

.method public setOnExtendScrollListener(Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/miui/player/ui/view/ExtendScroller;->mExtendScrollListener:Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;

    .line 44
    return-void
.end method
