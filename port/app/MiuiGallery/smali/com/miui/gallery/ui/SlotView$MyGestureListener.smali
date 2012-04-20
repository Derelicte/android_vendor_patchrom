.class Lcom/miui/gallery/ui/SlotView$MyGestureListener;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private isDown:Z

.field final synthetic this$0:Lcom/miui/gallery/ui/SlotView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/SlotView;)V
    .locals 0
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/SlotView;Lcom/miui/gallery/ui/SlotView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 636
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SlotView$MyGestureListener;-><init>(Lcom/miui/gallery/ui/SlotView;)V

    return-void
.end method

.method private cancelDown()V
    .locals 1

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->isDown:Z

    if-nez v0, :cond_0

    .line 656
    :goto_0
    return-void

    .line 654
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->isDown:Z

    .line 655
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mListener:Lcom/miui/gallery/ui/SlotView$Listener;
    invoke-static {v0}, Lcom/miui/gallery/ui/SlotView;->access$300(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/SlotView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/ui/SlotView$Listener;->onUp()V

    goto :goto_0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 670
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 671
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x0

    .line 677
    invoke-direct {p0}, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->cancelDown()V

    .line 678
    iget-object v3, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mEnableScroll:Z
    invoke-static {v3}, Lcom/miui/gallery/ui/SlotView;->access$400(Lcom/miui/gallery/ui/SlotView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 679
    iget-object v3, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;
    invoke-static {v3}, Lcom/miui/gallery/ui/SlotView;->access$200(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/SlotView$Layout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    .line 680
    .local v0, scrollLimit:I
    if-nez v0, :cond_0

    .line 686
    .end local v0           #scrollLimit:I
    :goto_0
    return v2

    .line 681
    .restart local v0       #scrollLimit:I
    :cond_0
    move v1, p4

    .line 682
    .local v1, velocity:F
    iget-object v3, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mScroller:Lcom/miui/gallery/ui/ScrollerHelper;
    invoke-static {v3}, Lcom/miui/gallery/ui/SlotView;->access$500(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/ScrollerHelper;

    move-result-object v3

    neg-float v4, v1

    float-to-int v4, v4

    invoke-virtual {v3, v4, v2, v0}, Lcom/miui/gallery/ui/ScrollerHelper;->fling(III)V

    .line 683
    iget-object v2, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mUIListener:Lcom/miui/gallery/ui/UserInteractionListener;
    invoke-static {v2}, Lcom/miui/gallery/ui/SlotView;->access$600(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/UserInteractionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mUIListener:Lcom/miui/gallery/ui/UserInteractionListener;
    invoke-static {v2}, Lcom/miui/gallery/ui/SlotView;->access$600(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/UserInteractionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/ui/UserInteractionListener;->onUserInteractionBegin()V

    .line 685
    .end local v0           #scrollLimit:I
    .end local v1           #velocity:F
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/SlotView;->invalidate()V

    .line 686
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->cancelDown()V

    .line 717
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mDownInScrolling:Z
    invoke-static {v1}, Lcom/miui/gallery/ui/SlotView;->access$900(Lcom/miui/gallery/ui/SlotView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/SlotView;->lockRendering()V

    .line 720
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;
    invoke-static {v1}, Lcom/miui/gallery/ui/SlotView;->access$200(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/SlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    .line 721
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mListener:Lcom/miui/gallery/ui/SlotView$Listener;
    invoke-static {v1}, Lcom/miui/gallery/ui/SlotView;->access$300(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/SlotView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/gallery/ui/SlotView$Listener;->onLongTap(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/SlotView;->unlockRendering()V

    goto :goto_0

    .end local v0           #index:I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/SlotView;->unlockRendering()V

    throw v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->cancelDown()V

    .line 693
    iget-object v2, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mEnableScroll:Z
    invoke-static {v2}, Lcom/miui/gallery/ui/SlotView;->access$400(Lcom/miui/gallery/ui/SlotView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 694
    move v0, p4

    .line 695
    .local v0, distance:F
    iget-object v2, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mScroller:Lcom/miui/gallery/ui/ScrollerHelper;
    invoke-static {v2}, Lcom/miui/gallery/ui/SlotView;->access$500(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/ScrollerHelper;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;
    invoke-static {v5}, Lcom/miui/gallery/ui/SlotView;->access$200(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/SlotView$Layout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/ui/SlotView$Layout;->getScrollLimit()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/gallery/ui/ScrollerHelper;->startScroll(III)I

    move-result v1

    .line 697
    .local v1, overDistance:I
    iget-object v2, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mOverscrollEffect:I
    invoke-static {v2}, Lcom/miui/gallery/ui/SlotView;->access$700(Lcom/miui/gallery/ui/SlotView;)I

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 698
    iget-object v2, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mPaper:Lcom/miui/gallery/ui/Paper;
    invoke-static {v2}, Lcom/miui/gallery/ui/SlotView;->access$800(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/Paper;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/Paper;->overScroll(F)V

    .line 701
    .end local v0           #distance:F
    .end local v1           #overDistance:I
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/SlotView;->invalidate()V

    .line 702
    const/4 v2, 0x1

    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 644
    iget-boolean v1, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->isDown:Z

    if-eqz v1, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;
    invoke-static {v1}, Lcom/miui/gallery/ui/SlotView;->access$200(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/SlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    .line 646
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 647
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->isDown:Z

    .line 648
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mListener:Lcom/miui/gallery/ui/SlotView$Listener;
    invoke-static {v1}, Lcom/miui/gallery/ui/SlotView;->access$300(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/SlotView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/gallery/ui/SlotView$Listener;->onDown(I)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 707
    invoke-direct {p0}, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->cancelDown()V

    .line 708
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mDownInScrolling:Z
    invoke-static {v1}, Lcom/miui/gallery/ui/SlotView;->access$900(Lcom/miui/gallery/ui/SlotView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 711
    :cond_0
    :goto_0
    return v4

    .line 709
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;
    invoke-static {v1}, Lcom/miui/gallery/ui/SlotView;->access$200(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/SlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    .line 710
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/miui/gallery/ui/SlotView;

    #getter for: Lcom/miui/gallery/ui/SlotView;->mListener:Lcom/miui/gallery/ui/SlotView$Listener;
    invoke-static {v1}, Lcom/miui/gallery/ui/SlotView;->access$300(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/SlotView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/gallery/ui/SlotView$Listener;->onSingleTapUp(I)V

    goto :goto_0
.end method
