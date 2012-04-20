.class Lcom/android/mms/transaction/TransactionService$3;
.super Ljava/lang/Object;
.source "TransactionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$3;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$3;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->checkMobileNetworkOrStop()Z
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$3;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityRetryCount:I
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$1300(Lcom/android/mms/transaction/TransactionService;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$3;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$1304(Lcom/android/mms/transaction/TransactionService;)I

    .line 246
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$3;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->connectAndProcessNextTransaction()V
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$1200(Lcom/android/mms/transaction/TransactionService;)V

    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$3;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$1400(Lcom/android/mms/transaction/TransactionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 249
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$3;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->scheduleNextRetry()V
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$1500(Lcom/android/mms/transaction/TransactionService;)V

    goto :goto_0
.end method
