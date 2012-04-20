.class public Lcom/android/quicksearchbox/SuggestionsProviderImpl;
.super Ljava/lang/Object;
.source "SuggestionsProviderImpl.java"

# interfaces
.implements Lcom/android/quicksearchbox/SuggestionsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;
    }
.end annotation


# instance fields
.field private mBatchingExecutor:Lcom/android/quicksearchbox/util/BatchingNamedTaskExecutor;

.field private final mConfig:Lcom/android/quicksearchbox/Config;

.field private final mLogger:Lcom/android/quicksearchbox/Logger;

.field private final mPublishThread:Landroid/os/Handler;

.field private final mQueryExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

.field private final mShouldQueryStrategy:Lcom/android/quicksearchbox/ShouldQueryStrategy;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Landroid/os/Handler;Lcom/android/quicksearchbox/Logger;)V
    .locals 2
    .parameter "config"
    .parameter "queryExecutor"
    .parameter "publishThread"
    .parameter "logger"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/android/quicksearchbox/Config;

    .line 58
    iput-object p2, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mQueryExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    .line 59
    iput-object p3, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;

    .line 60
    iput-object p4, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mLogger:Lcom/android/quicksearchbox/Logger;

    .line 61
    new-instance v0, Lcom/android/quicksearchbox/ShouldQueryStrategy;

    iget-object v1, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/android/quicksearchbox/Config;

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/ShouldQueryStrategy;-><init>(Lcom/android/quicksearchbox/Config;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mShouldQueryStrategy:Lcom/android/quicksearchbox/ShouldQueryStrategy;

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/android/quicksearchbox/SuggestionsProviderImpl;Lcom/android/quicksearchbox/CorpusResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->updateShouldQueryStrategy(Lcom/android/quicksearchbox/CorpusResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/quicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/quicksearchbox/SuggestionsProviderImpl;)Lcom/android/quicksearchbox/Logger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mLogger:Lcom/android/quicksearchbox/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/quicksearchbox/SuggestionsProviderImpl;)Lcom/android/quicksearchbox/Config;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/android/quicksearchbox/Config;

    return-object v0
.end method

.method private cancelPendingTasks()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/android/quicksearchbox/util/BatchingNamedTaskExecutor;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/android/quicksearchbox/util/BatchingNamedTaskExecutor;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/util/BatchingNamedTaskExecutor;->cancelPendingTasks()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/android/quicksearchbox/util/BatchingNamedTaskExecutor;

    .line 76
    :cond_0
    return-void
.end method

.method private countDefaultCorpora(Ljava/util/List;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, corpora:Ljava/util/List;,"Ljava/util/List<Lcom/android/quicksearchbox/Corpus;>;"
    const/4 v1, 0x0

    .line 148
    .local v1, count:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Corpus;

    .line 149
    .local v0, corpus:Lcom/android/quicksearchbox/Corpus;
    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpus;->isCorpusDefaultEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v0           #corpus:Lcom/android/quicksearchbox/Corpus;
    :cond_1
    return v1
.end method

.method private filterCorpora(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, corpora:Ljava/util/List;,"Ljava/util/List<Lcom/android/quicksearchbox/Corpus;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 94
    .end local p2           #corpora:Ljava/util/List;,"Ljava/util/List<Lcom/android/quicksearchbox/Corpus;>;"
    :goto_0
    return-object p2

    .line 84
    .restart local p2       #corpora:Ljava/util/List;,"Ljava/util/List<Lcom/android/quicksearchbox/Corpus;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v0, corporaToQuery:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/quicksearchbox/Corpus;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/Corpus;

    .line 86
    .local v1, corpus:Lcom/android/quicksearchbox/Corpus;
    invoke-virtual {p0, v1, p1}, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->shouldQueryCorpus(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #corpus:Lcom/android/quicksearchbox/Corpus;
    :cond_2
    move-object p2, v0

    .line 94
    goto :goto_0
.end method

.method private shouldDisplayResults(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/android/quicksearchbox/Config;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/Config;->showSuggestionsForZeroQuery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateShouldQueryStrategy(Lcom/android/quicksearchbox/CorpusResult;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 102
    invoke-interface {p1}, Lcom/android/quicksearchbox/CorpusResult;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mShouldQueryStrategy:Lcom/android/quicksearchbox/ShouldQueryStrategy;

    invoke-interface {p1}, Lcom/android/quicksearchbox/CorpusResult;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/quicksearchbox/CorpusResult;->getUserQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/quicksearchbox/ShouldQueryStrategy;->onZeroResults(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->cancelPendingTasks()V

    .line 66
    return-void
.end method

.method public getSuggestions(Ljava/lang/String;Ljava/util/List;)Lcom/android/quicksearchbox/Suggestions;
    .locals 16
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)",
            "Lcom/android/quicksearchbox/Suggestions;"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, corporaToQuery:Ljava/util/List;,"Ljava/util/List<Lcom/android/quicksearchbox/Corpus;>;"
    invoke-direct/range {p0 .. p2}, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->filterCorpora(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 111
    new-instance v5, Lcom/android/quicksearchbox/Suggestions;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v1}, Lcom/android/quicksearchbox/Suggestions;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 112
    .local v5, suggestions:Lcom/android/quicksearchbox/Suggestions;
    const-string v3, "QSB.SuggestionsProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "chars:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ",corpora:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 143
    :goto_0
    return-object v5

    .line 119
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->countDefaultCorpora(Ljava/util/List;)I

    move-result v6

    .line 120
    .local v6, initialBatchSize:I
    if-nez v6, :cond_1

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/android/quicksearchbox/Config;

    invoke-virtual {v3}, Lcom/android/quicksearchbox/Config;->getNumPromotedSources()I

    move-result v6

    .line 124
    :cond_1
    new-instance v3, Lcom/android/quicksearchbox/util/BatchingNamedTaskExecutor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mQueryExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    invoke-direct {v3, v4}, Lcom/android/quicksearchbox/util/BatchingNamedTaskExecutor;-><init>(Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/android/quicksearchbox/util/BatchingNamedTaskExecutor;

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/android/quicksearchbox/Config;

    invoke-virtual {v3}, Lcom/android/quicksearchbox/Config;->getPublishResultDelayMillis()J

    move-result-wide v7

    .line 129
    .local v7, publishResultDelayMillis:J
    invoke-direct/range {p0 .. p1}, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->shouldDisplayResults(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    new-instance v2, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/android/quicksearchbox/util/BatchingNamedTaskExecutor;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;-><init>(Lcom/android/quicksearchbox/SuggestionsProviderImpl;Lcom/android/quicksearchbox/util/BatchingNamedTaskExecutor;Lcom/android/quicksearchbox/Suggestions;IJ)V

    .line 138
    .local v2, receiver:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<Lcom/android/quicksearchbox/CorpusResult;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/android/quicksearchbox/Config;

    invoke-virtual {v3}, Lcom/android/quicksearchbox/Config;->getMaxResultsPerSource()I

    move-result v10

    .line 139
    .local v10, maxResultsPerSource:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/android/quicksearchbox/util/BatchingNamedTaskExecutor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move-object v14, v2

    invoke-static/range {v9 .. v15}, Lcom/android/quicksearchbox/QueryTask;->startQueries(Ljava/lang/String;ILjava/lang/Iterable;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;Z)V

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mBatchingExecutor:Lcom/android/quicksearchbox/util/BatchingNamedTaskExecutor;

    invoke-virtual {v3, v6}, Lcom/android/quicksearchbox/util/BatchingNamedTaskExecutor;->executeNextBatch(I)V

    goto :goto_0

    .line 134
    .end local v2           #receiver:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<Lcom/android/quicksearchbox/CorpusResult;>;"
    .end local v10           #maxResultsPerSource:I
    :cond_2
    new-instance v2, Lcom/android/quicksearchbox/util/NoOpConsumer;

    invoke-direct {v2}, Lcom/android/quicksearchbox/util/NoOpConsumer;-><init>()V

    .line 135
    .restart local v2       #receiver:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<Lcom/android/quicksearchbox/CorpusResult;>;"
    invoke-virtual {v5}, Lcom/android/quicksearchbox/Suggestions;->done()V

    goto :goto_1

    .line 139
    .restart local v10       #maxResultsPerSource:I
    :cond_3
    const/4 v15, 0x0

    goto :goto_2
.end method

.method protected shouldQueryCorpus(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;)Z
    .locals 1
    .parameter "corpus"
    .parameter "query"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mShouldQueryStrategy:Lcom/android/quicksearchbox/ShouldQueryStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/android/quicksearchbox/ShouldQueryStrategy;->shouldQueryCorpus(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
