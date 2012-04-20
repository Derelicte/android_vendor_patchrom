.class public Lcom/android/quicksearchbox/SingleCorpusPromoter;
.super Ljava/lang/Object;
.source "SingleCorpusPromoter.java"

# interfaces
.implements Lcom/android/quicksearchbox/Promoter;


# instance fields
.field private final mAllowedSources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCorpus:Lcom/android/quicksearchbox/Corpus;

.field private final mMaxShortcuts:I


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Corpus;I)V
    .locals 4
    .parameter "corpus"
    .parameter "maxShortcuts"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/quicksearchbox/SingleCorpusPromoter;->mCorpus:Lcom/android/quicksearchbox/Corpus;

    .line 34
    iput p2, p0, Lcom/android/quicksearchbox/SingleCorpusPromoter;->mMaxShortcuts:I

    .line 35
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/quicksearchbox/SingleCorpusPromoter;->mAllowedSources:Ljava/util/Set;

    .line 36
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getSources()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/Source;

    .line 37
    .local v1, source:Lcom/android/quicksearchbox/Source;
    iget-object v2, p0, Lcom/android/quicksearchbox/SingleCorpusPromoter;->mAllowedSources:Ljava/util/Set;

    invoke-interface {v1}, Lcom/android/quicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    .end local v1           #source:Lcom/android/quicksearchbox/Source;
    :cond_0
    return-void
.end method

.method private promoteUntilFull(Lcom/android/quicksearchbox/SuggestionCursor;ILcom/android/quicksearchbox/ListSuggestionCursor;)V
    .locals 3
    .parameter "c"
    .parameter "maxSize"
    .parameter "promoted"

    .prologue
    .line 52
    if-nez p1, :cond_1

    .line 60
    :cond_0
    return-void

    .line 53
    :cond_1
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v0

    .line 54
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p3}, Lcom/android/quicksearchbox/ListSuggestionCursor;->getCount()I

    move-result v2

    if-ge v2, p2, :cond_0

    .line 55
    invoke-interface {p1, v1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SingleCorpusPromoter;->accept(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    new-instance v2, Lcom/android/quicksearchbox/SuggestionPosition;

    invoke-direct {v2, p1, v1}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    invoke-virtual {p3, v2}, Lcom/android/quicksearchbox/ListSuggestionCursor;->add(Lcom/android/quicksearchbox/Suggestion;)Z

    .line 54
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected accept(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/quicksearchbox/SingleCorpusPromoter;->mAllowedSources:Ljava/util/Set;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/quicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public pickPromoted(Lcom/android/quicksearchbox/Suggestions;ILcom/android/quicksearchbox/ListSuggestionCursor;)V
    .locals 3
    .parameter "suggestions"
    .parameter "maxPromoted"
    .parameter "promoted"

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/android/quicksearchbox/Suggestions;->getShortcuts()Lcom/android/quicksearchbox/ShortcutCursor;

    move-result-object v1

    .line 45
    .local v1, shortcuts:Lcom/android/quicksearchbox/SuggestionCursor;
    iget v2, p0, Lcom/android/quicksearchbox/SingleCorpusPromoter;->mMaxShortcuts:I

    invoke-direct {p0, v1, v2, p3}, Lcom/android/quicksearchbox/SingleCorpusPromoter;->promoteUntilFull(Lcom/android/quicksearchbox/SuggestionCursor;ILcom/android/quicksearchbox/ListSuggestionCursor;)V

    .line 47
    iget-object v2, p0, Lcom/android/quicksearchbox/SingleCorpusPromoter;->mCorpus:Lcom/android/quicksearchbox/Corpus;

    invoke-virtual {p1, v2}, Lcom/android/quicksearchbox/Suggestions;->getCorpusResult(Lcom/android/quicksearchbox/Corpus;)Lcom/android/quicksearchbox/CorpusResult;

    move-result-object v0

    .line 48
    .local v0, corpusResult:Lcom/android/quicksearchbox/CorpusResult;
    invoke-direct {p0, v0, p2, p3}, Lcom/android/quicksearchbox/SingleCorpusPromoter;->promoteUntilFull(Lcom/android/quicksearchbox/SuggestionCursor;ILcom/android/quicksearchbox/ListSuggestionCursor;)V

    .line 49
    return-void
.end method
