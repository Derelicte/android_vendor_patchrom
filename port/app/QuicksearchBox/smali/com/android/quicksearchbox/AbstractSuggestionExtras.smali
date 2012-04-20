.class public abstract Lcom/android/quicksearchbox/AbstractSuggestionExtras;
.super Ljava/lang/Object;
.source "AbstractSuggestionExtras.java"

# interfaces
.implements Lcom/android/quicksearchbox/SuggestionExtras;


# instance fields
.field private final mMore:Lcom/android/quicksearchbox/SuggestionExtras;


# direct methods
.method protected constructor <init>(Lcom/android/quicksearchbox/SuggestionExtras;)V
    .locals 0
    .parameter "more"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/quicksearchbox/AbstractSuggestionExtras;->mMore:Lcom/android/quicksearchbox/SuggestionExtras;

    .line 32
    return-void
.end method


# virtual methods
.method protected abstract doGetExtra(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract doGetExtraColumnNames()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "columnName"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/AbstractSuggestionExtras;->doGetExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, extra:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/quicksearchbox/AbstractSuggestionExtras;->mMore:Lcom/android/quicksearchbox/SuggestionExtras;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/quicksearchbox/AbstractSuggestionExtras;->mMore:Lcom/android/quicksearchbox/SuggestionExtras;

    invoke-interface {v1, p1}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    return-object v0
.end method

.method public getExtraColumnNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 36
    .local v0, columns:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionExtras;->doGetExtraColumnNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 37
    iget-object v1, p0, Lcom/android/quicksearchbox/AbstractSuggestionExtras;->mMore:Lcom/android/quicksearchbox/SuggestionExtras;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/android/quicksearchbox/AbstractSuggestionExtras;->mMore:Lcom/android/quicksearchbox/SuggestionExtras;

    invoke-interface {v1}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtraColumnNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 40
    :cond_0
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/android/quicksearchbox/JsonBackedSuggestionExtras;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/JsonBackedSuggestionExtras;-><init>(Lcom/android/quicksearchbox/SuggestionExtras;)V

    invoke-virtual {v0}, Lcom/android/quicksearchbox/JsonBackedSuggestionExtras;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
