.class Lcom/android/browser/reading/ReadingModeController$ReadingDataRunnable;
.super Ljava/lang/Object;
.source "ReadingModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/reading/ReadingModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadingDataRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/reading/ReadingModeController;


# direct methods
.method private constructor <init>(Lcom/android/browser/reading/ReadingModeController;)V
    .locals 0
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModeController$ReadingDataRunnable;->this$0:Lcom/android/browser/reading/ReadingModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/reading/ReadingModeController;Lcom/android/browser/reading/ReadingModeController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/android/browser/reading/ReadingModeController$ReadingDataRunnable;-><init>(Lcom/android/browser/reading/ReadingModeController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController$ReadingDataRunnable;->this$0:Lcom/android/browser/reading/ReadingModeController;

    invoke-static {v0}, Lcom/android/browser/reading/ReadingModeController;->access$1308(Lcom/android/browser/reading/ReadingModeController;)I

    .line 520
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController$ReadingDataRunnable;->this$0:Lcom/android/browser/reading/ReadingModeController;

    #calls: Lcom/android/browser/reading/ReadingModeController;->getNextPage()V
    invoke-static {v0}, Lcom/android/browser/reading/ReadingModeController;->access$500(Lcom/android/browser/reading/ReadingModeController;)V

    .line 521
    return-void
.end method
