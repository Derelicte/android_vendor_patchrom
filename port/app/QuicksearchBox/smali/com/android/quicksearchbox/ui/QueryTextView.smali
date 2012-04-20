.class public Lcom/android/quicksearchbox/ui/QueryTextView;
.super Landroid/widget/EditText;
.source "QueryTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/QueryTextView$CommitCompletionListener;
    }
.end annotation


# instance fields
.field private mCommitCompletionListener:Lcom/android/quicksearchbox/ui/QueryTextView$CommitCompletionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/QueryTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method public hideInputMethod()V
    .locals 3

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/QueryTextView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 85
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/QueryTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 88
    :cond_0
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2
    .parameter "completion"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/QueryTextView;->hideInputMethod()V

    .line 94
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/QueryTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/QueryTextView;->mCommitCompletionListener:Lcom/android/quicksearchbox/ui/QueryTextView$CommitCompletionListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/QueryTextView;->mCommitCompletionListener:Lcom/android/quicksearchbox/ui/QueryTextView$CommitCompletionListener;

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ui/QueryTextView$CommitCompletionListener;->onCommitCompletion(I)V

    .line 98
    :cond_0
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/QueryTextView;->clearComposingText()V

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/QueryTextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/QueryTextView;->setTextSelection(Z)V

    .line 66
    return-void
.end method

.method public setCommitCompletionListener(Lcom/android/quicksearchbox/ui/QueryTextView$CommitCompletionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/QueryTextView;->mCommitCompletionListener:Lcom/android/quicksearchbox/ui/QueryTextView$CommitCompletionListener;

    .line 70
    return-void
.end method

.method public setTextSelection(Z)V
    .locals 1
    .parameter "selectAll"

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/QueryTextView;->selectAll()V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/QueryTextView;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/QueryTextView;->setSelection(I)V

    goto :goto_0
.end method

.method public showInputMethod()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/QueryTextView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 78
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 79
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 81
    :cond_0
    return-void
.end method
