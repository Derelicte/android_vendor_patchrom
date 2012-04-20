.class final Lcom/lbe/security/service/core/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/lbe/security/service/core/d;


# direct methods
.method constructor <init>(Lcom/lbe/security/service/core/d;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/core/m;->a:Lcom/lbe/security/service/core/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lbe/security/service/core/m;->a:Lcom/lbe/security/service/core/d;

    invoke-static {v0}, Lcom/lbe/security/service/core/d;->e(Lcom/lbe/security/service/core/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    array-length v2, v0

    new-array v2, v2, [I

    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_1

    iget-object v0, p0, Lcom/lbe/security/service/core/m;->a:Lcom/lbe/security/service/core/d;

    invoke-static {v0}, Lcom/lbe/security/service/core/d;->a(Lcom/lbe/security/service/core/d;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/m;->a:Lcom/lbe/security/service/core/d;

    invoke-static {v0}, Lcom/lbe/security/service/core/d;->a(Lcom/lbe/security/service/core/d;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/core/internal/o;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lbe/security/service/core/internal/o;->a(Z[I)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
