.class public Lcom/android/quicksearchbox/SingleCorpusResultsPromoter;
.super Lcom/android/quicksearchbox/SingleCorpusPromoter;
.source "SingleCorpusResultsPromoter.java"


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Corpus;I)V
    .locals 0
    .parameter "corpus"
    .parameter "maxShortcuts"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/SingleCorpusPromoter;-><init>(Lcom/android/quicksearchbox/Corpus;I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected accept(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 28
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->isWebSearchSuggestion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/quicksearchbox/SingleCorpusPromoter;->accept(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
