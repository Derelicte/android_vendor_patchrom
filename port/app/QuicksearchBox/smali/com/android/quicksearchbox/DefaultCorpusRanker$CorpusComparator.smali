.class Lcom/android/quicksearchbox/DefaultCorpusRanker$CorpusComparator;
.super Ljava/lang/Object;
.source "DefaultCorpusRanker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/DefaultCorpusRanker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CorpusComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/quicksearchbox/Corpus;",
        ">;"
    }
.end annotation


# instance fields
.field private final mClickScores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, clickScores:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/quicksearchbox/DefaultCorpusRanker$CorpusComparator;->mClickScores:Ljava/util/Map;

    .line 103
    return-void
.end method

.method private getClickScore(Lcom/android/quicksearchbox/Corpus;)I
    .locals 4
    .parameter "corpus"

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v2, p0, Lcom/android/quicksearchbox/DefaultCorpusRanker$CorpusComparator;->mClickScores:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v1

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/android/quicksearchbox/DefaultCorpusRanker$CorpusComparator;->mClickScores:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 139
    .local v0, clickScore:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private getCorpusScore(Lcom/android/quicksearchbox/Corpus;)I
    .locals 1
    .parameter "corpus"

    .prologue
    .line 129
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->isWebCorpus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const v0, 0x7fffffff

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/DefaultCorpusRanker$CorpusComparator;->getClickScore(Lcom/android/quicksearchbox/Corpus;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/android/quicksearchbox/Corpus;Lcom/android/quicksearchbox/Corpus;)I
    .locals 5
    .parameter "corpus1"
    .parameter "corpus2"

    .prologue
    .line 106
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->isCorpusDefaultEnabled()Z

    move-result v0

    .line 107
    .local v0, corpus1IsDefault:Z
    invoke-interface {p2}, Lcom/android/quicksearchbox/Corpus;->isCorpusDefaultEnabled()Z

    move-result v1

    .line 109
    .local v1, corpus2IsDefault:Z
    if-eq v0, v1, :cond_1

    .line 111
    if-eqz v0, :cond_0

    const/4 v3, -0x1

    .line 121
    :goto_0
    return v3

    .line 111
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 115
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/quicksearchbox/DefaultCorpusRanker$CorpusComparator;->getCorpusScore(Lcom/android/quicksearchbox/Corpus;)I

    move-result v3

    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/DefaultCorpusRanker$CorpusComparator;->getCorpusScore(Lcom/android/quicksearchbox/Corpus;)I

    move-result v4

    sub-int v2, v3, v4

    .line 116
    .local v2, scoreDiff:I
    if-eqz v2, :cond_2

    move v3, v2

    .line 117
    goto :goto_0

    .line 121
    :cond_2
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/android/quicksearchbox/Corpus;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    check-cast p1, Lcom/android/quicksearchbox/Corpus;

    .end local p1
    check-cast p2, Lcom/android/quicksearchbox/Corpus;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/DefaultCorpusRanker$CorpusComparator;->compare(Lcom/android/quicksearchbox/Corpus;Lcom/android/quicksearchbox/Corpus;)I

    move-result v0

    return v0
.end method
