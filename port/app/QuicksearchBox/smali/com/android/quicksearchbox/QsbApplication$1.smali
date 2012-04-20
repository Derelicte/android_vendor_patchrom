.class Lcom/android/quicksearchbox/QsbApplication$1;
.super Ljava/lang/Object;
.source "QsbApplication.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/QsbApplication;->createExecutorFactory(I)Lcom/android/quicksearchbox/util/Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/Factory",
        "<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/QsbApplication;

.field final synthetic val$numThreads:I

.field final synthetic val$threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/QsbApplication;ILjava/util/concurrent/ThreadFactory;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/quicksearchbox/QsbApplication$1;->this$0:Lcom/android/quicksearchbox/QsbApplication;

    iput p2, p0, Lcom/android/quicksearchbox/QsbApplication$1;->val$numThreads:I

    iput-object p3, p0, Lcom/android/quicksearchbox/QsbApplication$1;->val$threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplication$1;->create()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public create()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 247
    iget v0, p0, Lcom/android/quicksearchbox/QsbApplication$1;->val$numThreads:I

    iget-object v1, p0, Lcom/android/quicksearchbox/QsbApplication$1;->val$threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
