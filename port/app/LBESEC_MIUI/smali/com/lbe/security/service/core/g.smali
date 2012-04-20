.class public final Lcom/lbe/security/service/core/g;
.super Lcom/lbe/security/service/core/internal/p;


# static fields
.field private static d:Lcom/lbe/security/service/core/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lbe/security/service/core/g;->d:Lcom/lbe/security/service/core/g;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/lbe/security/service/core/internal/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lbe/security/service/core/internal/p;-><init>(Landroid/content/Context;Lcom/lbe/security/service/core/internal/a;)V

    return-void
.end method

.method public static final declared-synchronized a(Landroid/app/Application;Lcom/lbe/security/service/core/internal/a;)V
    .locals 2

    const-class v1, Lcom/lbe/security/service/core/g;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/lbe/security/service/core/g;

    invoke-direct {v0, p0, p1}, Lcom/lbe/security/service/core/g;-><init>(Landroid/content/Context;Lcom/lbe/security/service/core/internal/a;)V

    sput-object v0, Lcom/lbe/security/service/core/g;->d:Lcom/lbe/security/service/core/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final e()Lcom/lbe/security/service/core/g;
    .locals 1

    sget-object v0, Lcom/lbe/security/service/core/g;->d:Lcom/lbe/security/service/core/g;

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 2

    invoke-static {}, Lcom/lbe/security/service/core/internal/ar;->a()Lcom/lbe/security/service/core/internal/ar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lbe/security/service/core/internal/ar;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lbe/security/service/core/internal/ae;

    invoke-direct {v0, v1}, Lcom/lbe/security/service/core/internal/ae;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "stub_phone"

    return-object v0
.end method

.method protected final b()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized f()I
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/lbe/security/service/core/internal/t;->e:I

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/lbe/security/service/core/g;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/core/g;->a:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/lbe/security/service/core/g;->a:Landroid/os/IInterface;

    check-cast v0, Lcom/lbe/security/service/core/internal/ae;

    sget v2, Lcom/lbe/security/service/core/internal/t;->e:I

    invoke-virtual {v0, v2}, Lcom/lbe/security/service/core/internal/ae;->a(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
