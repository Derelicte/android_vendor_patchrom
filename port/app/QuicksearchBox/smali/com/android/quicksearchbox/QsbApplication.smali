.class public Lcom/android/quicksearchbox/QsbApplication;
.super Ljava/lang/Object;
.source "QsbApplication.java"


# instance fields
.field private mConfig:Lcom/android/quicksearchbox/Config;

.field private final mContext:Landroid/content/Context;

.field private mCorpora:Lcom/android/quicksearchbox/Corpora;

.field private mCorpusRanker:Lcom/android/quicksearchbox/CorpusRanker;

.field private mGoogleSource:Lcom/android/quicksearchbox/google/GoogleSource;

.field private mHttpHelper:Lcom/android/quicksearchbox/util/HttpHelper;

.field private mIconLoaderExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

.field private mLogger:Lcom/android/quicksearchbox/Logger;

.field private mQueryThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private mSearchBaseUrlHelper:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

.field private mSettings:Lcom/android/quicksearchbox/SearchSettings;

.field private mShortcutRefresher:Lcom/android/quicksearchbox/ShortcutRefresher;

.field private mShortcutRepository:Lcom/android/quicksearchbox/ShortcutRepository;

.field private mSourceTaskExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

.field private mSources:Lcom/android/quicksearchbox/Sources;

.field private mSuggestionFormatter:Lcom/android/quicksearchbox/SuggestionFormatter;

.field private mSuggestionViewFactory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

.field private mSuggestionsProvider:Lcom/android/quicksearchbox/SuggestionsProvider;

.field private mTextAppearanceFactory:Lcom/android/quicksearchbox/TextAppearanceFactory;

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mVersionCode:I

.field private mVoiceSearch:Lcom/android/quicksearchbox/VoiceSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0d000a

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/QsbApplicationWrapper;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplicationWrapper;->getApp()Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected checkThread()V
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessed Application object from thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    return-void
.end method

.method protected close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 118
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mConfig:Lcom/android/quicksearchbox/Config;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mConfig:Lcom/android/quicksearchbox/Config;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/Config;->close()V

    .line 120
    iput-object v1, p0, Lcom/android/quicksearchbox/QsbApplication;->mConfig:Lcom/android/quicksearchbox/Config;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mShortcutRepository:Lcom/android/quicksearchbox/ShortcutRepository;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mShortcutRepository:Lcom/android/quicksearchbox/ShortcutRepository;

    invoke-interface {v0}, Lcom/android/quicksearchbox/ShortcutRepository;->close()V

    .line 124
    iput-object v1, p0, Lcom/android/quicksearchbox/QsbApplication;->mShortcutRepository:Lcom/android/quicksearchbox/ShortcutRepository;

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    invoke-interface {v0}, Lcom/android/quicksearchbox/util/NamedTaskExecutor;->close()V

    .line 128
    iput-object v1, p0, Lcom/android/quicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/android/quicksearchbox/SuggestionsProvider;

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/android/quicksearchbox/SuggestionsProvider;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionsProvider;->close()V

    .line 132
    iput-object v1, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/android/quicksearchbox/SuggestionsProvider;

    .line 134
    :cond_3
    return-void
.end method

.method public createBlendingPromoter()Lcom/android/quicksearchbox/Promoter;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 378
    new-instance v0, Lcom/android/quicksearchbox/ShortcutPromoter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v1

    new-instance v2, Lcom/android/quicksearchbox/RankAwarePromoter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Lcom/android/quicksearchbox/RankAwarePromoter;-><init>(Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/SuggestionFilter;Lcom/android/quicksearchbox/Promoter;)V

    invoke-direct {v0, v1, v2, v4}, Lcom/android/quicksearchbox/ShortcutPromoter;-><init>(Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/Promoter;Lcom/android/quicksearchbox/SuggestionFilter;)V

    return-object v0
.end method

.method protected createConfig()Lcom/android/quicksearchbox/Config;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Lcom/android/quicksearchbox/Config;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/Config;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createCorpora(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Corpora;
    .locals 4
    .parameter "sources"

    .prologue
    .line 207
    new-instance v0, Lcom/android/quicksearchbox/SearchableCorpora;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createCorpusFactory()Lcom/android/quicksearchbox/CorpusFactory;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/quicksearchbox/SearchableCorpora;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/SearchSettings;Lcom/android/quicksearchbox/Sources;Lcom/android/quicksearchbox/CorpusFactory;)V

    .line 209
    .local v0, corpora:Lcom/android/quicksearchbox/SearchableCorpora;
    invoke-virtual {v0}, Lcom/android/quicksearchbox/SearchableCorpora;->update()V

    .line 210
    return-object v0
.end method

.method protected createCorpusFactory()Lcom/android/quicksearchbox/CorpusFactory;
    .locals 6

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quicksearchbox/Config;->getNumWebCorpusThreads()I

    move-result v0

    .line 239
    .local v0, numWebCorpusThreads:I
    new-instance v1, Lcom/android/quicksearchbox/SearchableCorpusFactory;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/QsbApplication;->createExecutorFactory(I)Lcom/android/quicksearchbox/util/Factory;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/quicksearchbox/SearchableCorpusFactory;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/SearchSettings;Lcom/android/quicksearchbox/util/Factory;)V

    return-object v1
.end method

.method protected createCorpusRanker()Lcom/android/quicksearchbox/CorpusRanker;
    .locals 3

    .prologue
    .line 265
    new-instance v0, Lcom/android/quicksearchbox/DefaultCorpusRanker;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getShortcutRepository()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/quicksearchbox/DefaultCorpusRanker;-><init>(Lcom/android/quicksearchbox/Corpora;Lcom/android/quicksearchbox/ShortcutRepository;)V

    return-object v0
.end method

.method protected createExecutorFactory(I)Lcom/android/quicksearchbox/util/Factory;
    .locals 2
    .parameter "numThreads"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/quicksearchbox/util/Factory",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getQueryThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 245
    .local v0, threadFactory:Ljava/util/concurrent/ThreadFactory;
    new-instance v1, Lcom/android/quicksearchbox/QsbApplication$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/quicksearchbox/QsbApplication$1;-><init>(Lcom/android/quicksearchbox/QsbApplication;ILjava/util/concurrent/ThreadFactory;)V

    return-object v1
.end method

.method protected createGoogleSource()Lcom/android/quicksearchbox/google/GoogleSource;
    .locals 5

    .prologue
    .line 412
    new-instance v0, Lcom/android/quicksearchbox/google/GoogleSuggestClient;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getIconLoaderExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/quicksearchbox/google/GoogleSuggestClient;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Lcom/android/quicksearchbox/Config;)V

    return-object v0
.end method

.method protected createHttpHelper()Lcom/android/quicksearchbox/util/HttpHelper;
    .locals 3

    .prologue
    .line 481
    new-instance v0, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;

    new-instance v1, Lcom/android/quicksearchbox/util/JavaNetHttpHelper$PassThroughRewriter;

    invoke-direct {v1}, Lcom/android/quicksearchbox/util/JavaNetHttpHelper$PassThroughRewriter;-><init>()V

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quicksearchbox/Config;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/quicksearchbox/util/JavaNetHttpHelper;-><init>(Lcom/android/quicksearchbox/util/HttpHelper$UrlRewriter;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createIconLoaderExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    .locals 3

    .prologue
    .line 155
    new-instance v0, Lcom/android/quicksearchbox/util/PriorityThreadFactory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/util/PriorityThreadFactory;-><init>(I)V

    .line 157
    .local v0, iconThreadFactory:Ljava/util/concurrent/ThreadFactory;
    new-instance v1, Lcom/android/quicksearchbox/util/PerNameExecutor;

    invoke-static {v0}, Lcom/android/quicksearchbox/util/SingleThreadNamedTaskExecutor;->factory(Ljava/util/concurrent/ThreadFactory;)Lcom/android/quicksearchbox/util/Factory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/quicksearchbox/util/PerNameExecutor;-><init>(Lcom/android/quicksearchbox/util/Factory;)V

    return-object v1
.end method

.method protected createLogger()Lcom/android/quicksearchbox/Logger;
    .locals 3

    .prologue
    .line 444
    new-instance v0, Lcom/android/quicksearchbox/EventLogLogger;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/quicksearchbox/EventLogLogger;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;)V

    return-object v0
.end method

.method public createPreferenceControllerFactory(Landroid/app/Activity;)Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;
    .locals 2
    .parameter "activity"

    .prologue
    .line 470
    new-instance v0, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;-><init>(Lcom/android/quicksearchbox/SearchSettings;Landroid/content/Context;)V

    return-object v0
.end method

.method protected createQueryThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 4

    .prologue
    .line 335
    const-string v0, "QSB #%d"

    .line 336
    .local v0, nameFormat:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quicksearchbox/Config;->getQueryThreadPriority()I

    move-result v1

    .line 337
    .local v1, priority:I
    new-instance v2, Lcom/google/common/util/concurrent/NamingThreadFactory;

    new-instance v3, Lcom/android/quicksearchbox/util/PriorityThreadFactory;

    invoke-direct {v3, v1}, Lcom/android/quicksearchbox/util/PriorityThreadFactory;-><init>(I)V

    invoke-direct {v2, v0, v3}, Lcom/google/common/util/concurrent/NamingThreadFactory;-><init>(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;)V

    return-object v2
.end method

.method public createResultsPromoter()Lcom/android/quicksearchbox/Promoter;
    .locals 4

    .prologue
    .line 395
    new-instance v0, Lcom/android/quicksearchbox/ResultFilter;

    invoke-direct {v0}, Lcom/android/quicksearchbox/ResultFilter;-><init>()V

    .line 396
    .local v0, resultFilter:Lcom/android/quicksearchbox/SuggestionFilter;
    new-instance v1, Lcom/android/quicksearchbox/ShortcutPromoter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/quicksearchbox/ShortcutPromoter;-><init>(Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/Promoter;Lcom/android/quicksearchbox/SuggestionFilter;)V

    return-object v1
.end method

.method protected createSearchBaseUrlHelper()Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;
    .locals 5

    .prologue
    .line 496
    new-instance v1, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getHttpHelper()Lcom/android/quicksearchbox/util/HttpHelper;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/SearchSettingsImpl;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/SearchSettingsImpl;->getSearchPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/util/HttpHelper;Lcom/android/quicksearchbox/SearchSettings;Landroid/content/SharedPreferences;)V

    return-object v1
.end method

.method protected createSettings()Lcom/android/quicksearchbox/SearchSettings;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Lcom/android/quicksearchbox/SearchSettingsImpl;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/quicksearchbox/SearchSettingsImpl;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;)V

    return-object v0
.end method

.method protected createShortcutRefresher()Lcom/android/quicksearchbox/ShortcutRefresher;
    .locals 2

    .prologue
    .line 302
    new-instance v0, Lcom/android/quicksearchbox/SourceShortcutRefresher;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createSourceTaskExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/SourceShortcutRefresher;-><init>(Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    return-object v0
.end method

.method protected createShortcutRepository()Lcom/android/quicksearchbox/ShortcutRepository;
    .locals 7

    .prologue
    .line 281
    new-instance v6, Lcom/google/common/util/concurrent/NamingThreadFactory;

    const-string v0, "ShortcutRepositoryWriter #%d"

    new-instance v1, Lcom/android/quicksearchbox/util/PriorityThreadFactory;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/android/quicksearchbox/util/PriorityThreadFactory;-><init>(I)V

    invoke-direct {v6, v0, v1}, Lcom/google/common/util/concurrent/NamingThreadFactory;-><init>(Ljava/lang/String;Ljava/util/concurrent/ThreadFactory;)V

    .line 283
    .local v6, logThreadFactory:Ljava/util/concurrent/ThreadFactory;
    invoke-static {v6}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 284
    .local v5, logExecutor:Ljava/util/concurrent/Executor;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getShortcutRefresher()Lcom/android/quicksearchbox/ShortcutRefresher;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;->create(Landroid/content/Context;Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/Corpora;Lcom/android/quicksearchbox/ShortcutRefresher;Landroid/os/Handler;Ljava/util/concurrent/Executor;)Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    return-object v0
.end method

.method public createSingleCorpusPromoter(Lcom/android/quicksearchbox/Corpus;)Lcom/android/quicksearchbox/Promoter;
    .locals 2
    .parameter "corpus"

    .prologue
    .line 383
    new-instance v0, Lcom/android/quicksearchbox/SingleCorpusPromoter;

    const v1, 0x7fffffff

    invoke-direct {v0, p1, v1}, Lcom/android/quicksearchbox/SingleCorpusPromoter;-><init>(Lcom/android/quicksearchbox/Corpus;I)V

    return-object v0
.end method

.method public createSingleCorpusResultsPromoter(Lcom/android/quicksearchbox/Corpus;)Lcom/android/quicksearchbox/Promoter;
    .locals 2
    .parameter "corpus"

    .prologue
    .line 387
    new-instance v0, Lcom/android/quicksearchbox/SingleCorpusResultsPromoter;

    const v1, 0x7fffffff

    invoke-direct {v0, p1, v1}, Lcom/android/quicksearchbox/SingleCorpusResultsPromoter;-><init>(Lcom/android/quicksearchbox/Corpus;I)V

    return-object v0
.end method

.method protected createSourceTaskExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    .locals 3

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getQueryThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 319
    .local v0, queryThreadFactory:Ljava/util/concurrent/ThreadFactory;
    new-instance v1, Lcom/android/quicksearchbox/util/PerNameExecutor;

    invoke-static {v0}, Lcom/android/quicksearchbox/util/SingleThreadNamedTaskExecutor;->factory(Ljava/util/concurrent/ThreadFactory;)Lcom/android/quicksearchbox/util/Factory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/quicksearchbox/util/PerNameExecutor;-><init>(Lcom/android/quicksearchbox/util/Factory;)V

    return-object v1
.end method

.method protected createSources()Lcom/android/quicksearchbox/Sources;
    .locals 5

    .prologue
    .line 233
    new-instance v0, Lcom/android/quicksearchbox/SearchableSources;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getIconLoaderExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/quicksearchbox/SearchableSources;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Lcom/android/quicksearchbox/Config;)V

    return-object v0
.end method

.method protected createSuggestionFormatter()Lcom/android/quicksearchbox/SuggestionFormatter;
    .locals 2

    .prologue
    .line 455
    new-instance v0, Lcom/android/quicksearchbox/LevenshteinSuggestionFormatter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getTextAppearanceFactory()Lcom/android/quicksearchbox/TextAppearanceFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/LevenshteinSuggestionFormatter;-><init>(Lcom/android/quicksearchbox/TextAppearanceFactory;)V

    return-object v0
.end method

.method protected createSuggestionViewFactory()Lcom/android/quicksearchbox/ui/SuggestionViewFactory;
    .locals 2

    .prologue
    .line 374
    new-instance v0, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createSuggestionsProvider()Lcom/android/quicksearchbox/SuggestionsProvider;
    .locals 5

    .prologue
    .line 355
    new-instance v0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSourceTaskExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getLogger()Lcom/android/quicksearchbox/Logger;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/quicksearchbox/SuggestionsProviderImpl;-><init>(Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Landroid/os/Handler;Lcom/android/quicksearchbox/Logger;)V

    return-object v0
.end method

.method protected createTextAppearanceFactory()Lcom/android/quicksearchbox/TextAppearanceFactory;
    .locals 2

    .prologue
    .line 466
    new-instance v0, Lcom/android/quicksearchbox/TextAppearanceFactory;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/TextAppearanceFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createVoiceSearch()Lcom/android/quicksearchbox/VoiceSearch;
    .locals 2

    .prologue
    .line 428
    new-instance v0, Lcom/android/quicksearchbox/VoiceSearch;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/VoiceSearch;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createWebPromoter()Lcom/android/quicksearchbox/Promoter;
    .locals 2

    .prologue
    .line 391
    new-instance v0, Lcom/android/quicksearchbox/WebPromoter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quicksearchbox/Config;->getMaxShortcutsPerWebSource()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/WebPromoter;-><init>(I)V

    return-object v0
.end method

.method public declared-synchronized getConfig()Lcom/android/quicksearchbox/Config;
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mConfig:Lcom/android/quicksearchbox/Config;

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mConfig:Lcom/android/quicksearchbox/Config;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mConfig:Lcom/android/quicksearchbox/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCorpora()Lcom/android/quicksearchbox/Corpora;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 200
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getSources()Lcom/android/quicksearchbox/Sources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/QsbApplication;->createCorpora(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    return-object v0
.end method

.method public getCorpusRanker()Lcom/android/quicksearchbox/CorpusRanker;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 258
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mCorpusRanker:Lcom/android/quicksearchbox/CorpusRanker;

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createCorpusRanker()Lcom/android/quicksearchbox/CorpusRanker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mCorpusRanker:Lcom/android/quicksearchbox/CorpusRanker;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mCorpusRanker:Lcom/android/quicksearchbox/CorpusRanker;

    return-object v0
.end method

.method public getGoogleSource()Lcom/android/quicksearchbox/google/GoogleSource;
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 405
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mGoogleSource:Lcom/android/quicksearchbox/google/GoogleSource;

    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createGoogleSource()Lcom/android/quicksearchbox/google/GoogleSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mGoogleSource:Lcom/android/quicksearchbox/google/GoogleSource;

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mGoogleSource:Lcom/android/quicksearchbox/google/GoogleSource;

    return-object v0
.end method

.method public getHelp()Lcom/android/quicksearchbox/Help;
    .locals 3

    .prologue
    .line 502
    new-instance v0, Lcom/android/quicksearchbox/Help;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/quicksearchbox/Help;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;)V

    return-object v0
.end method

.method public declared-synchronized getHttpHelper()Lcom/android/quicksearchbox/util/HttpHelper;
    .locals 1

    .prologue
    .line 474
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mHttpHelper:Lcom/android/quicksearchbox/util/HttpHelper;

    if-nez v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createHttpHelper()Lcom/android/quicksearchbox/util/HttpHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mHttpHelper:Lcom/android/quicksearchbox/util/HttpHelper;

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mHttpHelper:Lcom/android/quicksearchbox/util/HttpHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIconLoaderExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    .locals 1

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mIconLoaderExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createIconLoaderExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mIconLoaderExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mIconLoaderExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLogger()Lcom/android/quicksearchbox/Logger;
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 437
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mLogger:Lcom/android/quicksearchbox/Logger;

    if-nez v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createLogger()Lcom/android/quicksearchbox/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mLogger:Lcom/android/quicksearchbox/Logger;

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mLogger:Lcom/android/quicksearchbox/Logger;

    return-object v0
.end method

.method public declared-synchronized getMainThreadHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mUiThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mUiThreadHandler:Landroid/os/Handler;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mUiThreadHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getQueryThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 328
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mQueryThreadFactory:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createQueryThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mQueryThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mQueryThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method public declared-synchronized getSearchBaseUrlHelper()Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;
    .locals 1

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchBaseUrlHelper:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    if-nez v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createSearchBaseUrlHelper()Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchBaseUrlHelper:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSearchBaseUrlHelper:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSettings()Lcom/android/quicksearchbox/SearchSettings;
    .locals 1

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSettings:Lcom/android/quicksearchbox/SearchSettings;

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createSettings()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSettings:Lcom/android/quicksearchbox/SearchSettings;

    .line 184
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSettings:Lcom/android/quicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SearchSettings;->upgradeSettingsIfNeeded()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSettings:Lcom/android/quicksearchbox/SearchSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getShortcutRefresher()Lcom/android/quicksearchbox/ShortcutRefresher;
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 294
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mShortcutRefresher:Lcom/android/quicksearchbox/ShortcutRefresher;

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createShortcutRefresher()Lcom/android/quicksearchbox/ShortcutRefresher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mShortcutRefresher:Lcom/android/quicksearchbox/ShortcutRefresher;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mShortcutRefresher:Lcom/android/quicksearchbox/ShortcutRefresher;

    return-object v0
.end method

.method public getShortcutRepository()Lcom/android/quicksearchbox/ShortcutRepository;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 274
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mShortcutRepository:Lcom/android/quicksearchbox/ShortcutRepository;

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createShortcutRepository()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mShortcutRepository:Lcom/android/quicksearchbox/ShortcutRepository;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mShortcutRepository:Lcom/android/quicksearchbox/ShortcutRepository;

    return-object v0
.end method

.method public getSourceTaskExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 311
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    if-nez v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createSourceTaskExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSourceTaskExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    return-object v0
.end method

.method protected getSources()Lcom/android/quicksearchbox/Sources;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 226
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSources:Lcom/android/quicksearchbox/Sources;

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createSources()Lcom/android/quicksearchbox/Sources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSources:Lcom/android/quicksearchbox/Sources;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSources:Lcom/android/quicksearchbox/Sources;

    return-object v0
.end method

.method public getSuggestionFormatter()Lcom/android/quicksearchbox/SuggestionFormatter;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionFormatter:Lcom/android/quicksearchbox/SuggestionFormatter;

    if-nez v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createSuggestionFormatter()Lcom/android/quicksearchbox/SuggestionFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionFormatter:Lcom/android/quicksearchbox/SuggestionFormatter;

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionFormatter:Lcom/android/quicksearchbox/SuggestionFormatter;

    return-object v0
.end method

.method public getSuggestionViewFactory()Lcom/android/quicksearchbox/ui/SuggestionViewFactory;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 367
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionViewFactory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createSuggestionViewFactory()Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionViewFactory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionViewFactory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    return-object v0
.end method

.method protected getSuggestionsProvider()Lcom/android/quicksearchbox/SuggestionsProvider;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 348
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/android/quicksearchbox/SuggestionsProvider;

    if-nez v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createSuggestionsProvider()Lcom/android/quicksearchbox/SuggestionsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/android/quicksearchbox/SuggestionsProvider;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mSuggestionsProvider:Lcom/android/quicksearchbox/SuggestionsProvider;

    return-object v0
.end method

.method public getTextAppearanceFactory()Lcom/android/quicksearchbox/TextAppearanceFactory;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mTextAppearanceFactory:Lcom/android/quicksearchbox/TextAppearanceFactory;

    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createTextAppearanceFactory()Lcom/android/quicksearchbox/TextAppearanceFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mTextAppearanceFactory:Lcom/android/quicksearchbox/TextAppearanceFactory;

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mTextAppearanceFactory:Lcom/android/quicksearchbox/TextAppearanceFactory;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 5

    .prologue
    .line 95
    iget v3, p0, Lcom/android/quicksearchbox/QsbApplication;->mVersionCode:I

    if-nez v3, :cond_0

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 98
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 99
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/android/quicksearchbox/QsbApplication;->mVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    iget v3, p0, Lcom/android/quicksearchbox/QsbApplication;->mVersionCode:I

    return v3

    .line 100
    :catch_0
    move-exception v0

    .line 103
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVoiceSearch()Lcom/android/quicksearchbox/VoiceSearch;
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 421
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mVoiceSearch:Lcom/android/quicksearchbox/VoiceSearch;

    if-nez v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->createVoiceSearch()Lcom/android/quicksearchbox/VoiceSearch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mVoiceSearch:Lcom/android/quicksearchbox/VoiceSearch;

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mVoiceSearch:Lcom/android/quicksearchbox/VoiceSearch;

    return-object v0
.end method

.method public onStartupComplete()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method

.method public updateCorpora()V
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication;->checkThread()V

    .line 219
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/quicksearchbox/QsbApplication;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpora;->update()V

    .line 222
    :cond_0
    return-void
.end method
