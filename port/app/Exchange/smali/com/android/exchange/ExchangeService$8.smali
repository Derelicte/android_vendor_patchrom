.class Lcom/android/exchange/ExchangeService$8;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->onDestroy()V
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
    .line 1832
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$8;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1836
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1500()Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1844
    :cond_0
    :goto_0
    return-void

    .line 1837
    :cond_1
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$800()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1839
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1500()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1840
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->access$1302(Z)Z

    .line 1841
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1500()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1843
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
