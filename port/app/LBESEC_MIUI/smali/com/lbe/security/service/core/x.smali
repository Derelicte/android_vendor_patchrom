.class public final Lcom/lbe/security/service/core/x;
.super Lcom/lbe/security/service/core/internal/p;


# static fields
.field private static g:Lcom/lbe/security/service/core/x;


# instance fields
.field protected d:J

.field private h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lbe/security/service/core/x;->g:Lcom/lbe/security/service/core/x;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/lbe/security/service/core/internal/a;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/lbe/security/service/core/internal/p;-><init>(Landroid/content/Context;Lcom/lbe/security/service/core/internal/a;)V

    new-instance v0, Lcom/lbe/security/service/core/u;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/core/u;-><init>(Lcom/lbe/security/service/core/x;)V

    iput-object v0, p0, Lcom/lbe/security/service/core/x;->h:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/lbe/security/service/core/x;)Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/core/x;->a:Landroid/os/IInterface;

    return-object v0
.end method

.method public static final declared-synchronized a(Landroid/app/Application;Lcom/lbe/security/service/core/internal/a;)V
    .locals 2

    const-class v1, Lcom/lbe/security/service/core/x;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/lbe/security/service/core/x;

    invoke-direct {v0, p0, p1}, Lcom/lbe/security/service/core/x;-><init>(Landroid/content/Context;Lcom/lbe/security/service/core/internal/a;)V

    sput-object v0, Lcom/lbe/security/service/core/x;->g:Lcom/lbe/security/service/core/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final e()Lcom/lbe/security/service/core/x;
    .locals 1

    sget-object v0, Lcom/lbe/security/service/core/x;->g:Lcom/lbe/security/service/core/x;

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
    new-instance v0, Lcom/lbe/security/service/core/internal/f;

    invoke-direct {v0, v1}, Lcom/lbe/security/service/core/internal/f;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "stub_location"

    return-object v0
.end method

.method protected final b()V
    .locals 0

    return-void
.end method
