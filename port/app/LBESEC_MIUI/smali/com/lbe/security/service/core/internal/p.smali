.class public abstract Lcom/lbe/security/service/core/internal/p;
.super Lcom/lbe/security/service/core/internal/h;


# instance fields
.field private d:Ljava/lang/Runnable;

.field protected e:Lcom/lbe/security/service/core/internal/a;

.field protected f:Ljava/util/List;

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/lbe/security/service/core/internal/a;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/lbe/security/service/core/internal/h;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/lbe/security/service/core/internal/z;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/core/internal/z;-><init>(Lcom/lbe/security/service/core/internal/p;)V

    iput-object v0, p0, Lcom/lbe/security/service/core/internal/p;->d:Ljava/lang/Runnable;

    new-instance v0, Lcom/lbe/security/service/core/internal/aa;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/core/internal/aa;-><init>(Lcom/lbe/security/service/core/internal/p;)V

    iput-object v0, p0, Lcom/lbe/security/service/core/internal/p;->g:Ljava/lang/Runnable;

    new-instance v0, Lcom/lbe/security/service/core/internal/ab;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/core/internal/ab;-><init>(Lcom/lbe/security/service/core/internal/p;)V

    iput-object v0, p0, Lcom/lbe/security/service/core/internal/p;->h:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/lbe/security/service/core/internal/p;->e:Lcom/lbe/security/service/core/internal/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/core/internal/p;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/lbe/security/service/core/internal/p;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/p;->h:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lbe/security/service/core/internal/p;->a(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/lbe/security/service/core/internal/p;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/p;->h:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
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

.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/p;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lbe/security/service/core/internal/p;->a(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/lbe/security/service/core/internal/p;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/p;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
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

.method public declared-synchronized h()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/p;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lbe/security/service/core/internal/p;->a(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/lbe/security/service/core/internal/p;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/p;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
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

.method public final declared-synchronized i()Z
    .locals 2

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/lbe/security/service/core/internal/p;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/p;->a:Landroid/os/IInterface;

    check-cast v0, Lcom/lbe/security/service/core/internal/n;

    invoke-virtual {v0}, Lcom/lbe/security/service/core/internal/n;->d()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
