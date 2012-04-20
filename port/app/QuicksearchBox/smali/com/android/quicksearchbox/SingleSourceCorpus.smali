.class public Lcom/android/quicksearchbox/SingleSourceCorpus;
.super Lcom/android/quicksearchbox/AbstractCorpus;
.source "SingleSourceCorpus.java"


# instance fields
.field private final mSource:Lcom/android/quicksearchbox/Source;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/Source;)V
    .locals 0
    .parameter "context"
    .parameter "config"
    .parameter "source"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/AbstractCorpus;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;)V

    .line 37
    iput-object p3, p0, Lcom/android/quicksearchbox/SingleSourceCorpus;->mSource:Lcom/android/quicksearchbox/Source;

    .line 38
    return-void
.end method


# virtual methods
.method public createSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .parameter "query"
    .parameter "appData"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/quicksearchbox/SingleSourceCorpus;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0, p1, p2}, Lcom/android/quicksearchbox/Source;->createSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .parameter "appData"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/quicksearchbox/SingleSourceCorpus;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/Source;->createVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getCorpusIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/quicksearchbox/SingleSourceCorpus;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getSourceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/quicksearchbox/SingleSourceCorpus;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/quicksearchbox/SingleSourceCorpus;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/quicksearchbox/SingleSourceCorpus;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryThreshold()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/quicksearchbox/SingleSourceCorpus;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getQueryThreshold()I

    move-result v0

    return v0
.end method

.method public getSettingsDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/quicksearchbox/SingleSourceCorpus;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getSettingsDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
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
    .line 100
    iget-object v0, p0, Lcom/android/quicksearchbox/SingleSourceCorpus;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestions(Ljava/lang/String;IZ)Lcom/android/quicksearchbox/CorpusResult;
    .locals 5
    .parameter "query"
    .parameter "queryLimit"
    .parameter "onlyCorpus"

    .prologue
    .line 61
    new-instance v1, Lcom/android/quicksearchbox/LatencyTracker;

    invoke-direct {v1}, Lcom/android/quicksearchbox/LatencyTracker;-><init>()V

    .line 62
    .local v1, latencyTracker:Lcom/android/quicksearchbox/LatencyTracker;
    iget-object v3, p0, Lcom/android/quicksearchbox/SingleSourceCorpus;->mSource:Lcom/android/quicksearchbox/Source;

    const/4 v4, 0x1

    invoke-interface {v3, p1, p2, v4}, Lcom/android/quicksearchbox/Source;->getSuggestions(Ljava/lang/String;IZ)Lcom/android/quicksearchbox/SourceResult;

    move-result-object v2

    .line 63
    .local v2, sourceResult:Lcom/android/quicksearchbox/SourceResult;
    invoke-virtual {v1}, Lcom/android/quicksearchbox/LatencyTracker;->getLatency()I

    move-result v0

    .line 64
    .local v0, latency:I
    new-instance v3, Lcom/android/quicksearchbox/SingleSourceCorpusResult;

    invoke-direct {v3, p0, p1, v2, v0}, Lcom/android/quicksearchbox/SingleSourceCorpusResult;-><init>(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;I)V

    return-object v3
.end method

.method public bridge synthetic getSuggestions(Ljava/lang/String;IZ)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/SingleSourceCorpus;->getSuggestions(Ljava/lang/String;IZ)Lcom/android/quicksearchbox/CorpusResult;

    move-result-object v0

    return-object v0
.end method

.method public includeInAll()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/quicksearchbox/SingleSourceCorpus;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->includeInAll()Z

    move-result v0

    return v0
.end method

.method public isWebCorpus()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public queryAfterZeroResults()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/quicksearchbox/SingleSourceCorpus;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->queryAfterZeroResults()Z

    move-result v0

    return v0
.end method

.method public voiceSearchEnabled()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/quicksearchbox/SingleSourceCorpus;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->voiceSearchEnabled()Z

    move-result v0

    return v0
.end method
