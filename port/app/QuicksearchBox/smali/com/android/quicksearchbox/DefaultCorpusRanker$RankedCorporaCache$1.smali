.class Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache$1;
.super Ljava/lang/Object;
.source "DefaultCorpusRanker.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/Consumer",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache$1;->this$1:Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache$1;->consume(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public consume(Ljava/util/Map;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, clickScores:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache$1;->this$1:Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;

    iget-object v2, v2, Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;->this$0:Lcom/android/quicksearchbox/DefaultCorpusRanker;

    #getter for: Lcom/android/quicksearchbox/DefaultCorpusRanker;->mCorpora:Lcom/android/quicksearchbox/Corpora;
    invoke-static {v2}, Lcom/android/quicksearchbox/DefaultCorpusRanker;->access$200(Lcom/android/quicksearchbox/DefaultCorpusRanker;)Lcom/android/quicksearchbox/Corpora;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/quicksearchbox/Corpora;->getCorporaInAll()Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, enabledCorpora:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/quicksearchbox/Corpus;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    .local v1, ordered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/quicksearchbox/Corpus;>;"
    new-instance v2, Lcom/android/quicksearchbox/DefaultCorpusRanker$CorpusComparator;

    invoke-direct {v2, p1}, Lcom/android/quicksearchbox/DefaultCorpusRanker$CorpusComparator;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 90
    iget-object v2, p0, Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache$1;->this$1:Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;

    #calls: Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;->store(Ljava/lang/Object;)V
    invoke-static {v2, v1}, Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;->access$300(Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;Ljava/lang/Object;)V

    .line 91
    const/4 v2, 0x1

    return v2
.end method
