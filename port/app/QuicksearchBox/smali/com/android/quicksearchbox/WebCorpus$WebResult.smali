.class public Lcom/android/quicksearchbox/WebCorpus$WebResult;
.super Lcom/android/quicksearchbox/MultiSourceCorpus$Result;
.source "WebCorpus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/WebCorpus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WebResult"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/WebCorpus;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/WebCorpus;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter "query"
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
    .line 170
    .local p3, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/quicksearchbox/SourceResult;>;"
    iput-object p1, p0, Lcom/android/quicksearchbox/WebCorpus$WebResult;->this$0:Lcom/android/quicksearchbox/WebCorpus;

    .line 171
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quicksearchbox/MultiSourceCorpus$Result;-><init>(Lcom/android/quicksearchbox/MultiSourceCorpus;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 172
    return-void
.end method


# virtual methods
.method public fill()V
    .locals 8

    .prologue
    .line 176
    const/4 v5, 0x0

    .line 177
    .local v5, webSearchResult:Lcom/android/quicksearchbox/SourceResult;
    const/4 v0, 0x0

    .line 178
    .local v0, browserResult:Lcom/android/quicksearchbox/SourceResult;
    invoke-virtual {p0}, Lcom/android/quicksearchbox/WebCorpus$WebResult;->getResults()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/quicksearchbox/SourceResult;

    .line 179
    .local v4, result:Lcom/android/quicksearchbox/SourceResult;
    invoke-interface {v4}, Lcom/android/quicksearchbox/SourceResult;->getSource()Lcom/android/quicksearchbox/Source;

    move-result-object v6

    iget-object v7, p0, Lcom/android/quicksearchbox/WebCorpus$WebResult;->this$0:Lcom/android/quicksearchbox/WebCorpus;

    #getter for: Lcom/android/quicksearchbox/WebCorpus;->mWebSearchSource:Lcom/android/quicksearchbox/Source;
    invoke-static {v7}, Lcom/android/quicksearchbox/WebCorpus;->access$000(Lcom/android/quicksearchbox/WebCorpus;)Lcom/android/quicksearchbox/Source;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 180
    move-object v5, v4

    goto :goto_0

    .line 182
    :cond_0
    move-object v0, v4

    goto :goto_0

    .line 185
    .end local v4           #result:Lcom/android/quicksearchbox/SourceResult;
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/quicksearchbox/SourceResult;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 186
    new-instance v6, Lcom/android/quicksearchbox/SuggestionPosition;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    invoke-virtual {p0, v6}, Lcom/android/quicksearchbox/WebCorpus$WebResult;->add(Lcom/android/quicksearchbox/Suggestion;)Z

    .line 188
    :cond_2
    if-eqz v5, :cond_3

    .line 189
    invoke-interface {v5}, Lcom/android/quicksearchbox/SourceResult;->getCount()I

    move-result v1

    .line 190
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 191
    new-instance v6, Lcom/android/quicksearchbox/SuggestionPosition;

    invoke-direct {v6, v5, v2}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    invoke-virtual {p0, v6}, Lcom/android/quicksearchbox/WebCorpus$WebResult;->add(Lcom/android/quicksearchbox/Suggestion;)Z

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 194
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_3
    return-void
.end method
