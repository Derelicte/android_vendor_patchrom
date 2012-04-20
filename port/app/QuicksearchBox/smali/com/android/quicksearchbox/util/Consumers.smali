.class public Lcom/android/quicksearchbox/util/Consumers;
.super Ljava/lang/Object;
.source "Consumers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consumeAsync(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;Ljava/lang/Object;)V
    .locals 1
    .parameter "handler"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<TA;>;TA;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<TA;>;"
    .local p2, value:Ljava/lang/Object;,"TA;"
    if-nez p0, :cond_0

    .line 41
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v0, Lcom/android/quicksearchbox/util/Consumers$1;

    invoke-direct {v0, p1, p2}, Lcom/android/quicksearchbox/util/Consumers$1;-><init>(Lcom/android/quicksearchbox/util/Consumer;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static consumeCloseable(Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/android/quicksearchbox/util/QuietlyCloseable;",
            ">(",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<TA;>;TA;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<TA;>;"
    .local p1, value:Lcom/android/quicksearchbox/util/QuietlyCloseable;,"TA;"
    const/4 v0, 0x0

    .line 32
    .local v0, accepted:Z
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 34
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/quicksearchbox/util/QuietlyCloseable;->close()V

    .line 36
    :cond_0
    return-void

    .line 34
    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/quicksearchbox/util/QuietlyCloseable;->close()V

    :cond_1
    throw v1
.end method

.method public static consumeCloseableAsync(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V
    .locals 1
    .parameter "handler"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/android/quicksearchbox/util/QuietlyCloseable;",
            ">(",
            "Landroid/os/Handler;",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<TA;>;TA;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<TA;>;"
    .local p2, value:Lcom/android/quicksearchbox/util/QuietlyCloseable;,"TA;"
    if-nez p0, :cond_0

    .line 54
    invoke-static {p1, p2}, Lcom/android/quicksearchbox/util/Consumers;->consumeCloseable(Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v0, Lcom/android/quicksearchbox/util/Consumers$2;

    invoke-direct {v0, p1, p2}, Lcom/android/quicksearchbox/util/Consumers$2;-><init>(Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static createAsyncCloseableConsumer(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;)Lcom/android/quicksearchbox/util/Consumer;
    .locals 1
    .parameter "handler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/android/quicksearchbox/util/QuietlyCloseable;",
            ">(",
            "Landroid/os/Handler;",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<TA;>;)",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<TA;>;"
    new-instance v0, Lcom/android/quicksearchbox/util/Consumers$4;

    invoke-direct {v0, p0, p1}, Lcom/android/quicksearchbox/util/Consumers$4;-><init>(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;)V

    return-object v0
.end method

.method public static createAsyncConsumer(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;)Lcom/android/quicksearchbox/util/Consumer;
    .locals 1
    .parameter "handler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<TA;>;)",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<TA;>;"
    new-instance v0, Lcom/android/quicksearchbox/util/Consumers$3;

    invoke-direct {v0, p0, p1}, Lcom/android/quicksearchbox/util/Consumers$3;-><init>(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;)V

    return-object v0
.end method
