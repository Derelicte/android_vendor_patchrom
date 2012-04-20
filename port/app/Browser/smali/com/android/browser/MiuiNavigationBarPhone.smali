.class public Lcom/android/browser/MiuiNavigationBarPhone;
.super Lcom/android/browser/MiuiNavigationBarBase;
.source "MiuiNavigationBarPhone.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/browser/UrlInputView$StateListener;


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private mBookmarkButton:Landroid/widget/ImageView;

.field private mClearDescription:Ljava/lang/String;

.field private mClearDrawable:Landroid/graphics/drawable/Drawable;

.field private mGoButton:Landroid/widget/ImageView;

.field private mIncognitoIcon:Landroid/view/View;

.field private mOverflowMenuShowing:Z

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mReaderButton:Landroid/view/View;

.field private mRefreshDescription:Ljava/lang/String;

.field private mRefreshDrawable:Landroid/graphics/drawable/Drawable;

.field private mSearchPart:Landroid/view/View;

.field private mStopDescription:Ljava/lang/String;

.field private mStopDrawable:Landroid/graphics/drawable/Drawable;

.field private mStopRefreshClearButton:Landroid/widget/ImageView;

.field private mUrlPart:Landroid/view/View;

.field private mUrlViewContainer:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/browser/NavigationBarPhone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/MiuiNavigationBarPhone;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/browser/MiuiNavigationBarBase;-><init>(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/browser/MiuiNavigationBarBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/MiuiNavigationBarBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method private onMenuHidden()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mOverflowMenuShowing:Z

    .line 223
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v0}, Lcom/android/browser/BaseUi;->showTitleBarForDuration()V

    .line 224
    return-void
.end method


# virtual methods
.method public isMenuShowing()Z
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/android/browser/MiuiNavigationBarBase;->isMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mOverflowMenuShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 165
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mBookmarkButton:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->addToBookmarks()V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopRefreshClearButton:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_5

    .line 168
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2}, Lcom/android/browser/TitleBar;->isInLoad()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->stopLoading()V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v2}, Lcom/android/browser/UrlInputView;->getState()I

    move-result v0

    .line 172
    .local v0, state:I
    if-eq v0, v3, :cond_3

    if-ne v0, v3, :cond_4

    .line 173
    :cond_3
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 175
    :cond_4
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v2}, Lcom/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 176
    .local v1, web:Landroid/webkit/WebView;
    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/browser/MiuiNavigationBarPhone;->stopEditingUrl()V

    .line 178
    invoke-virtual {v1}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 182
    .end local v0           #state:I
    .end local v1           #web:Landroid/webkit/WebView;
    :cond_5
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mGoButton:Landroid/widget/ImageView;

    if-ne v2, p1, :cond_6

    .line 183
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    iget-object v3, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v3}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "browser-type"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/browser/UrlInputView;->finishInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_6
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mReaderButton:Landroid/view/View;

    if-ne v2, p1, :cond_7

    .line 185
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v2}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v2

    check-cast v2, Lcom/android/browser/MiuiTab;

    invoke-virtual {v2}, Lcom/android/browser/MiuiTab;->enterReadingMode()V

    goto :goto_0

    .line 187
    :cond_7
    invoke-super {p0, p1}, Lcom/android/browser/MiuiNavigationBarBase;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    if-ne p1, v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/browser/MiuiNavigationBarPhone;->onMenuHidden()V

    .line 219
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/browser/MiuiNavigationBarBase;->onFinishInflate()V

    .line 79
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiNavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/MiuiUrlInputView;

    iput-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    .line 81
    const v1, 0x7f0d005e

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiNavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlPart:Landroid/view/View;

    .line 83
    const v1, 0x7f0d005f

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiNavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mBookmarkButton:Landroid/widget/ImageView;

    .line 84
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mBookmarkButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v1, 0x7f0d0060

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiNavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mIncognitoIcon:Landroid/view/View;

    .line 87
    const v1, 0x7f0d0061

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiNavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlViewContainer:Landroid/view/View;

    .line 89
    const v1, 0x7f0d0064

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiNavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mReaderButton:Landroid/view/View;

    .line 90
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mReaderButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v1, 0x7f0d0065

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiNavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopRefreshClearButton:Landroid/widget/ImageView;

    .line 93
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopRefreshClearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v1, 0x7f0d0066

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiNavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mGoButton:Landroid/widget/ImageView;

    .line 96
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v1, 0x7f0d0067

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiNavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mSearchPart:Landroid/view/View;

    .line 100
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiNavigationBarPhone;->setFocusState(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/browser/MiuiNavigationBarPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mRefreshDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    const v1, 0x7f0c0152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopDescription:Ljava/lang/String;

    .line 108
    const v1, 0x7f0c0151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mRefreshDescription:Ljava/lang/String;

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mClearDescription:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlViewContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/browser/UrlInputView;->setContainer(Landroid/view/View;)V

    .line 112
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1, p0}, Lcom/android/browser/UrlInputView;->setStateListener(Lcom/android/browser/UrlInputView$StateListener;)V

    .line 114
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    if-ne p1, v0, :cond_0

    .line 229
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    .line 232
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->selectAll()V

    .line 237
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/browser/MiuiNavigationBarBase;->onFocusChange(Landroid/view/View;Z)V

    .line 238
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/MiuiNavigationBarPhone;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0, p1}, Lcom/android/browser/UiController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onProgressStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    invoke-super {p0}, Lcom/android/browser/MiuiNavigationBarBase;->onProgressStarted()V

    .line 119
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopRefreshClearButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopRefreshClearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopRefreshClearButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 124
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    .line 127
    :cond_0
    return-void
.end method

.method public onProgressStopped()V
    .locals 4

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/browser/MiuiNavigationBarBase;->onProgressStopped()V

    .line 133
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 134
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiNavigationBarPhone;->onStateChanged(I)V

    .line 139
    return-void
.end method

.method public onStateChanged(I)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 243
    sget-object v2, Lcom/android/browser/MiuiNavigationBarPhone;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStateChanged state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v1, 0x0

    .line 247
    .local v1, tab:Lcom/android/browser/MiuiTab;
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mBaseUi:Lcom/android/browser/BaseUi;

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v2}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v1

    .end local v1           #tab:Lcom/android/browser/MiuiTab;
    check-cast v1, Lcom/android/browser/MiuiTab;

    .line 251
    .restart local v1       #tab:Lcom/android/browser/MiuiTab;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 293
    :goto_0
    return-void

    .line 253
    :pswitch_0
    const/4 v0, 0x0

    .line 254
    .local v0, isPrivate:Z
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUiController:Lcom/android/browser/UiController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    .line 257
    :cond_1
    iget-object v5, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mBookmarkButton:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v2}, Lcom/android/browser/UrlInputView;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    move v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mReaderButton:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 260
    iget-object v5, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mReaderButton:Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/browser/MiuiTab;->canEnterReadingMode()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :cond_3
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopRefreshClearButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mRefreshDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopRefreshClearButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopRefreshClearButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mRefreshDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v2, v3

    .line 257
    goto :goto_1

    :cond_5
    move v2, v4

    .line 260
    goto :goto_2

    .line 270
    .end local v0           #isPrivate:Z
    :pswitch_1
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mBookmarkButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mReaderButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopRefreshClearButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopRefreshClearButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopRefreshClearButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mClearDescription:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 279
    :pswitch_2
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mBookmarkButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mReaderButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v2}, Lcom/android/browser/UrlInputView;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 282
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopRefreshClearButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 285
    :cond_6
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopRefreshClearButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopRefreshClearButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mStopRefreshClearButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mClearDescription:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v2, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTabDataChanged(Lcom/android/browser/Tab;)V
    .locals 5
    .parameter "tab"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 297
    invoke-super {p0, p1}, Lcom/android/browser/MiuiNavigationBarBase;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 298
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    .line 299
    .local v0, isPrivate:Z
    iget-object v4, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mBookmarkButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget-object v4, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mIncognitoIcon:Landroid/view/View;

    if-eqz v0, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mReaderButton:Landroid/view/View;

    check-cast p1, Lcom/android/browser/MiuiTab;

    .end local p1
    invoke-virtual {p1}, Lcom/android/browser/MiuiTab;->canEnterReadingMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 303
    return-void

    .restart local p1
    :cond_0
    move v1, v3

    .line 299
    goto :goto_0

    :cond_1
    move v1, v2

    .line 300
    goto :goto_1

    .end local p1
    :cond_2
    move v3, v2

    .line 301
    goto :goto_2
.end method

.method setDisplayTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p1}, Lcom/android/browser/UrlInputView;->setTag(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/browser/MiuiNavigationBarPhone;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    if-nez p1, :cond_2

    .line 151
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    check-cast v0, Lcom/android/browser/MiuiTab;

    invoke-virtual {v0}, Lcom/android/browser/MiuiTab;->isShowingMiuiHome()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setText(I)V

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, v2}, Lcom/android/browser/UrlInputView;->setSelection(I)V

    .line 161
    :cond_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-static {p1}, Lcom/android/browser/UrlUtils;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method
