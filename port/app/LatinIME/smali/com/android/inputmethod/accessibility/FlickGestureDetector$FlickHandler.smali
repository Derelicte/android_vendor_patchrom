.class Lcom/android/inputmethod/accessibility/FlickGestureDetector$FlickHandler;
.super Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.source "FlickGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/accessibility/FlickGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlickHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper",
        "<",
        "Lcom/android/inputmethod/accessibility/FlickGestureDetector;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/accessibility/FlickGestureDetector;)V
    .locals 0
    .parameter "outerInstance"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 70
    return-void
.end method


# virtual methods
.method public cancelFlickTimeout()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/accessibility/FlickGestureDetector$FlickHandler;->removeMessages(I)V

    .line 89
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/inputmethod/accessibility/FlickGestureDetector$FlickHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/accessibility/FlickGestureDetector;

    .line 76
    .local v0, gestureDetector:Lcom/android/inputmethod/accessibility/FlickGestureDetector;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 78
    :pswitch_0
    const/4 v1, 0x1

    #calls: Lcom/android/inputmethod/accessibility/FlickGestureDetector;->clearFlick(Z)V
    invoke-static {v0, v1}, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->access$000(Lcom/android/inputmethod/accessibility/FlickGestureDetector;Z)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public startFlickTimeout()V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/inputmethod/accessibility/FlickGestureDetector$FlickHandler;->cancelFlickTimeout()V

    .line 84
    const/4 v0, 0x1

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/accessibility/FlickGestureDetector$FlickHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 85
    return-void
.end method
