.class public Lcom/android/browser/MiuiNavigationBarBase;
.super Lcom/android/browser/NavigationBarBase;
.source "MiuiNavigationBarBase.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/android/browser/MiuiNavigationBarBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/MiuiNavigationBarBase;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/browser/NavigationBarBase;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/browser/NavigationBarBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/NavigationBarBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "evt"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->clearFocus()V

    .line 79
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    check-cast v0, Lcom/android/browser/MiuiTab;

    invoke-virtual {v0}, Lcom/android/browser/MiuiTab;->isShowingMiuiHome()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v0}, Lcom/android/browser/BaseUi;->getMiuiHome()Lcom/android/browser/MiuiHome;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/MiuiHome;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lcom/android/browser/MiuiNavigationBarBase;->LOGTAG:Ljava/lang/String;

    const-string v1, "failed to request focus"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/browser/NavigationBarBase;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    check-cast v0, Lcom/android/browser/MiuiTab;

    .line 59
    .local v0, currentTab:Lcom/android/browser/MiuiTab;
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 60
    new-instance v1, Lcom/android/browser/MiuiNavigationBarBase$1;

    invoke-direct {v1, p0, v0}, Lcom/android/browser/MiuiNavigationBarBase$1;-><init>(Lcom/android/browser/MiuiNavigationBarBase;Lcom/android/browser/MiuiTab;)V

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiNavigationBarBase;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    const/4 v3, 0x0

    .line 27
    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->needsUpdate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/browser/MiuiNavigationBarBase;->setFocusState(Z)V

    .line 30
    :cond_1
    if-eqz p2, :cond_4

    .line 31
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 32
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_2

    .line 33
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    .line 34
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->selectAll()V

    .line 37
    :cond_2
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->showTitleBar()V

    .line 38
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->forceIme()V

    .line 39
    iget-boolean v1, p0, Lcom/android/browser/MiuiNavigationBarBase;->mInVoiceMode:Z

    if-eqz v1, :cond_3

    .line 40
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->forceFilter()V

    .line 53
    .end local v0           #currentTab:Lcom/android/browser/Tab;
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->clearNeedsUpdate()V

    .line 54
    return-void

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->needsUpdate()Z

    move-result v1

    if-nez v1, :cond_3

    .line 43
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->dismissDropDown()V

    .line 44
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->hideIME()V

    .line 46
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 47
    .restart local v0       #currentTab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_5

    .line 48
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1, v3}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    .line 51
    :cond_5
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->suggestHideTitleBar()V

    goto :goto_0

    .line 48
    :cond_6
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
