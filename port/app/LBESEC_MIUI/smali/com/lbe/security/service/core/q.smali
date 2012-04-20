.class final Lcom/lbe/security/service/core/q;
.super Lcom/lbe/security/service/core/internal/w;


# instance fields
.field private synthetic b:Lcom/lbe/security/service/core/d;


# direct methods
.method constructor <init>(Lcom/lbe/security/service/core/d;Lcom/lbe/security/service/core/internal/h;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/core/q;->b:Lcom/lbe/security/service/core/d;

    invoke-direct {p0, p2}, Lcom/lbe/security/service/core/internal/w;-><init>(Lcom/lbe/security/service/core/internal/h;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/core/q;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/lbe/security/service/core/q;->b:Lcom/lbe/security/service/core/d;

    invoke-static {v0}, Lcom/lbe/security/service/core/d;->a(Lcom/lbe/security/service/core/d;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/q;->b:Lcom/lbe/security/service/core/d;

    invoke-static {v0}, Lcom/lbe/security/service/core/d;->a(Lcom/lbe/security/service/core/d;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/core/internal/o;

    iget-object v1, p0, Lcom/lbe/security/service/core/q;->b:Lcom/lbe/security/service/core/d;

    invoke-static {v1}, Lcom/lbe/security/service/core/d;->b(Lcom/lbe/security/service/core/d;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lbe/security/service/core/internal/o;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/core/q;->a:Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
