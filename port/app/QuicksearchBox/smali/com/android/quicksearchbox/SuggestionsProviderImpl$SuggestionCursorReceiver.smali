.class Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;
.super Ljava/lang/Object;
.source "SuggestionsProviderImpl.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/SuggestionsProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionCursorReceiver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/Consumer",
        "<",
        "Lcom/android/quicksearchbox/CorpusResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mCountAtWhichToExecuteNextBatch:I

.field private final mExecutor:Lcom/android/quicksearchbox/util/BatchingNamedTaskExecutor;

.field private final mPendingResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/quicksearchbox/CorpusResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultPublishDelayMillis:J

.field private final mResultPublishTask:Ljava/lang/Runnable;

.field private final mSuggestions:Lcom/android/quicksearchbox/Suggestions;

.field final synthetic this$0:Lcom/android/quicksearchbox/SuggestionsProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SuggestionsProviderImpl;Lcom/android/quicksearchbox/util/BatchingNamedTaskExecutor;Lcom/android/quicksearchbox/Suggestions;IJ)V
    .locals 1
    .parameter
    .parameter "executor"
    .parameter "suggestions"
    .parameter "initialBatchSize"
    .parameter "publishResultDelayMillis"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->this$0:Lcom/android/quicksearchbox/SuggestionsProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver$1;-><init>(Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mResultPublishTask:Ljava/lang/Runnable;

    .line 184
    iput-object p2, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mExecutor:Lcom/android/quicksearchbox/util/BatchingNamedTaskExecutor;

    .line 185
    iput-object p3, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mSuggestions:Lcom/android/quicksearchbox/Suggestions;

    .line 186
    iput p4, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mCountAtWhichToExecuteNextBatch:I

    .line 187
    iput-wide p5, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mResultPublishDelayMillis:J

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mPendingResults:Ljava/util/ArrayList;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->publishPendingResults()V

    return-void
.end method

.method private executeNextBatchIfNeeded()V
    .locals 3

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mSuggestions:Lcom/android/quicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/android/quicksearchbox/Suggestions;->getResultCount()I

    move-result v1

    iget v2, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mCountAtWhichToExecuteNextBatch:I

    if-ne v1, v2, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->this$0:Lcom/android/quicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mConfig:Lcom/android/quicksearchbox/Config;
    invoke-static {v1}, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->access$400(Lcom/android/quicksearchbox/SuggestionsProviderImpl;)Lcom/android/quicksearchbox/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quicksearchbox/Config;->getNumPromotedSources()I

    move-result v0

    .line 230
    .local v0, nextBatchSize:I
    iget v1, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mCountAtWhichToExecuteNextBatch:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mCountAtWhichToExecuteNextBatch:I

    .line 231
    iget-object v1, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mExecutor:Lcom/android/quicksearchbox/util/BatchingNamedTaskExecutor;

    invoke-virtual {v1, v0}, Lcom/android/quicksearchbox/util/BatchingNamedTaskExecutor;->executeNextBatch(I)V

    .line 233
    .end local v0           #nextBatchSize:I
    :cond_0
    return-void
.end method

.method private publishPendingResults()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mSuggestions:Lcom/android/quicksearchbox/Suggestions;

    iget-object v1, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mPendingResults:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/Suggestions;->addCorpusResults(Ljava/util/List;)V

    .line 223
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mPendingResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 224
    return-void
.end method


# virtual methods
.method public consume(Lcom/android/quicksearchbox/CorpusResult;)Z
    .locals 4
    .parameter "cursor"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->this$0:Lcom/android/quicksearchbox/SuggestionsProviderImpl;

    #calls: Lcom/android/quicksearchbox/SuggestionsProviderImpl;->updateShouldQueryStrategy(Lcom/android/quicksearchbox/CorpusResult;)V
    invoke-static {v0, p1}, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->access$100(Lcom/android/quicksearchbox/SuggestionsProviderImpl;Lcom/android/quicksearchbox/CorpusResult;)V

    .line 197
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mPendingResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-wide v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mResultPublishDelayMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mSuggestions:Lcom/android/quicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/Suggestions;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mSuggestions:Lcom/android/quicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/Suggestions;->getResultCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mPendingResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mCountAtWhichToExecuteNextBatch:I

    if-ge v0, v1, :cond_2

    .line 204
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->this$0:Lcom/android/quicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->access$200(Lcom/android/quicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mResultPublishTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->this$0:Lcom/android/quicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->access$200(Lcom/android/quicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mResultPublishTask:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mResultPublishDelayMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mSuggestions:Lcom/android/quicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/Suggestions;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->executeNextBatchIfNeeded()V

    .line 215
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->this$0:Lcom/android/quicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mLogger:Lcom/android/quicksearchbox/Logger;
    invoke-static {v0}, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->access$300(Lcom/android/quicksearchbox/SuggestionsProviderImpl;)Lcom/android/quicksearchbox/Logger;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->this$0:Lcom/android/quicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mLogger:Lcom/android/quicksearchbox/Logger;
    invoke-static {v0}, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->access$300(Lcom/android/quicksearchbox/SuggestionsProviderImpl;)Lcom/android/quicksearchbox/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/Logger;->logLatency(Lcom/android/quicksearchbox/CorpusResult;)V

    .line 218
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->this$0:Lcom/android/quicksearchbox/SuggestionsProviderImpl;

    #getter for: Lcom/android/quicksearchbox/SuggestionsProviderImpl;->mPublishThread:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/quicksearchbox/SuggestionsProviderImpl;->access$200(Lcom/android/quicksearchbox/SuggestionsProviderImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->mResultPublishTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    invoke-direct {p0}, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->publishPendingResults()V

    goto :goto_0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    check-cast p1, Lcom/android/quicksearchbox/CorpusResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SuggestionsProviderImpl$SuggestionCursorReceiver;->consume(Lcom/android/quicksearchbox/CorpusResult;)Z

    move-result v0

    return v0
.end method
