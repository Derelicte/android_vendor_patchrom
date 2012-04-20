.class Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;
.super Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.source "LatinKeyboardView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/LatinKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyTimerHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper",
        "<",
        "Lcom/android/inputmethod/keyboard/LatinKeyboardView;",
        ">;",
        "Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;"
    }
.end annotation


# instance fields
.field private mInKeyRepeat:Z


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)V
    .locals 0
    .parameter "outerInstance"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 98
    return-void
.end method


# virtual methods
.method public cancelAllMessages()V
    .locals 0

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelKeyTimers()V

    .line 159
    return-void
.end method

.method public cancelKeyRepeatTimer()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->mInKeyRepeat:Z

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->removeMessages(I)V

    .line 124
    return-void
.end method

.method public cancelKeyTimers()V
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelKeyRepeatTimer()V

    .line 144
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelLongPressTimer()V

    .line 145
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->removeMessages(I)V

    .line 146
    return-void
.end method

.method public cancelLongPressTimer()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->removeMessages(I)V

    .line 139
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    .line 103
    .local v0, keyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 104
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onRepeatKey(I)V

    .line 107
    #getter for: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyRepeatInterval:I
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$000(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)I

    move-result v2

    int-to-long v2, v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->startKeyRepeatTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_0

    .line 110
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->openMiniKeyboardIfRequired(ILcom/android/inputmethod/keyboard/PointerTracker;)Z
    invoke-static {v0, v2, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$100(Lcom/android/inputmethod/keyboard/LatinKeyboardView;ILcom/android/inputmethod/keyboard/PointerTracker;)Z

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isIgnoringDoubleTap()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isInKeyRepeat()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->mInKeyRepeat:Z

    return v0
.end method

.method public startIgnoringDoubleTap()V
    .locals 3

    .prologue
    .line 149
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 151
    return-void
.end method

.method public startKeyRepeatTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 2
    .parameter "delay"
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    const/4 v1, 0x1

    .line 117
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->mInKeyRepeat:Z

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p3, v0, p4}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 119
    return-void
.end method

.method public startLongPressTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 2
    .parameter "delay"
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelLongPressTimer()V

    .line 133
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p4}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 134
    return-void
.end method
