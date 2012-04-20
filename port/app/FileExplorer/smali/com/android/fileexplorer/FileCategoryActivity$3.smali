.class Lcom/android/fileexplorer/FileCategoryActivity$3;
.super Ljava/util/TimerTask;
.source "FileCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileCategoryActivity;->notifyFileChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileCategoryActivity;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileCategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/fileexplorer/FileCategoryActivity$3;->this$0:Lcom/android/fileexplorer/FileCategoryActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 589
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity$3;->this$0:Lcom/android/fileexplorer/FileCategoryActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/fileexplorer/FileCategoryActivity;->timer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lcom/android/fileexplorer/FileCategoryActivity;->access$602(Lcom/android/fileexplorer/FileCategoryActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 590
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 591
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 592
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity$3;->this$0:Lcom/android/fileexplorer/FileCategoryActivity;

    #getter for: Lcom/android/fileexplorer/FileCategoryActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/fileexplorer/FileCategoryActivity;->access$700(Lcom/android/fileexplorer/FileCategoryActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 593
    return-void
.end method
