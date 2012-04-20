.class public interface abstract Lcom/android/quicksearchbox/SuggestionsProvider;
.super Ljava/lang/Object;
.source "SuggestionsProvider.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getSuggestions(Ljava/lang/String;Ljava/util/List;)Lcom/android/quicksearchbox/Suggestions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)",
            "Lcom/android/quicksearchbox/Suggestions;"
        }
    .end annotation
.end method
