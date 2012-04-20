.class public Lcom/android/quicksearchbox/RankAwarePromoter;
.super Lcom/android/quicksearchbox/AbstractPromoter;
.source "RankAwarePromoter.java"


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/SuggestionFilter;Lcom/android/quicksearchbox/Promoter;)V
    .locals 0
    .parameter "config"
    .parameter "filter"
    .parameter "next"

    .prologue
    .line 35
    invoke-direct {p0, p2, p3, p1}, Lcom/android/quicksearchbox/AbstractPromoter;-><init>(Lcom/android/quicksearchbox/SuggestionFilter;Lcom/android/quicksearchbox/Promoter;Lcom/android/quicksearchbox/Config;)V

    .line 36
    return-void
.end method

.method private getSlotsAboveKeyboard()I
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/quicksearchbox/RankAwarePromoter;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/Config;->getNumSuggestionsAboveKeyboard()I

    move-result v0

    return v0
.end method

.method private getSlotsLeft(Lcom/android/quicksearchbox/ListSuggestionCursor;I)I
    .locals 2
    .parameter "promoted"
    .parameter "maxPromoted"

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ListSuggestionCursor;->getCount()I

    move-result v1

    sub-int v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isCorpusHighlyRanked(Lcom/android/quicksearchbox/Corpus;)Z
    .locals 1
    .parameter "corpus"

    .prologue
    .line 145
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->isCorpusDefaultEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private partitionSuggestionsByRank(Ljava/lang/Iterable;Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/quicksearchbox/CorpusResult;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/quicksearchbox/CorpusResult;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/quicksearchbox/CorpusResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, suggestions:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/android/quicksearchbox/CorpusResult;>;"
    .local p2, highRankingSuggestions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/quicksearchbox/CorpusResult;>;"
    .local p3, lowRankingSuggestions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/quicksearchbox/CorpusResult;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/CorpusResult;

    .line 130
    .local v2, result:Lcom/android/quicksearchbox/CorpusResult;
    invoke-interface {v2}, Lcom/android/quicksearchbox/CorpusResult;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 131
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/quicksearchbox/CorpusResult;->moveTo(I)V

    .line 132
    invoke-interface {v2}, Lcom/android/quicksearchbox/CorpusResult;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    .line 133
    .local v0, corpus:Lcom/android/quicksearchbox/Corpus;
    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/RankAwarePromoter;->isCorpusHighlyRanked(Lcom/android/quicksearchbox/Corpus;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    .end local v0           #corpus:Lcom/android/quicksearchbox/Corpus;
    .end local v2           #result:Lcom/android/quicksearchbox/CorpusResult;
    :cond_2
    return-void
.end method

.method private promote(Lcom/android/quicksearchbox/SuggestionCursor;ILcom/android/quicksearchbox/ListSuggestionCursor;)I
    .locals 3
    .parameter "cursor"
    .parameter "count"
    .parameter "promoted"

    .prologue
    .line 193
    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getPosition()I

    move-result v1

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 194
    :cond_0
    const/4 v0, 0x0

    .line 205
    :cond_1
    :goto_0
    return v0

    .line 196
    :cond_2
    const/4 v0, 0x0

    .line 198
    .local v0, addedCount:I
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/RankAwarePromoter;->accept(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 199
    new-instance v1, Lcom/android/quicksearchbox/SuggestionPosition;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;)V

    invoke-virtual {p3, v1}, Lcom/android/quicksearchbox/ListSuggestionCursor;->add(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 201
    add-int/lit8 v0, v0, 0x1

    .line 204
    :cond_4
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    if-lt v0, p2, :cond_3

    goto :goto_0
.end method

.method private promoteEquallyFromEachCorpus(Ljava/util/LinkedList;Lcom/android/quicksearchbox/ListSuggestionCursor;I)V
    .locals 4
    .parameter
    .parameter "promoted"
    .parameter "maxPromoted"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/quicksearchbox/CorpusResult;",
            ">;",
            "Lcom/android/quicksearchbox/ListSuggestionCursor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, suggestions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/quicksearchbox/CorpusResult;>;"
    invoke-direct {p0, p2, p3}, Lcom/android/quicksearchbox/RankAwarePromoter;->getSlotsLeft(Lcom/android/quicksearchbox/ListSuggestionCursor;I)I

    move-result v0

    .line 96
    .local v0, slotsLeft:I
    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    div-int v3, v0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 106
    .local v1, stripeSize:I
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/quicksearchbox/RankAwarePromoter;->roundRobin(Ljava/util/LinkedList;IILcom/android/quicksearchbox/ListSuggestionCursor;)I

    .line 109
    invoke-direct {p0, p2, p3}, Lcom/android/quicksearchbox/RankAwarePromoter;->getSlotsLeft(Lcom/android/quicksearchbox/ListSuggestionCursor;I)I

    move-result v0

    .line 110
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/quicksearchbox/RankAwarePromoter;->roundRobin(Ljava/util/LinkedList;IILcom/android/quicksearchbox/ListSuggestionCursor;)I

    goto :goto_0
.end method

.method private promoteTopSuggestions(Ljava/util/LinkedList;Lcom/android/quicksearchbox/ListSuggestionCursor;I)V
    .locals 5
    .parameter
    .parameter "promoted"
    .parameter "maxPromoted"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/quicksearchbox/CorpusResult;",
            ">;",
            "Lcom/android/quicksearchbox/ListSuggestionCursor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, highRankingSuggestions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/quicksearchbox/CorpusResult;>;"
    invoke-direct {p0, p2, p3}, Lcom/android/quicksearchbox/RankAwarePromoter;->getSlotsLeft(Lcom/android/quicksearchbox/ListSuggestionCursor;I)I

    move-result v0

    .line 76
    .local v0, slotsLeft:I
    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/android/quicksearchbox/RankAwarePromoter;->getSlotsAboveKeyboard()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/quicksearchbox/ListSuggestionCursor;->getCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 79
    .local v1, slotsToFill:I
    if-lez v1, :cond_0

    .line 80
    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v4

    div-int v4, v1, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 81
    .local v2, stripeSize:I
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/quicksearchbox/RankAwarePromoter;->roundRobin(Ljava/util/LinkedList;IILcom/android/quicksearchbox/ListSuggestionCursor;)I

    .line 84
    .end local v1           #slotsToFill:I
    .end local v2           #stripeSize:I
    :cond_0
    return-void
.end method

.method private roundRobin(Ljava/util/LinkedList;IILcom/android/quicksearchbox/ListSuggestionCursor;)I
    .locals 5
    .parameter
    .parameter "maxPromoted"
    .parameter "stripeSize"
    .parameter "promoted"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/quicksearchbox/CorpusResult;",
            ">;II",
            "Lcom/android/quicksearchbox/ListSuggestionCursor;",
            ")I"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, results:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/quicksearchbox/CorpusResult;>;"
    const/4 v0, 0x0

    .line 171
    .local v0, count:I
    if-lez p2, :cond_1

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 173
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/quicksearchbox/CorpusResult;>;"
    :cond_0
    :goto_0
    if-ge v0, p2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/CorpusResult;

    .line 175
    .local v2, result:Lcom/android/quicksearchbox/CorpusResult;
    invoke-direct {p0, v2, p3, p4}, Lcom/android/quicksearchbox/RankAwarePromoter;->promote(Lcom/android/quicksearchbox/SuggestionCursor;ILcom/android/quicksearchbox/ListSuggestionCursor;)I

    move-result v3

    add-int/2addr v0, v3

    .line 176
    invoke-interface {v2}, Lcom/android/quicksearchbox/CorpusResult;->getPosition()I

    move-result v3

    invoke-interface {v2}, Lcom/android/quicksearchbox/CorpusResult;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 181
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/quicksearchbox/CorpusResult;>;"
    .end local v2           #result:Lcom/android/quicksearchbox/CorpusResult;
    :cond_1
    return v0
.end method


# virtual methods
.method public doPickPromoted(Lcom/android/quicksearchbox/Suggestions;ILcom/android/quicksearchbox/ListSuggestionCursor;)V
    .locals 1
    .parameter "suggestions"
    .parameter "maxPromoted"
    .parameter "promoted"

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/android/quicksearchbox/Suggestions;->getCorpusResults()Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/quicksearchbox/RankAwarePromoter;->promoteSuggestions(Ljava/lang/Iterable;ILcom/android/quicksearchbox/ListSuggestionCursor;)V

    .line 42
    return-void
.end method

.method promoteSuggestions(Ljava/lang/Iterable;ILcom/android/quicksearchbox/ListSuggestionCursor;)V
    .locals 2
    .parameter
    .parameter "maxPromoted"
    .parameter "promoted"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/quicksearchbox/CorpusResult;",
            ">;I",
            "Lcom/android/quicksearchbox/ListSuggestionCursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, suggestions:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/android/quicksearchbox/CorpusResult;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 52
    .local v0, highRankingSuggestions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/quicksearchbox/CorpusResult;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 53
    .local v1, lowRankingSuggestions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/quicksearchbox/CorpusResult;>;"
    invoke-direct {p0, p1, v0, v1}, Lcom/android/quicksearchbox/RankAwarePromoter;->partitionSuggestionsByRank(Ljava/lang/Iterable;Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    .line 56
    invoke-direct {p0, v0, p3, p2}, Lcom/android/quicksearchbox/RankAwarePromoter;->promoteTopSuggestions(Ljava/util/LinkedList;Lcom/android/quicksearchbox/ListSuggestionCursor;I)V

    .line 60
    invoke-direct {p0, v0, p3, p2}, Lcom/android/quicksearchbox/RankAwarePromoter;->promoteEquallyFromEachCorpus(Ljava/util/LinkedList;Lcom/android/quicksearchbox/ListSuggestionCursor;I)V

    .line 61
    invoke-direct {p0, v1, p3, p2}, Lcom/android/quicksearchbox/RankAwarePromoter;->promoteEquallyFromEachCorpus(Ljava/util/LinkedList;Lcom/android/quicksearchbox/ListSuggestionCursor;I)V

    .line 64
    return-void
.end method
