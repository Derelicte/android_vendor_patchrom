.class public Lcom/android/browser/MiuiTitleBar;
.super Lcom/android/browser/TitleBar;
.source "MiuiTitleBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/UiController;Lcom/android/browser/BaseUi;Landroid/widget/FrameLayout;)V
    .locals 0
    .parameter "context"
    .parameter "controller"
    .parameter "ui"
    .parameter "parent"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/browser/TitleBar;-><init>(Landroid/content/Context;Lcom/android/browser/UiController;Lcom/android/browser/BaseUi;Landroid/widget/FrameLayout;)V

    .line 16
    return-void
.end method


# virtual methods
.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "focused"
    .parameter "dir"

    .prologue
    .line 57
    const/16 v0, 0x82

    if-ne v0, p2, :cond_1

    invoke-virtual {p0}, Lcom/android/browser/MiuiTitleBar;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/android/browser/MiuiTitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    check-cast v0, Lcom/android/browser/MiuiTab;

    invoke-virtual {v0}, Lcom/android/browser/MiuiTab;->isShowingMiuiHome()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/browser/MiuiTitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v0}, Lcom/android/browser/BaseUi;->getMiuiHome()Lcom/android/browser/MiuiHome;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/MiuiTitleBar;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/browser/TitleBar;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getVisibleTitleHeight()I
    .locals 3

    .prologue
    .line 47
    iget-object v2, p0, Lcom/android/browser/MiuiTitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v2}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    check-cast v0, Lcom/android/browser/MiuiTab;

    .line 48
    .local v0, tab:Lcom/android/browser/MiuiTab;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/MiuiTab;->isShowingMiuiHome()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/browser/MiuiTitleBar;->getEmbeddedHeight()I

    move-result v2

    .line 52
    :goto_0
    return v2

    .line 51
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/browser/MiuiTab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 52
    .local v1, webview:Landroid/webkit/WebView;
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    goto :goto_0

    .line 51
    .end local v1           #webview:Landroid/webkit/WebView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 52
    .restart local v1       #webview:Landroid/webkit/WebView;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method setMiuiHomeShowing(Z)V
    .locals 2
    .parameter "showing"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/browser/MiuiTitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    if-eqz p1, :cond_0

    const v0, 0x7f0200b6

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/browser/NavigationBarBase;->setBackgroundResource(I)V

    .line 70
    return-void

    .line 68
    :cond_0
    const v0, 0x7f0200b5

    goto :goto_0
.end method

.method show()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 20
    iget-boolean v3, p0, Lcom/android/browser/MiuiTitleBar;->mUseQuickControls:Z

    if-eqz v3, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/android/browser/MiuiTitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 22
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 25
    :cond_0
    iget-object v3, p0, Lcom/android/browser/MiuiTitleBar;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 42
    .end local v0           #parent:Landroid/view/ViewGroup;
    :goto_0
    iput-boolean v7, p0, Lcom/android/browser/MiuiTitleBar;->mShowing:Z

    .line 43
    return-void

    .line 27
    :cond_1
    iget-object v3, p0, Lcom/android/browser/MiuiTitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v3}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/browser/MiuiTitleBar;->mSkipTitleBarAnimations:Z

    if-nez v3, :cond_3

    .line 28
    invoke-virtual {p0, v6}, Lcom/android/browser/MiuiTitleBar;->cancelTitleBarAnimation(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/android/browser/MiuiTitleBar;->getVisibleTitleHeight()I

    move-result v2

    .line 30
    .local v2, visibleHeight:I
    invoke-virtual {p0}, Lcom/android/browser/MiuiTitleBar;->getEmbeddedHeight()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, v2

    int-to-float v1, v3

    .line 31
    .local v1, startPos:F
    invoke-virtual {p0}, Lcom/android/browser/MiuiTitleBar;->getTranslationY()F

    move-result v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_2

    .line 32
    invoke-virtual {p0}, Lcom/android/browser/MiuiTitleBar;->getTranslationY()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 34
    :cond_2
    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v1, v4, v6

    aput v5, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/MiuiTitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    .line 37
    iget-object v3, p0, Lcom/android/browser/MiuiTitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, v3}, Lcom/android/browser/MiuiTitleBar;->setupTitleBarAnimator(Landroid/animation/Animator;)V

    .line 38
    iget-object v3, p0, Lcom/android/browser/MiuiTitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 40
    .end local v1           #startPos:F
    .end local v2           #visibleHeight:I
    :cond_3
    iget-object v3, p0, Lcom/android/browser/MiuiTitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Lcom/android/browser/BaseUi;->setTitleGravity(I)V

    goto :goto_0
.end method
