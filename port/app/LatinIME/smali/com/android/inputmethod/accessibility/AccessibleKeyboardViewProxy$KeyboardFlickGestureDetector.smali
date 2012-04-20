.class Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyboardFlickGestureDetector;
.super Lcom/android/inputmethod/accessibility/FlickGestureDetector;
.source "AccessibleKeyboardViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardFlickGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyboardFlickGestureDetector;->this$0:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    .line 177
    invoke-direct {p0, p2}, Lcom/android/inputmethod/accessibility/FlickGestureDetector;-><init>(Landroid/content/Context;)V

    .line 178
    return-void
.end method


# virtual methods
.method public onFlick(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "direction"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyboardFlickGestureDetector;->this$0:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    #getter for: Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mListener:Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->access$000(Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;)Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyboardFlickGestureDetector;->this$0:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    #getter for: Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mListener:Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->access$000(Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;)Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;->onFlickGesture(I)V

    .line 185
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
