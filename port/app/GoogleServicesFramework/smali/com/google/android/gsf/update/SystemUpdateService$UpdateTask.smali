.class Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;
.super Landroid/os/AsyncTask;
.source "SystemUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/update/SystemUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mLastDownloadBytes:J

.field private mLastDownloadStatus:I

.field private mProvisioned:Z

.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdateService;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/update/SystemUpdateService;)V
    .locals 1
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mProvisioned:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;-><init>(Lcom/google/android/gsf/update/SystemUpdateService;)V

    return-void
.end method

.method private cancelUpdate()V
    .locals 4

    .prologue
    const/high16 v3, 0x1000

    .line 836
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 837
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mPending:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1400(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 839
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mVerifierLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1100(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 840
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 841
    const-string v0, "SystemUpdateService"

    const-string v2, "cancelUpdate: cancelling verifier"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->cancel(Z)Z

    .line 843
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
    invoke-static {v0, v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1202(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateVerifierTask;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    .line 845
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mDownload:Lcom/google/android/gsf/update/Download;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1300(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/update/Download;->removeAllDownloads()V

    .line 849
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_approved"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install_approved"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "url"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "url_change"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_mobile"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filename"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "verified"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_dialog"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notified"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "started_download"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pending_filename"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "success_message"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "failure_message"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "status"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 869
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-class v2, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 871
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 872
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/update/SystemUpdateService;->startActivity(Landroid/content/Intent;)V

    .line 875
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-class v2, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 877
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 878
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/update/SystemUpdateService;->startActivity(Landroid/content/Intent;)V

    .line 880
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->cancelNotifications(Landroid/content/Context;)V

    .line 881
    return-void

    .line 845
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private checkDownload(Ljava/lang/String;I)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x0

    const-wide/16 v7, 0x0

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 586
    invoke-direct {p0, p2}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->isAutomaticallyDownloaded(I)Z

    move-result v1

    if-nez v1, :cond_3

    move v3, v0

    .line 587
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->isMobileDownloadAllowedNow()Z

    move-result v5

    .line 589
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mDownload:Lcom/google/android/gsf/update/Download;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1300(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/update/Download;->getStatus()Lcom/google/android/gsf/update/Download$StatusInfo;

    move-result-object v1

    .line 590
    if-nez v1, :cond_5

    .line 591
    const-string v1, "SystemUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "starting download of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 599
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "update_download_watchdog_sec"

    const/16 v9, 0x5460

    invoke-static {v1, v2, v9}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 601
    if-lez v1, :cond_12

    .line 602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    add-long/2addr v1, v9

    .line 603
    const-string v9, "watchdog_deadline"

    invoke-interface {v4, v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 606
    :goto_1
    const-string v9, "download_mobile"

    invoke-interface {v4, v9, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 607
    if-nez v5, :cond_0

    .line 608
    iget-object v9, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v9}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v9, v10}, Lcom/google/android/gsf/update/SystemUpdateService;->whenMobileAllowed(Landroid/content/SharedPreferences;Landroid/content/Context;)J

    move-result-wide v9

    .line 609
    cmp-long v11, v9, v7

    if-lez v11, :cond_0

    cmp-long v11, v9, v1

    if-gez v11, :cond_0

    move-wide v1, v9

    .line 613
    :cond_0
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 614
    cmp-long v4, v1, v7

    if-lez v4, :cond_1

    .line 615
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->retryAt(JZ)V

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_token"

    invoke-static {v0, v1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 619
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mDownload:Lcom/google/android/gsf/update/Download;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1300(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->getAllowRoaming(I)Z

    move-result v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/update/Download;->downloadUpdate(Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    .line 625
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mDownload:Lcom/google/android/gsf/update/Download;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1300(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/update/Download;->getStatus()Lcom/google/android/gsf/update/Download$StatusInfo;

    move-result-object v0

    .line 626
    if-nez v0, :cond_4

    .line 627
    const-string v0, "SystemUpdateService"

    const-string v1, "just-started download disappeared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 629
    invoke-direct {p0, p2, v6}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->downloadFailed(II)V

    .line 761
    :cond_2
    :goto_2
    return v6

    :cond_3
    move v3, v6

    .line 586
    goto/16 :goto_0

    .line 631
    :cond_4
    iget v1, v0, Lcom/google/android/gsf/update/Download$StatusInfo;->reason:I

    iput v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadStatus:I

    .line 632
    iget-wide v1, v0, Lcom/google/android/gsf/update/Download$StatusInfo;->bytesSoFar:J

    iput-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadBytes:J

    .line 633
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "status"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "download_id"

    iget-wide v3, v0, Lcom/google/android/gsf/update/Download$StatusInfo;->id:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "verified"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 641
    :cond_5
    const-string v2, "SystemUpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "download in progress: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gsf/update/Download$StatusInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget v2, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->reason:I

    iput v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadStatus:I

    .line 643
    iget-wide v9, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->bytesSoFar:J

    iput-wide v9, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadBytes:J

    .line 646
    iget-boolean v2, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->completed:Z

    if-nez v2, :cond_7

    .line 649
    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "download_mobile"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 654
    const-string v0, "SystemUpdateService"

    const-string v1, "non-mobile download took too long; will retry allowing mobile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mDownload:Lcom/google/android/gsf/update/Download;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1300(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/update/Download;->removeAllDownloads()V

    .line 656
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->checkDownload(Ljava/lang/String;I)Z

    move-result v6

    goto :goto_2

    .line 659
    :cond_6
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "watchdog_deadline"

    invoke-interface {v0, v1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 660
    cmp-long v2, v0, v7

    if-lez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 661
    const-string v0, "SystemUpdateService"

    const-string v1, "download took too long; will cancel and retry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 663
    invoke-direct {p0, p2, v6}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->downloadFailed(II)V

    goto/16 :goto_2

    .line 668
    :cond_7
    iget-boolean v2, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->successful:Z

    if-nez v2, :cond_8

    .line 670
    const-string v0, "SystemUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download failed (reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->reason:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-direct {p0, p2, v6}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->downloadFailed(II)V

    goto/16 :goto_2

    .line 675
    :cond_8
    iget-object v2, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->filename:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 676
    const-string v0, "SystemUpdateService"

    const-string v1, "download completed but no filename available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-direct {p0, p2, v6}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->downloadFailed(II)V

    goto/16 :goto_2

    .line 681
    :cond_9
    iget-wide v4, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->id:J

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v9, "download_id"

    const-wide/16 v10, -0x1

    invoke-interface {v2, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v2, v4, v9

    if-nez v2, :cond_a

    iget-object v2, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->filename:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "filename"

    invoke-interface {v4, v5, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 683
    :cond_a
    const-string v2, "SystemUpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download id now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v9, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->id:J

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; filename now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->filename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "filename"

    iget-object v5, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->filename:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "download_id"

    iget-wide v9, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->id:J

    invoke-interface {v2, v4, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "verified"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 689
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mVerifierLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1100(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 690
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 691
    const-string v4, "SystemUpdateService"

    const-string v5, "checkDownload: cancelling verifier"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->cancel(Z)Z

    .line 693
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const/4 v5, 0x0

    #setter for: Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
    invoke-static {v4, v5}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1202(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateVerifierTask;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    .line 695
    :cond_b
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    :cond_c
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "verified"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 699
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mVerifierLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1100(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 700
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
    invoke-static {v2, v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1202(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateVerifierTask;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    .line 701
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 702
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "verified"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 703
    const-string v1, "SystemUpdateService"

    const-string v2, "verification is successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->checkFile()Ljava/lang/String;

    .line 705
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "install_approved"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 706
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->install()V

    move v6, v0

    .line 707
    goto/16 :goto_2

    .line 695
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 701
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 709
    :cond_d
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 710
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetry:Lcom/android/common/OperationScheduler;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/OperationScheduler;->onSuccess()V

    .line 712
    const-string v1, "SystemUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sIsActivityUp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    sget-boolean v1, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    if-nez v1, :cond_2

    .line 715
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "next_dialog"

    invoke-interface {v1, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 716
    const-string v3, "SystemUpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "when = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_e

    .line 718
    const v3, 0x7f08001d

    const v4, 0x7f08001e

    const v5, 0x7f020016

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->notifyWithActivity(III)V

    .line 722
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->retryAt(JZ)V

    goto/16 :goto_2

    .line 724
    :cond_e
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-class v3, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 726
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 727
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v2, v1}, Lcom/google/android/gsf/update/SystemUpdateService;->startActivity(Landroid/content/Intent;)V

    .line 729
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "update_install_reschedule_sec"

    const/16 v3, 0x708

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v1

    const-wide/16 v7, 0x3e8

    mul-long/2addr v4, v7

    add-long v1, v2, v4

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->retryAt(JZ)V

    goto/16 :goto_2

    .line 739
    :cond_f
    const-string v0, "SystemUpdateService"

    const-string v1, "verification of system update package failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_verify_redownload_delay_sec"

    const v2, 0xa8c0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->downloadFailed(II)V

    .line 743
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    goto/16 :goto_2

    .line 748
    :cond_10
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mVerifierLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1100(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 749
    :try_start_4
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->checkFile()Ljava/lang/String;

    .line 750
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 752
    const-string v0, "SystemUpdateService"

    const-string v1, "verification already in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    monitor-exit v2

    goto/16 :goto_2

    .line 762
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 756
    :cond_11
    :try_start_5
    const-string v4, "SystemUpdateService"

    const-string v5, "starting package verification"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 758
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    new-instance v5, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    iget-object v6, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    new-instance v7, Ljava/io/File;

    iget-object v1, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->filename:Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v5, v6, v7, v1, v3}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/content/SharedPreferences;Z)V

    #setter for: Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
    invoke-static {v4, v5}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1202(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateVerifierTask;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    .line 760
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gsf/update/SystemUpdateService;->access$600()Ljava/util/concurrent/Executor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 761
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v6, v0

    goto/16 :goto_2

    :cond_12
    move-wide v1, v7

    goto/16 :goto_1
.end method

.method private checkFile()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 778
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "filename"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 779
    .local v1, filename:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 780
    const-string v5, "SystemUpdateService"

    const-string v6, "OTA package filename empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 790
    .end local v1           #filename:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 783
    .restart local v1       #filename:Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 784
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 785
    const-string v5, "SystemUpdateService"

    const-string v6, "OTA package doesn\'t exist!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 786
    goto :goto_0

    .line 788
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 789
    .local v2, size:J
    const-string v4, "SystemUpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OTA package size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkPostInstallIntents()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 492
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pending_filename"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    if-nez v0, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/cache/recovery/last_install"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 499
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 500
    const-string v3, "1"

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 501
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    if-nez v2, :cond_2

    .line 507
    const-string v0, "SystemUpdateService"

    const-string v1, "can\'t determine last-installed OTA package name"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    const-string v1, "SystemUpdateService"

    const-string v2, "failed to read last_install"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 510
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    const-string v0, "SystemUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "first boot since "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " install of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    if-eqz v3, :cond_4

    .line 516
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "success_message"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    :goto_1
    if-eqz v0, :cond_3

    .line 522
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-class v4, Lcom/google/android/gsf/update/CompleteDialog;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/update/SystemUpdateService;->startActivity(Landroid/content/Intent;)V

    .line 527
    :cond_3
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pending_filename"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 518
    :cond_4
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "failure_message"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private checkUpdateState(Landroid/content/Intent;)Z
    .locals 12
    .parameter

    .prologue
    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 331
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "provisioned"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 332
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 338
    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    .line 339
    :goto_0
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "provisioned"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    move-wide v4, v0

    .line 341
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mProvisioned:Z

    .line 343
    if-eqz p1, :cond_2

    const-string v0, "boot"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    const-string v0, "SystemUpdateService"

    const-string v1, "checking for post-install intent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->checkPostInstallIntents()V

    .line 348
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadStatus:I

    .line 349
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadBytes:J

    .line 350
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_url"

    invoke-static {v0, v1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 352
    const-string v0, "SystemUpdateService"

    const-string v1, "cancelUpdate (empty URL)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->cancelUpdate()V

    .line 354
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->logState()V

    .line 355
    const/4 v0, 0x0

    .line 487
    :goto_2
    return v0

    :cond_3
    move-wide v0, v2

    .line 338
    goto :goto_0

    .line 341
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 358
    :cond_5
    if-eqz p1, :cond_6

    const-string v0, "download_now"

    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 359
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetry:Lcom/android/common/OperationScheduler;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/OperationScheduler;->resetTransientError()V

    .line 360
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetry:Lcom/android/common/OperationScheduler;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v0

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 370
    :cond_6
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v6, "status"

    const/4 v7, -0x1

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v6, 0x5

    if-ne v0, v6, :cond_8

    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v6, "url"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v6, "install_time"

    const-wide/16 v7, 0x0

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "update_retry_delay_sec"

    const v9, 0x3f480

    invoke-static {v0, v8, v9}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v8, v0

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    cmp-long v0, v2, v6

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v6, "install_time"

    const-wide/16 v7, 0x0

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    sub-long/2addr v6, v8

    cmp-long v0, v2, v6

    if-gez v0, :cond_8

    .line 376
    :cond_7
    const-string v0, "SystemUpdateService"

    const-string v6, "cancelUpdate (willing to retry now)"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->cancelUpdate()V

    .line 380
    :cond_8
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "update_urgency"

    const/4 v7, 0x3

    invoke-static {v0, v6, v7}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 382
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v7, "url"

    const/4 v8, 0x0

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 384
    const-string v0, "SystemUpdateService"

    const-string v7, "cancelUpdate (update URL has changed)"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->cancelUpdate()V

    .line 386
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 387
    const-string v7, "url"

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "status"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "url_change"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 390
    packed-switch v6, :pswitch_data_0

    .line 407
    :goto_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 408
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetry:Lcom/android/common/OperationScheduler;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/OperationScheduler;->resetTransientError()V

    .line 409
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetry:Lcom/android/common/OperationScheduler;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v0

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v7, v8}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 412
    :cond_9
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "update_provisioning_delay_sec"

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 414
    if-ltz v0, :cond_c

    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-eqz v7, :cond_a

    mul-int/lit16 v7, v0, 0x3e8

    int-to-long v7, v7

    add-long/2addr v7, v4

    cmp-long v7, v2, v7

    if-gez v7, :cond_c

    .line 416
    :cond_a
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_b

    .line 420
    const/16 v1, 0x384

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 429
    :goto_4
    const-string v2, "SystemUpdateService"

    const-string v3, "cancelUpdate (not provisioned)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->cancelUpdate()V

    .line 431
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->retryAt(JZ)V

    .line 432
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->logState()V

    .line 433
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 394
    :pswitch_0
    const-string v7, "download_approved"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "install_approved"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 399
    :pswitch_1
    const-string v7, "download_approved"

    const/4 v8, 0x1

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "install_approved"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 404
    :pswitch_2
    const-string v7, "download_approved"

    const/4 v8, 0x1

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "install_approved"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 427
    :cond_b
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, v4

    goto :goto_4

    .line 436
    :cond_c
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "status"

    const/4 v5, -0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_d

    invoke-direct {p0, v6}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->isAutomaticallyDownloaded(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 438
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetry:Lcom/android/common/OperationScheduler;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;
    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1000(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler$Options;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v4

    .line 439
    cmp-long v0, v2, v4

    if-gez v0, :cond_d

    .line 440
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->logState()V

    .line 441
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 445
    :cond_d
    const/4 v0, 0x0

    .line 447
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "status"

    const/4 v7, -0x1

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_e

    .line 448
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "download_approved"

    const/4 v7, 0x0

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 449
    invoke-direct {p0, v1, v6}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->checkDownload(Ljava/lang/String;I)Z

    move-result v0

    .line 485
    :cond_e
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->logState()V

    .line 486
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mVerifierLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1100(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 487
    if-nez v0, :cond_f

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v0

    if-eqz v0, :cond_13

    :cond_f
    const/4 v0, 0x1

    :goto_6
    monitor-exit v1

    goto/16 :goto_2

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 451
    :cond_10
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 453
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v7, "download_next_dialog"

    const-wide/16 v8, 0x0

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 457
    const/4 v1, 0x2

    if-eq v6, v1, :cond_11

    const/4 v1, 0x5

    if-ne v6, v1, :cond_12

    cmp-long v1, v7, v4

    if-ltz v1, :cond_12

    .line 460
    :cond_11
    const v1, 0x7f08001d

    const v4, 0x7f08001e

    const v5, 0x7f020016

    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->notifyWithActivity(III)V

    .line 464
    const-wide/32 v4, 0x1b7740

    add-long v1, v2, v4

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->retryAt(JZ)V

    goto :goto_5

    .line 466
    :cond_12
    const/4 v1, 0x5

    if-ne v6, v1, :cond_e

    cmp-long v1, v7, v4

    if-gez v1, :cond_e

    .line 468
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "notified"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 469
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-class v3, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 472
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v2, v1}, Lcom/google/android/gsf/update/SystemUpdateService;->startActivity(Landroid/content/Intent;)V

    .line 474
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "update_install_reschedule_sec"

    const/16 v3, 0x708

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long v1, v2, v4

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->retryAt(JZ)V

    goto/16 :goto_5

    .line 487
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 390
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private downloadFailed(II)V
    .locals 7
    .parameter "urgency"
    .parameter "minRetryDelaySec"

    .prologue
    const/4 v6, 0x6

    .line 531
    invoke-direct {p0, v6}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 532
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetry:Lcom/android/common/OperationScheduler;
    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/OperationScheduler;->onTransientError()V

    .line 533
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mDownload:Lcom/google/android/gsf/update/Download;
    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1300(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/update/Download;->removeAllDownloads()V

    .line 534
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 535
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "status"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 536
    const-string v3, "status"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 538
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->isAutomaticallyDownloaded(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 539
    const-string v3, "download_approved"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 540
    const v3, 0x7f08001f

    const v4, 0x7f080020

    const v5, 0x7f020017

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->notifyWithActivity(III)V

    .line 551
    :goto_0
    const-string v3, "watchdog_deadline"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 552
    return-void

    .line 545
    :cond_1
    if-lez p2, :cond_2

    .line 546
    mul-int/lit16 v3, p2, 0x3e8

    int-to-long v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long v1, v3, v5

    .line 547
    .local v1, when:J
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetry:Lcom/android/common/OperationScheduler;
    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeMillis(J)V

    .line 549
    .end local v1           #when:J
    :cond_2
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetry:Lcom/android/common/OperationScheduler;
    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;
    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1000(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler$Options;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->retryAt(JZ)V

    goto :goto_0
.end method

.method private getAllowRoaming(I)Z
    .locals 6
    .parameter "urgency"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 562
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "update_allow_roaming"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 563
    .local v0, v:I
    if-gez v0, :cond_2

    .line 566
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 568
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 566
    goto :goto_0

    .line 568
    :cond_2
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private install()V
    .locals 8

    .prologue
    .line 794
    const-string v4, "SystemUpdateService"

    const-string v5, "called install()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->checkFile()Ljava/lang/String;

    move-result-object v2

    .line 798
    .local v2, filename:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 799
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v4, "status"

    const/4 v5, 0x5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "install_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pending_filename"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 809
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "update_install_success_message"

    invoke-static {v4, v5}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 810
    .local v3, message:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 811
    const-string v4, "success_message"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 813
    :cond_0
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "update_install_failure_message"

    invoke-static {v4, v5}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 814
    if-eqz v3, :cond_1

    .line 815
    const-string v4, "failure_message"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 818
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 819
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->logState()V

    .line 821
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    .line 823
    .local v0, context:Landroid/content/Context;
    const-string v4, "SystemUpdateService"

    const-string v5, "calling installPackage()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    new-instance v4, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$1;-><init>(Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$1;->start()V

    .line 833
    return-void
.end method

.method private isAutomaticallyDownloaded(I)Z
    .locals 1
    .parameter "urgency"

    .prologue
    .line 768
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDownloadAllowedNow()Z
    .locals 4

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateService;->whenMobileAllowed(Landroid/content/SharedPreferences;Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyWithActivity(III)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejected_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "url"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 886
    sget-boolean v1, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    :cond_0
    const-string v0, "SystemUpdateService"

    const-string v1, "skipping notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :goto_0
    return-void

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 895
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 896
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 898
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-class v4, Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 899
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 902
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 903
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "notified"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 906
    iput-object v1, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 907
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "notified"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 909
    :cond_2
    iput p3, v3, Landroid/app/Notification;->icon:I

    .line 910
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v3, v4, v1, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 913
    iget v0, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v3, Landroid/app/Notification;->flags:I

    .line 915
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 917
    invoke-virtual {v0, p3, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private retryAt(JZ)V
    .locals 5
    .parameter "when"
    .parameter "wakeup"

    .prologue
    .line 555
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/update/SystemUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 556
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mPending:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1400(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 557
    if-eqz p3, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mPending:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$1400(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 558
    const-string v1, "SystemUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retry (wakeup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, p1, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return-void

    .line 557
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setStatus(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 773
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 775
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Boolean;
    .locals 1
    .parameter "intents"

    .prologue
    .line 295
    array-length v0, p1

    if-lez v0, :cond_0

    .line 296
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->checkUpdateState(Landroid/content/Intent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->checkUpdateState(Landroid/content/Intent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 288
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method logState()V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 922
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "status"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 924
    .local v0, status:I
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "download_approved"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 925
    or-int/lit8 v0, v0, 0x20

    .line 928
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "install_approved"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 929
    or-int/lit8 v0, v0, 0x40

    .line 933
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "verified"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 934
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "verified"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_0
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 937
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mProvisioned:Z

    if-eqz v1, :cond_3

    .line 938
    or-int/lit16 v0, v0, 0x200

    .line 942
    :cond_3
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "download_mobile"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 943
    or-int/lit16 v0, v0, 0x400

    .line 945
    :cond_4
    const v1, 0x31129

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget v5, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadBytes:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v3

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "url"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 948
    return-void

    :cond_5
    move v1, v3

    .line 934
    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6
    .parameter "keepRunning"

    .prologue
    .line 303
    const-string v0, "SystemUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mPendingLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$300(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/gsf/update/SystemUpdateService;->mRunning:Z
    invoke-static {v0, v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$402(Lcom/google/android/gsf/update/SystemUpdateService;Z)Z

    .line 307
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mStartPending:Z
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$500(Lcom/google/android/gsf/update/SystemUpdateService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/gsf/update/SystemUpdateService;->mStartPending:Z
    invoke-static {v0, v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$502(Lcom/google/android/gsf/update/SystemUpdateService;Z)Z

    .line 311
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/gsf/update/SystemUpdateService;->mRunning:Z
    invoke-static {v0, v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$402(Lcom/google/android/gsf/update/SystemUpdateService;Z)Z

    .line 312
    const-string v0, "SystemUpdateService"

    const-string v2, "onPostExecute: relaunching"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, v2}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;-><init>(Lcom/google/android/gsf/update/SystemUpdateService;)V

    invoke-static {}, Lcom/google/android/gsf/update/SystemUpdateService;->access$600()Ljava/util/concurrent/Executor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Intent;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateService;->mIntentPending:Landroid/content/Intent;
    invoke-static {v5}, Lcom/google/android/gsf/update/SystemUpdateService;->access$700(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/Intent;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 326
    :cond_0
    :goto_0
    monitor-exit v1

    .line 327
    return-void

    .line 315
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->stopSelf()V

    .line 322
    :cond_3
    invoke-static {}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-static {}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 288
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
