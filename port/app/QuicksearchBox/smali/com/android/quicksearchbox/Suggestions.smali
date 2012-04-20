.class public Lcom/android/quicksearchbox/Suggestions;
.super Ljava/lang/Object;
.source "Suggestions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/Suggestions$1;,
        Lcom/android/quicksearchbox/Suggestions$MyShortcutsObserver;
    }
.end annotation


# instance fields
.field private mClosed:Z

.field private final mCorpusPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCorpusResults:[Lcom/android/quicksearchbox/CorpusResult;

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mDone:Z

.field private final mExpectedCorpora:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation
.end field

.field protected final mQuery:Ljava/lang/String;

.field private mRefCount:I

.field private mShortcuts:Lcom/android/quicksearchbox/ShortcutCursor;

.field private final mShortcutsObserver:Lcom/android/quicksearchbox/Suggestions$MyShortcutsObserver;

.field private mWebResult:Lcom/android/quicksearchbox/CorpusResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, expectedCorpora:Ljava/util/List;,"Ljava/util/List<Lcom/android/quicksearchbox/Corpus;>;"
    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v3, p0, Lcom/android/quicksearchbox/Suggestions;->mClosed:Z

    .line 45
    new-instance v1, Lcom/android/quicksearchbox/Suggestions$MyShortcutsObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/quicksearchbox/Suggestions$MyShortcutsObserver;-><init>(Lcom/android/quicksearchbox/Suggestions;Lcom/android/quicksearchbox/Suggestions$1;)V

    iput-object v1, p0, Lcom/android/quicksearchbox/Suggestions;->mShortcutsObserver:Lcom/android/quicksearchbox/Suggestions$MyShortcutsObserver;

    .line 51
    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/android/quicksearchbox/Suggestions;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 67
    iput v3, p0, Lcom/android/quicksearchbox/Suggestions;->mRefCount:I

    .line 69
    iput-boolean v3, p0, Lcom/android/quicksearchbox/Suggestions;->mDone:Z

    .line 72
    iput-object p1, p0, Lcom/android/quicksearchbox/Suggestions;->mQuery:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/android/quicksearchbox/Suggestions;->mExpectedCorpora:Ljava/util/List;

    .line 74
    iget-object v1, p0, Lcom/android/quicksearchbox/Suggestions;->mExpectedCorpora:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/quicksearchbox/CorpusResult;

    iput-object v1, p0, Lcom/android/quicksearchbox/Suggestions;->mCorpusResults:[Lcom/android/quicksearchbox/CorpusResult;

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/quicksearchbox/Suggestions;->mCorpusPositions:Ljava/util/HashMap;

    .line 78
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/quicksearchbox/Suggestions;->mExpectedCorpora:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/quicksearchbox/Suggestions;->mCorpusPositions:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/quicksearchbox/Suggestions;->mExpectedCorpora:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/Corpus;

    invoke-interface {v1}, Lcom/android/quicksearchbox/Corpus;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method private close()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 255
    iget-boolean v4, p0, Lcom/android/quicksearchbox/Suggestions;->mClosed:Z

    if-eqz v4, :cond_0

    .line 256
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Double close()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 258
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/quicksearchbox/Suggestions;->mClosed:Z

    .line 259
    iget-object v4, p0, Lcom/android/quicksearchbox/Suggestions;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v4}, Landroid/database/DataSetObservable;->unregisterAll()V

    .line 260
    iget-object v4, p0, Lcom/android/quicksearchbox/Suggestions;->mShortcuts:Lcom/android/quicksearchbox/ShortcutCursor;

    if-eqz v4, :cond_1

    .line 261
    iget-object v4, p0, Lcom/android/quicksearchbox/Suggestions;->mShortcuts:Lcom/android/quicksearchbox/ShortcutCursor;

    invoke-virtual {v4}, Lcom/android/quicksearchbox/ShortcutCursor;->close()V

    .line 262
    iput-object v5, p0, Lcom/android/quicksearchbox/Suggestions;->mShortcuts:Lcom/android/quicksearchbox/ShortcutCursor;

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/Suggestions;->mCorpusResults:[Lcom/android/quicksearchbox/CorpusResult;

    .local v0, arr$:[Lcom/android/quicksearchbox/CorpusResult;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 266
    .local v3, result:Lcom/android/quicksearchbox/CorpusResult;
    if-eqz v3, :cond_2

    .line 267
    invoke-interface {v3}, Lcom/android/quicksearchbox/CorpusResult;->close()V

    .line 265
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v3           #result:Lcom/android/quicksearchbox/CorpusResult;
    :cond_3
    iget-object v4, p0, Lcom/android/quicksearchbox/Suggestions;->mCorpusResults:[Lcom/android/quicksearchbox/CorpusResult;

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method private countCorpusResults()I
    .locals 3

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/quicksearchbox/Suggestions;->mCorpusResults:[Lcom/android/quicksearchbox/CorpusResult;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/android/quicksearchbox/Suggestions;->mCorpusResults:[Lcom/android/quicksearchbox/CorpusResult;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 179
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_1
    return v0
.end method

.method private refreshShortcuts(Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 2
    .parameter "promoted"

    .prologue
    .line 283
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 284
    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 285
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->isSuggestionShortcut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/quicksearchbox/Suggestions;->getShortcuts()Lcom/android/quicksearchbox/ShortcutCursor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/quicksearchbox/ShortcutCursor;->refresh(Lcom/android/quicksearchbox/Suggestion;)V

    .line 283
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_1
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/quicksearchbox/Suggestions;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/quicksearchbox/Suggestions;->mRefCount:I

    .line 89
    return-void
.end method

.method public addCorpusResults(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/CorpusResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, corpusResults:Ljava/util/List;,"Ljava/util/List<Lcom/android/quicksearchbox/CorpusResult;>;"
    invoke-virtual {p0}, Lcom/android/quicksearchbox/Suggestions;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/CorpusResult;

    .line 194
    .local v0, corpusResult:Lcom/android/quicksearchbox/CorpusResult;
    invoke-interface {v0}, Lcom/android/quicksearchbox/CorpusResult;->close()V

    goto :goto_0

    .line 199
    .end local v0           #corpusResult:Lcom/android/quicksearchbox/CorpusResult;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/CorpusResult;

    .line 204
    .restart local v0       #corpusResult:Lcom/android/quicksearchbox/CorpusResult;
    iget-object v3, p0, Lcom/android/quicksearchbox/Suggestions;->mQuery:Ljava/lang/String;

    invoke-interface {v0}, Lcom/android/quicksearchbox/CorpusResult;->getUserQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 205
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got result for wrong query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/quicksearchbox/Suggestions;->mQuery:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/quicksearchbox/CorpusResult;->getUserQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 208
    :cond_2
    iget-object v3, p0, Lcom/android/quicksearchbox/Suggestions;->mCorpusPositions:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/android/quicksearchbox/CorpusResult;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/quicksearchbox/Corpus;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 209
    .local v2, pos:Ljava/lang/Integer;
    if-nez v2, :cond_3

    .line 210
    const-string v3, "QSB.Suggestions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got unexpected CorpusResult from corpus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/quicksearchbox/CorpusResult;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/quicksearchbox/Corpus;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-interface {v0}, Lcom/android/quicksearchbox/CorpusResult;->close()V

    goto :goto_1

    .line 214
    :cond_3
    iget-object v3, p0, Lcom/android/quicksearchbox/Suggestions;->mCorpusResults:[Lcom/android/quicksearchbox/CorpusResult;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput-object v0, v3, v4

    .line 215
    invoke-interface {v0}, Lcom/android/quicksearchbox/CorpusResult;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/quicksearchbox/Corpus;->isWebCorpus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    iput-object v0, p0, Lcom/android/quicksearchbox/Suggestions;->mWebResult:Lcom/android/quicksearchbox/CorpusResult;

    goto/16 :goto_1

    .line 220
    .end local v0           #corpusResult:Lcom/android/quicksearchbox/CorpusResult;
    .end local v2           #pos:Ljava/lang/Integer;
    :cond_4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/Suggestions;->notifyDataSetChanged()V

    .line 221
    :cond_5
    return-void
.end method

.method protected buildPromoted(Lcom/android/quicksearchbox/Promoter;I)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 2
    .parameter "promoter"
    .parameter "maxPromoted"

    .prologue
    .line 309
    new-instance v0, Lcom/android/quicksearchbox/ListSuggestionCursorNoDuplicates;

    iget-object v1, p0, Lcom/android/quicksearchbox/Suggestions;->mQuery:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/ListSuggestionCursorNoDuplicates;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, promoted:Lcom/android/quicksearchbox/ListSuggestionCursor;
    if-nez p1, :cond_0

    .line 318
    :goto_0
    return-object v0

    .line 313
    :cond_0
    invoke-interface {p1, p0, p2, v0}, Lcom/android/quicksearchbox/Promoter;->pickPromoted(Lcom/android/quicksearchbox/Suggestions;ILcom/android/quicksearchbox/ListSuggestionCursor;)V

    goto :goto_0
.end method

.method public done()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quicksearchbox/Suggestions;->mDone:Z

    .line 166
    return-void
.end method

.method public expectsCorpus(Lcom/android/quicksearchbox/Corpus;)Z
    .locals 3
    .parameter "corpus"

    .prologue
    .line 111
    iget-object v2, p0, Lcom/android/quicksearchbox/Suggestions;->mExpectedCorpora:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Corpus;

    .line 112
    .local v0, expectedCorpus:Lcom/android/quicksearchbox/Corpus;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 114
    .end local v0           #expectedCorpus:Lcom/android/quicksearchbox/Corpus;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/android/quicksearchbox/Suggestions;->mClosed:Z

    if-nez v0, :cond_0

    .line 294
    const-string v0, "QSB.Suggestions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LEAK! Finalized without being closed: Suggestions["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/Suggestions;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    return-void
.end method

.method public getCorpusResult(Lcom/android/quicksearchbox/Corpus;)Lcom/android/quicksearchbox/CorpusResult;
    .locals 5
    .parameter "corpus"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/quicksearchbox/Suggestions;->mCorpusResults:[Lcom/android/quicksearchbox/CorpusResult;

    .local v0, arr$:[Lcom/android/quicksearchbox/CorpusResult;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 337
    .local v3, result:Lcom/android/quicksearchbox/CorpusResult;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/android/quicksearchbox/CorpusResult;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 341
    .end local v3           #result:Lcom/android/quicksearchbox/CorpusResult;
    :goto_1
    return-object v3

    .line 336
    .restart local v3       #result:Lcom/android/quicksearchbox/CorpusResult;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v3           #result:Lcom/android/quicksearchbox/CorpusResult;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getCorpusResults()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/quicksearchbox/CorpusResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/quicksearchbox/Suggestions;->mCorpusResults:[Lcom/android/quicksearchbox/CorpusResult;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 327
    .local v1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/quicksearchbox/CorpusResult;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/quicksearchbox/Suggestions;->mCorpusResults:[Lcom/android/quicksearchbox/CorpusResult;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/android/quicksearchbox/Suggestions;->mCorpusResults:[Lcom/android/quicksearchbox/CorpusResult;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/android/quicksearchbox/Suggestions;->mCorpusResults:[Lcom/android/quicksearchbox/CorpusResult;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_1
    return-object v1
.end method

.method public getExpectedCorpora()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/quicksearchbox/Suggestions;->mExpectedCorpora:Ljava/util/List;

    return-object v0
.end method

.method public getExpectedResultCount()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/quicksearchbox/Suggestions;->mExpectedCorpora:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIncludedCorpora()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 124
    .local v1, corpora:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/quicksearchbox/Corpus;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/Suggestions;->mCorpusResults:[Lcom/android/quicksearchbox/CorpusResult;

    .local v0, arr$:[Lcom/android/quicksearchbox/CorpusResult;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 125
    .local v4, result:Lcom/android/quicksearchbox/CorpusResult;
    if-eqz v4, :cond_0

    .line 126
    invoke-interface {v4}, Lcom/android/quicksearchbox/CorpusResult;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v4           #result:Lcom/android/quicksearchbox/CorpusResult;
    :cond_1
    return-object v1
.end method

.method public getPromoted(Lcom/android/quicksearchbox/Promoter;I)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1
    .parameter "promoter"
    .parameter "maxPromoted"

    .prologue
    .line 303
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/Suggestions;->buildPromoted(Lcom/android/quicksearchbox/Promoter;I)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 304
    .local v0, promoted:Lcom/android/quicksearchbox/SuggestionCursor;
    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/Suggestions;->refreshShortcuts(Lcom/android/quicksearchbox/SuggestionCursor;)V

    .line 305
    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/quicksearchbox/Suggestions;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCount()I
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/quicksearchbox/Suggestions;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called getSourceCount() when closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/android/quicksearchbox/Suggestions;->countCorpusResults()I

    move-result v0

    return v0
.end method

.method public getShortcuts()Lcom/android/quicksearchbox/ShortcutCursor;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/quicksearchbox/Suggestions;->mShortcuts:Lcom/android/quicksearchbox/ShortcutCursor;

    return-object v0
.end method

.method public getWebResult()Lcom/android/quicksearchbox/CorpusResult;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/quicksearchbox/Suggestions;->mWebResult:Lcom/android/quicksearchbox/CorpusResult;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/quicksearchbox/Suggestions;->mClosed:Z

    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/quicksearchbox/Suggestions;->mDone:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/quicksearchbox/Suggestions;->countCorpusResults()I

    move-result v0

    iget-object v1, p0, Lcom/android/quicksearchbox/Suggestions;->mExpectedCorpora:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/quicksearchbox/Suggestions;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 248
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/quicksearchbox/Suggestions;->mClosed:Z

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "registerDataSetObserver() when closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/Suggestions;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/quicksearchbox/Suggestions;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/quicksearchbox/Suggestions;->mRefCount:I

    .line 93
    iget v0, p0, Lcom/android/quicksearchbox/Suggestions;->mRefCount:I

    if-gtz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/android/quicksearchbox/Suggestions;->close()V

    .line 96
    :cond_0
    return-void
.end method

.method public setShortcuts(Lcom/android/quicksearchbox/ShortcutCursor;)V
    .locals 3
    .parameter "shortcuts"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/quicksearchbox/Suggestions;->mShortcuts:Lcom/android/quicksearchbox/ShortcutCursor;

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got duplicate shortcuts: old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quicksearchbox/Suggestions;->mShortcuts:Lcom/android/quicksearchbox/ShortcutCursor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    if-nez p1, :cond_1

    .line 158
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/Suggestions;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {p1}, Lcom/android/quicksearchbox/ShortcutCursor;->close()V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/quicksearchbox/Suggestions;->mQuery:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ShortcutCursor;->getUserQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got shortcuts for wrong query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quicksearchbox/Suggestions;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ShortcutCursor;->getUserQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_3
    iput-object p1, p0, Lcom/android/quicksearchbox/Suggestions;->mShortcuts:Lcom/android/quicksearchbox/ShortcutCursor;

    .line 154
    if-eqz p1, :cond_4

    .line 155
    iget-object v0, p0, Lcom/android/quicksearchbox/Suggestions;->mShortcuts:Lcom/android/quicksearchbox/ShortcutCursor;

    iget-object v1, p0, Lcom/android/quicksearchbox/Suggestions;->mShortcutsObserver:Lcom/android/quicksearchbox/Suggestions$MyShortcutsObserver;

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ShortcutCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 157
    :cond_4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/Suggestions;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suggestions@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{expectedCorpora="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/Suggestions;->mExpectedCorpora:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",countCorpusResults()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/quicksearchbox/Suggestions;->countCorpusResults()I

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

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/quicksearchbox/Suggestions;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 240
    return-void
.end method
