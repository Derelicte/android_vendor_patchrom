.class public Lcom/android/updater/receiver/NotificationClickedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationClickedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15
    new-instance v1, Lcom/android/updater/tasks/DownloadUpdateManager;

    invoke-direct {v1, p1}, Lcom/android/updater/tasks/DownloadUpdateManager;-><init>(Landroid/content/Context;)V

    .line 16
    .local v1, downloadUpdateManger:Lcom/android/updater/tasks/DownloadUpdateManager;
    invoke-virtual {v1, p2}, Lcom/android/updater/tasks/DownloadUpdateManager;->finishDownload(Landroid/content/Intent;)V

    .line 23
    .end local v1           #downloadUpdateManger:Lcom/android/updater/tasks/DownloadUpdateManager;
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    const-string v3, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .local v2, pageView:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 21
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
