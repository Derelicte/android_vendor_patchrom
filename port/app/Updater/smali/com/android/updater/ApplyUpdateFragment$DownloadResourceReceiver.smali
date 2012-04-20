.class public Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplyUpdateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ApplyUpdateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadResourceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ApplyUpdateFragment;


# direct methods
.method public constructor <init>(Lcom/android/updater/ApplyUpdateFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 581
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, action:Ljava/lang/String;
    const-string v7, "extra_download_id"

    const-wide/16 v8, -0x1

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 583
    .local v3, id:J
    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v7, v7, Lcom/android/updater/ApplyUpdateFragment;->mDownloadUpdateManager:Lcom/android/updater/tasks/DownloadUpdateManager;

    invoke-virtual {v7}, Lcom/android/updater/tasks/DownloadUpdateManager;->getDownloadId()J

    move-result-wide v7

    cmp-long v7, v3, v7

    if-eqz v7, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    const-string v7, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 587
    iget-object v7, p0, Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    iget-object v7, v7, Lcom/android/updater/ApplyUpdateFragment;->mDownloadUpdateManager:Lcom/android/updater/tasks/DownloadUpdateManager;

    invoke-virtual {v7, v3, v4}, Lcom/android/updater/tasks/DownloadUpdateManager;->isDownloadSuccess(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 588
    iget-object v7, p0, Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/updater/ApplyUpdateFragment;->Downloadfinish(I)V

    goto :goto_0

    .line 590
    :cond_2
    iget-object v7, p0, Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/updater/ApplyUpdateFragment;->Downloadfinish(I)V

    goto :goto_0

    .line 592
    :cond_3
    const-string v7, "android.intent.action.DOWNLOAD_UPDATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 593
    const-string v7, "extra_download_current_bytes"

    const-wide/16 v8, 0x0

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 594
    .local v1, currentBytes:J
    const-string v7, "extra_download_total_bytes"

    const-wide/16 v8, 0x0

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 595
    .local v5, totalBytes:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_4

    .line 596
    iget-object v7, p0, Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #calls: Lcom/android/updater/ApplyUpdateFragment;->updateDownloadBar(JJ)V
    invoke-static {v7, v1, v2, v5, v6}, Lcom/android/updater/ApplyUpdateFragment;->access$500(Lcom/android/updater/ApplyUpdateFragment;JJ)V

    .line 597
    iget-object v7, p0, Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #calls: Lcom/android/updater/ApplyUpdateFragment;->updateDownloadNotification()V
    invoke-static {v7}, Lcom/android/updater/ApplyUpdateFragment;->access$600(Lcom/android/updater/ApplyUpdateFragment;)V

    goto :goto_0

    .line 599
    :cond_4
    iget-object v7, p0, Lcom/android/updater/ApplyUpdateFragment$DownloadResourceReceiver;->this$0:Lcom/android/updater/ApplyUpdateFragment;

    #getter for: Lcom/android/updater/ApplyUpdateFragment;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v7}, Lcom/android/updater/ApplyUpdateFragment;->access$100(Lcom/android/updater/ApplyUpdateFragment;)Landroid/widget/ProgressBar;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0
.end method
