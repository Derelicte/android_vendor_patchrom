.class Lcom/android/inputmethod/keyboard/MiniKeyboardView$1;
.super Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;
.source "MiniKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/MiniKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/keyboard/MiniKeyboardView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/keyboard/MiniKeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/MiniKeyboardView;

    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelInput()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/MiniKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->access$000(Lcom/android/inputmethod/keyboard/MiniKeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCancelInput()V

    .line 61
    return-void
.end method

.method public onCodeInput(I[III)V
    .locals 1
    .parameter "primaryCode"
    .parameter "keyCodes"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/MiniKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->access$000(Lcom/android/inputmethod/keyboard/MiniKeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(I[III)V

    .line 51
    return-void
.end method

.method public onPress(IZ)V
    .locals 1
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/MiniKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->access$000(Lcom/android/inputmethod/keyboard/MiniKeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onPress(IZ)V

    .line 66
    return-void
.end method

.method public onRelease(IZ)V
    .locals 1
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/MiniKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->access$000(Lcom/android/inputmethod/keyboard/MiniKeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onRelease(IZ)V

    .line 70
    return-void
.end method

.method public onTextInput(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView$1;->this$0:Lcom/android/inputmethod/keyboard/MiniKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->access$000(Lcom/android/inputmethod/keyboard/MiniKeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onTextInput(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method
