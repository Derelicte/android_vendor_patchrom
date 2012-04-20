.class public final Lcom/lbe/security/service/privacy/j;
.super Ljava/lang/Object;


# static fields
.field private static i:Lcom/lbe/security/service/privacy/j;


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Landroid/os/CountDownTimer;

.field private c:Lcom/lbe/security/service/core/d;

.field private d:Landroid/content/Context;

.field private e:I

.field private f:Ljava/lang/Thread;

.field private g:Landroid/os/Handler;

.field private h:Ljava/util/List;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lbe/security/service/privacy/g;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/privacy/g;-><init>(Lcom/lbe/security/service/privacy/j;)V

    iput-object v0, p0, Lcom/lbe/security/service/privacy/j;->a:Ljava/lang/Runnable;

    new-instance v0, Lcom/lbe/security/service/privacy/f;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/privacy/f;-><init>(Lcom/lbe/security/service/privacy/j;)V

    iput-object v0, p0, Lcom/lbe/security/service/privacy/j;->b:Landroid/os/CountDownTimer;

    iput-object p1, p0, Lcom/lbe/security/service/privacy/j;->d:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/lbe/security/service/privacy/j;->e:I

    invoke-static {}, Lcom/lbe/security/service/core/d;->e()Lcom/lbe/security/service/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/privacy/j;->c:Lcom/lbe/security/service/core/d;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/privacy/j;->g:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/privacy/j;->h:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/lbe/security/service/privacy/j;
    .locals 1

    sget-object v0, Lcom/lbe/security/service/privacy/j;->i:Lcom/lbe/security/service/privacy/j;

    return-object v0
.end method

.method private a(II)V
    .locals 4

    iput p1, p0, Lcom/lbe/security/service/privacy/j;->e:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/lbe/security/service/privacy/j;->e()V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
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
    iget v2, p0, Lcom/lbe/security/service/privacy/j;->e:I

    invoke-interface {v0, v2, p2}, Lcom/lbe/security/service/privacy/p;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->g:Landroid/os/Handler;

    new-instance v1, Lcom/lbe/security/service/privacy/h;

    invoke-direct {v1, p0, p2}, Lcom/lbe/security/service/privacy/h;-><init>(Lcom/lbe/security/service/privacy/j;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    new-instance v0, Lcom/lbe/security/service/privacy/j;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/privacy/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lbe/security/service/privacy/j;->i:Lcom/lbe/security/service/privacy/j;

    return-void
.end method

.method static synthetic a(Lcom/lbe/security/service/privacy/j;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lbe/security/service/privacy/j;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/lbe/security/service/privacy/j;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lbe/security/service/privacy/j;->a(Z)Z

    move-result v0

    return v0
.end method

.method private a(Z)Z
    .locals 2

    invoke-static {}, Lcom/lbe/security/service/core/internal/ar;->a()Lcom/lbe/security/service/core/internal/ar;

    move-result-object v0

    const-string v1, "secloader"

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/core/internal/ar;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "stub_activity"

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/core/internal/ar;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->c:Lcom/lbe/security/service/core/d;

    invoke-virtual {v0}, Lcom/lbe/security/service/core/d;->h()Z

    move-result p1

    goto :goto_0
.end method

.method static synthetic b(Lcom/lbe/security/service/privacy/j;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/lbe/security/service/privacy/j;)Lcom/lbe/security/service/core/d;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->c:Lcom/lbe/security/service/core/d;

    return-object v0
.end method

.method static synthetic d(Lcom/lbe/security/service/privacy/j;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->f:Ljava/lang/Thread;

    return-object v0
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/privacy/p;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/lbe/security/service/privacy/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/lbe/security/service/privacy/j;->e()V

    return-void
.end method

.method static synthetic f(Lcom/lbe/security/service/privacy/j;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/lbe/security/service/privacy/j;)I
    .locals 1

    iget v0, p0, Lcom/lbe/security/service/privacy/j;->e:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/lbe/security/service/privacy/p;)V
    .locals 2

    invoke-direct {p0}, Lcom/lbe/security/service/privacy/j;->e()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/lbe/security/service/privacy/j;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget v0, p0, Lcom/lbe/security/service/privacy/j;->e:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/lbe/security/service/privacy/p;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/lbe/security/service/privacy/j;->e:I

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/lbe/security/service/privacy/j;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lbe/security/service/privacy/j;->a:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lbe/security/service/privacy/j;->f:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lbe/security/service/privacy/j;->a(II)V

    goto :goto_0
.end method

.method public final b(Lcom/lbe/security/service/privacy/p;)V
    .locals 2

    invoke-direct {p0}, Lcom/lbe/security/service/privacy/j;->e()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/privacy/p;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/lbe/security/service/privacy/j;->e:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget v1, p0, Lcom/lbe/security/service/privacy/j;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/j;->c:Lcom/lbe/security/service/core/d;

    invoke-virtual {v0}, Lcom/lbe/security/service/core/d;->g()V

    invoke-direct {p0, v2, v2}, Lcom/lbe/security/service/privacy/j;->a(II)V

    :cond_1
    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/lbe/security/service/privacy/j;->e:I

    return v0
.end method
