.class Lcom/android/mms/transaction/TransactionService$6;
.super Ljava/lang/Object;
.source "TransactionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/TransactionService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;

.field final synthetic val$args:Lcom/android/mms/transaction/TransactionBundle;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionBundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$6;->this$0:Lcom/android/mms/transaction/TransactionService;

    iput-object p2, p0, Lcom/android/mms/transaction/TransactionService$6;->val$args:Lcom/android/mms/transaction/TransactionBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$6;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$6;->val$args:Lcom/android/mms/transaction/TransactionBundle;

    #calls: Lcom/android/mms/transaction/TransactionService;->enqueueSingleMessage(Lcom/android/mms/transaction/TransactionBundle;)V
    invoke-static {v0, v1}, Lcom/android/mms/transaction/TransactionService;->access$1800(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionBundle;)V

    .line 380
    return-void
.end method
