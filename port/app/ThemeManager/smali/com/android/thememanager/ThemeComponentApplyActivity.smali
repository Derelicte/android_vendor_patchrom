.class public Lcom/android/thememanager/ThemeComponentApplyActivity;
.super Landroid/app/Activity;
.source "ThemeComponentApplyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;
    }
.end annotation


# instance fields
.field private mComponentGridView:Landroid/widget/GridView;

.field private mComponentNumText:Landroid/widget/TextView;

.field private mOperationHandler:Lmiui/app/resourcebrowser/view/ResourceOperationHandler;

.field private mResourceState:Lcom/android/thememanager/ThemeResourceState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/ThemeComponentApplyActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->getSelectComponentFlags()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/thememanager/ThemeComponentApplyActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->needRemoveAllOldTheme()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/thememanager/ThemeComponentApplyActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/thememanager/ThemeComponentApplyActivity;->setComponentGridViewClickable(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/thememanager/ThemeComponentApplyActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->updateComponentNumber()V

    return-void
.end method

.method private getGridComponentShowingFlags()J
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    .line 157
    iget-object v5, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mResourceState:Lcom/android/thememanager/ThemeResourceState;

    iget v4, v5, Lcom/android/thememanager/ThemeResourceState;->uiVersion:I

    .line 158
    .local v4, uiVersion:I
    iget-object v5, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mResourceState:Lcom/android/thememanager/ThemeResourceState;

    iget-wide v2, v5, Lcom/android/thememanager/ThemeResourceState;->componentFlags:J

    .line 159
    .local v2, detailFlags:J
    cmp-long v5, v2, v7

    if-nez v5, :cond_0

    .line 160
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->getAllComponentsCombineFlag()J

    move-result-wide v2

    .line 163
    :cond_0
    iget-object v5, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mResourceState:Lcom/android/thememanager/ThemeResourceState;

    iget-wide v5, v5, Lcom/android/thememanager/ThemeResourceState;->resourceType:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 164
    const-wide/32 v5, 0x10000000

    or-long/2addr v2, v5

    .line 167
    :cond_1
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->supportReplaceFont()Z

    move-result v5

    if-nez v5, :cond_2

    .line 168
    const-wide/16 v5, -0x11

    and-long/2addr v2, v5

    .line 170
    :cond_2
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->supportReplaceAudioEffect()Z

    move-result v5

    if-nez v5, :cond_3

    .line 171
    const-wide/32 v5, -0x8001

    and-long/2addr v2, v5

    .line 174
    :cond_3
    const-wide/16 v0, 0x1

    .local v0, component:J
    :goto_0
    const-wide/32 v5, 0x20000

    cmp-long v5, v0, v5

    if-gtz v5, :cond_5

    .line 175
    invoke-static {v0, v1}, Lcom/android/thememanager/ConstantsHelper;->getMinPlatformVersion(J)I

    move-result v5

    sget v6, Lcom/android/thememanager/ConstantsHelper;->CURRENT_PLATFORM_VERSION:I

    invoke-static {v4, v5, v6}, Lmiui/app/resourcebrowser/ResourceHelper;->isCompatiblePlatformVersion(III)Z

    move-result v5

    if-nez v5, :cond_4

    .line 177
    xor-long v5, v0, v7

    and-long/2addr v2, v5

    .line 174
    :cond_4
    const/4 v5, 0x1

    shl-long/2addr v0, v5

    goto :goto_0

    .line 181
    :cond_5
    return-wide v2
.end method

.method private getOperationHandler(Lmiui/app/resourcebrowser/view/ResourceOperationView;)Lcom/android/thememanager/ThemeOperationHandler;
    .locals 2
    .parameter "v"

    .prologue
    .line 106
    new-instance v0, Lcom/android/thememanager/ThemeComponentApplyActivity$1;

    iget-object v1, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mResourceState:Lcom/android/thememanager/ThemeResourceState;

    invoke-direct {v0, p0, p0, p1, v1}, Lcom/android/thememanager/ThemeComponentApplyActivity$1;-><init>(Lcom/android/thememanager/ThemeComponentApplyActivity;Landroid/app/Activity;Lmiui/app/resourcebrowser/view/ResourceOperationView;Lcom/android/thememanager/ThemeResourceState;)V

    return-object v0
.end method

.method private getSelectComponentFlags()J
    .locals 3

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;

    .line 209
    .local v0, adapter:Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;
    invoke-virtual {v0}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->isSelectAllComponent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const-wide/16 v1, -0x1

    .line 212
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->getSelectComponentFlag()J

    move-result-wide v1

    goto :goto_0
.end method

.method private needRemoveAllOldTheme()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Landroid/widget/GridView;

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;

    invoke-virtual {v0}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->needRemoveAllOldTheme()Z

    move-result v0

    goto :goto_0
.end method

.method private setComponentGridViewClickable(Z)V
    .locals 1
    .parameter "clickable"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->setClickable(Z)V

    .line 186
    return-void
.end method

.method private setupComponentGridView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 144
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Landroid/widget/GridView;

    .line 146
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;

    invoke-direct {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->getGridComponentShowingFlags()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mOperationHandler:Lmiui/app/resourcebrowser/view/ResourceOperationHandler;

    invoke-virtual {v4}, Lmiui/app/resourcebrowser/view/ResourceOperationHandler;->isLocalResource()Z

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;-><init>(Lcom/android/thememanager/ThemeComponentApplyActivity;JZ)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Landroid/widget/GridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 152
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setVisibility(I)V

    .line 153
    invoke-direct {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->updateComponentNumber()V

    .line 154
    return-void
.end method

.method private setupUI()V
    .locals 3

    .prologue
    .line 93
    const v2, 0x30b0083

    invoke-virtual {p0, v2}, Lcom/android/thememanager/ThemeComponentApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/app/resourcebrowser/view/ResourceOperationView;

    .line 94
    .local v1, v:Lmiui/app/resourcebrowser/view/ResourceOperationView;
    invoke-direct {p0, v1}, Lcom/android/thememanager/ThemeComponentApplyActivity;->getOperationHandler(Lmiui/app/resourcebrowser/view/ResourceOperationView;)Lcom/android/thememanager/ThemeOperationHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mOperationHandler:Lmiui/app/resourcebrowser/view/ResourceOperationHandler;

    .line 95
    new-instance v0, Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;

    invoke-direct {v0}, Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;-><init>()V

    .line 96
    .local v0, para:Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;
    const v2, 0x30201ac

    iput v2, v0, Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;->magicBtnSrcId:I

    .line 97
    const v2, 0x30201a9

    iput v2, v0, Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;->deleteBtnSrcId:I

    .line 98
    const v2, 0x30201b7

    iput v2, v0, Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;->operationViewBgId:I

    .line 99
    iget-object v2, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mOperationHandler:Lmiui/app/resourcebrowser/view/ResourceOperationHandler;

    invoke-virtual {v1, v2, v0}, Lmiui/app/resourcebrowser/view/ResourceOperationView;->init(Lmiui/app/resourcebrowser/view/ResourceOperationHandler;Lmiui/app/resourcebrowser/view/ResourceOperationView$UIParameter;)V

    .line 102
    invoke-direct {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->setupComponentGridView()V

    .line 103
    return-void
.end method

.method private updateComponentNumber()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 189
    const v4, 0x7f060005

    invoke-virtual {p0, v4}, Lcom/android/thememanager/ThemeComponentApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentNumText:Landroid/widget/TextView;

    .line 190
    iget-object v4, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;

    .line 191
    .local v0, adapter:Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;
    invoke-virtual {v0}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->getSelectComponentFlag()J

    move-result-wide v2

    .line 192
    .local v2, selectFlags:J
    invoke-static {v2, v3}, Lcom/android/thememanager/ThemeHelper;->getComponentNumber(J)I

    move-result v1

    .line 193
    .local v1, componentNum:I
    iget-object v4, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mOperationHandler:Lmiui/app/resourcebrowser/view/ResourceOperationHandler;

    invoke-virtual {v4}, Lmiui/app/resourcebrowser/view/ResourceOperationHandler;->isLocalResource()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    iget-object v4, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentNumText:Landroid/widget/TextView;

    const v5, 0x7f090030

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/thememanager/ThemeComponentApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v4, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mComponentNumText:Landroid/widget/TextView;

    const v5, 0x7f090031

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/thememanager/ThemeComponentApplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 62
    invoke-virtual {p0, v0, v0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->overridePendingTransition(II)V

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_theme_state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/ThemeResourceState;

    iput-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mResourceState:Lcom/android/thememanager/ThemeResourceState;

    .line 46
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mResourceState:Lcom/android/thememanager/ThemeResourceState;

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->finish()V

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_0
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mResourceState:Lcom/android/thememanager/ThemeResourceState;

    iget-object v1, v1, Lcom/android/thememanager/ThemeResourceState;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    invoke-direct {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->setupUI()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mOperationHandler:Lmiui/app/resourcebrowser/view/ResourceOperationHandler;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/view/ResourceOperationHandler;->onActivityOnDestroyEvent()V

    .line 89
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity;->finish()V

    .line 70
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 82
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mOperationHandler:Lmiui/app/resourcebrowser/view/ResourceOperationHandler;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/view/ResourceOperationHandler;->onActivityOnPauseEvent()V

    .line 83
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity;->mOperationHandler:Lmiui/app/resourcebrowser/view/ResourceOperationHandler;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/view/ResourceOperationHandler;->onActivityOnResumeEvent()V

    .line 77
    return-void
.end method
