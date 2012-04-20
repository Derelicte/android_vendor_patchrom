.class public abstract Lcom/android/quicksearchbox/ui/SearchActivityView;
.super Landroid/widget/RelativeLayout;
.source "SearchActivityView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/SearchActivityView$CloseClickListener;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$SearchClickListener;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestionsObserver;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$QueryTextViewFocusListener;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestListFocusListener;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$ButtonsKeyListener;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$QueryTextEditorActionListener;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$SearchGoButtonClickListener;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$InputMethodCloser;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$SearchTextWatcher;
    }
.end annotation


# instance fields
.field protected mButtonsKeyListener:Lcom/android/quicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

.field private mCorpus:Lcom/android/quicksearchbox/Corpus;

.field protected mExitClickListener:Landroid/view/View$OnClickListener;

.field private mQueryListener:Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;

.field protected mQueryTextEmptyBg:Landroid/graphics/drawable/Drawable;

.field protected mQueryTextNotEmptyBg:Landroid/graphics/drawable/Drawable;

.field protected mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

.field protected mQueryWasEmpty:Z

.field private mSearchClickListener:Lcom/android/quicksearchbox/ui/SearchActivityView$SearchClickListener;

.field protected mSearchCloseButton:Landroid/widget/ImageButton;

.field protected mSearchGoButton:Landroid/widget/ImageButton;

.field protected mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field protected mSuggestionsView:Lcom/android/quicksearchbox/ui/SuggestionsListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/ui/SuggestionsListView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateSuggestions:Z

.field protected mVoiceSearchButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryWasEmpty:Z

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryWasEmpty:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryWasEmpty:Z

    .line 95
    return-void
.end method

.method static synthetic access$1000(Lcom/android/quicksearchbox/ui/SearchActivityView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->forwardKeyToQueryTextView(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/quicksearchbox/ui/SearchActivityView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mUpdateSuggestions:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/quicksearchbox/ui/SearchActivityView;)Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryListener:Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;

    return-object v0
.end method

.method private forwardKeyToQueryTextView(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 582
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->shouldForwardToQueryTextView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/QueryTextView;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    invoke-virtual {v0, p2}, Lcom/android/quicksearchbox/ui/QueryTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 588
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldForwardToQueryTextView(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 592
    sparse-switch p1, :sswitch_data_0

    .line 602
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 600
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 592
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateSearchGoButton(Z)V
    .locals 2
    .parameter "queryEmpty"

    .prologue
    .line 359
    if-eqz p1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private webSuggestionsToCompletions(Lcom/android/quicksearchbox/Suggestions;)[Landroid/view/inputmethod/CompletionInfo;
    .locals 9
    .parameter "suggestions"

    .prologue
    .line 440
    invoke-virtual {p1}, Lcom/android/quicksearchbox/Suggestions;->getWebResult()Lcom/android/quicksearchbox/CorpusResult;

    move-result-object v2

    .line 441
    .local v2, cursor:Lcom/android/quicksearchbox/CorpusResult;
    if-nez v2, :cond_0

    const/4 v6, 0x0

    .line 452
    :goto_0
    return-object v6

    .line 442
    :cond_0
    invoke-interface {v2}, Lcom/android/quicksearchbox/CorpusResult;->getCount()I

    move-result v1

    .line 443
    .local v1, count:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 444
    .local v0, completions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/CompletionInfo;>;"
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->isSearchCorpusWeb()Z

    move-result v5

    .line 445
    .local v5, usingWebCorpus:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 446
    invoke-interface {v2, v3}, Lcom/android/quicksearchbox/CorpusResult;->moveTo(I)V

    .line 447
    if-eqz v5, :cond_1

    invoke-interface {v2}, Lcom/android/quicksearchbox/CorpusResult;->isWebSearchSuggestion()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 448
    :cond_1
    invoke-interface {v2}, Lcom/android/quicksearchbox/CorpusResult;->getSuggestionText1()Ljava/lang/String;

    move-result-object v4

    .line 449
    .local v4, text1:Ljava/lang/String;
    new-instance v6, Landroid/view/inputmethod/CompletionInfo;

    int-to-long v7, v3

    invoke-direct {v6, v7, v8, v3, v4}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v4           #text1:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 452
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/view/inputmethod/CompletionInfo;

    goto :goto_0
.end method


# virtual methods
.method public clearSuggestions()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setSuggestions(Lcom/android/quicksearchbox/Suggestions;)V

    .line 287
    return-void
.end method

.method public abstract considerHidingInputMethod()V
.end method

.method protected createSuggestionsAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;

    new-instance v1, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quicksearchbox/QsbApplication;->getSuggestionViewFactory()Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;-><init>(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;-><init>(Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;)V

    return-object v0
.end method

.method protected abstract createSuggestionsPromoter()Lcom/android/quicksearchbox/Promoter;
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/android/quicksearchbox/ui/SuggestionsListView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsListView;->setSuggestionsAdapter(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;)V

    .line 149
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 403
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v0

    .line 404
    .local v0, activity:Lcom/android/quicksearchbox/SearchActivity;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->isQueryEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 406
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 407
    .local v1, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_1

    .line 408
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 410
    invoke-virtual {v1, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 420
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    return v2

    .line 412
    .restart local v1       #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->hideInputMethod()V

    .line 415
    invoke-virtual {v0}, Lcom/android/quicksearchbox/SearchActivity;->onBackPressed()V

    goto :goto_0

    .line 420
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public focusQueryTextView()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/QueryTextView;->requestFocus()Z

    .line 327
    return-void
.end method

.method protected getActivity()Lcom/android/quicksearchbox/SearchActivity;
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 310
    .local v0, context:Landroid/content/Context;
    instance-of v1, v0, Lcom/android/quicksearchbox/SearchActivity;

    if-eqz v1, :cond_0

    .line 311
    check-cast v0, Lcom/android/quicksearchbox/SearchActivity;

    .line 313
    .end local v0           #context:Landroid/content/Context;
    :goto_0
    return-object v0

    .restart local v0       #context:Landroid/content/Context;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCorpora()Lcom/android/quicksearchbox/Corpora;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    return-object v0
.end method

.method public getCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mCorpus:Lcom/android/quicksearchbox/Corpus;

    return-object v0
.end method

.method protected getCorpus(Ljava/lang/String;)Lcom/android/quicksearchbox/Corpus;
    .locals 5
    .parameter "sourceName"

    .prologue
    const/4 v1, 0x0

    .line 181
    if-nez p1, :cond_1

    move-object v0, v1

    .line 187
    :cond_0
    :goto_0
    return-object v0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/quicksearchbox/Corpora;->getCorpus(Ljava/lang/String;)Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    .line 183
    .local v0, corpus:Lcom/android/quicksearchbox/Corpus;
    if-nez v0, :cond_0

    .line 184
    const-string v2, "QSB.SearchActivityView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown corpus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 185
    goto :goto_0
.end method

.method public getCorpusName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    .line 214
    .local v0, corpus:Lcom/android/quicksearchbox/Corpus;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpus;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    return-object v0
.end method

.method protected getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    invoke-virtual {v1}, Lcom/android/quicksearchbox/ui/QueryTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 291
    .local v0, q:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getSearchCorpus()Lcom/android/quicksearchbox/Corpus;
.end method

.method public getSuggestions()Lcom/android/quicksearchbox/Suggestions;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getSuggestions()Lcom/android/quicksearchbox/Suggestions;

    move-result-object v0

    return-object v0
.end method

.method protected getVoiceSearch()Lcom/android/quicksearchbox/VoiceSearch;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getVoiceSearch()Lcom/android/quicksearchbox/VoiceSearch;

    move-result-object v0

    return-object v0
.end method

.method protected getVoiceSearchIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getWebCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 3

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/quicksearchbox/Corpora;->getWebCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    .line 221
    .local v0, webCorpus:Lcom/android/quicksearchbox/Corpus;
    if-nez v0, :cond_0

    .line 222
    const-string v1, "QSB.SearchActivityView"

    const-string v2, "No web corpus"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    return-object v0
.end method

.method protected hideInputMethod()V
    .locals 3

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 387
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 390
    :cond_0
    return-void
.end method

.method public isQueryEmpty()Z
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected isSearchCorpusWeb()Z
    .locals 2

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getSearchCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    .line 464
    .local v0, corpus:Lcom/android/quicksearchbox/Corpus;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpus;->isWebCorpus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public limitResultsToViewHeight()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public limitSuggestionsToViewHeight()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/android/quicksearchbox/ui/SuggestionsListView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsListView;->setLimitSuggestionsToViewHeight(Z)V

    .line 234
    return-void
.end method

.method public onCorpusSelected(Ljava/lang/String;)V
    .locals 0
    .parameter "corpusName"

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setCorpus(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->focusQueryTextView()V

    .line 193
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->showInputMethodForQuery()V

    .line 194
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    const v0, 0x7f0f0016

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ui/QueryTextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    .line 101
    const v0, 0x7f0f0014

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ui/SuggestionsView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/android/quicksearchbox/ui/SuggestionsListView;

    .line 102
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/android/quicksearchbox/ui/SuggestionsListView;

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityView$InputMethodCloser;

    invoke-direct {v1, p0, v2}, Lcom/android/quicksearchbox/ui/SearchActivityView$InputMethodCloser;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$1;)V

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/android/quicksearchbox/ui/SuggestionsListView;

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/android/quicksearchbox/ui/SuggestionsListView;

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestListFocusListener;

    invoke-direct {v1, p0, v2}, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestListFocusListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$1;)V

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->createSuggestionsAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    .line 109
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestListFocusListener;

    invoke-direct {v1, p0, v2}, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestListFocusListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$1;)V

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 111
    const v0, 0x7f0f001f

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    .line 112
    const v0, 0x7f0f0017

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    .line 113
    const v0, 0x7f0f0018

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    .line 114
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getVoiceSearchIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityView$SearchTextWatcher;

    invoke-direct {v1, p0, v2}, Lcom/android/quicksearchbox/ui/SearchActivityView$SearchTextWatcher;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/QueryTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityView$QueryTextEditorActionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/quicksearchbox/ui/SearchActivityView$QueryTextEditorActionListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/QueryTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityView$QueryTextViewFocusListener;

    invoke-direct {v1, p0, v2}, Lcom/android/quicksearchbox/ui/SearchActivityView$QueryTextViewFocusListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/QueryTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/QueryTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextEmptyBg:Landroid/graphics/drawable/Drawable;

    .line 121
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityView$SearchGoButtonClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/quicksearchbox/ui/SearchActivityView$SearchGoButtonClickListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance v0, Lcom/android/quicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

    invoke-direct {v0, p0, v2}, Lcom/android/quicksearchbox/ui/SearchActivityView$ButtonsKeyListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$1;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mButtonsKeyListener:Lcom/android/quicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

    .line 124
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mButtonsKeyListener:Lcom/android/quicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mButtonsKeyListener:Lcom/android/quicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 126
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mButtonsKeyListener:Lcom/android/quicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityView$CloseClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/quicksearchbox/ui/SearchActivityView$CloseClickListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mUpdateSuggestions:Z

    .line 132
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public abstract onResume()V
.end method

.method protected onSearchClicked(I)Z
    .locals 1
    .parameter "method"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSearchClickListener:Lcom/android/quicksearchbox/ui/SearchActivityView$SearchClickListener;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSearchClickListener:Lcom/android/quicksearchbox/ui/SearchActivityView$SearchClickListener;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$SearchClickListener;->onSearchClicked(I)Z

    move-result v0

    .line 488
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onStop()V
.end method

.method protected onSuggestionKeyDown(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;JILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter "suggestionId"
    .parameter "keyCode"
    .parameter "event"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<*>;JI",
            "Landroid/view/KeyEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, adapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapter<*>;"
    const/4 v0, 0x0

    .line 470
    const/16 v1, 0x42

    if-eq p4, v1, :cond_0

    const/16 v1, 0x54

    if-eq p4, v1, :cond_0

    const/16 v1, 0x17

    if-ne p4, v1, :cond_1

    .line 473
    :cond_0
    if-eqz p1, :cond_1

    .line 474
    invoke-interface {p1, p2, p3}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->onSuggestionClicked(J)V

    .line 475
    const/4 v0, 0x1

    .line 481
    :cond_1
    return v0
.end method

.method protected onSuggestionsChanged()V
    .locals 0

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->updateInputMethodSuggestions()V

    .line 457
    return-void
.end method

.method protected setCorpus(Lcom/android/quicksearchbox/Corpus;)V
    .locals 3
    .parameter "corpus"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mCorpus:Lcom/android/quicksearchbox/Corpus;

    .line 205
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->createSuggestionsPromoter()Lcom/android/quicksearchbox/Promoter;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setPromoter(Lcom/android/quicksearchbox/Promoter;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getSuggestions()Lcom/android/quicksearchbox/Suggestions;

    move-result-object v0

    .line 207
    .local v0, suggestions:Lcom/android/quicksearchbox/Suggestions;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/Suggestions;->expectsCorpus(Lcom/android/quicksearchbox/Corpus;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quicksearchbox/SearchActivity;->updateSuggestions()V

    .line 210
    :cond_1
    return-void
.end method

.method public setCorpus(Ljava/lang/String;)V
    .locals 1
    .parameter "corpusName"

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpus(Ljava/lang/String;)Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    .line 199
    .local v0, corpus:Lcom/android/quicksearchbox/Corpus;
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setCorpus(Lcom/android/quicksearchbox/Corpus;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->updateUi()V

    .line 201
    return-void
.end method

.method public setExitClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mExitClickListener:Landroid/view/View$OnClickListener;

    .line 270
    return-void
.end method

.method public setMaxPromotedResults(I)V
    .locals 0
    .parameter "maxPromoted"

    .prologue
    .line 237
    return-void
.end method

.method public setMaxPromotedSuggestions(I)V
    .locals 2
    .parameter "maxPromoted"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/android/quicksearchbox/ui/SuggestionsListView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsListView;->setLimitSuggestionsToViewHeight(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setMaxPromoted(I)V

    .line 230
    return-void
.end method

.method public setQuery(Ljava/lang/String;Z)V
    .locals 1
    .parameter "query"
    .parameter "selectAll"

    .prologue
    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mUpdateSuggestions:Z

    .line 303
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/QueryTextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    invoke-virtual {v0, p2}, Lcom/android/quicksearchbox/ui/QueryTextView;->setTextSelection(Z)V

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mUpdateSuggestions:Z

    .line 306
    return-void
.end method

.method public setQueryListener(Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryListener:Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;

    .line 244
    return-void
.end method

.method public setSearchClickListener(Lcom/android/quicksearchbox/ui/SearchActivityView$SearchClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSearchClickListener:Lcom/android/quicksearchbox/ui/SearchActivityView$SearchClickListener;

    .line 248
    return-void
.end method

.method public setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityView$1;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$1;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/QueryTextView;->setCommitCompletionListener(Lcom/android/quicksearchbox/ui/QueryTextView$CommitCompletionListener;)V

    .line 266
    return-void
.end method

.method public setSuggestions(Lcom/android/quicksearchbox/Suggestions;)V
    .locals 1
    .parameter "suggestions"

    .prologue
    .line 281
    invoke-virtual {p1}, Lcom/android/quicksearchbox/Suggestions;->acquire()V

    .line 282
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setSuggestions(Lcom/android/quicksearchbox/Suggestions;)V

    .line 283
    return-void
.end method

.method public setVoiceSearchButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    :cond_0
    return-void
.end method

.method protected shouldShowVoiceSearch(Z)Z
    .locals 0
    .parameter "queryEmpty"

    .prologue
    .line 378
    return p1
.end method

.method public abstract showCorpusSelectionDialog()V
.end method

.method public showInputMethodForQuery()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/QueryTextView;->showInputMethod()V

    .line 396
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getListAdapter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestionsObserver;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestionsObserver;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 144
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/android/quicksearchbox/ui/SuggestionsListView;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsListView;->setSuggestionsAdapter(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;)V

    .line 145
    return-void
.end method

.method protected updateInputMethodSuggestions()V
    .locals 5

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 430
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v3}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getSuggestions()Lcom/android/quicksearchbox/Suggestions;

    move-result-object v2

    .line 432
    .local v2, suggestions:Lcom/android/quicksearchbox/Suggestions;
    if-eqz v2, :cond_0

    .line 433
    invoke-direct {p0, v2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->webSuggestionsToCompletions(Lcom/android/quicksearchbox/Suggestions;)[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v0

    .line 435
    .local v0, completions:[Landroid/view/inputmethod/CompletionInfo;
    iget-object v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    invoke-virtual {v1, v3, v0}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_0
.end method

.method protected updateQueryTextView(Z)V
    .locals 3
    .parameter "queryEmpty"

    .prologue
    .line 340
    if-eqz p1, :cond_3

    .line 341
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->isSearchCorpusWeb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextEmptyBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/ui/QueryTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/ui/QueryTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 356
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextNotEmptyBg:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextNotEmptyBg:Landroid/graphics/drawable/Drawable;

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextNotEmptyBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/ui/QueryTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    .line 351
    .local v0, corpus:Lcom/android/quicksearchbox/Corpus;
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    if-nez v0, :cond_2

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/quicksearchbox/ui/QueryTextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpus;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 354
    .end local v0           #corpus:Lcom/android/quicksearchbox/Corpus;
    :cond_3
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    const v2, 0x7f020051

    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/ui/QueryTextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected updateUi()V
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->isQueryEmpty()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->updateUi(Z)V

    .line 331
    return-void
.end method

.method protected updateUi(Z)V
    .locals 0
    .parameter "queryEmpty"

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->updateQueryTextView(Z)V

    .line 335
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->updateSearchGoButton(Z)V

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->updateVoiceSearchButton(Z)V

    .line 337
    return-void
.end method

.method protected updateVoiceSearchButton(Z)V
    .locals 2
    .parameter "queryEmpty"

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->shouldShowVoiceSearch(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getVoiceSearch()Lcom/android/quicksearchbox/VoiceSearch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/VoiceSearch;->shouldShowVoiceSearch(Lcom/android/quicksearchbox/Corpus;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/QueryTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 375
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/android/quicksearchbox/ui/QueryTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/QueryTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_0
.end method
