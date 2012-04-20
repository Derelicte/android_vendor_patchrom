.class Lcom/android/calendar/DayView$CalendarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter

    .prologue
    .line 4660
    iput-object p1, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 4705
    invoke-static {}, Lcom/android/calendar/DayView;->access$3700()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/calendar/DayView;->access$3800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onDown"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4706
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->doDown(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/calendar/DayView;->access$4400(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V

    .line 4707
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 4690
    invoke-static {}, Lcom/android/calendar/DayView;->access$3700()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/calendar/DayView;->access$3800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4692
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$4100(Lcom/android/calendar/DayView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4693
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 4694
    const/4 v0, 0x0

    .line 4700
    :goto_0
    return v0

    .line 4697
    :cond_1
    const/4 p4, 0x0

    .line 4699
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->access$4300(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 4700
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 4670
    invoke-static {}, Lcom/android/calendar/DayView;->access$3700()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/calendar/DayView;->access$3800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onLongPress"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4671
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->doLongPress(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/calendar/DayView;->access$4000(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V

    .line 4672
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 4676
    invoke-static {}, Lcom/android/calendar/DayView;->access$3700()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/calendar/DayView;->access$3800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4677
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$4100(Lcom/android/calendar/DayView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4678
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 4679
    const/4 v0, 0x0

    .line 4685
    :goto_0
    return v0

    .line 4682
    :cond_1
    const/4 p4, 0x0

    .line 4684
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->access$4200(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 4685
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 4663
    invoke-static {}, Lcom/android/calendar/DayView;->access$3700()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/calendar/DayView;->access$3800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onSingleTapUp"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4664
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->doSingleTapUp(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/calendar/DayView;->access$3900(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V

    .line 4665
    const/4 v0, 0x1

    return v0
.end method
