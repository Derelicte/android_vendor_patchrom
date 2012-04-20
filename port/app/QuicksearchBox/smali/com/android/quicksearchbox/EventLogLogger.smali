.class public Lcom/android/quicksearchbox/EventLogLogger;
.super Ljava/lang/Object;
.source "EventLogLogger.java"

# interfaces
.implements Lcom/android/quicksearchbox/Logger;


# instance fields
.field private final mConfig:Lcom/android/quicksearchbox/Config;

.field private final mContext:Landroid/content/Context;

.field private final mPackageName:Ljava/lang/String;

.field private final mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;)V
    .locals 1
    .parameter "context"
    .parameter "config"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/quicksearchbox/EventLogLogger;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/quicksearchbox/EventLogLogger;->mConfig:Lcom/android/quicksearchbox/Config;

    .line 44
    iget-object v0, p0, Lcom/android/quicksearchbox/EventLogLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/EventLogLogger;->mPackageName:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/EventLogLogger;->mRandom:Ljava/util/Random;

    .line 46
    return-void
.end method

.method private getCorpusLogName(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;
    .locals 1
    .parameter "corpus"

    .prologue
    .line 108
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCorpusLogNames(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, corpora:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/quicksearchbox/Corpus;>;"
    if-nez p1, :cond_0

    const-string v3, ""

    .line 134
    :goto_0
    return-object v3

    .line 129
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Corpus;

    .line 131
    .local v0, corpus:Lcom/android/quicksearchbox/Corpus;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/EventLogLogger;->getCorpusLogName(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 134
    .end local v0           #corpus:Lcom/android/quicksearchbox/Corpus;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getSuggestions(Lcom/android/quicksearchbox/SuggestionCursor;)Ljava/lang/String;
    .locals 8
    .parameter "cursor"

    .prologue
    const/16 v7, 0x3a

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v2, sb:Ljava/lang/StringBuilder;
    if-nez p1, :cond_2

    const/4 v0, 0x0

    .line 115
    .local v0, count:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 116
    if-lez v1, :cond_0

    const/16 v6, 0x7c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    invoke-interface {p1, v1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 118
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/quicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, source:Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getSuggestionLogType()Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, type:Ljava/lang/String;
    if-nez v5, :cond_1

    const-string v5, ""

    .line 121
    :cond_1
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->isSuggestionShortcut()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v3, "shortcut"

    .line 122
    .local v3, shortcut:Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #shortcut:Ljava/lang/String;
    .end local v4           #source:Ljava/lang/String;
    .end local v5           #type:Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v0

    goto :goto_0

    .line 121
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v4       #source:Ljava/lang/String;
    .restart local v5       #type:Ljava/lang/String;
    :cond_3
    const-string v3, ""

    goto :goto_2

    .line 124
    .end local v4           #source:Ljava/lang/String;
    .end local v5           #type:Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private shouldLogLatency()Z
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/quicksearchbox/EventLogLogger;->mConfig:Lcom/android/quicksearchbox/Config;

    invoke-virtual {v1}, Lcom/android/quicksearchbox/Config;->getLatencyLogFrequency()I

    move-result v0

    .line 104
    .local v0, freq:I
    iget-object v1, p0, Lcom/android/quicksearchbox/EventLogLogger;->mRandom:Ljava/util/Random;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/quicksearchbox/EventLogLogger;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getVersionCode()I
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/quicksearchbox/EventLogLogger;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public logExit(Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 1
    .parameter "suggestionCursor"
    .parameter "numChars"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/EventLogLogger;->getSuggestions(Lcom/android/quicksearchbox/SuggestionCursor;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, suggestions:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/quicksearchbox/EventLogTags;->writeQsbExit(Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public logLatency(Lcom/android/quicksearchbox/CorpusResult;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/quicksearchbox/EventLogLogger;->shouldLogLatency()Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/CorpusResult;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/quicksearchbox/EventLogLogger;->getCorpusLogName(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, corpusName:Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/quicksearchbox/CorpusResult;->getLatency()I

    move-result v1

    .line 98
    .local v1, latency:I
    invoke-interface {p1}, Lcom/android/quicksearchbox/CorpusResult;->getUserQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 99
    .local v2, numChars:I
    invoke-static {v0, v1, v2}, Lcom/android/quicksearchbox/EventLogTags;->writeQsbLatency(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public logSearch(Lcom/android/quicksearchbox/Corpus;II)V
    .locals 1
    .parameter "corpus"
    .parameter "startMethod"
    .parameter "numChars"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/EventLogLogger;->getCorpusLogName(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, corpusName:Ljava/lang/String;
    invoke-static {v0, p2, p3}, Lcom/android/quicksearchbox/EventLogTags;->writeQsbSearch(Ljava/lang/String;II)V

    .line 82
    return-void
.end method

.method public logStart(IILjava/lang/String;Lcom/android/quicksearchbox/Corpus;Ljava/util/List;)V
    .locals 7
    .parameter "onCreateLatency"
    .parameter "latency"
    .parameter "intentSource"
    .parameter "corpus"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcom/android/quicksearchbox/Corpus;",
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p5, orderedCorpora:Ljava/util/List;,"Ljava/util/List<Lcom/android/quicksearchbox/Corpus;>;"
    move-object v2, p3

    .line 64
    .local v2, startMethod:Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/android/quicksearchbox/EventLogLogger;->getCorpusLogName(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, currentCorpus:Ljava/lang/String;
    invoke-direct {p0, p5}, Lcom/android/quicksearchbox/EventLogLogger;->getCorpusLogNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, enabledCorpora:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/quicksearchbox/EventLogLogger;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/EventLogLogger;->getVersionCode()I

    move-result v1

    move v3, p2

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/quicksearchbox/EventLogTags;->writeQsbStart(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V
    .locals 6
    .parameter "id"
    .parameter "suggestionCursor"
    .parameter
    .parameter "clickType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/quicksearchbox/SuggestionCursor;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p4, queriedCorpora:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/quicksearchbox/Corpus;>;"
    invoke-direct {p0, p3}, Lcom/android/quicksearchbox/EventLogLogger;->getSuggestions(Lcom/android/quicksearchbox/SuggestionCursor;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, suggestions:Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/android/quicksearchbox/EventLogLogger;->getCorpusLogNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, corpora:Ljava/lang/String;
    invoke-interface {p3}, Lcom/android/quicksearchbox/SuggestionCursor;->getUserQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, numChars:I
    move-wide v0, p1

    move v5, p5

    .line 75
    invoke-static/range {v0 .. v5}, Lcom/android/quicksearchbox/EventLogTags;->writeQsbClick(JLjava/lang/String;Ljava/lang/String;II)V

    .line 77
    return-void
.end method

.method public logVoiceSearch(Lcom/android/quicksearchbox/Corpus;)V
    .locals 1
    .parameter "corpus"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/EventLogLogger;->getCorpusLogName(Lcom/android/quicksearchbox/Corpus;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, corpusName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/quicksearchbox/EventLogTags;->writeQsbVoiceSearch(Ljava/lang/String;)V

    .line 87
    return-void
.end method
