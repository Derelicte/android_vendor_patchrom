.class Lcom/android/inputmethod/latin/MoreSuggestionsView$1;
.super Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;
.source "MoreSuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/MoreSuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/MoreSuggestionsView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/MoreSuggestionsView;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelInput()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    #getter for: Lcom/android/inputmethod/latin/MoreSuggestionsView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->access$000(Lcom/android/inputmethod/latin/MoreSuggestionsView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCancelInput()V

    .line 78
    return-void
.end method

.method public onCodeInput(I[III)V
    .locals 2
    .parameter "primaryCode"
    .parameter "keyCodes"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 69
    add-int/lit16 v0, p1, -0x400

    .line 70
    .local v0, index:I
    if-ltz v0, :cond_0

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    #getter for: Lcom/android/inputmethod/latin/MoreSuggestionsView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v1}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->access$000(Lcom/android/inputmethod/latin/MoreSuggestionsView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCustomRequest(I)Z

    .line 73
    :cond_0
    return-void
.end method

.method public onPress(IZ)V
    .locals 1
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    #getter for: Lcom/android/inputmethod/latin/MoreSuggestionsView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->access$000(Lcom/android/inputmethod/latin/MoreSuggestionsView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onPress(IZ)V

    .line 60
    return-void
.end method

.method public onRelease(IZ)V
    .locals 1
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView$1;->this$0:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    #getter for: Lcom/android/inputmethod/latin/MoreSuggestionsView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->access$000(Lcom/android/inputmethod/latin/MoreSuggestionsView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onRelease(IZ)V

    .line 65
    return-void
.end method
