.class public Lcom/android/quicksearchbox/MultiSourceCorpus$Result;
.super Lcom/android/quicksearchbox/ListSuggestionCursor;
.source "MultiSourceCorpus.java"

# interfaces
.implements Lcom/android/quicksearchbox/CorpusResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/MultiSourceCorpus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Result"
.end annotation


# instance fields
.field private final mLatency:I

.field private final mResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/quicksearchbox/SourceResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/quicksearchbox/MultiSourceCorpus;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/MultiSourceCorpus;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter "userQuery"
    .parameter
    .parameter "latency"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/quicksearchbox/SourceResult;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p3, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/quicksearchbox/SourceResult;>;"
    iput-object p1, p0, Lcom/android/quicksearchbox/MultiSourceCorpus$Result;->this$0:Lcom/android/quicksearchbox/MultiSourceCorpus;

    .line 168
    invoke-direct {p0, p2}, Lcom/android/quicksearchbox/ListSuggestionCursor;-><init>(Ljava/lang/String;)V

    .line 169
    iput-object p3, p0, Lcom/android/quicksearchbox/MultiSourceCorpus$Result;->mResults:Ljava/util/ArrayList;

    .line 170
    iput p4, p0, Lcom/android/quicksearchbox/MultiSourceCorpus$Result;->mLatency:I

    .line 171
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 201
    invoke-super {p0}, Lcom/android/quicksearchbox/ListSuggestionCursor;->close()V

    .line 202
    iget-object v2, p0, Lcom/android/quicksearchbox/MultiSourceCorpus$Result;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/SourceResult;

    .line 203
    .local v1, result:Lcom/android/quicksearchbox/SourceResult;
    invoke-interface {v1}, Lcom/android/quicksearchbox/SourceResult;->close()V

    goto :goto_0

    .line 205
    .end local v1           #result:Lcom/android/quicksearchbox/SourceResult;
    :cond_0
    return-void
.end method

.method public fill()V
    .locals 5

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/quicksearchbox/MultiSourceCorpus$Result;->getResults()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quicksearchbox/SourceResult;

    .line 183
    .local v3, result:Lcom/android/quicksearchbox/SourceResult;
    invoke-interface {v3}, Lcom/android/quicksearchbox/SourceResult;->getCount()I

    move-result v0

    .line 184
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 185
    invoke-interface {v3, v1}, Lcom/android/quicksearchbox/SourceResult;->moveTo(I)V

    .line 186
    new-instance v4, Lcom/android/quicksearchbox/SuggestionPosition;

    invoke-direct {v4, v3}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;)V

    invoke-virtual {p0, v4}, Lcom/android/quicksearchbox/MultiSourceCorpus$Result;->add(Lcom/android/quicksearchbox/Suggestion;)Z

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #result:Lcom/android/quicksearchbox/SourceResult;
    :cond_1
    return-void
.end method

.method public getCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/quicksearchbox/MultiSourceCorpus$Result;->this$0:Lcom/android/quicksearchbox/MultiSourceCorpus;

    return-object v0
.end method

.method public getLatency()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/android/quicksearchbox/MultiSourceCorpus$Result;->mLatency:I

    return v0
.end method

.method protected getResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/quicksearchbox/SourceResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/quicksearchbox/MultiSourceCorpus$Result;->mResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/MultiSourceCorpus$Result;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/MultiSourceCorpus$Result;->getUserQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/MultiSourceCorpus$Result;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
