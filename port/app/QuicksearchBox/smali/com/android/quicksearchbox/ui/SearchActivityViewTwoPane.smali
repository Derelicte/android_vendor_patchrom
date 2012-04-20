.class public Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;
.super Lcom/android/quicksearchbox/ui/SearchActivityView;
.source "SearchActivityViewTwoPane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$ResultsObserver;
    }
.end annotation


# instance fields
.field private mJustCreated:Z

.field private mMenuButton:Landroid/widget/ImageView;

.field private mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<",
            "Landroid/widget/ExpandableListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mResultsHeader:Landroid/view/View;

.field private mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

.field private mSearchPlate:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->showPopupMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mSearchPlate:Landroid/view/View;

    return-object v0
.end method

.method private checkHideResultsHeader()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsHeader:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupEntryAnimations()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x96

    .line 141
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 142
    .local v1, endingWidth:I
    int-to-float v4, v1

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 144
    .local v3, startingWidth:I
    iget-object v4, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 145
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 146
    iget-object v4, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v4, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mSearchPlate:Landroid/view/View;

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 149
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object v4, v0

    .line 150
    check-cast v4, Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$4;

    invoke-direct {v5, p0, v3, v1}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$4;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;II)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 161
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 163
    return-void

    .line 148
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private showPopupMenu()V
    .locals 4

    .prologue
    .line 112
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mMenuButton:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 113
    .local v1, popup:Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 114
    .local v0, menu:Landroid/view/Menu;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/quicksearchbox/SearchActivity;->createMenuItems(Landroid/view/Menu;Z)V

    .line 115
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 116
    return-void
.end method


# virtual methods
.method public clearSuggestions()V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->clearSuggestions()V

    .line 232
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setSuggestions(Lcom/android/quicksearchbox/Suggestions;)V

    .line 233
    return-void
.end method

.method public considerHidingInputMethod()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method protected createClusteredSuggestionsAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<",
            "Landroid/widget/ExpandableListAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;

    new-instance v1, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quicksearchbox/QsbApplication;->getSuggestionViewFactory()Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;-><init>(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;-><init>(Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;)V

    return-object v0
.end method

.method protected createResultsPromoter()Lcom/android/quicksearchbox/Promoter;
    .locals 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    .line 272
    .local v0, corpus:Lcom/android/quicksearchbox/Corpus;
    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quicksearchbox/QsbApplication;->createResultsPromoter()Lcom/android/quicksearchbox/Promoter;

    move-result-object v1

    .line 275
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/quicksearchbox/QsbApplication;->createSingleCorpusResultsPromoter(Lcom/android/quicksearchbox/Corpus;)Lcom/android/quicksearchbox/Promoter;

    move-result-object v1

    goto :goto_0
.end method

.method protected createSuggestionsPromoter()Lcom/android/quicksearchbox/Promoter;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->createWebPromoter()Lcom/android/quicksearchbox/Promoter;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->setSuggestionsAdapter(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;)V

    .line 180
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->destroy()V

    .line 181
    return-void
.end method

.method public getSearchCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->getWebCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    return-object v0
.end method

.method protected getVoiceSearchIcon()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->getVoiceSearch()Lcom/android/quicksearchbox/VoiceSearch;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quicksearchbox/VoiceSearch;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 186
    .local v4, voiceSearch:Landroid/content/ComponentName;
    if-eqz v4, :cond_0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 191
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iget-object v1, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 193
    .local v1, metaData:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 194
    const-string v5, "com.android.launcher.toolbar_icon"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 195
    .local v0, iconResId:I
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v3

    .line 198
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 206
    .end local v0           #iconResId:I
    .end local v1           #metaData:Landroid/os/Bundle;
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v5

    .line 201
    :catch_0
    move-exception v5

    .line 206
    :cond_0
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getVoiceSearchIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0
.end method

.method public limitResultsToViewHeight()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->setLimitSuggestionsToViewHeight(Z)V

    .line 244
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 78
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->onFinishInflate()V

    .line 80
    const v1, 0x7f0f0023

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mMenuButton:Landroid/widget/ImageView;

    .line 81
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mMenuButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$1;

    invoke-direct {v2, p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$1;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v1, 0x7f0f0021

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    iput-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    .line 88
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->createClusteredSuggestionsAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    .line 89
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getListAdapter()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListAdapter;

    new-instance v2, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$2;

    invoke-direct {v2, p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$2;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)V

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 95
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    new-instance v2, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;

    invoke-direct {v2, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 96
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    invoke-virtual {v1, v3}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->setFocusable(Z)V

    .line 97
    const v1, 0x7f0f0022

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsHeader:Landroid/view/View;

    .line 98
    const v1, 0x7f0f001b

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mSearchPlate:Landroid/view/View;

    .line 99
    iput-boolean v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mJustCreated:Z

    .line 101
    const v1, 0x7f0f0019

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, dismissBg:Landroid/view/View;
    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$3;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$3;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->onPause()V

    .line 136
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v0

    const v1, 0x7f050002

    const v2, 0x7f050003

    invoke-virtual {v0, v1, v2}, Lcom/android/quicksearchbox/SearchActivity;->overridePendingTransition(II)V

    .line 137
    return-void
.end method

.method protected onResultsChanged()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->checkHideResultsHeader()V

    .line 281
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mJustCreated:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->setupEntryAnimations()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mJustCreated:Z

    .line 131
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method protected setCorpus(Lcom/android/quicksearchbox/Corpus;)V
    .locals 2
    .parameter "corpus"

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setCorpus(Lcom/android/quicksearchbox/Corpus;)V

    .line 262
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->createResultsPromoter()Lcom/android/quicksearchbox/Promoter;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setPromoter(Lcom/android/quicksearchbox/Promoter;)V

    .line 263
    return-void
.end method

.method public setMaxPromotedResults(I)V
    .locals 2
    .parameter "maxPromoted"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->setLimitSuggestionsToViewHeight(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setMaxPromoted(I)V

    .line 239
    return-void
.end method

.method public setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V

    .line 250
    return-void
.end method

.method public setSuggestions(Lcom/android/quicksearchbox/Suggestions;)V
    .locals 1
    .parameter "suggestions"

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setSuggestions(Lcom/android/quicksearchbox/Suggestions;)V

    .line 255
    invoke-virtual {p1}, Lcom/android/quicksearchbox/Suggestions;->acquire()V

    .line 256
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setSuggestions(Lcom/android/quicksearchbox/Suggestions;)V

    .line 257
    return-void
.end method

.method public showCorpusSelectionDialog()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->start()V

    .line 172
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getListAdapter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListAdapter;

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$ResultsObserver;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$ResultsObserver;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)V

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 173
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->setSuggestionsAdapter(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;)V

    .line 174
    return-void
.end method

.method protected updateQueryTextView(Z)V
    .locals 2
    .parameter "queryEmpty"

    .prologue
    .line 285
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->updateQueryTextView(Z)V

    .line 286
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mSearchCloseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 288
    :cond_0
    if-eqz p1, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mSearchCloseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mSearchCloseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method
