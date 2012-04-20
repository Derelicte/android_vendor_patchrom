.class public Lcom/android/browser/ActionBarController;
.super Ljava/lang/Object;
.source "ActionBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackward:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/browser/Controller;

.field private mForward:Landroid/widget/ImageView;

.field private mHome:Landroid/widget/ImageView;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mNewTab:Landroid/widget/ImageView;

.field private mTabCount:I

.field private mTabs:Landroid/widget/TextView;

.field private mUseFullScreen:Z

.field private mUseQuickControls:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/android/browser/ActionBarController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/ActionBarController;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/Controller;)V
    .locals 0
    .parameter "context"
    .parameter "controller"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/browser/ActionBarController;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/browser/ActionBarController;->mController:Lcom/android/browser/Controller;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/browser/ActionBarController;->initLayout(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f04

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/browser/ActionBarController;->mLayout:Landroid/widget/LinearLayout;

    .line 44
    iget-object v0, p0, Lcom/android/browser/ActionBarController;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/ActionBarController;->mBackward:Landroid/widget/ImageView;

    .line 45
    iget-object v0, p0, Lcom/android/browser/ActionBarController;->mBackward:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/android/browser/ActionBarController;->mBackward:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcom/android/browser/ActionBarController;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/ActionBarController;->mForward:Landroid/widget/ImageView;

    .line 49
    iget-object v0, p0, Lcom/android/browser/ActionBarController;->mForward:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/android/browser/ActionBarController;->mForward:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 52
    iget-object v0, p0, Lcom/android/browser/ActionBarController;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/ActionBarController;->mHome:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/android/browser/ActionBarController;->mHome:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/browser/ActionBarController;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/browser/ActionBarController;->mTabs:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/android/browser/ActionBarController;->mTabs:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/browser/ActionBarController;->mLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/ActionBarController;->mNewTab:Landroid/widget/ImageView;

    .line 59
    iget-object v0, p0, Lcom/android/browser/ActionBarController;->mNewTab:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ActionBarController;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    return-void
.end method

.method private setLayoutVisibility()V
    .locals 2

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/browser/ActionBarController;->mLayout:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/android/browser/ActionBarController;->mUseFullScreen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/ActionBarController;->mUseQuickControls:Z

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    return-void

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public attach(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "container"

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/android/browser/ActionBarController;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 82
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 83
    iget-object v2, p0, Lcom/android/browser/ActionBarController;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/android/browser/ActionBarController;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    iget-object v2, p0, Lcom/android/browser/ActionBarController;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 88
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    instance-of v2, p1, Lcom/android/browser/MiuiNavigationBarPhone;

    if-eqz v2, :cond_2

    .line 89
    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 90
    iget-object v2, p0, Lcom/android/browser/ActionBarController;->mLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v2, p0, Lcom/android/browser/ActionBarController;->mLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    :goto_1
    iget-object v2, p0, Lcom/android/browser/ActionBarController;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 93
    :cond_2
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 94
    iget-object v2, p0, Lcom/android/browser/ActionBarController;->mLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/browser/ActionBarController;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-direct {p0}, Lcom/android/browser/ActionBarController;->setLayoutVisibility()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v1, p0, Lcom/android/browser/ActionBarController;->mBackward:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/android/browser/ActionBarController;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 137
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {v0}, Lcom/android/browser/Tab;->goBack()V

    .line 160
    .end local v0           #tab:Lcom/android/browser/Tab;
    :cond_0
    :goto_0
    return-void

    .line 140
    .restart local v0       #tab:Lcom/android/browser/Tab;
    :cond_1
    iget-object v1, p0, Lcom/android/browser/ActionBarController;->mBackward:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 142
    .end local v0           #tab:Lcom/android/browser/Tab;
    :cond_2
    iget-object v1, p0, Lcom/android/browser/ActionBarController;->mForward:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_4

    .line 143
    iget-object v1, p0, Lcom/android/browser/ActionBarController;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 144
    .restart local v0       #tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/browser/Tab;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    invoke-virtual {v0}, Lcom/android/browser/Tab;->goForward()V

    goto :goto_0

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/android/browser/ActionBarController;->mForward:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 149
    .end local v0           #tab:Lcom/android/browser/Tab;
    :cond_4
    iget-object v1, p0, Lcom/android/browser/ActionBarController;->mHome:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_5

    .line 150
    iget-object v1, p0, Lcom/android/browser/ActionBarController;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 151
    .restart local v0       #tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/browser/ActionBarController;->mController:Lcom/android/browser/Controller;

    const-string v2, "content://com.android.browser.home/res/raw/miui_home"

    invoke-virtual {v1, v0, v2}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    .end local v0           #tab:Lcom/android/browser/Tab;
    :cond_5
    iget-object v1, p0, Lcom/android/browser/ActionBarController;->mTabs:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 155
    iget-object v1, p0, Lcom/android/browser/ActionBarController;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getUi()Lcom/android/browser/UI;

    move-result-object v1

    check-cast v1, Lcom/android/browser/MiuiPhoneUi;

    invoke-virtual {v1}, Lcom/android/browser/MiuiPhoneUi;->showNavScreen()V

    goto :goto_0

    .line 156
    :cond_6
    iget-object v1, p0, Lcom/android/browser/ActionBarController;->mNewTab:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/browser/ActionBarController;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    goto :goto_0
.end method

.method public onTabChanged(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/ActionBarController;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 120
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local p1
    :cond_1
    sget-object v0, Lcom/android/browser/ActionBarController;->LOGTAG:Ljava/lang/String;

    const-string v3, "update action bar"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v3, p0, Lcom/android/browser/ActionBarController;->mBackward:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 114
    iget-object v3, p0, Lcom/android/browser/ActionBarController;->mForward:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/browser/ActionBarController;->mHome:Landroid/widget/ImageView;

    check-cast p1, Lcom/android/browser/MiuiTab;

    .end local p1
    invoke-virtual {p1}, Lcom/android/browser/MiuiTab;->isShowingMiuiHome()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 117
    iget v0, p0, Lcom/android/browser/ActionBarController;->mTabCount:I

    iget-object v1, p0, Lcom/android/browser/ActionBarController;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/browser/ActionBarController;->onTabCountChanged()V

    goto :goto_0

    .restart local p1
    :cond_2
    move v0, v2

    .line 113
    goto :goto_1

    :cond_3
    move v0, v2

    .line 114
    goto :goto_2

    .end local p1
    :cond_4
    move v2, v1

    .line 115
    goto :goto_3
.end method

.method public onTabCountChanged()V
    .locals 3

    .prologue
    .line 124
    sget-object v0, Lcom/android/browser/ActionBarController;->LOGTAG:Ljava/lang/String;

    const-string v1, "update tab count"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/browser/ActionBarController;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    iput v0, p0, Lcom/android/browser/ActionBarController;->mTabCount:I

    .line 127
    iget-object v0, p0, Lcom/android/browser/ActionBarController;->mTabs:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/browser/ActionBarController;->mTabCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/android/browser/ActionBarController;->mTabs:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/browser/ActionBarController;->mTabCount:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/browser/ActionBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b003e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 131
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ActionBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b003f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0
.end method

.method public setUseFullScreen(Z)V
    .locals 0
    .parameter "use"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/browser/ActionBarController;->mUseFullScreen:Z

    .line 71
    invoke-direct {p0}, Lcom/android/browser/ActionBarController;->setLayoutVisibility()V

    .line 72
    return-void
.end method

.method public setUseQuickControls(Z)V
    .locals 0
    .parameter "use"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/browser/ActionBarController;->mUseQuickControls:Z

    .line 66
    invoke-direct {p0}, Lcom/android/browser/ActionBarController;->setLayoutVisibility()V

    .line 67
    return-void
.end method
