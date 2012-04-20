.class public interface abstract Lcom/android/quicksearchbox/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# virtual methods
.method public abstract logExit(Lcom/android/quicksearchbox/SuggestionCursor;I)V
.end method

.method public abstract logLatency(Lcom/android/quicksearchbox/CorpusResult;)V
.end method

.method public abstract logSearch(Lcom/android/quicksearchbox/Corpus;II)V
.end method

.method public abstract logStart(IILjava/lang/String;Lcom/android/quicksearchbox/Corpus;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcom/android/quicksearchbox/Corpus;",
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/quicksearchbox/SuggestionCursor;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract logVoiceSearch(Lcom/android/quicksearchbox/Corpus;)V
.end method
