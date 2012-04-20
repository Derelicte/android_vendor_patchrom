.class public Lcom/miui/gallery/util/JobLimiter;
.super Ljava/lang/Object;
.source "JobLimiter.java"

# interfaces
.implements Lcom/miui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/JobLimiter$JobWrapper;
    }
.end annotation


# instance fields
.field private final mJobs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/util/JobLimiter$JobWrapper",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mLimit:I

.field private final mPool:Lcom/miui/gallery/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/util/ThreadPool;I)V
    .locals 1
    .parameter "pool"
    .parameter "limit"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    .line 132
    invoke-static {p1}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/ThreadPool;

    iput-object v0, p0, Lcom/miui/gallery/util/JobLimiter;->mPool:Lcom/miui/gallery/util/ThreadPool;

    .line 133
    iput p2, p0, Lcom/miui/gallery/util/JobLimiter;->mLimit:I

    .line 134
    return-void
.end method

.method private submitTasksIfAllowed()V
    .locals 2

    .prologue
    .line 149
    :cond_0
    :goto_0
    iget v1, p0, Lcom/miui/gallery/util/JobLimiter;->mLimit:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/miui/gallery/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/JobLimiter$JobWrapper;

    .line 151
    .local v0, wrapper:Lcom/miui/gallery/util/JobLimiter$JobWrapper;
    invoke-virtual {v0}, Lcom/miui/gallery/util/JobLimiter$JobWrapper;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget v1, p0, Lcom/miui/gallery/util/JobLimiter;->mLimit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/gallery/util/JobLimiter;->mLimit:I

    .line 153
    iget-object v1, p0, Lcom/miui/gallery/util/JobLimiter;->mPool:Lcom/miui/gallery/util/ThreadPool;

    invoke-virtual {v1, v0, p0}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/JobLimiter$JobWrapper;->setFuture(Lcom/miui/gallery/util/Future;)V

    goto :goto_0

    .line 156
    .end local v0           #wrapper:Lcom/miui/gallery/util/JobLimiter$JobWrapper;
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized onFutureDone(Lcom/miui/gallery/util/Future;)V
    .locals 1
    .parameter "future"

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/gallery/util/JobLimiter;->mLimit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/util/JobLimiter;->mLimit:I

    .line 161
    invoke-direct {p0}, Lcom/miui/gallery/util/JobLimiter;->submitTasksIfAllowed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/gallery/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/miui/gallery/util/FutureListener",
            "<TT;>;)",
            "Lcom/miui/gallery/util/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, job:Lcom/miui/gallery/util/ThreadPool$Job;,"Lcom/miui/gallery/util/ThreadPool$Job<TT;>;"
    .local p2, listener:Lcom/miui/gallery/util/FutureListener;,"Lcom/miui/gallery/util/FutureListener<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/miui/gallery/util/JobLimiter$JobWrapper;

    invoke-static {p1}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/ThreadPool$Job;

    invoke-direct {v0, v1, p2}, Lcom/miui/gallery/util/JobLimiter$JobWrapper;-><init>(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)V

    .line 138
    .local v0, future:Lcom/miui/gallery/util/JobLimiter$JobWrapper;,"Lcom/miui/gallery/util/JobLimiter$JobWrapper<TT;>;"
    iget-object v1, p0, Lcom/miui/gallery/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 139
    invoke-direct {p0}, Lcom/miui/gallery/util/JobLimiter;->submitTasksIfAllowed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-object v0

    .line 137
    .end local v0           #future:Lcom/miui/gallery/util/JobLimiter$JobWrapper;,"Lcom/miui/gallery/util/JobLimiter$JobWrapper<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
