.class final Lcom/lbe/security/service/core/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/lbe/security/service/core/d;


# direct methods
.method constructor <init>(Lcom/lbe/security/service/core/d;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/core/k;->a:Lcom/lbe/security/service/core/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/service/core/k;->a:Lcom/lbe/security/service/core/d;

    invoke-static {v0}, Lcom/lbe/security/service/core/d;->g(Lcom/lbe/security/service/core/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/core/internal/p;

    invoke-virtual {v0}, Lcom/lbe/security/service/core/internal/p;->g()V

    invoke-virtual {v0}, Lcom/lbe/security/service/core/internal/p;->d()V

    goto :goto_0
.end method
