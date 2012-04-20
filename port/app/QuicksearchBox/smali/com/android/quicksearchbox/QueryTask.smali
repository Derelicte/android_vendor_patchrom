.class public Lcom/android/quicksearchbox/QueryTask;
.super Ljava/lang/Object;
.source "QueryTask.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/NamedTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/android/quicksearchbox/SuggestionCursor;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/NamedTask;"
    }
.end annotation


# instance fields
.field private final mConsumer:Lcom/android/quicksearchbox/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/util/Consumer",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mProvider:Lcom/android/quicksearchbox/SuggestionCursorProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/SuggestionCursorProvider",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final mQuery:Ljava/lang/String;

.field private final mQueryLimit:I

.field private final mTheOnlyOne:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/quicksearchbox/SuggestionCursorProvider;Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;Z)V
    .locals 0
    .parameter "query"
    .parameter "queryLimit"
    .parameter
    .parameter "handler"
    .parameter
    .parameter "onlyTask"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/quicksearchbox/SuggestionCursorProvider",
            "<TC;>;",
            "Landroid/os/Handler;",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<TC;>;Z)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/android/quicksearchbox/QueryTask;,"Lcom/android/quicksearchbox/QueryTask<TC;>;"
    .local p3, provider:Lcom/android/quicksearchbox/SuggestionCursorProvider;,"Lcom/android/quicksearchbox/SuggestionCursorProvider<TC;>;"
    .local p5, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/quicksearchbox/QueryTask;->mQuery:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcom/android/quicksearchbox/QueryTask;->mQueryLimit:I

    .line 56
    iput-object p3, p0, Lcom/android/quicksearchbox/QueryTask;->mProvider:Lcom/android/quicksearchbox/SuggestionCursorProvider;

    .line 57
    iput-object p4, p0, Lcom/android/quicksearchbox/QueryTask;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p5, p0, Lcom/android/quicksearchbox/QueryTask;->mConsumer:Lcom/android/quicksearchbox/util/Consumer;

    .line 59
    iput-boolean p6, p0, Lcom/android/quicksearchbox/QueryTask;->mTheOnlyOne:Z

    .line 60
    return-void
.end method

.method public static startQueries(Ljava/lang/String;ILjava/lang/Iterable;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;Z)V
    .locals 8
    .parameter "query"
    .parameter "maxResultsPerProvider"
    .parameter
    .parameter "executor"
    .parameter "handler"
    .parameter
    .parameter "onlyOneProvider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/android/quicksearchbox/SuggestionCursor;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/android/quicksearchbox/SuggestionCursorProvider",
            "<TC;>;>;",
            "Lcom/android/quicksearchbox/util/NamedTaskExecutor;",
            "Landroid/os/Handler;",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<TC;>;Z)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, providers:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/android/quicksearchbox/SuggestionCursorProvider<TC;>;>;"
    .local p5, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<TC;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/SuggestionCursorProvider;

    .local v2, provider:Lcom/android/quicksearchbox/SuggestionCursorProvider;,"Lcom/android/quicksearchbox/SuggestionCursorProvider<TC;>;"
    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 84
    invoke-static/range {v0 .. v6}, Lcom/android/quicksearchbox/QueryTask;->startQuery(Ljava/lang/String;ILcom/android/quicksearchbox/SuggestionCursorProvider;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;Z)V

    goto :goto_0

    .line 87
    .end local v2           #provider:Lcom/android/quicksearchbox/SuggestionCursorProvider;,"Lcom/android/quicksearchbox/SuggestionCursorProvider<TC;>;"
    :cond_0
    return-void
.end method

.method public static startQuery(Ljava/lang/String;ILcom/android/quicksearchbox/SuggestionCursorProvider;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;Z)V
    .locals 7
    .parameter "query"
    .parameter "maxResultsPerProvider"
    .parameter
    .parameter "executor"
    .parameter "handler"
    .parameter
    .parameter "onlyOneProvider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/android/quicksearchbox/SuggestionCursor;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/quicksearchbox/SuggestionCursorProvider",
            "<TC;>;",
            "Lcom/android/quicksearchbox/util/NamedTaskExecutor;",
            "Landroid/os/Handler;",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<TC;>;Z)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, provider:Lcom/android/quicksearchbox/SuggestionCursorProvider;,"Lcom/android/quicksearchbox/SuggestionCursorProvider<TC;>;"
    .local p5, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<TC;>;"
    new-instance v0, Lcom/android/quicksearchbox/QueryTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/quicksearchbox/QueryTask;-><init>(Ljava/lang/String;ILcom/android/quicksearchbox/SuggestionCursorProvider;Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;Z)V

    .line 97
    .local v0, task:Lcom/android/quicksearchbox/QueryTask;,"Lcom/android/quicksearchbox/QueryTask<TC;>;"
    invoke-interface {p3, v0}, Lcom/android/quicksearchbox/util/NamedTaskExecutor;->execute(Lcom/android/quicksearchbox/util/NamedTask;)V

    .line 98
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    .local p0, this:Lcom/android/quicksearchbox/QueryTask;,"Lcom/android/quicksearchbox/QueryTask<TC;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/QueryTask;->mProvider:Lcom/android/quicksearchbox/SuggestionCursorProvider;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 67
    .local p0, this:Lcom/android/quicksearchbox/QueryTask;,"Lcom/android/quicksearchbox/QueryTask<TC;>;"
    iget-object v1, p0, Lcom/android/quicksearchbox/QueryTask;->mProvider:Lcom/android/quicksearchbox/SuggestionCursorProvider;

    iget-object v2, p0, Lcom/android/quicksearchbox/QueryTask;->mQuery:Ljava/lang/String;

    iget v3, p0, Lcom/android/quicksearchbox/QueryTask;->mQueryLimit:I

    iget-boolean v4, p0, Lcom/android/quicksearchbox/QueryTask;->mTheOnlyOne:Z

    invoke-interface {v1, v2, v3, v4}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getSuggestions(Ljava/lang/String;IZ)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 69
    .local v0, cursor:Lcom/android/quicksearchbox/SuggestionCursor;,"TC;"
    iget-object v1, p0, Lcom/android/quicksearchbox/QueryTask;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/quicksearchbox/QueryTask;->mConsumer:Lcom/android/quicksearchbox/util/Consumer;

    invoke-static {v1, v2, v0}, Lcom/android/quicksearchbox/util/Consumers;->consumeCloseableAsync(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    .local p0, this:Lcom/android/quicksearchbox/QueryTask;,"Lcom/android/quicksearchbox/QueryTask<TC;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/quicksearchbox/QueryTask;->mProvider:Lcom/android/quicksearchbox/SuggestionCursorProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/QueryTask;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
