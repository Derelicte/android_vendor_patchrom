.class public Lcom/lbe/security/service/SecurityService;
.super Landroid/app/Service;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private a:Lcom/lbe/security/service/privacy/j;

.field private b:Landroid/content/SharedPreferences;

.field private c:Lcom/a/a/h;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lbe/security/service/SecurityService;->d:Landroid/os/Handler;

    new-instance v0, Lcom/lbe/security/service/c;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/c;-><init>(Lcom/lbe/security/service/SecurityService;)V

    iput-object v0, p0, Lcom/lbe/security/service/SecurityService;->e:Ljava/lang/Runnable;

    new-instance v0, Lcom/lbe/security/service/d;

    invoke-direct {v0, p0}, Lcom/lbe/security/service/d;-><init>(Lcom/lbe/security/service/SecurityService;)V

    iput-object v0, p0, Lcom/lbe/security/service/SecurityService;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/lbe/security/service/SecurityService;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/SecurityService;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/lbe/security/service/SecurityService;->b:Landroid/content/SharedPreferences;

    const-string v1, "enable_hips_service"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/SecurityService;->a:Lcom/lbe/security/service/privacy/j;

    invoke-virtual {v0}, Lcom/lbe/security/service/privacy/j;->d()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/SecurityService;->a:Lcom/lbe/security/service/privacy/j;

    invoke-virtual {v0}, Lcom/lbe/security/service/privacy/j;->b()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/lbe/security/service/SecurityService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/SecurityService;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/lbe/security/service/SecurityService;->a:Lcom/lbe/security/service/privacy/j;

    invoke-virtual {v0}, Lcom/lbe/security/service/privacy/j;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/SecurityService;->a:Lcom/lbe/security/service/privacy/j;

    invoke-virtual {v0}, Lcom/lbe/security/service/privacy/j;->c()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/lbe/security/service/SecurityService;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/lbe/security/service/SecurityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/lbe/security/service/SecurityService;->b:Landroid/content/SharedPreferences;

    const-string v4, "send_with_wifi_only"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method static synthetic d(Lcom/lbe/security/service/SecurityService;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "HIPSSERVICE"

    iget-object v2, p0, Lcom/lbe/security/service/SecurityService;->a:Lcom/lbe/security/service/privacy/j;

    invoke-virtual {v2}, Lcom/lbe/security/service/privacy/j;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lbe/security/service/SecurityService;->c:Lcom/a/a/h;

    const-string v2, "DAILY_USAGE"

    invoke-virtual {v1, v2, v0}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/lbe/security/service/SecurityService;->b:Landroid/content/SharedPreferences;

    const-string v1, "enable_anonymous_report"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/SecurityService;->c:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/h;->c()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/lbe/security/service/SecurityService;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/SecurityService;->f:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic f(Lcom/lbe/security/service/SecurityService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/SecurityService;->e:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/SecurityService;->b:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/lbe/security/service/privacy/j;->a()Lcom/lbe/security/service/privacy/j;

    move-result-object v0

    iput-object v0, p0, Lcom/lbe/security/service/SecurityService;->a:Lcom/lbe/security/service/privacy/j;

    new-instance v0, Lcom/a/a/h;

    invoke-virtual {p0}, Lcom/lbe/security/service/SecurityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lbe/security/service/SecurityService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/a/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lbe/security/service/SecurityService;->c:Lcom/a/a/h;

    iget-object v0, p0, Lcom/lbe/security/service/SecurityService;->c:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/h;->a()V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/lbe/security/service/SecurityService;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/lbe/security/service/SecurityService;->b()V

    iget-object v0, p0, Lcom/lbe/security/service/SecurityService;->c:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/h;->b()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    const-string v0, "enable_hips_service"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lbe/security/service/SecurityService;->a:Lcom/lbe/security/service/privacy/j;

    invoke-virtual {v0}, Lcom/lbe/security/service/privacy/j;->d()I

    move-result v0

    iget-object v1, p0, Lcom/lbe/security/service/SecurityService;->b:Landroid/content/SharedPreferences;

    const-string v2, "enable_hips_service"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/lbe/security/service/SecurityService;->a()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/lbe/security/service/SecurityService;->b()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    invoke-direct {p0}, Lcom/lbe/security/service/SecurityService;->a()V

    iget-object v0, p0, Lcom/lbe/security/service/SecurityService;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/lbe/security/service/SecurityService;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lbe/security/service/SecurityService;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
