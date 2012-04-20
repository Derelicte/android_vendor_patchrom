.class public abstract Lcom/android/quicksearchbox/MultiSourceCorpus;
.super Lcom/android/quicksearchbox/AbstractCorpus;
.source "MultiSourceCorpus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/MultiSourceCorpus$Result;
    }
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mIncludeInAll:Z

.field private mQueryAfterZeroResults:Z

.field private mQueryThreshold:I

.field private mSourcePropertiesValid:Z

.field private final mSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/quicksearchbox/Source;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceSearchEnabled:Z


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;Ljava/util/concurrent/Executor;[Lcom/android/quicksearchbox/Source;)V
    .locals 5
    .parameter "context"
    .parameter "config"
    .parameter "executor"
    .parameter "sources"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/AbstractCorpus;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;)V

    .line 48
    iput-object p3, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mExecutor:Ljava/util/concurrent/Executor;

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mSources:Ljava/util/ArrayList;

    .line 51
    move-object v0, p4

    .local v0, arr$:[Lcom/android/quicksearchbox/Source;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 52
    .local v3, source:Lcom/android/quicksearchbox/Source;
    invoke-virtual {p0, v3}, Lcom/android/quicksearchbox/MultiSourceCorpus;->addSource(Lcom/android/quicksearchbox/Source;)V

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v3           #source:Lcom/android/quicksearchbox/Source;
    :cond_0
    return-void
.end method

.method private updateSourceProperties()V
    .locals 6

    .prologue
    const v5, 0x7fffffff

    const/4 v4, 0x0

    .line 100
    iget-boolean v2, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mSourcePropertiesValid:Z

    if-eqz v2, :cond_0

    .line 115
    :goto_0
    return-void

    .line 101
    :cond_0
    iput v5, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mQueryThreshold:I

    .line 102
    iput-boolean v4, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mQueryAfterZeroResults:Z

    .line 103
    iput-boolean v4, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mVoiceSearchEnabled:Z

    .line 104
    iput-boolean v4, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mIncludeInAll:Z

    .line 105
    invoke-virtual {p0}, Lcom/android/quicksearchbox/MultiSourceCorpus;->getSources()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/Source;

    .line 106
    .local v1, s:Lcom/android/quicksearchbox/Source;
    iget v2, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mQueryThreshold:I

    invoke-interface {v1}, Lcom/android/quicksearchbox/Source;->getQueryThreshold()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mQueryThreshold:I

    .line 107
    iget-boolean v2, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mQueryAfterZeroResults:Z

    invoke-interface {v1}, Lcom/android/quicksearchbox/Source;->queryAfterZeroResults()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mQueryAfterZeroResults:Z

    .line 108
    iget-boolean v2, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mVoiceSearchEnabled:Z

    invoke-interface {v1}, Lcom/android/quicksearchbox/Source;->voiceSearchEnabled()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mVoiceSearchEnabled:Z

    .line 109
    iget-boolean v2, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mIncludeInAll:Z

    invoke-interface {v1}, Lcom/android/quicksearchbox/Source;->includeInAll()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mIncludeInAll:Z

    goto :goto_1

    .line 111
    .end local v1           #s:Lcom/android/quicksearchbox/Source;
    :cond_1
    iget v2, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mQueryThreshold:I

    if-ne v2, v5, :cond_2

    .line 112
    iput v4, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mQueryThreshold:I

    .line 114
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mSourcePropertiesValid:Z

    goto :goto_0
.end method


# virtual methods
.method protected addSource(Lcom/android/quicksearchbox/Source;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mSourcePropertiesValid:Z

    .line 63
    :cond_0
    return-void
.end method

.method protected createResult(Ljava/lang/String;Ljava/util/ArrayList;I)Lcom/android/quicksearchbox/MultiSourceCorpus$Result;
    .locals 1
    .parameter "query"
    .parameter
    .parameter "latency"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/quicksearchbox/SourceResult;",
            ">;I)",
            "Lcom/android/quicksearchbox/MultiSourceCorpus$Result;"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/quicksearchbox/SourceResult;>;"
    new-instance v0, Lcom/android/quicksearchbox/MultiSourceCorpus$Result;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/quicksearchbox/MultiSourceCorpus$Result;-><init>(Lcom/android/quicksearchbox/MultiSourceCorpus;Ljava/lang/String;Ljava/util/ArrayList;I)V

    return-object v0
.end method

.method public getQueryThreshold()I
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/quicksearchbox/MultiSourceCorpus;->updateSourceProperties()V

    .line 119
    iget v0, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mQueryThreshold:I

    return v0
.end method

.method public getSources()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/quicksearchbox/Source;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mSources:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getSourcesToQuery(Ljava/lang/String;Z)Ljava/util/List;
    .locals 5
    .parameter "query"
    .parameter "onlyCorpus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Source;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v2, sources:Ljava/util/List;,"Ljava/util/List<Lcom/android/quicksearchbox/Source;>;"
    invoke-virtual {p0}, Lcom/android/quicksearchbox/MultiSourceCorpus;->getSources()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Source;

    .line 92
    .local v0, candidate:Lcom/android/quicksearchbox/Source;
    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getQueryThreshold()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 93
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    .end local v0           #candidate:Lcom/android/quicksearchbox/Source;
    :cond_1
    return-object v2
.end method

.method public getSuggestions(Ljava/lang/String;IZ)Lcom/android/quicksearchbox/CorpusResult;
    .locals 14
    .parameter "query"
    .parameter "queryLimit"
    .parameter "onlyCorpus"

    .prologue
    .line 138
    new-instance v10, Lcom/android/quicksearchbox/LatencyTracker;

    invoke-direct {v10}, Lcom/android/quicksearchbox/LatencyTracker;-><init>()V

    .line 139
    .local v10, latencyTracker:Lcom/android/quicksearchbox/LatencyTracker;
    move/from16 v0, p3

    invoke-virtual {p0, p1, v0}, Lcom/android/quicksearchbox/MultiSourceCorpus;->getSourcesToQuery(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v13

    .line 140
    .local v13, sources:Ljava/util/List;,"Ljava/util/List<Lcom/android/quicksearchbox/Source;>;"
    new-instance v6, Lcom/android/quicksearchbox/util/BarrierConsumer;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v6, v2}, Lcom/android/quicksearchbox/util/BarrierConsumer;-><init>(I)V

    .line 142
    .local v6, consumer:Lcom/android/quicksearchbox/util/BarrierConsumer;,"Lcom/android/quicksearchbox/util/BarrierConsumer<Lcom/android/quicksearchbox/SourceResult;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v7, 0x1

    .line 143
    .local v7, onlySource:Z
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/quicksearchbox/Source;

    .line 144
    .local v4, source:Lcom/android/quicksearchbox/Source;
    new-instance v1, Lcom/android/quicksearchbox/QueryTask;

    const/4 v5, 0x0

    move-object v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/quicksearchbox/QueryTask;-><init>(Ljava/lang/String;ILcom/android/quicksearchbox/SuggestionCursorProvider;Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;Z)V

    .line 146
    .local v1, task:Lcom/android/quicksearchbox/QueryTask;,"Lcom/android/quicksearchbox/QueryTask<Lcom/android/quicksearchbox/SourceResult;>;"
    iget-object v2, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 142
    .end local v1           #task:Lcom/android/quicksearchbox/QueryTask;,"Lcom/android/quicksearchbox/QueryTask<Lcom/android/quicksearchbox/SourceResult;>;"
    .end local v4           #source:Lcom/android/quicksearchbox/Source;
    .end local v7           #onlySource:Z
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 148
    .restart local v7       #onlySource:Z
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v6}, Lcom/android/quicksearchbox/util/BarrierConsumer;->getValues()Ljava/util/ArrayList;

    move-result-object v12

    .line 149
    .local v12, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/quicksearchbox/SourceResult;>;"
    invoke-virtual {v10}, Lcom/android/quicksearchbox/LatencyTracker;->getLatency()I

    move-result v9

    .line 150
    .local v9, latency:I
    invoke-virtual {p0, p1, v12, v9}, Lcom/android/quicksearchbox/MultiSourceCorpus;->createResult(Ljava/lang/String;Ljava/util/ArrayList;I)Lcom/android/quicksearchbox/MultiSourceCorpus$Result;

    move-result-object v11

    .line 151
    .local v11, result:Lcom/android/quicksearchbox/MultiSourceCorpus$Result;
    invoke-virtual {v11}, Lcom/android/quicksearchbox/MultiSourceCorpus$Result;->fill()V

    .line 152
    return-object v11
.end method

.method public bridge synthetic getSuggestions(Ljava/lang/String;IZ)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/MultiSourceCorpus;->getSuggestions(Ljava/lang/String;IZ)Lcom/android/quicksearchbox/CorpusResult;

    move-result-object v0

    return-object v0
.end method

.method public includeInAll()Z
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/quicksearchbox/MultiSourceCorpus;->updateSourceProperties()V

    .line 134
    iget-boolean v0, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mIncludeInAll:Z

    return v0
.end method

.method public queryAfterZeroResults()Z
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/quicksearchbox/MultiSourceCorpus;->updateSourceProperties()V

    .line 124
    iget-boolean v0, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mQueryAfterZeroResults:Z

    return v0
.end method

.method public voiceSearchEnabled()Z
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/quicksearchbox/MultiSourceCorpus;->updateSourceProperties()V

    .line 129
    iget-boolean v0, p0, Lcom/android/quicksearchbox/MultiSourceCorpus;->mVoiceSearchEnabled:Z

    return v0
.end method
