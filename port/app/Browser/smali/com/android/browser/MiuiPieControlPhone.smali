.class public Lcom/android/browser/MiuiPieControlPhone;
.super Lcom/android/browser/PieControlBase;
.source "MiuiPieControlPhone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private mHome:Lcom/android/browser/view/PieItem;

.field private mNewTab:Lcom/android/browser/view/PieItem;

.field private mOptions:Lcom/android/browser/view/PieItem;

.field private mPopup:Landroid/widget/PopupMenu;

.field private mShowTabs:Lcom/android/browser/view/PieItem;

.field private mTabAdapter:Lcom/android/browser/PieControlBase$TabAdapter;

.field private mUi:Lcom/android/browser/MiuiPhoneUi;

.field private mUrl:Lcom/android/browser/view/PieItem;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/MiuiPhoneUi;)V
    .locals 0
    .parameter "activity"
    .parameter "controller"
    .parameter "ui"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/browser/PieControlBase;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    .line 51
    iput-object p3, p0, Lcom/android/browser/MiuiPieControlPhone;->mUi:Lcom/android/browser/MiuiPhoneUi;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/MiuiPieControlPhone;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/browser/MiuiPieControlPhone;->buildTabs()V

    return-void
.end method

.method private buildTabs()V
    .locals 3

    .prologue
    .line 98
    iget-object v2, p0, Lcom/android/browser/MiuiPieControlPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getTabs()Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, tabs:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/Tab;>;"
    iget-object v2, p0, Lcom/android/browser/MiuiPieControlPhone;->mUi:Lcom/android/browser/MiuiPhoneUi;

    invoke-virtual {v2}, Lcom/android/browser/MiuiPhoneUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/Tab;->capture()V

    .line 100
    iget-object v2, p0, Lcom/android/browser/MiuiPieControlPhone;->mTabAdapter:Lcom/android/browser/PieControlBase$TabAdapter;

    invoke-virtual {v2, v1}, Lcom/android/browser/PieControlBase$TabAdapter;->setTabs(Ljava/util/List;)V

    .line 101
    iget-object v2, p0, Lcom/android/browser/MiuiPieControlPhone;->mShowTabs:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getPieView()Lcom/android/browser/view/PieMenu$PieView;

    move-result-object v0

    check-cast v0, Lcom/android/browser/view/PieStackView;

    .line 102
    .local v0, sym:Lcom/android/browser/view/PieStackView;
    iget-object v2, p0, Lcom/android/browser/MiuiPieControlPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/browser/view/PieStackView;->setCurrent(I)V

    .line 104
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/browser/MiuiPieControlPhone;->mUrl:Lcom/android/browser/view/PieItem;

    invoke-virtual {v1}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/android/browser/MiuiPieControlPhone;->mUi:Lcom/android/browser/MiuiPhoneUi;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/MiuiPhoneUi;->editUrl(Z)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/android/browser/MiuiPieControlPhone;->mShowTabs:Lcom/android/browser/view/PieItem;

    invoke-virtual {v1}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/android/browser/MiuiPieControlPhone;->mUi:Lcom/android/browser/MiuiPhoneUi;

    invoke-virtual {v1}, Lcom/android/browser/MiuiPhoneUi;->showNavScreen()V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/android/browser/MiuiPieControlPhone;->mOptions:Lcom/android/browser/view/PieItem;

    invoke-virtual {v1}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 113
    invoke-virtual {p0}, Lcom/android/browser/MiuiPieControlPhone;->showMenu()V

    goto :goto_0

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/android/browser/MiuiPieControlPhone;->mNewTab:Lcom/android/browser/view/PieItem;

    invoke-virtual {v1}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 115
    iget-object v1, p0, Lcom/android/browser/MiuiPieControlPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->openTabToHomePage()Lcom/android/browser/Tab;

    goto :goto_0

    .line 116
    :cond_4
    iget-object v1, p0, Lcom/android/browser/MiuiPieControlPhone;->mHome:Lcom/android/browser/view/PieItem;

    invoke-virtual {v1}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/browser/MiuiPieControlPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 118
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/browser/MiuiPieControlPhone;->mUiController:Lcom/android/browser/UiController;

    const-string v2, "content://com.android.browser.home/res/raw/miui_home"

    invoke-interface {v1, v0, v2}, Lcom/android/browser/UiController;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/browser/MiuiPieControlPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0, p1}, Lcom/android/browser/UiController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected populateMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 55
    const v3, 0x7f02007b

    invoke-virtual {p0, v3, v6}, Lcom/android/browser/MiuiPieControlPhone;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mUrl:Lcom/android/browser/view/PieItem;

    .line 56
    invoke-virtual {p0}, Lcom/android/browser/MiuiPieControlPhone;->makeTabsView()Landroid/view/View;

    move-result-object v2

    .line 57
    .local v2, tabs:Landroid/view/View;
    new-instance v3, Lcom/android/browser/view/PieItem;

    invoke-direct {v3, v2, v6}, Lcom/android/browser/view/PieItem;-><init>(Landroid/view/View;I)V

    iput-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mShowTabs:Lcom/android/browser/view/PieItem;

    .line 58
    new-instance v3, Lcom/android/browser/PieControlBase$TabAdapter;

    iget-object v4, p0, Lcom/android/browser/MiuiPieControlPhone;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/browser/MiuiPieControlPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v3, v4, v5}, Lcom/android/browser/PieControlBase$TabAdapter;-><init>(Landroid/content/Context;Lcom/android/browser/UiController;)V

    iput-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mTabAdapter:Lcom/android/browser/PieControlBase$TabAdapter;

    .line 59
    new-instance v1, Lcom/android/browser/view/PieStackView;

    iget-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcom/android/browser/view/PieStackView;-><init>(Landroid/content/Context;)V

    .line 60
    .local v1, stack:Lcom/android/browser/view/PieStackView;
    new-instance v3, Lcom/android/browser/MiuiPieControlPhone$1;

    invoke-direct {v3, p0}, Lcom/android/browser/MiuiPieControlPhone$1;-><init>(Lcom/android/browser/MiuiPieControlPhone;)V

    invoke-virtual {v1, v3}, Lcom/android/browser/view/PieStackView;->setLayoutListener(Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;)V

    .line 66
    iget-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mTabAdapter:Lcom/android/browser/PieControlBase$TabAdapter;

    invoke-virtual {v1, v3}, Lcom/android/browser/view/PieStackView;->setOnCurrentListener(Lcom/android/browser/view/PieStackView$OnCurrentListener;)V

    .line 67
    iget-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mTabAdapter:Lcom/android/browser/PieControlBase$TabAdapter;

    invoke-virtual {v1, v3}, Lcom/android/browser/view/PieStackView;->setAdapter(Landroid/widget/Adapter;)V

    .line 68
    iget-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mShowTabs:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v1}, Lcom/android/browser/view/PieItem;->setPieView(Lcom/android/browser/view/PieMenu$PieView;)V

    .line 69
    const v3, 0x108032d

    invoke-virtual {p0, v3, v6}, Lcom/android/browser/MiuiPieControlPhone;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mOptions:Lcom/android/browser/view/PieItem;

    .line 72
    const v3, 0x7f020060

    invoke-virtual {p0, v3, v6}, Lcom/android/browser/MiuiPieControlPhone;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mNewTab:Lcom/android/browser/view/PieItem;

    .line 73
    const v3, 0x7f020041

    invoke-virtual {p0, v3, v6}, Lcom/android/browser/MiuiPieControlPhone;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mHome:Lcom/android/browser/view/PieItem;

    .line 74
    iget-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/MiuiPieControlPhone;->mNewTab:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 75
    iget-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/MiuiPieControlPhone;->mShowTabs:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 76
    iget-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/MiuiPieControlPhone;->mUrl:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 77
    iget-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/MiuiPieControlPhone;->mHome:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 78
    iget-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/MiuiPieControlPhone;->mOptions:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 79
    const/4 v3, 0x5

    new-array v3, v3, [Lcom/android/browser/view/PieItem;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/browser/MiuiPieControlPhone;->mUrl:Lcom/android/browser/view/PieItem;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/browser/MiuiPieControlPhone;->mShowTabs:Lcom/android/browser/view/PieItem;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/browser/MiuiPieControlPhone;->mOptions:Lcom/android/browser/view/PieItem;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/browser/MiuiPieControlPhone;->mNewTab:Lcom/android/browser/view/PieItem;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/browser/MiuiPieControlPhone;->mHome:Lcom/android/browser/view/PieItem;

    aput-object v5, v3, v4

    invoke-virtual {p0, p0, v3}, Lcom/android/browser/MiuiPieControlPhone;->setClickListener(Landroid/view/View$OnClickListener;[Lcom/android/browser/view/PieItem;)V

    .line 80
    new-instance v3, Landroid/widget/PopupMenu;

    iget-object v4, p0, Lcom/android/browser/MiuiPieControlPhone;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/browser/MiuiPieControlPhone;->mUi:Lcom/android/browser/MiuiPhoneUi;

    invoke-virtual {v5}, Lcom/android/browser/MiuiPhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mPopup:Landroid/widget/PopupMenu;

    .line 81
    iget-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 82
    .local v0, menu:Landroid/view/Menu;
    iget-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f100002

    invoke-virtual {v3, v4, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 83
    iget-object v3, p0, Lcom/android/browser/MiuiPieControlPhone;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v3, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 84
    return-void
.end method

.method protected showMenu()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/browser/MiuiPieControlPhone;->mUiController:Lcom/android/browser/UiController;

    iget-object v1, p0, Lcom/android/browser/MiuiPieControlPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/MiuiPieControlPhone;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/browser/UiController;->updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V

    .line 88
    iget-object v0, p0, Lcom/android/browser/MiuiPieControlPhone;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 89
    return-void
.end method
