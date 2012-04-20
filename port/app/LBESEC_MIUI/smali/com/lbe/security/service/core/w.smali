.class final Lcom/lbe/security/service/core/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/lbe/security/service/core/b;


# direct methods
.method constructor <init>(Lcom/lbe/security/service/core/b;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/core/w;->a:Lcom/lbe/security/service/core/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/service/core/w;->a:Lcom/lbe/security/service/core/b;

    invoke-static {v0}, Lcom/lbe/security/service/core/b;->a(Lcom/lbe/security/service/core/b;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/w;->a:Lcom/lbe/security/service/core/b;

    invoke-static {v0}, Lcom/lbe/security/service/core/b;->a(Lcom/lbe/security/service/core/b;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/core/internal/q;

    sget-object v1, Lcom/lbe/security/service/core/b;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/core/internal/q;->a(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
