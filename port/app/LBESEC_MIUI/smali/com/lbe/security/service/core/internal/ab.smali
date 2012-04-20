.class final Lcom/lbe/security/service/core/internal/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/lbe/security/service/core/internal/p;


# direct methods
.method constructor <init>(Lcom/lbe/security/service/core/internal/p;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/core/internal/ab;->a:Lcom/lbe/security/service/core/internal/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/ab;->a:Lcom/lbe/security/service/core/internal/p;

    iget-object v0, v0, Lcom/lbe/security/service/core/internal/p;->a:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/ab;->a:Lcom/lbe/security/service/core/internal/p;

    iget-object v0, v0, Lcom/lbe/security/service/core/internal/p;->a:Landroid/os/IInterface;

    check-cast v0, Lcom/lbe/security/service/core/internal/n;

    iget-object v1, p0, Lcom/lbe/security/service/core/internal/ab;->a:Lcom/lbe/security/service/core/internal/p;

    iget-object v1, v1, Lcom/lbe/security/service/core/internal/p;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/lbe/security/service/core/internal/ab;->a:Lcom/lbe/security/service/core/internal/p;

    iget-object v2, v2, Lcom/lbe/security/service/core/internal/p;->e:Lcom/lbe/security/service/core/internal/a;

    invoke-interface {v2}, Lcom/lbe/security/service/core/internal/a;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lbe/security/service/core/internal/n;->a(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
