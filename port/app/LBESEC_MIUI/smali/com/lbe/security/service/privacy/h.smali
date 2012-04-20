.class final Lcom/lbe/security/service/privacy/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/lbe/security/service/privacy/j;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/lbe/security/service/privacy/j;I)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/privacy/h;->a:Lcom/lbe/security/service/privacy/j;

    iput p2, p0, Lcom/lbe/security/service/privacy/h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/lbe/security/service/privacy/h;->a:Lcom/lbe/security/service/privacy/j;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/j;->e(Lcom/lbe/security/service/privacy/j;)V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/h;->a:Lcom/lbe/security/service/privacy/j;

    invoke-static {v0}, Lcom/lbe/security/service/privacy/j;->f(Lcom/lbe/security/service/privacy/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/privacy/p;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/lbe/security/service/privacy/h;->a:Lcom/lbe/security/service/privacy/j;

    invoke-static {v2}, Lcom/lbe/security/service/privacy/j;->g(Lcom/lbe/security/service/privacy/j;)I

    move-result v2

    iget v3, p0, Lcom/lbe/security/service/privacy/h;->b:I

    invoke-interface {v0, v2, v3}, Lcom/lbe/security/service/privacy/p;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
