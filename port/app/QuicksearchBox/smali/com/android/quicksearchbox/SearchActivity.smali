.class public Lcom/android/quicksearchbox/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/SearchActivity$OnDestroyListener;,
        Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;,
        Lcom/android/quicksearchbox/SearchActivity$CorpusSelectorDismissListener;,
        Lcom/android/quicksearchbox/SearchActivity$ClickHandler;
    }
.end annotation


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mCorporaObserver:Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;

.field private mDestroyListener:Lcom/android/quicksearchbox/SearchActivity$OnDestroyListener;

.field private final mHandler:Landroid/os/Handler;

.field private mOnCreateLatency:I

.field private mOnCreateTracker:Lcom/android/quicksearchbox/LatencyTracker;

.field private mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

.field private final mShowInputMethodTask:Ljava/lang/Runnable;

.field private mStartLatencyTracker:Lcom/android/quicksearchbox/LatencyTracker;

.field private mStarting:Z

.field private mTookAction:Z

.field private mTraceStartUp:Z

.field private final mUpdateSuggestionsTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/android/quicksearchbox/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/SearchActivity$1;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mUpdateSuggestionsTask:Ljava/lang/Runnable;

    .line 97
    new-instance v0, Lcom/android/quicksearchbox/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/SearchActivity$2;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mShowInputMethodTask:Ljava/lang/Runnable;

    .line 720
    return-void
.end method

.method static synthetic access$000(Lcom/android/quicksearchbox/SearchActivity;)Lcom/android/quicksearchbox/ui/SearchActivityView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->updateSuggestionsBuffered()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->launchSuggestion(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/quicksearchbox/SearchActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getCorpusName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/quicksearchbox/SearchActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/SearchActivity;->setCorpus(Ljava/lang/String;)V

    return-void
.end method

.method private getConfig()Lcom/android/quicksearchbox/Config;
    .locals 1

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v0

    return-object v0
.end method

.method private getCorpora()Lcom/android/quicksearchbox/Corpora;
    .locals 1

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    return-object v0
.end method

.method private getCorporaToQuery(Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<Ljava/util/List<Lcom/android/quicksearchbox/Corpus;>;>;"
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    .line 629
    .local v1, corpus:Lcom/android/quicksearchbox/Corpus;
    if-nez v1, :cond_0

    .line 630
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getCorpusRanker()Lcom/android/quicksearchbox/CorpusRanker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quicksearchbox/SearchActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v4, p1}, Lcom/android/quicksearchbox/util/Consumers;->createAsyncConsumer(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;)Lcom/android/quicksearchbox/util/Consumer;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/quicksearchbox/CorpusRanker;->getCorporaInAll(Lcom/android/quicksearchbox/util/Consumer;)V

    .line 637
    :goto_0
    return-void

    .line 632
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v0, corpora:Ljava/util/List;,"Ljava/util/List<Lcom/android/quicksearchbox/Corpus;>;"
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getSearchCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v2

    .line 634
    .local v2, searchCorpus:Lcom/android/quicksearchbox/Corpus;
    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_1
    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    return-object v0
.end method

.method private getCorpusName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpusName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCorpusNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 265
    if-nez p1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-object v0

    .line 266
    :cond_1
    const-string v1, "qsb.corpus"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCorpusRanker()Lcom/android/quicksearchbox/CorpusRanker;
    .locals 1

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getCorpusRanker()Lcom/android/quicksearchbox/CorpusRanker;

    move-result-object v0

    return-object v0
.end method

.method private getLogger()Lcom/android/quicksearchbox/Logger;
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getLogger()Lcom/android/quicksearchbox/Logger;

    move-result-object v0

    return-object v0
.end method

.method private getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 283
    invoke-static {p0}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method private getShortcutRepository()Lcom/android/quicksearchbox/ShortcutRepository;
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getShortcutRepository()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    return-object v0
.end method

.method private getSuggestionsProvider()Lcom/android/quicksearchbox/SuggestionsProvider;
    .locals 1

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getSuggestionsProvider()Lcom/android/quicksearchbox/SuggestionsProvider;

    move-result-object v0

    return-object v0
.end method

.method private gotSuggestions(Lcom/android/quicksearchbox/Suggestions;)V
    .locals 6
    .parameter "suggestions"

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mStarting:Z

    if-eqz v0, :cond_0

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mStarting:Z

    .line 619
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, source:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mStartLatencyTracker:Lcom/android/quicksearchbox/LatencyTracker;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/LatencyTracker;->getLatency()I

    move-result v2

    .line 621
    .local v2, latency:I
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getLogger()Lcom/android/quicksearchbox/Logger;

    move-result-object v0

    iget v1, p0, Lcom/android/quicksearchbox/SearchActivity;->mOnCreateLatency:I

    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v4

    if-nez p1, :cond_1

    const/4 v5, 0x0

    :goto_0
    invoke-interface/range {v0 .. v5}, Lcom/android/quicksearchbox/Logger;->logStart(IILjava/lang/String;Lcom/android/quicksearchbox/Corpus;Ljava/util/List;)V

    .line 623
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->onStartupComplete()V

    .line 625
    .end local v2           #latency:I
    .end local v3           #source:Ljava/lang/String;
    :cond_0
    return-void

    .line 621
    .restart local v2       #latency:I
    .restart local v3       #source:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/android/quicksearchbox/Suggestions;->getExpectedCorpora()Ljava/util/List;

    move-result-object v5

    goto :goto_0
.end method

.method private launchSuggestion(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Z
    .locals 8
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<*>;J)Z"
        }
    .end annotation

    .prologue
    .local p1, adapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapter<*>;"
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 500
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->getCurrentSuggestions(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lcom/android/quicksearchbox/SuggestionPosition;

    move-result-object v6

    .line 501
    .local v6, suggestion:Lcom/android/quicksearchbox/SuggestionPosition;
    if-nez v6, :cond_0

    .line 516
    :goto_0
    return v5

    .line 504
    :cond_0
    iput-boolean v7, p0, Lcom/android/quicksearchbox/SearchActivity;->mTookAction:Z

    .line 507
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getLogger()Lcom/android/quicksearchbox/Logger;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/quicksearchbox/SuggestionPosition;->getCursor()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getCurrentIncludedCorpora()Ljava/util/Set;

    move-result-object v4

    move-wide v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/quicksearchbox/Logger;->logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V

    .line 511
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getShortcutRepository()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/quicksearchbox/SuggestionPosition;->getCursor()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/quicksearchbox/SuggestionPosition;->getPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/quicksearchbox/ShortcutRepository;->reportClick(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    .line 514
    invoke-virtual {v6}, Lcom/android/quicksearchbox/SuggestionPosition;->getCursor()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/quicksearchbox/SuggestionPosition;->getPosition()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/quicksearchbox/SearchActivity;->launchSuggestion(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    move v5, v7

    .line 516
    goto :goto_0
.end method

.method private recordOnCreateDone()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mOnCreateTracker:Lcom/android/quicksearchbox/LatencyTracker;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/LatencyTracker;->getLatency()I

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mOnCreateLatency:I

    .line 203
    return-void
.end method

.method private recordStartTime()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcom/android/quicksearchbox/LatencyTracker;

    invoke-direct {v0}, Lcom/android/quicksearchbox/LatencyTracker;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mStartLatencyTracker:Lcom/android/quicksearchbox/LatencyTracker;

    .line 196
    new-instance v0, Lcom/android/quicksearchbox/LatencyTracker;

    invoke-direct {v0}, Lcom/android/quicksearchbox/LatencyTracker;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mOnCreateTracker:Lcom/android/quicksearchbox/LatencyTracker;

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mStarting:Z

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mTookAction:Z

    .line 199
    return-void
.end method

.method private setCorpus(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setCorpus(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method private setupFromIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/quicksearchbox/SearchActivity;->getCorpusNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, corpusName:Ljava/lang/String;
    const-string v4, "query"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, query:Ljava/lang/String;
    const-string v4, "app_data"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 228
    .local v0, appSearchData:Landroid/os/Bundle;
    const-string v4, "select_query"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 230
    .local v3, selectAll:Z
    invoke-direct {p0, v1}, Lcom/android/quicksearchbox/SearchActivity;->setCorpus(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0, v2, v3}, Lcom/android/quicksearchbox/SearchActivity;->setQuery(Ljava/lang/String;Z)V

    .line 232
    iput-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mAppSearchData:Landroid/os/Bundle;

    .line 234
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->startedIntoCorpusSelectionDialog()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    iget-object v4, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v4}, Lcom/android/quicksearchbox/ui/SearchActivityView;->showCorpusSelectionDialog()V

    .line 237
    :cond_0
    return-void
.end method

.method private updateSuggestionsBuffered()V
    .locals 4

    .prologue
    .line 611
    iget-object v2, p0, Lcom/android/quicksearchbox/SearchActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/quicksearchbox/SearchActivity;->mUpdateSuggestionsTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 612
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quicksearchbox/Config;->getTypingUpdateSuggestionsDelayMillis()J

    move-result-wide v0

    .line 613
    .local v0, delay:J
    iget-object v2, p0, Lcom/android/quicksearchbox/SearchActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/quicksearchbox/SearchActivity;->mUpdateSuggestionsTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 614
    return-void
.end method


# virtual methods
.method public clearStartedIntoCorpusSelectionDialog()V
    .locals 4

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 249
    .local v1, oldIntent:Landroid/content/Intent;
    const-string v2, "com.android.quicksearchbox.action.QSB_AND_SELECT_CORPUS"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 251
    .local v0, newIntent:Landroid/content/Intent;
    const-string v2, "android.search.action.GLOBAL_SEARCH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 254
    .end local v0           #newIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected clickedQuickContact(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 7
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<*>;J)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p1, adapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapter<*>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->getCurrentSuggestions(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lcom/android/quicksearchbox/SuggestionPosition;

    move-result-object v6

    .line 574
    .local v6, suggestion:Lcom/android/quicksearchbox/SuggestionPosition;
    if-nez v6, :cond_0

    .line 585
    :goto_0
    return-void

    .line 577
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mTookAction:Z

    .line 580
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getLogger()Lcom/android/quicksearchbox/Logger;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/quicksearchbox/SuggestionPosition;->getCursor()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getCurrentIncludedCorpora()Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x2

    move-wide v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/quicksearchbox/Logger;->logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V

    .line 584
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getShortcutRepository()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/quicksearchbox/SuggestionPosition;->getCursor()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/quicksearchbox/SuggestionPosition;->getPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/quicksearchbox/ShortcutRepository;->reportClick(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    goto :goto_0
.end method

.method protected createCorpusSelectionDialog()Lcom/android/quicksearchbox/CorpusSelectionDialog;
    .locals 2

    .prologue
    .line 407
    new-instance v0, Lcom/android/quicksearchbox/CorpusSelectionDialog;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/quicksearchbox/CorpusSelectionDialog;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/SearchSettings;)V

    return-object v0
.end method

.method public createMenuItems(Landroid/view/Menu;Z)V
    .locals 2
    .parameter "menu"
    .parameter "showDisabled"

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/quicksearchbox/SearchSettings;->addMenuItems(Landroid/view/Menu;Z)V

    .line 379
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getHelp()Lcom/android/quicksearchbox/Help;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, p1, v1}, Lcom/android/quicksearchbox/Help;->addHelpMenuItem(Landroid/view/Menu;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public getCorpusSelectionDialog()Lcom/android/quicksearchbox/CorpusSelectionDialog;
    .locals 3

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->createCorpusSelectionDialog()Lcom/android/quicksearchbox/CorpusSelectionDialog;

    move-result-object v0

    .line 401
    .local v0, dialog:Lcom/android/quicksearchbox/CorpusSelectionDialog;
    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 402
    new-instance v1, Lcom/android/quicksearchbox/SearchActivity$CorpusSelectorDismissListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/quicksearchbox/SearchActivity$CorpusSelectorDismissListener;-><init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/SearchActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/CorpusSelectionDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 403
    return-object v0
.end method

.method protected getCurrentIncludedCorpora()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getSuggestions()Lcom/android/quicksearchbox/Suggestions;

    move-result-object v0

    .line 482
    .local v0, suggestions:Lcom/android/quicksearchbox/Suggestions;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/quicksearchbox/Suggestions;->getIncludedCorpora()Ljava/util/Set;

    move-result-object v1

    goto :goto_0
.end method

.method protected getCurrentSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentSuggestions(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lcom/android/quicksearchbox/SuggestionPosition;
    .locals 8
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<*>;J)",
            "Lcom/android/quicksearchbox/SuggestionPosition;"
        }
    .end annotation

    .prologue
    .local p1, adapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapter<*>;"
    const/4 v4, 0x0

    .line 462
    invoke-interface {p1, p2, p3}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getSuggestion(J)Lcom/android/quicksearchbox/SuggestionPosition;

    move-result-object v1

    .line 463
    .local v1, pos:Lcom/android/quicksearchbox/SuggestionPosition;
    if-nez v1, :cond_0

    move-object v1, v4

    .line 477
    .end local v1           #pos:Lcom/android/quicksearchbox/SuggestionPosition;
    :goto_0
    return-object v1

    .line 466
    .restart local v1       #pos:Lcom/android/quicksearchbox/SuggestionPosition;
    :cond_0
    invoke-virtual {v1}, Lcom/android/quicksearchbox/SuggestionPosition;->getCursor()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v3

    .line 467
    .local v3, suggestions:Lcom/android/quicksearchbox/SuggestionCursor;
    invoke-virtual {v1}, Lcom/android/quicksearchbox/SuggestionPosition;->getPosition()I

    move-result v2

    .line 468
    .local v2, position:I
    if-nez v3, :cond_1

    move-object v1, v4

    .line 469
    goto :goto_0

    .line 471
    :cond_1
    invoke-interface {v3}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v0

    .line 472
    .local v0, count:I
    if-ltz v2, :cond_2

    if-lt v2, v0, :cond_3

    .line 473
    :cond_2
    const-string v5, "QSB.SearchActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid suggestion position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 474
    goto :goto_0

    .line 476
    :cond_3
    invoke-interface {v3, v2}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    goto :goto_0
.end method

.method protected getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSearchCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getSearchCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    return-object v0
.end method

.method protected getSettings()Lcom/android/quicksearchbox/SearchSettings;
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    return-object v0
.end method

.method protected getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;Lcom/android/quicksearchbox/Suggestions;)V
    .locals 4
    .parameter "query"
    .parameter
    .parameter "suggestions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;",
            "Lcom/android/quicksearchbox/Suggestions;",
            ")V"
        }
    .end annotation

    .prologue
    .line 641
    .local p2, corporaToQuery:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/quicksearchbox/Corpus;>;"
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getShortcutRepository()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v1

    .line 642
    .local v1, shortcutRepo:Lcom/android/quicksearchbox/ShortcutRepository;
    if-nez v1, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quicksearchbox/Config;->showShortcutsForZeroQuery()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    :cond_2
    iget-object v2, p0, Lcom/android/quicksearchbox/SearchActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/quicksearchbox/SearchActivity$8;

    invoke-direct {v3, p0, p3}, Lcom/android/quicksearchbox/SearchActivity$8;-><init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/Suggestions;)V

    invoke-static {v2, v3}, Lcom/android/quicksearchbox/util/Consumers;->createAsyncCloseableConsumer(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;)Lcom/android/quicksearchbox/util/Consumer;

    move-result-object v0

    .line 653
    .local v0, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<Lcom/android/quicksearchbox/ShortcutCursor;>;"
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/quicksearchbox/SearchSettings;->allowWebSearchShortcuts()Z

    move-result v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/android/quicksearchbox/ShortcutRepository;->getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;ZLcom/android/quicksearchbox/util/Consumer;)V

    goto :goto_0
.end method

.method protected launchIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 487
    if-nez p1, :cond_0

    .line 497
    :goto_0
    return-void

    .line 491
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SearchActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 495
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "QSB.SearchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected launchSuggestion(Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 2
    .parameter "suggestions"
    .parameter "position"

    .prologue
    .line 520
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 521
    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->mAppSearchData:Landroid/os/Bundle;

    invoke-static {p1, v1}, Lcom/android/quicksearchbox/SuggestionUtils;->getSuggestionIntent(Lcom/android/quicksearchbox/SuggestionCursor;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 522
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/SearchActivity;->launchIntent(Landroid/content/Intent;)V

    .line 523
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "trace_start_up"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/quicksearchbox/SearchActivity;->mTraceStartUp:Z

    .line 109
    iget-boolean v3, p0, Lcom/android/quicksearchbox/SearchActivity;->mTraceStartUp:Z

    if-eqz v3, :cond_0

    .line 110
    new-instance v3, Ljava/io/File;

    const-string v4, "traces"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/quicksearchbox/SearchActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    const-string v5, "qsb-start.trace"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, traceFile:Ljava/lang/String;
    const-string v3, "QSB.SearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing start-up trace to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 114
    .end local v2           #traceFile:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->recordStartTime()V

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-static {p0}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quicksearchbox/QsbApplication;->getSearchBaseUrlHelper()Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    .line 122
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->setupContentView()Lcom/android/quicksearchbox/ui/SearchActivityView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    .line 124
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quicksearchbox/Config;->showScrollingSuggestions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    iget-object v3, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quicksearchbox/Config;->getMaxPromotedSuggestions()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setMaxPromotedSuggestions(I)V

    .line 129
    :goto_0
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quicksearchbox/Config;->showScrollingResults()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    iget-object v3, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quicksearchbox/Config;->getMaxPromotedResults()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setMaxPromotedResults(I)V

    .line 135
    :goto_1
    iget-object v3, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    new-instance v4, Lcom/android/quicksearchbox/SearchActivity$3;

    invoke-direct {v4, p0}, Lcom/android/quicksearchbox/SearchActivity$3;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    invoke-virtual {v3, v4}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setSearchClickListener(Lcom/android/quicksearchbox/ui/SearchActivityView$SearchClickListener;)V

    .line 141
    iget-object v3, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    new-instance v4, Lcom/android/quicksearchbox/SearchActivity$4;

    invoke-direct {v4, p0}, Lcom/android/quicksearchbox/SearchActivity$4;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    invoke-virtual {v3, v4}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setQueryListener(Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;)V

    .line 147
    iget-object v3, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    new-instance v4, Lcom/android/quicksearchbox/SearchActivity$ClickHandler;

    invoke-direct {v4, p0, v6}, Lcom/android/quicksearchbox/SearchActivity$ClickHandler;-><init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/SearchActivity$1;)V

    invoke-virtual {v3, v4}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V

    .line 149
    iget-object v3, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    new-instance v4, Lcom/android/quicksearchbox/SearchActivity$5;

    invoke-direct {v4, p0}, Lcom/android/quicksearchbox/SearchActivity$5;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    invoke-virtual {v3, v4}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setVoiceSearchButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    new-instance v0, Lcom/android/quicksearchbox/SearchActivity$6;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/SearchActivity$6;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    .line 160
    .local v0, finishOnClick:Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v3, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setExitClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 164
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/android/quicksearchbox/SearchActivity;->setupFromIntent(Landroid/content/Intent;)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SearchActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 170
    iget-object v3, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v3}, Lcom/android/quicksearchbox/ui/SearchActivityView;->start()V

    .line 172
    new-instance v3, Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;

    invoke-direct {v3, p0, v6}, Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;-><init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/SearchActivity$1;)V

    iput-object v3, p0, Lcom/android/quicksearchbox/SearchActivity;->mCorporaObserver:Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;

    .line 173
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quicksearchbox/SearchActivity;->mCorporaObserver:Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;

    invoke-interface {v3, v4}, Lcom/android/quicksearchbox/Corpora;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 174
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->recordOnCreateDone()V

    .line 175
    return-void

    .line 127
    .end local v0           #finishOnClick:Landroid/view/View$OnClickListener;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v3}, Lcom/android/quicksearchbox/ui/SearchActivityView;->limitSuggestionsToViewHeight()V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v3, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v3}, Lcom/android/quicksearchbox/ui/SearchActivityView;->limitResultsToViewHeight()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->mCorporaObserver:Lcom/android/quicksearchbox/SearchActivity$CorporaObserver;

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/Corpora;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 323
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->destroy()V

    .line 324
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 325
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mDestroyListener:Lcom/android/quicksearchbox/SearchActivity$OnDestroyListener;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mDestroyListener:Lcom/android/quicksearchbox/SearchActivity$OnDestroyListener;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SearchActivity$OnDestroyListener;->onDestroyed()V

    .line 328
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->recordStartTime()V

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 191
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/SearchActivity;->setupFromIntent(Landroid/content/Intent;)V

    .line 192
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->onPause()V

    .line 351
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 352
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    .line 372
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 373
    invoke-virtual {p0, p1, v0}, Lcom/android/quicksearchbox/SearchActivity;->createMenuItems(Landroid/view/Menu;Z)V

    .line 374
    return v0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 357
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 358
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 363
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 364
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->updateSuggestionsBuffered()V

    .line 365
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->onResume()V

    .line 366
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mTraceStartUp:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 367
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 219
    const-string v0, "corpus"

    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getCorpusName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v0, "query"

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method protected onSearchClicked(I)Z
    .locals 7
    .parameter "method"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 414
    sget-object v4, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Lcom/google/common/base/CharMatcher;->trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, query:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v4

    if-nez v4, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v2

    .line 420
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getSearchCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    .line 421
    .local v1, searchCorpus:Lcom/android/quicksearchbox/Corpus;
    if-eqz v1, :cond_0

    .line 423
    iput-boolean v3, p0, Lcom/android/quicksearchbox/SearchActivity;->mTookAction:Z

    .line 426
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getLogger()Lcom/android/quicksearchbox/Logger;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v2, v4, p1, v5}, Lcom/android/quicksearchbox/Logger;->logSearch(Lcom/android/quicksearchbox/Corpus;II)V

    .line 429
    invoke-virtual {p0, v1, v0}, Lcom/android/quicksearchbox/SearchActivity;->startSearch(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;)V

    move v2, v3

    .line 430
    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mTookAction:Z

    if-nez v0, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getLogger()Lcom/android/quicksearchbox/Logger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getCurrentSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/quicksearchbox/Logger;->logExit(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->clearSuggestions()V

    .line 342
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getShortcutRefresher()Lcom/android/quicksearchbox/ShortcutRefresher;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/ShortcutRefresher;->reset()V

    .line 343
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->onStop()V

    .line 344
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 345
    return-void
.end method

.method protected onVoiceSearchClicked()V
    .locals 3

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getSearchCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    .line 441
    .local v1, searchCorpus:Lcom/android/quicksearchbox/Corpus;
    if-nez v1, :cond_0

    .line 451
    :goto_0
    return-void

    .line 443
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/quicksearchbox/SearchActivity;->mTookAction:Z

    .line 446
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getLogger()Lcom/android/quicksearchbox/Logger;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/quicksearchbox/Logger;->logVoiceSearch(Lcom/android/quicksearchbox/Corpus;)V

    .line 449
    iget-object v2, p0, Lcom/android/quicksearchbox/SearchActivity;->mAppSearchData:Landroid/os/Bundle;

    invoke-interface {v1, v2}, Lcom/android/quicksearchbox/Corpus;->createVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 450
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/SearchActivity;->launchIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 384
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 385
    if-eqz p1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->mShowInputMethodTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 389
    :cond_0
    return-void
.end method

.method protected refineSuggestion(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 9
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<*>;J)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, adapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapter<*>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->getCurrentSuggestions(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lcom/android/quicksearchbox/SuggestionPosition;

    move-result-object v8

    .line 590
    .local v8, suggestion:Lcom/android/quicksearchbox/SuggestionPosition;
    if-nez v8, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    invoke-virtual {v8}, Lcom/android/quicksearchbox/SuggestionPosition;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v6

    .line 594
    .local v6, query:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getLogger()Lcom/android/quicksearchbox/Logger;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/quicksearchbox/SuggestionPosition;->getCursor()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getCurrentIncludedCorpora()Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x1

    move-wide v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/quicksearchbox/Logger;->logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 604
    .local v7, queryWithSpace:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p0, v7, v0}, Lcom/android/quicksearchbox/SearchActivity;->setQuery(Ljava/lang/String;Z)V

    .line 605
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->updateSuggestions()V

    .line 606
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->focusQueryTextView()V

    goto :goto_0
.end method

.method protected removeFromHistory(Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 1
    .parameter "suggestions"
    .parameter "position"

    .prologue
    .line 553
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/SearchActivity;->removeShortcut(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    .line 554
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/SearchActivity;->removeFromHistoryDone(Z)V

    .line 555
    return-void
.end method

.method protected removeFromHistory(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 3
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<*>;J)V"
        }
    .end annotation

    .prologue
    .line 546
    .local p1, adapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapter<*>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->getCurrentSuggestions(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lcom/android/quicksearchbox/SuggestionPosition;

    move-result-object v0

    .line 547
    .local v0, suggestion:Lcom/android/quicksearchbox/SuggestionPosition;
    if-nez v0, :cond_0

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_0
    invoke-virtual {v0}, Lcom/android/quicksearchbox/SuggestionPosition;->getCursor()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/quicksearchbox/SuggestionPosition;->getPosition()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/quicksearchbox/SearchActivity;->removeFromHistory(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    goto :goto_0
.end method

.method protected removeFromHistoryClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 6
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<*>;J)V"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, adapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapter<*>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->getCurrentSuggestions(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lcom/android/quicksearchbox/SuggestionPosition;

    move-result-object v1

    .line 528
    .local v1, suggestion:Lcom/android/quicksearchbox/SuggestionPosition;
    if-nez v1, :cond_0

    .line 543
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-virtual {v1}, Lcom/android/quicksearchbox/SuggestionPosition;->getSuggestionText1()Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, title:Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090009

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/quicksearchbox/SearchActivity$7;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity$7;-><init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 542
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected removeFromHistoryDone(Z)V
    .locals 3
    .parameter "ok"

    .prologue
    .line 558
    const-string v0, "QSB.SearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed query from history, success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->updateSuggestionsBuffered()V

    .line 560
    if-nez p1, :cond_0

    .line 561
    const v0, 0x7f09000a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 563
    :cond_0
    return-void
.end method

.method protected removeShortcut(Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 1
    .parameter "suggestions"
    .parameter "position"

    .prologue
    .line 566
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->isSuggestionShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getShortcutRepository()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/quicksearchbox/ShortcutRepository;->removeFromHistory(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    .line 570
    :cond_0
    return-void
.end method

.method protected restoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_0
    const-string v2, "corpus"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, corpusName:Ljava/lang/String;
    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, query:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/SearchActivity;->setCorpus(Ljava/lang/String;)V

    .line 210
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/quicksearchbox/SearchActivity;->setQuery(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setOnDestroyListener(Lcom/android/quicksearchbox/SearchActivity$OnDestroyListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity;->mDestroyListener:Lcom/android/quicksearchbox/SearchActivity$OnDestroyListener;

    .line 317
    return-void
.end method

.method protected setQuery(Ljava/lang/String;Z)V
    .locals 1
    .parameter "query"
    .parameter "selectAll"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0, p1, p2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setQuery(Ljava/lang/String;Z)V

    .line 397
    return-void
.end method

.method protected setupContentView()Lcom/android/quicksearchbox/ui/SearchActivityView;
    .locals 1

    .prologue
    .line 178
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/SearchActivity;->setContentView(I)V

    .line 179
    const v0, 0x7f0f0013

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ui/SearchActivityView;

    return-object v0
.end method

.method protected showSuggestions(Lcom/android/quicksearchbox/Suggestions;)V
    .locals 1
    .parameter "suggestions"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->mSearchActivityView:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setSuggestions(Lcom/android/quicksearchbox/Suggestions;)V

    .line 684
    return-void
.end method

.method protected startSearch(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;)V
    .locals 2
    .parameter "searchCorpus"
    .parameter "query"

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->mAppSearchData:Landroid/os/Bundle;

    invoke-interface {p1, p2, v1}, Lcom/android/quicksearchbox/Corpus;->createSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 435
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/SearchActivity;->launchIntent(Landroid/content/Intent;)V

    .line 436
    return-void
.end method

.method public startedIntoCorpusSelectionDialog()Z
    .locals 2

    .prologue
    .line 240
    const-string v0, "com.android.quicksearchbox.action.QSB_AND_SELECT_CORPUS"

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateSuggestions()V
    .locals 3

    .prologue
    .line 659
    sget-object v1, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/CharMatcher;->trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, query:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getQsbApplication()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quicksearchbox/QsbApplication;->getSourceTaskExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/quicksearchbox/util/NamedTaskExecutor;->cancelPendingTasks()V

    .line 661
    new-instance v1, Lcom/android/quicksearchbox/SearchActivity$9;

    invoke-direct {v1, p0, v0}, Lcom/android/quicksearchbox/SearchActivity$9;-><init>(Lcom/android/quicksearchbox/SearchActivity;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/quicksearchbox/SearchActivity;->getCorporaToQuery(Lcom/android/quicksearchbox/util/Consumer;)V

    .line 668
    return-void
.end method

.method protected updateSuggestions(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 672
    .local p2, corporaToQuery:Ljava/util/List;,"Ljava/util/List<Lcom/android/quicksearchbox/Corpus;>;"
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchActivity;->getSuggestionsProvider()Lcom/android/quicksearchbox/SuggestionsProvider;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/quicksearchbox/SuggestionsProvider;->getSuggestions(Ljava/lang/String;Ljava/util/List;)Lcom/android/quicksearchbox/Suggestions;

    move-result-object v0

    .line 674
    .local v0, suggestions:Lcom/android/quicksearchbox/Suggestions;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/quicksearchbox/SearchActivity;->getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;Lcom/android/quicksearchbox/Suggestions;)V

    .line 677
    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/SearchActivity;->gotSuggestions(Lcom/android/quicksearchbox/Suggestions;)V

    .line 679
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/SearchActivity;->showSuggestions(Lcom/android/quicksearchbox/Suggestions;)V

    .line 680
    return-void
.end method
