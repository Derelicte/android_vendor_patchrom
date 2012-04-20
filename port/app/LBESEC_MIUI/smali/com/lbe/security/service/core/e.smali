.class public final Lcom/lbe/security/service/core/e;
.super Lcom/lbe/security/service/core/internal/p;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static h:Lcom/lbe/security/service/core/e;


# instance fields
.field protected d:[Ljava/lang/String;

.field private g:Landroid/content/SharedPreferences;

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/lbe/security/service/core/internal/a;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/lbe/security/service/core/internal/p;-><init>(Landroid/content/Context;Lcom/lbe/security/service/core/internal/a;)V

    new-instance v0, Lcom/lbe/security/service/core/s;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/core/s;-><init>(Lcom/lbe/security/service/core/e;)V

    iput-object v0, p0, Lcom/lbe/security/service/core/e;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/lbe/security/service/core/t;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/core/t;-><init>(Lcom/lbe/security/service/core/e;)V

    iput-object v0, p0, Lcom/lbe/security/service/core/e;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/lbe/security/service/core/r;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/core/r;-><init>(Lcom/lbe/security/service/core/e;)V

    iput-object v0, p0, Lcom/lbe/security/service/core/e;->k:Ljava/lang/Runnable;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lbe/security/service/core/e;->d:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/lbe/security/service/core/e;->d:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/core/e;->g:Landroid/content/SharedPreferences;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/lbe/security/service/core/e;->d:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/lbe/security/service/core/e;)Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/core/e;->a:Landroid/os/IInterface;

    return-object v0
.end method

.method public static final declared-synchronized a(Landroid/app/Application;Lcom/lbe/security/service/core/internal/a;)V
    .locals 2

    const-class v1, Lcom/lbe/security/service/core/e;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/lbe/security/service/core/e;

    invoke-direct {v0, p0, p1}, Lcom/lbe/security/service/core/e;-><init>(Landroid/content/Context;Lcom/lbe/security/service/core/internal/a;)V

    sput-object v0, Lcom/lbe/security/service/core/e;->h:Lcom/lbe/security/service/core/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final e()Lcom/lbe/security/service/core/e;
    .locals 1

    sget-object v0, Lcom/lbe/security/service/core/e;->h:Lcom/lbe/security/service/core/e;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/e;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lbe/security/service/core/e;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/lbe/security/service/core/e;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lbe/security/service/core/e;->a(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/lbe/security/service/core/e;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/lbe/security/service/core/e;->a:Landroid/os/IInterface;

    check-cast v0, Lcom/lbe/security/service/core/internal/y;

    invoke-virtual {v0}, Lcom/lbe/security/service/core/internal/y;->e()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized j()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/e;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lbe/security/service/core/e;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/lbe/security/service/core/e;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lbe/security/service/core/e;->a(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/lbe/security/service/core/e;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/lbe/security/service/core/e;->a:Landroid/os/IInterface;

    check-cast v0, Lcom/lbe/security/service/core/internal/y;

    invoke-virtual {v0}, Lcom/lbe/security/service/core/internal/y;->f()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
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
    new-instance v0, Lcom/lbe/security/service/core/internal/y;

    invoke-direct {v0, v1}, Lcom/lbe/security/service/core/internal/y;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "stub_iphonesubinfo"

    return-object v0
.end method

.method protected final b()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized g()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/lbe/security/service/core/internal/p;->g()V

    iget-object v0, p0, Lcom/lbe/security/service/core/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/lbe/security/service/core/e;->g:Landroid/content/SharedPreferences;

    const-string v1, "use_ril_filter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lbe/security/service/core/e;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lbe/security/service/core/e;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/lbe/security/service/core/internal/p;->h()V

    iget-object v0, p0, Lcom/lbe/security/service/core/e;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/lbe/security/service/core/e;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v0, "use_ril_filter"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/core/e;->g:Landroid/content/SharedPreferences;

    const-string v1, "use_ril_filter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/lbe/security/service/core/e;->f()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/lbe/security/service/core/e;->j()V

    goto :goto_0
.end method
