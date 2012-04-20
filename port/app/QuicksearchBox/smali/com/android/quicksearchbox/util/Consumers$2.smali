.class final Lcom/android/quicksearchbox/util/Consumers$2;
.super Ljava/lang/Object;
.source "Consumers.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/util/Consumers;->consumeCloseableAsync(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$consumer:Lcom/android/quicksearchbox/util/Consumer;

.field final synthetic val$value:Lcom/android/quicksearchbox/util/QuietlyCloseable;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/quicksearchbox/util/Consumers$2;->val$consumer:Lcom/android/quicksearchbox/util/Consumer;

    iput-object p2, p0, Lcom/android/quicksearchbox/util/Consumers$2;->val$value:Lcom/android/quicksearchbox/util/QuietlyCloseable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/quicksearchbox/util/Consumers$2;->val$consumer:Lcom/android/quicksearchbox/util/Consumer;

    iget-object v1, p0, Lcom/android/quicksearchbox/util/Consumers$2;->val$value:Lcom/android/quicksearchbox/util/QuietlyCloseable;

    invoke-static {v0, v1}, Lcom/android/quicksearchbox/util/Consumers;->consumeCloseable(Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V

    .line 59
    return-void
.end method
