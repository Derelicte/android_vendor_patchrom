.class public Lcom/android/browser/MiuiNavScreen;
.super Landroid/widget/LinearLayout;
.source "MiuiNavScreen.java"

# interfaces
.implements Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/MiuiNavScreen$TabAdapter;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/browser/MiuiNavScreen$TabAdapter;

.field private mOrientation:I

.field private mScroller:Lcom/android/browser/MiuiNavTabScroller;

.field private mTabViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/browser/Tab;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mUi:Lcom/android/browser/MiuiPhoneUi;

.field private mUiController:Lcom/android/browser/UiController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/browser/NavScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/MiuiNavScreen;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/MiuiPhoneUi;)V
    .locals 1
    .parameter "activity"
    .parameter "ctl"
    .parameter "ui"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lcom/android/browser/MiuiNavScreen;->mActivity:Landroid/app/Activity;

    .line 52
    iput-object p2, p0, Lcom/android/browser/MiuiNavScreen;->mUiController:Lcom/android/browser/UiController;

    .line 53
    iput-object p3, p0, Lcom/android/browser/MiuiNavScreen;->mUi:Lcom/android/browser/MiuiPhoneUi;

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/browser/MiuiNavScreen;->mOrientation:I

    .line 55
    invoke-direct {p0}, Lcom/android/browser/MiuiNavScreen;->init()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/MiuiNavScreen;)Lcom/android/browser/MiuiNavScreen$TabAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen;->mAdapter:Lcom/android/browser/MiuiNavScreen$TabAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/MiuiNavScreen;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/browser/MiuiNavScreen;->onCloseTab(Lcom/android/browser/Tab;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/MiuiNavScreen;)Lcom/android/browser/MiuiPhoneUi;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen;->mUi:Lcom/android/browser/MiuiPhoneUi;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/MiuiNavScreen;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/browser/MiuiNavScreen;->switchToTab(Lcom/android/browser/Tab;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/browser/MiuiNavScreen;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/MiuiNavScreen;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen;->mTabViews:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/MiuiNavScreen;)Lcom/android/browser/MiuiNavTabScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen;->mScroller:Lcom/android/browser/MiuiNavTabScroller;

    return-object v0
.end method

.method private closeLastTabAndOpenHomePage()V
    .locals 5

    .prologue
    .line 122
    sget-object v3, Lcom/android/browser/MiuiNavScreen;->LOGTAG:Ljava/lang/String;

    const-string v4, "closeLastTabAndOpenHomePage"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v3, p0, Lcom/android/browser/MiuiNavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v3}, Lcom/android/browser/UiController;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 125
    .local v0, oldCurrent:Lcom/android/browser/Tab;
    iget-object v3, p0, Lcom/android/browser/MiuiNavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v3}, Lcom/android/browser/UiController;->openTabToHomePage()Lcom/android/browser/Tab;

    move-result-object v1

    .line 126
    .local v1, tab:Lcom/android/browser/Tab;
    if-nez v1, :cond_0

    .line 127
    iget-object v3, p0, Lcom/android/browser/MiuiNavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v3}, Lcom/android/browser/UiController;->closeCurrentTab()V

    .line 144
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v3, p0, Lcom/android/browser/MiuiNavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v3, v0}, Lcom/android/browser/UiController;->closeTab(Lcom/android/browser/Tab;)V

    .line 131
    iget-object v3, p0, Lcom/android/browser/MiuiNavScreen;->mUiController:Lcom/android/browser/UiController;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/browser/UiController;->setBlockEvents(Z)V

    .line 132
    iget-object v3, p0, Lcom/android/browser/MiuiNavScreen;->mUi:Lcom/android/browser/MiuiPhoneUi;

    iget-object v3, v3, Lcom/android/browser/MiuiPhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, v1}, Lcom/android/browser/TabControl;->getTabPosition(Lcom/android/browser/Tab;)I

    move-result v2

    .line 133
    .local v2, tix:I
    iget-object v3, p0, Lcom/android/browser/MiuiNavScreen;->mScroller:Lcom/android/browser/MiuiNavTabScroller;

    new-instance v4, Lcom/android/browser/MiuiNavScreen$2;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/browser/MiuiNavScreen$2;-><init>(Lcom/android/browser/MiuiNavScreen;ILcom/android/browser/Tab;)V

    invoke-virtual {v3, v4}, Lcom/android/browser/MiuiNavTabScroller;->setOnLayoutListener(Lcom/android/browser/MiuiNavTabScroller$OnLayoutListener;)V

    .line 141
    iget-object v3, p0, Lcom/android/browser/MiuiNavScreen;->mScroller:Lcom/android/browser/MiuiNavTabScroller;

    invoke-virtual {v3, v2}, Lcom/android/browser/MiuiNavTabScroller;->handleDataChanged(I)V

    .line 142
    iget-object v3, p0, Lcom/android/browser/MiuiNavScreen;->mUiController:Lcom/android/browser/UiController;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/browser/UiController;->setBlockEvents(Z)V

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/browser/MiuiNavScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040028

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    iget-object v1, p0, Lcom/android/browser/MiuiNavScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiNavScreen;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    const v1, 0x7f0d006d

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiNavScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/MiuiNavTabScroller;

    iput-object v1, p0, Lcom/android/browser/MiuiNavScreen;->mScroller:Lcom/android/browser/MiuiNavTabScroller;

    .line 81
    iget-object v1, p0, Lcom/android/browser/MiuiNavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    .line 82
    .local v0, tc:Lcom/android/browser/TabControl;
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/browser/MiuiNavScreen;->mTabViews:Ljava/util/HashMap;

    .line 83
    new-instance v1, Lcom/android/browser/MiuiNavScreen$TabAdapter;

    iget-object v2, p0, Lcom/android/browser/MiuiNavScreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/browser/MiuiNavScreen$TabAdapter;-><init>(Lcom/android/browser/MiuiNavScreen;Landroid/content/Context;Lcom/android/browser/TabControl;)V

    iput-object v1, p0, Lcom/android/browser/MiuiNavScreen;->mAdapter:Lcom/android/browser/MiuiNavScreen$TabAdapter;

    .line 86
    iget-object v1, p0, Lcom/android/browser/MiuiNavScreen;->mScroller:Lcom/android/browser/MiuiNavTabScroller;

    iget-object v2, p0, Lcom/android/browser/MiuiNavScreen;->mAdapter:Lcom/android/browser/MiuiNavScreen$TabAdapter;

    iget-object v3, p0, Lcom/android/browser/MiuiNavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v3}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/MiuiNavScreen;->mUi:Lcom/android/browser/MiuiPhoneUi;

    invoke-virtual {v4}, Lcom/android/browser/MiuiPhoneUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/browser/TabControl;->getTabPosition(Lcom/android/browser/Tab;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/MiuiNavTabScroller;->setAdapter(Landroid/widget/BaseAdapter;I)V

    .line 88
    iget-object v1, p0, Lcom/android/browser/MiuiNavScreen;->mScroller:Lcom/android/browser/MiuiNavTabScroller;

    new-instance v2, Lcom/android/browser/MiuiNavScreen$1;

    invoke-direct {v2, p0}, Lcom/android/browser/MiuiNavScreen$1;-><init>(Lcom/android/browser/MiuiNavScreen;)V

    invoke-virtual {v1, v2}, Lcom/android/browser/MiuiNavTabScroller;->setOnRemoveListener(Lcom/android/browser/MiuiNavTabScroller$OnRemoveListener;)V

    .line 95
    return-void
.end method

.method private onCloseTab(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getExitOnClosingLastTabEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/android/browser/MiuiNavScreen;->closeLastTabAndOpenHomePage()V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->closeCurrentTab()V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0, p1}, Lcom/android/browser/UiController;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method private switchToTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen;->mUi:Lcom/android/browser/MiuiPhoneUi;

    invoke-virtual {v0}, Lcom/android/browser/MiuiPhoneUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0, p1}, Lcom/android/browser/UiController;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method protected close(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/MiuiNavScreen;->close(IZ)V

    .line 154
    return-void
.end method

.method protected close(IZ)V
    .locals 1
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen;->mUi:Lcom/android/browser/MiuiPhoneUi;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/MiuiPhoneUi;->hideNavScreen(IZ)V

    .line 158
    return-void
.end method

.method protected getTabView(I)Lcom/android/browser/NavTabView;
    .locals 1
    .parameter "pos"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen;->mScroller:Lcom/android/browser/MiuiNavTabScroller;

    invoke-virtual {v0, p1}, Lcom/android/browser/MiuiNavTabScroller;->getTabView(I)Lcom/android/browser/NavTabView;

    move-result-object v0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newconfig"

    .prologue
    .line 60
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/browser/MiuiNavScreen;->mOrientation:I

    if-eq v1, v2, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/browser/MiuiNavScreen;->mScroller:Lcom/android/browser/MiuiNavTabScroller;

    invoke-virtual {v1}, Lcom/android/browser/MiuiNavTabScroller;->getScrollValue()I

    move-result v0

    .line 62
    .local v0, sv:I
    invoke-virtual {p0}, Lcom/android/browser/MiuiNavScreen;->removeAllViews()V

    .line 63
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/browser/MiuiNavScreen;->mOrientation:I

    .line 64
    invoke-direct {p0}, Lcom/android/browser/MiuiNavScreen;->init()V

    .line 65
    iget-object v1, p0, Lcom/android/browser/MiuiNavScreen;->mScroller:Lcom/android/browser/MiuiNavTabScroller;

    invoke-virtual {v1, v0}, Lcom/android/browser/MiuiNavTabScroller;->setScrollValue(I)V

    .line 66
    iget-object v1, p0, Lcom/android/browser/MiuiNavScreen;->mAdapter:Lcom/android/browser/MiuiNavScreen$TabAdapter;

    invoke-virtual {v1}, Lcom/android/browser/MiuiNavScreen$TabAdapter;->notifyDataSetChanged()V

    .line 68
    .end local v0           #sv:I
    :cond_0
    return-void
.end method

.method public onThumbnailUpdated(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/browser/MiuiNavScreen;->mTabViews:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 219
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 222
    :cond_0
    return-void
.end method

.method public refreshAdapter()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen;->mScroller:Lcom/android/browser/MiuiNavTabScroller;

    iget-object v1, p0, Lcom/android/browser/MiuiNavScreen;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/MiuiNavScreen;->mUi:Lcom/android/browser/MiuiPhoneUi;

    invoke-virtual {v2}, Lcom/android/browser/MiuiPhoneUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/TabControl;->getTabPosition(Lcom/android/browser/Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/MiuiNavTabScroller;->handleDataChanged(I)V

    .line 73
    return-void
.end method
