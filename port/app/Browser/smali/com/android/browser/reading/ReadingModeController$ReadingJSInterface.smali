.class final Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;
.super Ljava/lang/Object;
.source "ReadingModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/reading/ReadingModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadingJSInterface"
.end annotation


# instance fields
.field private forTest:Z

.field final synthetic this$0:Lcom/android/browser/reading/ReadingModeController;


# direct methods
.method private constructor <init>(Lcom/android/browser/reading/ReadingModeController;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->this$0:Lcom/android/browser/reading/ReadingModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/reading/ReadingModeController;Lcom/android/browser/reading/ReadingModeController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;-><init>(Lcom/android/browser/reading/ReadingModeController;)V

    return-void
.end method


# virtual methods
.method public doNothing()V
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->forTest:Z

    .line 443
    invoke-virtual {p0}, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->queryNextPage()V

    .line 444
    invoke-virtual {p0}, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->removeOldPage()V

    .line 445
    invoke-virtual {p0}, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->pageUp()V

    .line 446
    invoke-virtual {p0}, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->pageDown()V

    .line 447
    invoke-virtual {p0}, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->getIsNightMode()Ljava/lang/String;

    .line 448
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->log(Ljava/lang/String;)V

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->forTest:Z

    .line 451
    return-void
.end method

.method public getIsNightMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    const-string v0, "false"

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->forTest:Z

    if-eqz v0, :cond_0

    .line 503
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-static {}, Lcom/android/browser/reading/ReadingModeController;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pageDown()V
    .locals 2

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->forTest:Z

    if-eqz v0, :cond_0

    .line 492
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->this$0:Lcom/android/browser/reading/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/reading/ReadingModeController;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface$2;

    invoke-direct {v1, p0}, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface$2;-><init>(Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public pageUp()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->this$0:Lcom/android/browser/reading/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/reading/ReadingModeController;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface$1;

    invoke-direct {v1, p0}, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface$1;-><init>(Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 479
    return-void
.end method

.method public queryNextPage()V
    .locals 4

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->forTest:Z

    if-eqz v0, :cond_0

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->this$0:Lcom/android/browser/reading/ReadingModeController;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/reading/ReadingModeController;->mRetry:I
    invoke-static {v0, v1}, Lcom/android/browser/reading/ReadingModeController;->access$402(Lcom/android/browser/reading/ReadingModeController;I)I

    .line 460
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->this$0:Lcom/android/browser/reading/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/reading/ReadingModeController;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/reading/ReadingModeController$ReadingDataRunnable;

    iget-object v2, p0, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->this$0:Lcom/android/browser/reading/ReadingModeController;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/browser/reading/ReadingModeController$ReadingDataRunnable;-><init>(Lcom/android/browser/reading/ReadingModeController;Lcom/android/browser/reading/ReadingModeController$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removeOldPage()V
    .locals 2

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->forTest:Z

    if-eqz v0, :cond_0

    .line 469
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->this$0:Lcom/android/browser/reading/ReadingModeController;

    #getter for: Lcom/android/browser/reading/ReadingModeController;->mReadingData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/browser/reading/ReadingModeController;->access$1000(Lcom/android/browser/reading/ReadingModeController;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method
