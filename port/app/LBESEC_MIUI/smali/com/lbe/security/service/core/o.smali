.class final Lcom/lbe/security/service/core/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/lbe/security/service/core/d;


# direct methods
.method constructor <init>(Lcom/lbe/security/service/core/d;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/core/o;->a:Lcom/lbe/security/service/core/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/lbe/security/service/core/o;->a:Lcom/lbe/security/service/core/d;

    invoke-static {v0}, Lcom/lbe/security/service/core/d;->c(Lcom/lbe/security/service/core/d;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/lbe/security/service/core/a;

    iget-object v0, p0, Lcom/lbe/security/service/core/o;->a:Lcom/lbe/security/service/core/d;

    invoke-static {v0}, Lcom/lbe/security/service/core/d;->a(Lcom/lbe/security/service/core/d;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/o;->a:Lcom/lbe/security/service/core/d;

    invoke-static {v0}, Lcom/lbe/security/service/core/d;->a(Lcom/lbe/security/service/core/d;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/core/internal/o;

    invoke-static {v7}, Lcom/lbe/security/service/core/a;->a(Lcom/lbe/security/service/core/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/lbe/security/service/core/a;->b(Lcom/lbe/security/service/core/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lcom/lbe/security/service/core/a;->c(Lcom/lbe/security/service/core/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Lcom/lbe/security/service/core/a;->d(Lcom/lbe/security/service/core/a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Lcom/lbe/security/service/core/a;->e(Lcom/lbe/security/service/core/a;)I

    move-result v5

    invoke-static {v7}, Lcom/lbe/security/service/core/a;->f(Lcom/lbe/security/service/core/a;)I

    move-result v6

    invoke-static {v7}, Lcom/lbe/security/service/core/a;->g(Lcom/lbe/security/service/core/a;)Z

    move-result v7

    invoke-interface/range {v0 .. v7}, Lcom/lbe/security/service/core/internal/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
