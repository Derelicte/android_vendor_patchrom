.class final Lcom/lbe/security/service/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/lbe/security/service/SecurityService;


# direct methods
.method constructor <init>(Lcom/lbe/security/service/SecurityService;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/c;->a:Lcom/lbe/security/service/SecurityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-wide/32 v3, 0x2932e00

    iget-object v0, p0, Lcom/lbe/security/service/c;->a:Lcom/lbe/security/service/SecurityService;

    invoke-static {v0}, Lcom/lbe/security/service/SecurityService;->a(Lcom/lbe/security/service/SecurityService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_daily_state_date"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/lbe/security/service/b/a;->a()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/c;->a:Lcom/lbe/security/service/SecurityService;

    invoke-static {v0}, Lcom/lbe/security/service/SecurityService;->b(Lcom/lbe/security/service/SecurityService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/c;->a:Lcom/lbe/security/service/SecurityService;

    invoke-static {v0}, Lcom/lbe/security/service/SecurityService;->a(Lcom/lbe/security/service/SecurityService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_daily_state_date"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/lbe/security/service/c;->a:Lcom/lbe/security/service/SecurityService;

    invoke-static {v0}, Lcom/lbe/security/service/SecurityService;->c(Lcom/lbe/security/service/SecurityService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lbe/security/service/c;->a:Lcom/lbe/security/service/SecurityService;

    invoke-static {v0}, Lcom/lbe/security/service/SecurityService;->d(Lcom/lbe/security/service/SecurityService;)V

    iget-object v0, p0, Lcom/lbe/security/service/c;->a:Lcom/lbe/security/service/SecurityService;

    invoke-static {v0}, Lcom/lbe/security/service/SecurityService;->b(Lcom/lbe/security/service/SecurityService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lbe/security/service/c;->a:Lcom/lbe/security/service/SecurityService;

    iget-object v1, p0, Lcom/lbe/security/service/c;->a:Lcom/lbe/security/service/SecurityService;

    invoke-static {v1}, Lcom/lbe/security/service/SecurityService;->e(Lcom/lbe/security/service/SecurityService;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/lbe/security/service/SecurityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method
