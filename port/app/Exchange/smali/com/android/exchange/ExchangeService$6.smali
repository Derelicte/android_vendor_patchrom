.class Lcom/android/exchange/ExchangeService$6;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;)V
    .locals 0
    .parameter

    .prologue
    .line 1749
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$6;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1753
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1763
    :goto_0
    return-void

    .line 1754
    :cond_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$800()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1755
    :try_start_0
    const-string v0, "!!! EAS ExchangeService, onCreate"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1758
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$6;->this$0:Lcom/android/exchange/ExchangeService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.email.EXCHANGE_INTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/exchange/ExchangeService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1759
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1760
    monitor-exit v1

    goto :goto_0

    .line 1762
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
