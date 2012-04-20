.class Lcom/android/mms/transaction/TransactionService$1$2;
.super Ljava/lang/Object;
.source "TransactionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/TransactionService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/transaction/TransactionService$1;

.field final synthetic val$info:Landroid/net/NetworkInfo;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService$1;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$1$2;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iput-object p2, p0, Lcom/android/mms/transaction/TransactionService$1$2;->val$info:Landroid/net/NetworkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 188
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1$2;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    new-instance v1, Lcom/android/mms/transaction/TransactionSettings;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$1$2;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v2, v2, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$1$2;->val$info:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #setter for: Lcom/android/mms/transaction/TransactionService;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    invoke-static {v0, v1}, Lcom/android/mms/transaction/TransactionService;->access$402(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionSettings;)Lcom/android/mms/transaction/TransactionSettings;

    .line 192
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1$2;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    const-string v0, "  empty MMSC url, bail"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1$2;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v1, v0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1$2;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1$2;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$1$2;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v2, v2, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityTimeoutCallback:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$600(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 202
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1$2;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$1$2;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v2, v2, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mRetryMmsConnectivityCallback:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1$2;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1$2;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mKeepMmsConnectivityCallback:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->access$800(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Runnable;

    move-result-object v1

    const/16 v2, 0x1388

    #calls: Lcom/android/mms/transaction/TransactionService;->runInWorkerThread(Ljava/lang/Runnable;I)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;Ljava/lang/Runnable;I)V

    .line 209
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1$2;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$000(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/Transaction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    const-string v0, "Mms connected, starting next transaction."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1$2;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->processNextTransaction()V
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;)V

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
