.class final Lcom/lbe/security/service/core/internal/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/lbe/security/service/core/internal/h;


# direct methods
.method constructor <init>(Lcom/lbe/security/service/core/internal/h;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/core/internal/al;->a:Lcom/lbe/security/service/core/internal/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lbe/security/service/core/internal/al;->a:Lcom/lbe/security/service/core/internal/h;

    invoke-static {v0}, Lcom/lbe/security/service/core/internal/h;->c(Lcom/lbe/security/service/core/internal/h;)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/al;->a:Lcom/lbe/security/service/core/internal/h;

    invoke-static {v0}, Lcom/lbe/security/service/core/internal/h;->d(Lcom/lbe/security/service/core/internal/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/core/internal/al;->a:Lcom/lbe/security/service/core/internal/h;

    invoke-static {v0}, Lcom/lbe/security/service/core/internal/h;->d(Lcom/lbe/security/service/core/internal/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/core/internal/u;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/lbe/security/service/core/internal/al;->a:Lcom/lbe/security/service/core/internal/h;

    iget-boolean v3, v3, Lcom/lbe/security/service/core/internal/h;->b:Z

    if-eqz v3, :cond_2

    move v3, v2

    :goto_1
    invoke-interface {v0, v3}, Lcom/lbe/security/service/core/internal/u;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method
