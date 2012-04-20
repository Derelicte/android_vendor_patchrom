.class public abstract Lcom/lbe/security/service/core/internal/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field protected a:Landroid/os/IInterface;

.field protected b:Z

.field protected c:Ljava/lang/Runnable;

.field private d:Landroid/content/Context;

.field private e:Lcom/lbe/security/service/core/internal/b;

.field private f:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private g:Ljava/util/List;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lbe/security/service/core/internal/ak;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/core/internal/ak;-><init>(Lcom/lbe/security/service/core/internal/h;)V

    iput-object v0, p0, Lcom/lbe/security/service/core/internal/h;->c:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/lbe/security/service/core/internal/h;->d:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/core/internal/h;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lbe/security/service/core/internal/h;->a:Landroid/os/IInterface;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lbe/security/service/core/internal/h;->b:Z

    new-instance v0, Lcom/lbe/security/service/core/internal/b;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/core/internal/b;-><init>(Lcom/lbe/security/service/core/internal/h;)V

    iput-object v0, p0, Lcom/lbe/security/service/core/internal/h;->e:Lcom/lbe/security/service/core/internal/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/core/internal/h;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/lbe/security/service/core/internal/h;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic b(Lcom/lbe/security/service/core/internal/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/lbe/security/service/core/internal/h;->f()V

    return-void
.end method

.method static synthetic c(Lcom/lbe/security/service/core/internal/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/lbe/security/service/core/internal/h;->e()V

    return-void
.end method

.method static synthetic d(Lcom/lbe/security/service/core/internal/h;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->g:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private f()V
    .locals 5

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lbe/security/service/core/internal/h;->b:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/lbe/security/service/core/internal/h;->e()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/core/internal/u;

    if-eqz v0, :cond_1

    :try_start_0
    iget-boolean v3, p0, Lcom/lbe/security/service/core/internal/h;->b:Z

    if-eqz v3, :cond_2

    move v3, v2

    :goto_2
    invoke-interface {v0, v3}, Lcom/lbe/security/service/core/internal/u;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->e:Lcom/lbe/security/service/core/internal/b;

    new-instance v1, Lcom/lbe/security/service/core/internal/al;

    invoke-direct {v1, p0}, Lcom/lbe/security/service/core/internal/al;-><init>(Lcom/lbe/security/service/core/internal/h;)V

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/core/internal/b;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)Landroid/os/IInterface;
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public final declared-synchronized a(Lcom/lbe/security/service/core/internal/u;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lbe/security/service/core/internal/h;->e()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/lbe/security/service/core/internal/h;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eq v0, p1, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract b()V
.end method

.method public final declared-synchronized b(Lcom/lbe/security/service/core/internal/u;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lbe/security/service/core/internal/h;->e()V

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt v1, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/core/internal/u;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, -0x1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected final declared-synchronized b(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public binderDied()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lbe/security/service/core/internal/h;->a:Landroid/os/IInterface;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lbe/security/service/core/internal/h;->b:Z

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->e:Lcom/lbe/security/service/core/internal/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/core/internal/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected final declared-synchronized c()Landroid/os/IInterface;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->a:Landroid/os/IInterface;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lbe/security/service/core/internal/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lbe/security/service/core/internal/h;->a(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/core/internal/h;->a:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->a:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->a:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-direct {p0}, Lcom/lbe/security/service/core/internal/h;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->a:Landroid/os/IInterface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/lbe/security/service/core/internal/h;->a:Landroid/os/IInterface;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lbe/security/service/core/internal/h;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->a:Landroid/os/IInterface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/h;->e:Lcom/lbe/security/service/core/internal/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/core/internal/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
