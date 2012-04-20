.class Lcom/android/mms/transaction/TransactionService$1$1;
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


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$1$1;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1$1;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$000(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/Transaction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "Mms disconnected, aborting current transaction %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$1$1;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v2, v2, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$000(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/Transaction;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1$1;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$000(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/transaction/Transaction;->abort()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    const-string v0, "Transaction aborted. Restarting."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1$1;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->setRetryCount(I)V
    invoke-static {v0, v3}, Lcom/android/mms/transaction/TransactionService;->access$100(Lcom/android/mms/transaction/TransactionService;I)V

    .line 171
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1$1;->this$1:Lcom/android/mms/transaction/TransactionService$1;

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    #setter for: Lcom/android/mms/transaction/TransactionService;->mRestartCurrentTransaction:Z
    invoke-static {v0, v4}, Lcom/android/mms/transaction/TransactionService;->access$202(Lcom/android/mms/transaction/TransactionService;Z)Z

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const-string v0, "Transaction not aborted."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
