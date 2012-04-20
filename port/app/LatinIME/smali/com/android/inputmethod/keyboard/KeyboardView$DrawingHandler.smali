.class public Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;
.super Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawingHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper",
        "<",
        "Lcom/android/inputmethod/keyboard/KeyboardView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/keyboard/KeyboardView;)V
    .locals 0
    .parameter "outerInstance"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 142
    return-void
.end method


# virtual methods
.method public cancelAllDismissKeyPreviews()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->removeMessages(I)V

    .line 190
    return-void
.end method

.method public cancelAllMessages()V
    .locals 0

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelAllShowKeyPreviews()V

    .line 194
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelAllDismissKeyPreviews()V

    .line 195
    return-void
.end method

.method public cancelAllShowKeyPreviews()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->removeMessages(I)V

    .line 178
    return-void
.end method

.method public cancelDismissKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 185
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->removeMessages(ILjava/lang/Object;)V

    .line 186
    return-void
.end method

.method public cancelShowKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->removeMessages(ILjava/lang/Object;)V

    .line 174
    return-void
.end method

.method public dismissKeyPreview(JLcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 1
    .parameter "delay"
    .parameter "tracker"

    .prologue
    .line 181
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p3}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 182
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/KeyboardView;

    .line 147
    .local v0, keyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;
    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 149
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 151
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/inputmethod/keyboard/KeyboardView;->showKey(ILcom/android/inputmethod/keyboard/PointerTracker;)V
    invoke-static {v0, v2, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$000(Lcom/android/inputmethod/keyboard/KeyboardView;ILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKeyPreviewText()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showKeyPreview(JILcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 4
    .parameter "delay"
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    const/4 v3, 0x1

    .line 160
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->removeMessages(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/KeyboardView;

    .line 162
    .local v0, keyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;
    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKeyPreviewText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    .line 165
    :cond_1
    #calls: Lcom/android/inputmethod/keyboard/KeyboardView;->showKey(ILcom/android/inputmethod/keyboard/PointerTracker;)V
    invoke-static {v0, p3, p4}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$000(Lcom/android/inputmethod/keyboard/KeyboardView;ILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_0

    .line 167
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v3, p3, v1, p4}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
