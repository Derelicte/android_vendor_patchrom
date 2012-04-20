.class Lcom/android/quicksearchbox/ShouldQueryStrategy;
.super Ljava/lang/Object;
.source "ShouldQueryStrategy.java"


# instance fields
.field private final mConfig:Lcom/android/quicksearchbox/Config;

.field private final mEmptyCorpora:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Config;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/android/quicksearchbox/ShouldQueryStrategy;->mLastQuery:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/ShouldQueryStrategy;->mEmptyCorpora:Ljava/util/HashMap;

    .line 51
    iput-object p1, p0, Lcom/android/quicksearchbox/ShouldQueryStrategy;->mConfig:Lcom/android/quicksearchbox/Config;

    .line 52
    return-void
.end method

.method private updateQuery(Ljava/lang/String;)V
    .locals 3
    .parameter "query"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/quicksearchbox/ShouldQueryStrategy;->mLastQuery:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/quicksearchbox/ShouldQueryStrategy;->mLastQuery:Ljava/lang/String;

    .line 105
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/android/quicksearchbox/ShouldQueryStrategy;->mLastQuery:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    iget-object v1, p0, Lcom/android/quicksearchbox/ShouldQueryStrategy;->mEmptyCorpora:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 95
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/quicksearchbox/Corpus;Ljava/lang/Integer;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 102
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/quicksearchbox/Corpus;Ljava/lang/Integer;>;>;"
    :cond_3
    iget-object v1, p0, Lcom/android/quicksearchbox/ShouldQueryStrategy;->mEmptyCorpora:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public onZeroResults(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;)V
    .locals 2
    .parameter "corpus"
    .parameter "query"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/quicksearchbox/ShouldQueryStrategy;->mLastQuery:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->queryAfterZeroResults()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/quicksearchbox/ShouldQueryStrategy;->mEmptyCorpora:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    return-void
.end method

.method public shouldQueryCorpus(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;)Z
    .locals 3
    .parameter "corpus"
    .parameter "query"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p2}, Lcom/android/quicksearchbox/ShouldQueryStrategy;->updateQuery(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->isWebCorpus()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/quicksearchbox/ShouldQueryStrategy;->mConfig:Lcom/android/quicksearchbox/Config;

    invoke-virtual {v1}, Lcom/android/quicksearchbox/Config;->showSuggestionsForZeroQuery()Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getQueryThreshold()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 65
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->queryAfterZeroResults()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/quicksearchbox/ShouldQueryStrategy;->mEmptyCorpora:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
