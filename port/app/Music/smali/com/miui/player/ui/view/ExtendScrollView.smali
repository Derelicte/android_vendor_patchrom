.class public Lcom/miui/player/ui/view/ExtendScrollView;
.super Landroid/widget/ScrollView;
.source "ExtendScrollView.java"

# interfaces
.implements Lcom/miui/player/ui/view/ExtendScroller$Scrollable;
.implements Ljava/lang/Runnable;


# instance fields
.field private final mExtendScroller:Lcom/miui/player/ui/view/ExtendScroller;

.field private mIsNeedFling:Z

.field private mScrollY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mScrollY:I

    .line 19
    new-instance v0, Lcom/miui/player/ui/view/ExtendScroller;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/view/ExtendScroller;-><init>(Lcom/miui/player/ui/view/ExtendScroller$Scrollable;)V

    iput-object v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mExtendScroller:Lcom/miui/player/ui/view/ExtendScroller;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mIsNeedFling:Z

    .line 21
    return-void
.end method


# virtual methods
.method public fling(I)V
    .locals 1
    .parameter "velocityY"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mIsNeedFling:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 41
    :cond_0
    return-void
.end method

.method public handleInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mExtendScroller:Lcom/miui/player/ui/view/ExtendScroller;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/view/ExtendScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 26
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 27
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 30
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mExtendScroller:Lcom/miui/player/ui/view/ExtendScroller;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/view/ExtendScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/view/ExtendScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    invoke-virtual {p0}, Lcom/miui/player/ui/view/ExtendScrollView;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->scrollTo(II)V

    .line 89
    invoke-virtual {p0, p0}, Lcom/miui/player/ui/view/ExtendScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method public scrollY(I)V
    .locals 3
    .parameter "y"

    .prologue
    .line 73
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 75
    iput p1, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mScrollY:I

    .line 76
    invoke-virtual {p0, p0}, Lcom/miui/player/ui/view/ExtendScrollView;->post(Ljava/lang/Runnable;)Z

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/view/ExtendScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/miui/player/ui/view/ExtendScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method public setNeedFling(Z)V
    .locals 0
    .parameter "isNeedFling"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mIsNeedFling:Z

    .line 34
    return-void
.end method

.method public setOnExtendScrollListener(Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mExtendScroller:Lcom/miui/player/ui/view/ExtendScroller;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/view/ExtendScroller;->setOnExtendScrollListener(Lcom/miui/player/ui/view/ExtendScroller$OnExtendScrollListener;)V

    .line 55
    return-void
.end method
