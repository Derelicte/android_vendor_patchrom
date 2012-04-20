.class public abstract Lcom/android/quicksearchbox/util/CachedLater;
.super Ljava/lang/Object;
.source "CachedLater.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/NowOrLater;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/NowOrLater",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private mCreating:Z

.field private final mLock:Ljava/lang/Object;

.field private mValid:Z

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private mWaitingConsumers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<-TA;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    .local p0, this:Lcom/android/quicksearchbox/util/CachedLater;,"Lcom/android/quicksearchbox/util/CachedLater<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/util/CachedLater;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 118
    .local p0, this:Lcom/android/quicksearchbox/util/CachedLater;,"Lcom/android/quicksearchbox/util/CachedLater<TA;>;"
    iget-object v1, p0, Lcom/android/quicksearchbox/util/CachedLater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/quicksearchbox/util/CachedLater;->mValue:Ljava/lang/Object;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quicksearchbox/util/CachedLater;->mValid:Z

    .line 121
    monitor-exit v1

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract create()V
.end method

.method public getLater(Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<-TA;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lcom/android/quicksearchbox/util/CachedLater;,"Lcom/android/quicksearchbox/util/CachedLater<TA;>;"
    .local p1, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<-TA;>;"
    iget-object v4, p0, Lcom/android/quicksearchbox/util/CachedLater;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 84
    :try_start_0
    iget-boolean v1, p0, Lcom/android/quicksearchbox/util/CachedLater;->mValid:Z

    .line 85
    .local v1, valid:Z
    iget-object v2, p0, Lcom/android/quicksearchbox/util/CachedLater;->mValue:Ljava/lang/Object;

    .line 86
    .local v2, value:Ljava/lang/Object;,"TA;"
    if-nez v1, :cond_1

    .line 87
    iget-object v3, p0, Lcom/android/quicksearchbox/util/CachedLater;->mWaitingConsumers:Ljava/util/List;

    if-nez v3, :cond_0

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/quicksearchbox/util/CachedLater;->mWaitingConsumers:Ljava/util/List;

    .line 90
    :cond_0
    iget-object v3, p0, Lcom/android/quicksearchbox/util/CachedLater;->mWaitingConsumers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    if-eqz v1, :cond_3

    .line 95
    invoke-interface {p1, v2}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    .line 111
    :cond_2
    :goto_0
    return-void

    .line 92
    .end local v1           #valid:Z
    .end local v2           #value:Ljava/lang/Object;,"TA;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 97
    .restart local v1       #valid:Z
    .restart local v2       #value:Ljava/lang/Object;,"TA;"
    :cond_3
    const/4 v0, 0x0

    .line 98
    .local v0, create:Z
    iget-object v4, p0, Lcom/android/quicksearchbox/util/CachedLater;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 99
    :try_start_2
    iget-boolean v3, p0, Lcom/android/quicksearchbox/util/CachedLater;->mCreating:Z

    if-nez v3, :cond_4

    .line 100
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/quicksearchbox/util/CachedLater;->mCreating:Z

    .line 101
    const/4 v0, 0x1

    .line 103
    :cond_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/android/quicksearchbox/util/CachedLater;->create()V

    goto :goto_0

    .line 103
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public declared-synchronized getNow()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, this:Lcom/android/quicksearchbox/util/CachedLater;,"Lcom/android/quicksearchbox/util/CachedLater<TA;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/quicksearchbox/util/CachedLater;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    :try_start_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/util/CachedLater;->haveNow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "getNow() called when haveNow() is false"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 135
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/quicksearchbox/util/CachedLater;->mValue:Ljava/lang/Object;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public haveNow()Z
    .locals 2

    .prologue
    .line 125
    .local p0, this:Lcom/android/quicksearchbox/util/CachedLater;,"Lcom/android/quicksearchbox/util/CachedLater<TA;>;"
    iget-object v1, p0, Lcom/android/quicksearchbox/util/CachedLater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-boolean v0, p0, Lcom/android/quicksearchbox/util/CachedLater;->mValid:Z

    monitor-exit v1

    return v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected store(Ljava/lang/Object;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lcom/android/quicksearchbox/util/CachedLater;,"Lcom/android/quicksearchbox/util/CachedLater<TA;>;"
    .local p1, value:Ljava/lang/Object;,"TA;"
    iget-object v4, p0, Lcom/android/quicksearchbox/util/CachedLater;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 58
    :try_start_0
    iput-object p1, p0, Lcom/android/quicksearchbox/util/CachedLater;->mValue:Ljava/lang/Object;

    .line 59
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/quicksearchbox/util/CachedLater;->mValid:Z

    .line 60
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/quicksearchbox/util/CachedLater;->mCreating:Z

    .line 61
    iget-object v2, p0, Lcom/android/quicksearchbox/util/CachedLater;->mWaitingConsumers:Ljava/util/List;

    .line 62
    .local v2, waitingConsumers:Ljava/util/List;,"Ljava/util/List<Lcom/android/quicksearchbox/util/Consumer<-TA;>;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/quicksearchbox/util/CachedLater;->mWaitingConsumers:Ljava/util/List;

    .line 63
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-eqz v2, :cond_0

    .line 65
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/util/Consumer;

    .line 67
    .local v0, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<-TA;>;"
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v0           #consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<-TA;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #waitingConsumers:Ljava/util/List;,"Ljava/util/List<Lcom/android/quicksearchbox/util/Consumer<-TA;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 70
    .restart local v2       #waitingConsumers:Ljava/util/List;,"Ljava/util/List<Lcom/android/quicksearchbox/util/Consumer<-TA;>;>;"
    :cond_0
    return-void
.end method
