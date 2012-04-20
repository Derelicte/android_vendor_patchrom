.class final Lcom/lbe/security/service/core/internal/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/lbe/security/service/core/internal/h;


# direct methods
.method constructor <init>(Lcom/lbe/security/service/core/internal/h;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/core/internal/ak;->a:Lcom/lbe/security/service/core/internal/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/ak;->a:Lcom/lbe/security/service/core/internal/h;

    invoke-virtual {v0}, Lcom/lbe/security/service/core/internal/h;->b()V

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/ak;->a:Lcom/lbe/security/service/core/internal/h;

    invoke-static {v0}, Lcom/lbe/security/service/core/internal/h;->a(Lcom/lbe/security/service/core/internal/h;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/ak;->a:Lcom/lbe/security/service/core/internal/h;

    invoke-static {v0}, Lcom/lbe/security/service/core/internal/h;->b(Lcom/lbe/security/service/core/internal/h;)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
