.class public Lcom/android/quicksearchbox/util/BarrierConsumer;
.super Ljava/lang/Object;
.source "BarrierConsumer.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/Consumer",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final mExpectedCount:I

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private final mNotFull:Ljava/util/concurrent/locks/Condition;

.field private mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "expectedCount"

    .prologue
    .line 43
    .local p0, this:Lcom/android/quicksearchbox/util/BarrierConsumer;,"Lcom/android/quicksearchbox/util/BarrierConsumer<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 31
    iget-object v0, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mNotFull:Ljava/util/concurrent/locks/Condition;

    .line 44
    iput p1, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mExpectedCount:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mValues:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method private isFull()Z
    .locals 2

    .prologue
    .line 92
    .local p0, this:Lcom/android/quicksearchbox/util/BarrierConsumer;,"Lcom/android/quicksearchbox/util/BarrierConsumer<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mExpectedCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public consume(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/android/quicksearchbox/util/BarrierConsumer;,"Lcom/android/quicksearchbox/util/BarrierConsumer<TA;>;"
    .local p1, value:Ljava/lang/Object;,"TA;"
    iget-object v0, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/quicksearchbox/util/BarrierConsumer;->isFull()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    .line 80
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-direct {p0}, Lcom/android/quicksearchbox/util/BarrierConsumer;->isFull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_2
    const/4 v0, 0x1

    .line 87
    iget-object v1, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getValues()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/android/quicksearchbox/util/BarrierConsumer;,"Lcom/android/quicksearchbox/util/BarrierConsumer<TA;>;"
    iget-object v1, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 58
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/quicksearchbox/util/BarrierConsumer;->isFull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 64
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mValues:Ljava/util/ArrayList;

    .line 65
    .local v0, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TA;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mValues:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    iget-object v1, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .end local v0           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TA;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/quicksearchbox/util/BarrierConsumer;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
