.class Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LatinKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/LatinKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapListener"
.end annotation


# instance fields
.field private mProcessingShiftDoubleTapEvent:Z

.field final synthetic this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;


# direct methods
.method private constructor <init>(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->mProcessingShiftDoubleTapEvent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/keyboard/LatinKeyboardView;Lcom/android/inputmethod/keyboard/LatinKeyboardView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;-><init>(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "firstDown"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 167
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 168
    .local v1, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    instance-of v6, v1, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    if-eqz v6, :cond_0

    check-cast v1, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    .end local v1           #keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isAlphaKeyboard()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 171
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 172
    .local v0, id:I
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    #calls: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-static {v6, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$200(Lcom/android/inputmethod/keyboard/LatinKeyboardView;I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v3

    .line 174
    .local v3, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v6, v7}, Lcom/android/inputmethod/keyboard/PointerTracker;->isOnShiftKey(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 175
    iput-boolean v4, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->mProcessingShiftDoubleTapEvent:Z

    .line 180
    .end local v0           #id:I
    .end local v2           #pointerIndex:I
    .end local v3           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :goto_0
    return v4

    .line 179
    :cond_0
    iput-boolean v5, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->mProcessingShiftDoubleTapEvent:Z

    move v4, v5

    .line 180
    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "secondTap"

    .prologue
    .line 185
    iget-boolean v4, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->mProcessingShiftDoubleTapEvent:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 187
    move-object v2, p1

    .line 188
    .local v2, secondDown:Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 189
    .local v1, pointerIndex:I
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 190
    .local v0, id:I
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    #calls: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-static {v4, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$200(Lcom/android/inputmethod/keyboard/LatinKeyboardView;I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v3

    .line 192
    .local v3, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->isOnShiftKey(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;
    invoke-static {v5}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$300(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->isIgnoringDoubleTap()Z

    move-result v5

    #calls: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->onDoubleTapShiftKey(Lcom/android/inputmethod/keyboard/PointerTracker;Z)V
    invoke-static {v4, v3, v5}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$400(Lcom/android/inputmethod/keyboard/LatinKeyboardView;Lcom/android/inputmethod/keyboard/PointerTracker;Z)V

    .line 197
    const/4 v4, 0x1

    .line 202
    .end local v0           #id:I
    .end local v1           #pointerIndex:I
    .end local v2           #secondDown:Landroid/view/MotionEvent;
    .end local v3           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :goto_0
    return v4

    .line 200
    .restart local v0       #id:I
    .restart local v1       #pointerIndex:I
    .restart local v2       #secondDown:Landroid/view/MotionEvent;
    .restart local v3       #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->mProcessingShiftDoubleTapEvent:Z

    .line 202
    .end local v0           #id:I
    .end local v1           #pointerIndex:I
    .end local v2           #secondDown:Landroid/view/MotionEvent;
    .end local v3           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_1
    iget-boolean v4, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->mProcessingShiftDoubleTapEvent:Z

    goto :goto_0
.end method
