.class public Lcom/android/quicksearchbox/SingleSourceCorpusResult;
.super Lcom/android/quicksearchbox/SuggestionCursorWrapper;
.source "SingleSourceCorpusResult.java"

# interfaces
.implements Lcom/android/quicksearchbox/CorpusResult;


# instance fields
.field private final mCorpus:Lcom/android/quicksearchbox/Corpus;

.field private final mLatency:I


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 0
    .parameter "corpus"
    .parameter "userQuery"
    .parameter "cursor"
    .parameter "latency"

    .prologue
    .line 31
    invoke-direct {p0, p2, p3}, Lcom/android/quicksearchbox/SuggestionCursorWrapper;-><init>(Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V

    .line 32
    iput-object p1, p0, Lcom/android/quicksearchbox/SingleSourceCorpusResult;->mCorpus:Lcom/android/quicksearchbox/Corpus;

    .line 33
    iput p4, p0, Lcom/android/quicksearchbox/SingleSourceCorpusResult;->mLatency:I

    .line 34
    return-void
.end method


# virtual methods
.method public getCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/quicksearchbox/SingleSourceCorpusResult;->mCorpus:Lcom/android/quicksearchbox/Corpus;

    return-object v0
.end method

.method public getLatency()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/android/quicksearchbox/SingleSourceCorpusResult;->mLatency:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SingleSourceCorpusResult;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SingleSourceCorpusResult;->getUserQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
