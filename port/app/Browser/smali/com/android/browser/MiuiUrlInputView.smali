.class public Lcom/android/browser/MiuiUrlInputView;
.super Lcom/android/browser/UrlInputView;
.source "MiuiUrlInputView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/browser/UrlInputView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/browser/UrlInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/UrlInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v1, 0x2

    .line 34
    iget v0, p0, Lcom/android/browser/MiuiUrlInputView;->mState:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/MiuiUrlInputView;->mStateListener:Lcom/android/browser/UrlInputView$StateListener;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/browser/MiuiUrlInputView;->mStateListener:Lcom/android/browser/UrlInputView$StateListener;

    invoke-interface {v0, v1}, Lcom/android/browser/UrlInputView$StateListener;->onStateChanged(I)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/browser/UrlInputView;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0
.end method

.method protected setupDropDown()V
    .locals 3

    .prologue
    .line 22
    iget-object v2, p0, Lcom/android/browser/MiuiUrlInputView;->mContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/browser/MiuiUrlInputView;->mContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 23
    .local v1, width:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/MiuiUrlInputView;->getDropDownWidth()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiUrlInputView;->setDropDownWidth(I)V

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/android/browser/MiuiUrlInputView;->mContainer:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/browser/MiuiUrlInputView;->mContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 27
    .local v0, left:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/MiuiUrlInputView;->getDropDownHorizontalOffset()I

    move-result v2

    neg-int v2, v2

    if-eq v0, v2, :cond_1

    .line 28
    neg-int v2, v0

    invoke-virtual {p0, v2}, Lcom/android/browser/MiuiUrlInputView;->setDropDownHorizontalOffset(I)V

    .line 30
    :cond_1
    return-void

    .line 22
    .end local v0           #left:I
    .end local v1           #width:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/MiuiUrlInputView;->getWidth()I

    move-result v1

    goto :goto_0

    .line 26
    .restart local v1       #width:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/browser/MiuiUrlInputView;->getLeft()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    goto :goto_1
.end method
