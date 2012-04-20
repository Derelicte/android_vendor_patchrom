.class public abstract Lcom/android/quicksearchbox/AbstractPromoter;
.super Ljava/lang/Object;
.source "AbstractPromoter.java"

# interfaces
.implements Lcom/android/quicksearchbox/Promoter;


# instance fields
.field private final mConfig:Lcom/android/quicksearchbox/Config;

.field private final mFilter:Lcom/android/quicksearchbox/SuggestionFilter;

.field private final mNext:Lcom/android/quicksearchbox/Promoter;


# direct methods
.method protected constructor <init>(Lcom/android/quicksearchbox/SuggestionFilter;Lcom/android/quicksearchbox/Promoter;Lcom/android/quicksearchbox/Config;)V
    .locals 0
    .parameter "filter"
    .parameter "next"
    .parameter "config"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/quicksearchbox/AbstractPromoter;->mFilter:Lcom/android/quicksearchbox/SuggestionFilter;

    .line 29
    iput-object p2, p0, Lcom/android/quicksearchbox/AbstractPromoter;->mNext:Lcom/android/quicksearchbox/Promoter;

    .line 30
    iput-object p3, p0, Lcom/android/quicksearchbox/AbstractPromoter;->mConfig:Lcom/android/quicksearchbox/Config;

    .line 31
    return-void
.end method


# virtual methods
.method protected accept(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/quicksearchbox/AbstractPromoter;->mFilter:Lcom/android/quicksearchbox/SuggestionFilter;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/quicksearchbox/AbstractPromoter;->mFilter:Lcom/android/quicksearchbox/SuggestionFilter;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/SuggestionFilter;->accept(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v0

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract doPickPromoted(Lcom/android/quicksearchbox/Suggestions;ILcom/android/quicksearchbox/ListSuggestionCursor;)V
.end method

.method protected getConfig()Lcom/android/quicksearchbox/Config;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/quicksearchbox/AbstractPromoter;->mConfig:Lcom/android/quicksearchbox/Config;

    return-object v0
.end method

.method public pickPromoted(Lcom/android/quicksearchbox/Suggestions;ILcom/android/quicksearchbox/ListSuggestionCursor;)V
    .locals 1
    .parameter "suggestions"
    .parameter "maxPromoted"
    .parameter "promoted"

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/AbstractPromoter;->doPickPromoted(Lcom/android/quicksearchbox/Suggestions;ILcom/android/quicksearchbox/ListSuggestionCursor;)V

    .line 36
    iget-object v0, p0, Lcom/android/quicksearchbox/AbstractPromoter;->mNext:Lcom/android/quicksearchbox/Promoter;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/quicksearchbox/AbstractPromoter;->mNext:Lcom/android/quicksearchbox/Promoter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/quicksearchbox/Promoter;->pickPromoted(Lcom/android/quicksearchbox/Suggestions;ILcom/android/quicksearchbox/ListSuggestionCursor;)V

    .line 39
    :cond_0
    return-void
.end method
