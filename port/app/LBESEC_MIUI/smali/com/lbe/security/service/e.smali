.class final Lcom/lbe/security/service/e;
.super Lcom/lbe/security/service/a;


# instance fields
.field private a:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lbe/security/service/a;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/e;->a:Ljava/util/HashSet;

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/service/e;->a:Ljava/util/HashSet;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 1

    invoke-direct {p0}, Lcom/lbe/security/service/e;->e()V

    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/lbe/security/bean/e;->a(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final a(Lcom/lbe/security/service/privacy/QueryFilter;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/lbe/security/service/e;->e()V

    invoke-static {}, Lcom/lbe/security/service/privacy/q;->a()Lcom/lbe/security/service/privacy/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/service/privacy/QueryFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(III)V
    .locals 2

    invoke-direct {p0}, Lcom/lbe/security/service/e;->e()V

    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lcom/lbe/security/service/privacy/k;->a(Lcom/lbe/security/bean/e;II)V

    :cond_0
    return-void
.end method

.method public final a(IZ)V
    .locals 1

    invoke-direct {p0}, Lcom/lbe/security/service/e;->e()V

    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lbe/security/service/privacy/k;->a(IZ)V

    return-void
.end method

.method public final a(Lcom/lbe/security/service/privacy/QueryFilter;)V
    .locals 1

    invoke-direct {p0}, Lcom/lbe/security/service/e;->e()V

    invoke-static {}, Lcom/lbe/security/service/privacy/q;->a()Lcom/lbe/security/service/privacy/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lbe/security/service/privacy/q;->a(Lcom/lbe/security/service/privacy/QueryFilter;)V

    return-void
.end method

.method public final a(Lcom/lbe/security/service/privacy/p;)V
    .locals 1

    invoke-direct {p0}, Lcom/lbe/security/service/e;->e()V

    invoke-static {}, Lcom/lbe/security/service/privacy/j;->a()Lcom/lbe/security/service/privacy/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lbe/security/service/privacy/j;->a(Lcom/lbe/security/service/privacy/p;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/lbe/security/service/core/internal/NativeCache;->validateRSAKey(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/e;->a:Ljava/util/HashSet;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/lbe/security/service/core/internal/u;)V
    .locals 1

    invoke-direct {p0}, Lcom/lbe/security/service/e;->e()V

    invoke-static {}, Lcom/lbe/security/service/core/d;->e()Lcom/lbe/security/service/core/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lbe/security/service/core/d;->c(Ljava/lang/String;)Lcom/lbe/security/service/core/internal/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/lbe/security/service/core/internal/p;->a(Lcom/lbe/security/service/core/internal/u;)V

    :cond_0
    return-void
.end method

.method public final a([I)V
    .locals 3

    invoke-direct {p0}, Lcom/lbe/security/service/e;->e()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    invoke-static {}, Lcom/lbe/security/service/core/d;->e()Lcom/lbe/security/service/core/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/core/d;->b(Ljava/util/List;)V

    return-void

    :cond_0
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a([I[I)V
    .locals 1

    invoke-direct {p0}, Lcom/lbe/security/service/e;->e()V

    invoke-static {}, Lcom/lbe/security/service/core/y;->e()Lcom/lbe/security/service/core/y;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lbe/security/service/core/y;->a([I[I)V

    return-void
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/lbe/security/service/e;->e()V

    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lbe/security/bean/e;->c()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    invoke-direct {p0}, Lcom/lbe/security/service/e;->e()V

    invoke-static {}, Lcom/lbe/security/service/privacy/j;->a()Lcom/lbe/security/service/privacy/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/service/privacy/j;->b()V

    return-void
.end method

.method public final b(Lcom/lbe/security/service/privacy/p;)V
    .locals 1

    invoke-direct {p0}, Lcom/lbe/security/service/e;->e()V

    invoke-static {}, Lcom/lbe/security/service/privacy/j;->a()Lcom/lbe/security/service/privacy/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lbe/security/service/privacy/j;->b(Lcom/lbe/security/service/privacy/p;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/lbe/security/service/core/internal/u;)V
    .locals 1

    invoke-direct {p0}, Lcom/lbe/security/service/e;->e()V

    invoke-static {}, Lcom/lbe/security/service/core/d;->e()Lcom/lbe/security/service/core/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lbe/security/service/core/d;->c(Ljava/lang/String;)Lcom/lbe/security/service/core/internal/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/lbe/security/service/core/internal/p;->b(Lcom/lbe/security/service/core/internal/u;)V

    :cond_0
    return-void
.end method

.method public final b([I)V
    .locals 3

    invoke-direct {p0}, Lcom/lbe/security/service/e;->e()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    invoke-static {}, Lcom/lbe/security/service/core/d;->e()Lcom/lbe/security/service/core/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/core/d;->a(Ljava/util/List;)V

    return-void

    :cond_0
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/lbe/security/service/e;->e()V

    invoke-static {}, Lcom/lbe/security/service/core/d;->e()Lcom/lbe/security/service/core/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lbe/security/service/core/d;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b(I)[I
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/lbe/security/service/e;->e()V

    invoke-static {}, Lcom/lbe/security/service/privacy/k;->a()Lcom/lbe/security/service/privacy/k;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lbe/security/service/privacy/k;->a(I)Lcom/lbe/security/bean/e;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/lbe/security/bean/e;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    move v1, v0

    :goto_0
    array-length v0, v2

    if-lt v1, v0, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v3}, Lcom/lbe/security/bean/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-array v0, v0, [I

    goto :goto_1
.end method

.method public final c()V
    .locals 1

    invoke-direct {p0}, Lcom/lbe/security/service/e;->e()V

    invoke-static {}, Lcom/lbe/security/service/privacy/j;->a()Lcom/lbe/security/service/privacy/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/service/privacy/j;->c()V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/lbe/security/service/e;->e()V

    invoke-static {}, Lcom/lbe/security/service/core/y;->e()Lcom/lbe/security/service/core/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/service/core/y;->f()Lcom/lbe/security/service/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lbe/security/service/core/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
