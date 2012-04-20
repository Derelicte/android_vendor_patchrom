.class final Lcom/lbe/security/service/core/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/lbe/security/service/core/e;


# direct methods
.method constructor <init>(Lcom/lbe/security/service/core/e;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/core/r;->a:Lcom/lbe/security/service/core/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/core/r;->a:Lcom/lbe/security/service/core/e;

    invoke-static {v0}, Lcom/lbe/security/service/core/e;->a(Lcom/lbe/security/service/core/e;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/r;->a:Lcom/lbe/security/service/core/e;

    invoke-static {v0}, Lcom/lbe/security/service/core/e;->a(Lcom/lbe/security/service/core/e;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/core/internal/y;

    invoke-virtual {v0}, Lcom/lbe/security/service/core/internal/y;->f()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
