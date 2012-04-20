.class public Lcom/android/quicksearchbox/WebPromoter;
.super Ljava/lang/Object;
.source "WebPromoter.java"

# interfaces
.implements Lcom/android/quicksearchbox/Promoter;


# instance fields
.field private final mMaxShortcuts:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "maxShortcuts"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/quicksearchbox/WebPromoter;->mMaxShortcuts:I

    .line 31
    return-void
.end method


# virtual methods
.method public pickPromoted(Lcom/android/quicksearchbox/Suggestions;ILcom/android/quicksearchbox/ListSuggestionCursor;)V
    .locals 8
    .parameter "suggestions"
    .parameter "maxPromoted"
    .parameter "promoted"

    .prologue
    const/4 v6, 0x0

    .line 36
    invoke-virtual {p1}, Lcom/android/quicksearchbox/Suggestions;->getShortcuts()Lcom/android/quicksearchbox/ShortcutCursor;

    move-result-object v3

    .line 37
    .local v3, shortcuts:Lcom/android/quicksearchbox/SuggestionCursor;
    if-nez v3, :cond_1

    move v2, v6

    .line 39
    .local v2, shortcutCount:I
    :goto_0
    iget v7, p0, Lcom/android/quicksearchbox/WebPromoter;->mMaxShortcuts:I

    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 40
    .local v1, maxShortcutCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {p3}, Lcom/android/quicksearchbox/ListSuggestionCursor;->getCount()I

    move-result v7

    if-ge v7, v1, :cond_2

    .line 41
    invoke-interface {v3, v0}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 42
    invoke-interface {v3}, Lcom/android/quicksearchbox/SuggestionCursor;->isWebSearchSuggestion()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 44
    new-instance v7, Lcom/android/quicksearchbox/SuggestionPosition;

    invoke-direct {v7, v3, v0}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    invoke-virtual {p3, v7}, Lcom/android/quicksearchbox/ListSuggestionCursor;->add(Lcom/android/quicksearchbox/Suggestion;)Z

    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    .end local v0           #i:I
    .end local v1           #maxShortcutCount:I
    .end local v2           #shortcutCount:I
    :cond_1
    invoke-interface {v3}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v2

    goto :goto_0

    .line 51
    .restart local v0       #i:I
    .restart local v1       #maxShortcutCount:I
    .restart local v2       #shortcutCount:I
    :cond_2
    invoke-virtual {p1}, Lcom/android/quicksearchbox/Suggestions;->getWebResult()Lcom/android/quicksearchbox/CorpusResult;

    move-result-object v5

    .line 52
    .local v5, webResult:Lcom/android/quicksearchbox/CorpusResult;
    if-nez v5, :cond_4

    move v4, v6

    .line 54
    .local v4, webCount:I
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_5

    invoke-virtual {p3}, Lcom/android/quicksearchbox/ListSuggestionCursor;->getCount()I

    move-result v6

    if-ge v6, p2, :cond_5

    .line 55
    invoke-interface {v5, v0}, Lcom/android/quicksearchbox/CorpusResult;->moveTo(I)V

    .line 56
    invoke-interface {v5}, Lcom/android/quicksearchbox/CorpusResult;->isWebSearchSuggestion()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 58
    new-instance v6, Lcom/android/quicksearchbox/SuggestionPosition;

    invoke-direct {v6, v5, v0}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    invoke-virtual {p3, v6}, Lcom/android/quicksearchbox/ListSuggestionCursor;->add(Lcom/android/quicksearchbox/Suggestion;)Z

    .line 54
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 52
    .end local v4           #webCount:I
    :cond_4
    invoke-interface {v5}, Lcom/android/quicksearchbox/CorpusResult;->getCount()I

    move-result v4

    goto :goto_2

    .line 63
    .restart local v4       #webCount:I
    :cond_5
    return-void
.end method
