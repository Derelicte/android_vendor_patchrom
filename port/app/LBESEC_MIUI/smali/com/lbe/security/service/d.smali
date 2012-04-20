.class final Lcom/lbe/security/service/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/lbe/security/service/SecurityService;


# direct methods
.method constructor <init>(Lcom/lbe/security/service/SecurityService;)V
    .locals 0

    iput-object p1, p0, Lcom/lbe/security/service/d;->a:Lcom/lbe/security/service/SecurityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/lbe/security/service/d;->a:Lcom/lbe/security/service/SecurityService;

    invoke-static {v0}, Lcom/lbe/security/service/SecurityService;->c(Lcom/lbe/security/service/SecurityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lbe/security/service/d;->a:Lcom/lbe/security/service/SecurityService;

    invoke-static {v0}, Lcom/lbe/security/service/SecurityService;->d(Lcom/lbe/security/service/SecurityService;)V

    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/d;->a:Lcom/lbe/security/service/SecurityService;

    invoke-virtual {v0, p0}, Lcom/lbe/security/service/SecurityService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/lbe/security/service/d;->a:Lcom/lbe/security/service/SecurityService;

    invoke-static {v0}, Lcom/lbe/security/service/SecurityService;->b(Lcom/lbe/security/service/SecurityService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lbe/security/service/d;->a:Lcom/lbe/security/service/SecurityService;

    invoke-static {v1}, Lcom/lbe/security/service/SecurityService;->f(Lcom/lbe/security/service/SecurityService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x2932e00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
