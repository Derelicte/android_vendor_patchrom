.class public final Lcom/lbe/security/service/core/y;
.super Lcom/lbe/security/service/core/internal/p;


# static fields
.field private static d:Lcom/lbe/security/service/core/y;


# instance fields
.field private g:Lcom/lbe/security/service/core/j;

.field private h:[I

.field private i:[I

.field private j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lbe/security/service/core/y;->d:Lcom/lbe/security/service/core/y;

    return-void
.end method

.method public static final e()Lcom/lbe/security/service/core/y;
    .locals 1

    sget-object v0, Lcom/lbe/security/service/core/y;->d:Lcom/lbe/security/service/core/y;

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 2

    invoke-static {}, Lcom/lbe/security/service/core/internal/ar;->a()Lcom/lbe/security/service/core/internal/ar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lbe/security/service/core/internal/ar;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lbe/security/service/core/internal/ac;

    invoke-direct {v0, v1}, Lcom/lbe/security/service/core/internal/ac;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "secfirewall"

    return-object v0
.end method

.method public final declared-synchronized a([I[I)V
    .locals 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    array-length v3, p1

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_1

    array-length v3, p2

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_3

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v5, v0, [I

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v6, v0, [I

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v1

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    iput-object v5, p0, Lcom/lbe/security/service/core/y;->h:[I

    iput-object v6, p0, Lcom/lbe/security/service/core/y;->i:[I

    iget-object v0, p0, Lcom/lbe/security/service/core/y;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lbe/security/service/core/y;->a(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/lbe/security/service/core/y;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/core/y;->j:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    aget v5, p1, v0

    if-ltz v5, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    aget v5, p2, v0

    if-ltz v5, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v2

    move v2, v3

    goto :goto_2

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v6, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final b()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized f()Lcom/lbe/security/service/core/j;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lbe/security/service/core/y;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/lbe/security/service/core/y;->a:Landroid/os/IInterface;

    check-cast v0, Lcom/lbe/security/service/core/internal/ac;

    invoke-virtual {v0}, Lcom/lbe/security/service/core/internal/ac;->e()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/lbe/security/service/core/j;->a:Lcom/lbe/security/service/core/j;

    iput-object v0, p0, Lcom/lbe/security/service/core/y;->g:Lcom/lbe/security/service/core/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/lbe/security/service/core/y;->g:Lcom/lbe/security/service/core/j;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :pswitch_0
    :try_start_3
    sget-object v0, Lcom/lbe/security/service/core/j;->b:Lcom/lbe/security/service/core/j;

    iput-object v0, p0, Lcom/lbe/security/service/core/y;->g:Lcom/lbe/security/service/core/j;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/lbe/security/service/core/j;->c:Lcom/lbe/security/service/core/j;

    iput-object v0, p0, Lcom/lbe/security/service/core/y;->g:Lcom/lbe/security/service/core/j;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
