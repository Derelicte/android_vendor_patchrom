.class final Lcom/lbe/security/service/core/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/lbe/security/service/core/e;


# direct methods
.method constructor <init>(Lcom/lbe/security/service/core/e;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/core/s;->a:Lcom/lbe/security/service/core/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/lbe/security/service/core/s;->a:Lcom/lbe/security/service/core/e;

    invoke-static {v0}, Lcom/lbe/security/service/core/e;->a(Lcom/lbe/security/service/core/e;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x5

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/s;->a:Lcom/lbe/security/service/core/e;

    invoke-static {v0}, Lcom/lbe/security/service/core/e;->a(Lcom/lbe/security/service/core/e;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/core/internal/y;

    iget-object v2, p0, Lcom/lbe/security/service/core/s;->a:Lcom/lbe/security/service/core/e;

    iget-object v2, v2, Lcom/lbe/security/service/core/e;->d:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/lbe/security/service/core/internal/y;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
