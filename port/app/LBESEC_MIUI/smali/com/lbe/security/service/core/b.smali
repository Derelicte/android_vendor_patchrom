.class public final Lcom/lbe/security/service/core/b;
.super Lcom/lbe/security/service/core/internal/p;


# static fields
.field public static final d:Ljava/util/List;

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:Lcom/lbe/security/service/core/b;


# instance fields
.field private n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lbe/security/service/core/b;->d:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/ContentProviderMap;

    const-string v2, "contacts"

    const-string v3, "com.lbe.security.miui.privacy.content"

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/ContentProviderMap;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/b;->d:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/ContentProviderMap;

    const-string v2, "com.android.contacts"

    const-string v3, "com.lbe.security.miui.privacy.content"

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/ContentProviderMap;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/b;->d:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/ContentProviderMap;

    const-string v2, "call_log"

    const-string v3, "com.lbe.security.miui.privacy.content"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/lbe/security/service/core/internal/ContentProviderMap;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/b;->d:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/ContentProviderMap;

    const-string v2, "sms"

    const-string v3, "com.lbe.security.miui.privacy.content"

    invoke-direct {v1, v2, v3, v6}, Lcom/lbe/security/service/core/internal/ContentProviderMap;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/b;->d:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/ContentProviderMap;

    const-string v2, "mms"

    const-string v3, "com.lbe.security.miui.privacy.content"

    invoke-direct {v1, v2, v3, v6}, Lcom/lbe/security/service/core/internal/ContentProviderMap;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lbe/security/service/core/b;->d:Ljava/util/List;

    new-instance v1, Lcom/lbe/security/service/core/internal/ContentProviderMap;

    const-string v2, "mms-sms"

    const-string v3, "com.lbe.security.miui.privacy.content"

    invoke-direct {v1, v2, v3, v6}, Lcom/lbe/security/service/core/internal/ContentProviderMap;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.content.pm.IPackageManager$Stub"

    const-string v1, "TRANSACTION_setApplicationEnabledSetting"

    invoke-static {v0, v1, v5}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/b;->h:I

    const-string v0, "android.content.pm.IPackageManager$Stub"

    const-string v1, "TRANSACTION_setComponentEnabledSetting"

    invoke-static {v0, v1, v5}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/b;->g:I

    const-string v0, "android.content.pm.IPackageManager$Stub"

    const-string v1, "TRANSACTION_deleteApplicationCacheFiles"

    invoke-static {v0, v1, v5}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/b;->i:I

    const-string v0, "android.app.IActivityManager"

    const-string v1, "FORCE_STOP_PACKAGE_TRANSACTION"

    invoke-static {v0, v1, v5}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/b;->j:I

    const-string v0, "android.content.pm.IPackageManager$Stub"

    const-string v1, "TRANSACTION_movePackage"

    invoke-static {v0, v1, v5}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/b;->k:I

    const-string v0, "android.content.pm.IPackageManager$Stub"

    const-string v1, "TRANSACTION_deletePackage"

    invoke-static {v0, v1, v5}, Lcom/lbe/security/service/core/internal/aq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lbe/security/service/core/b;->l:I

    const/4 v0, 0x0

    sput-object v0, Lcom/lbe/security/service/core/b;->m:Lcom/lbe/security/service/core/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/lbe/security/service/core/internal/a;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/lbe/security/service/core/internal/p;-><init>(Landroid/content/Context;Lcom/lbe/security/service/core/internal/a;)V

    new-instance v0, Lcom/lbe/security/service/core/w;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/core/w;-><init>(Lcom/lbe/security/service/core/b;)V

    iput-object v0, p0, Lcom/lbe/security/service/core/b;->n:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/lbe/security/service/core/b;)Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/core/b;->a:Landroid/os/IInterface;

    return-object v0
.end method

.method public static final declared-synchronized a(Landroid/app/Application;Lcom/lbe/security/service/core/internal/a;)V
    .locals 2

    const-class v1, Lcom/lbe/security/service/core/b;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/lbe/security/service/core/b;

    invoke-direct {v0, p0, p1}, Lcom/lbe/security/service/core/b;-><init>(Landroid/content/Context;Lcom/lbe/security/service/core/internal/a;)V

    sput-object v0, Lcom/lbe/security/service/core/b;->m:Lcom/lbe/security/service/core/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final e()Lcom/lbe/security/service/core/b;
    .locals 1

    sget-object v0, Lcom/lbe/security/service/core/b;->m:Lcom/lbe/security/service/core/b;

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
    new-instance v0, Lcom/lbe/security/service/core/internal/q;

    invoke-direct {v0, v1}, Lcom/lbe/security/service/core/internal/q;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "stub_activity"

    return-object v0
.end method

.method protected final b()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/core/b;->n:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lbe/security/service/core/b;->a(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/lbe/security/service/core/b;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/core/b;->n:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
