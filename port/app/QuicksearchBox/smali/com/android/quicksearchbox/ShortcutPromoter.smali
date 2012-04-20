.class public Lcom/android/quicksearchbox/ShortcutPromoter;
.super Lcom/android/quicksearchbox/AbstractPromoter;
.source "ShortcutPromoter.java"


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/Promoter;Lcom/android/quicksearchbox/SuggestionFilter;)V
    .locals 0
    .parameter "config"
    .parameter "next"
    .parameter "filter"

    .prologue
    .line 30
    invoke-direct {p0, p3, p2, p1}, Lcom/android/quicksearchbox/AbstractPromoter;-><init>(Lcom/android/quicksearchbox/SuggestionFilter;Lcom/android/quicksearchbox/Promoter;Lcom/android/quicksearchbox/Config;)V

    .line 31
    return-void
.end method


# virtual methods
.method public doPickPromoted(Lcom/android/quicksearchbox/Suggestions;ILcom/android/quicksearchbox/ListSuggestionCursor;)V
    .locals 1
    .parameter "suggestions"
    .parameter "maxPromoted"
    .parameter "promoted"

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/android/quicksearchbox/Suggestions;->getShortcuts()Lcom/android/quicksearchbox/ShortcutCursor;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/quicksearchbox/ShortcutPromoter;->promoteShortcuts(Lcom/android/quicksearchbox/SuggestionCursor;ILcom/android/quicksearchbox/ListSuggestionCursor;)V

    .line 37
    return-void
.end method

.method promoteShortcuts(Lcom/android/quicksearchbox/SuggestionCursor;ILcom/android/quicksearchbox/ListSuggestionCursor;)V
    .locals 7
    .parameter "shortcuts"
    .parameter "maxPromoted"
    .parameter "promoted"

    .prologue
    .line 42
    if-nez p1, :cond_1

    const/4 v3, 0x0

    .line 43
    .local v3, shortcutCount:I
    :goto_0
    if-nez v3, :cond_2

    .line 56
    :cond_0
    return-void

    .line 42
    .end local v3           #shortcutCount:I
    :cond_1
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v3

    goto :goto_0

    .line 44
    .restart local v3       #shortcutCount:I
    :cond_2
    invoke-static {v3}, Lcom/google/common/collect/HashMultiset;->create(I)Lcom/google/common/collect/HashMultiset;

    move-result-object v5

    .line 45
    .local v5, sourceShortcutCounts:Lcom/google/common/collect/HashMultiset;,"Lcom/google/common/collect/HashMultiset<Lcom/android/quicksearchbox/Source;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_0

    invoke-virtual {p3}, Lcom/android/quicksearchbox/ListSuggestionCursor;->getCount()I

    move-result v6

    if-ge v6, p2, :cond_0

    .line 46
    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 47
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v4

    .line 48
    .local v4, source:Lcom/android/quicksearchbox/Source;
    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ShortcutPromoter;->accept(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 49
    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/google/common/collect/HashMultiset;->add(Ljava/lang/Object;I)I

    move-result v2

    .line 50
    .local v2, prevCount:I
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutPromoter;->getConfig()Lcom/android/quicksearchbox/Config;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/quicksearchbox/Source;->getMaxShortcuts(Lcom/android/quicksearchbox/Config;)I

    move-result v1

    .line 51
    .local v1, maxShortcuts:I
    if-ge v2, v1, :cond_3

    .line 52
    new-instance v6, Lcom/android/quicksearchbox/SuggestionPosition;

    invoke-direct {v6, p1}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;)V

    invoke-virtual {p3, v6}, Lcom/android/quicksearchbox/ListSuggestionCursor;->add(Lcom/android/quicksearchbox/Suggestion;)Z

    .line 45
    .end local v1           #maxShortcuts:I
    .end local v2           #prevCount:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
