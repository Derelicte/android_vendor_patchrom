.class Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;
.super Ljava/lang/Object;
.source "MiuiInCallAnswerWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;
    }
.end annotation


# instance fields
.field private mDownEvent:Landroid/view/MotionEvent;

.field private mListener:Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 564
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 566
    :cond_1
    iput-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mDownEvent:Landroid/view/MotionEvent;

    .line 567
    iput-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 568
    iput-object p2, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mListener:Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;

    .line 570
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 571
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mMinimumFlingVelocity:I

    .line 572
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mMaximumFlingVelocity:I

    .line 573
    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 636
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 638
    iput-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 642
    iput-object v1, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mDownEvent:Landroid/view/MotionEvent;

    .line 644
    :cond_1
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    const/16 v6, 0x3e8

    .line 582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 586
    .local v0, action:I
    const/4 v1, 0x0

    .line 587
    .local v1, handled:Z
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    .line 629
    :goto_0
    return v1

    .line 590
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->cancel()V

    .line 591
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 592
    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 593
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mDownEvent:Landroid/view/MotionEvent;

    .line 594
    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mListener:Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;

    invoke-interface {v4, p1}, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 595
    goto :goto_0

    .line 597
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_2

    .line 598
    :cond_0
    iget-object v5, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mListener:Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;

    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v4, :cond_1

    move-object v4, p1

    :goto_1
    invoke-interface {v5, v4, p1}, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;->onCancel(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    .line 599
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->cancel()V

    goto :goto_0

    .line 598
    :cond_1
    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto :goto_1

    .line 602
    :cond_2
    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 603
    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 604
    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 605
    .local v2, velocityX:F
    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    .line 606
    .local v3, velocityY:F
    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mListener:Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;

    iget-object v5, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v4, v5, p1, v2, v3}, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;->onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    .line 607
    goto :goto_0

    .line 609
    .end local v2           #velocityX:F
    .end local v3           #velocityY:F
    :pswitch_2
    iget-object v5, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mListener:Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;

    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v4, :cond_3

    move-object v4, p1

    :goto_2
    invoke-interface {v5, v4, p1}, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;->onCancel(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    .line 610
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->cancel()V

    goto :goto_0

    .line 609
    :cond_3
    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto :goto_2

    .line 613
    :pswitch_3
    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_6

    .line 614
    :cond_4
    iget-object v5, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mListener:Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;

    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v4, :cond_5

    move-object v4, p1

    :goto_3
    invoke-interface {v5, v4, p1}, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;->onCancel(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    .line 615
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->cancel()V

    goto :goto_0

    .line 614
    :cond_5
    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto :goto_3

    .line 618
    :cond_6
    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 619
    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 620
    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 621
    .restart local v2       #velocityX:F
    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    .line 622
    .restart local v3       #velocityY:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mMinimumFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    .line 623
    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mListener:Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;

    iget-object v5, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v4, v5, p1, v2, v3}, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    .line 625
    :cond_7
    iget-object v4, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mListener:Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;

    iget-object v5, p0, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v4, v5, p1}, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector$GestureListener;->onCancel(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 626
    invoke-direct {p0}, Lcom/android/phone/MiuiInCallAnswerWidgetGestureDetector;->cancel()V

    goto/16 :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
