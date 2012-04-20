.class Lcom/android/browser/reading/ReadingModeController$2;
.super Ljava/lang/Object;
.source "ReadingModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/reading/ReadingModeController;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/reading/ReadingModeController;


# direct methods
.method constructor <init>(Lcom/android/browser/reading/ReadingModeController;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModeController$2;->this$0:Lcom/android/browser/reading/ReadingModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController$2;->this$0:Lcom/android/browser/reading/ReadingModeController;

    #getter for: Lcom/android/browser/reading/ReadingModeController;->mView:Lcom/android/browser/MiuiBrowserWebView;
    invoke-static {v0}, Lcom/android/browser/reading/ReadingModeController;->access$1200(Lcom/android/browser/reading/ReadingModeController;)Lcom/android/browser/MiuiBrowserWebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/MiuiBrowserWebView;->onReadingModeDataReady(Z)V

    .line 512
    return-void
.end method
