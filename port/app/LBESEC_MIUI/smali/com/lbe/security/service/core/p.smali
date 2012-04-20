.class final Lcom/lbe/security/service/core/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/lbe/security/service/core/d;


# direct methods
.method constructor <init>(Lcom/lbe/security/service/core/d;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/core/p;->a:Lcom/lbe/security/service/core/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/lbe/security/service/core/p;->a:Lcom/lbe/security/service/core/d;

    invoke-static {v0}, Lcom/lbe/security/service/core/d;->d(Lcom/lbe/security/service/core/d;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/lbe/security/service/core/p;->a:Lcom/lbe/security/service/core/d;

    invoke-static {v1}, Lcom/lbe/security/service/core/d;->a(Lcom/lbe/security/service/core/d;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/lbe/security/service/core/p;->a:Lcom/lbe/security/service/core/d;

    invoke-static {v1}, Lcom/lbe/security/service/core/d;->a(Lcom/lbe/security/service/core/d;)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/lbe/security/service/core/internal/o;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/lbe/security/service/core/internal/o;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
