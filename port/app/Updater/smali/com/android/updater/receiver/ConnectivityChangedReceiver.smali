.class public Lcom/android/updater/receiver/ConnectivityChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/32 v11, 0x240c8400

    .line 18
    new-instance v6, Lcom/android/updater/utils/Preferences;

    invoke-direct {v6, p1}, Lcom/android/updater/utils/Preferences;-><init>(Landroid/content/Context;)V

    .line 19
    .local v6, pref:Lcom/android/updater/utils/Preferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 20
    .local v1, currentTime:J
    invoke-static {p1}, Lcom/android/updater/utils/SysUtils;->shouldUpload(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 22
    invoke-virtual {v6}, Lcom/android/updater/utils/Preferences;->getLastUploadInstallAppTime()J

    move-result-wide v7

    sub-long v7, v1, v7

    cmp-long v7, v7, v11

    if-lez v7, :cond_0

    .line 23
    new-instance p2, Landroid/content/Intent;

    .end local p2
    const-class v7, Lcom/android/updater/UpdaterBackgroundService;

    invoke-direct {p2, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .restart local p2
    const-string v7, "command"

    const-string v8, "upload_install_app"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 30
    :cond_0
    invoke-virtual {v6}, Lcom/android/updater/utils/Preferences;->getLastUploadUsageAppTime()J

    move-result-wide v7

    sub-long v7, v1, v7

    const-wide/32 v9, 0x5265c00

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 32
    new-instance p2, Landroid/content/Intent;

    .end local p2
    const-class v7, Lcom/android/updater/UpdaterBackgroundService;

    invoke-direct {p2, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .restart local p2
    const-string v7, "command"

    const-string v8, "upload_usage_app"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 41
    :cond_1
    invoke-static {p1}, Lcom/android/updater/utils/SysUtils;->isConnectivityActive(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 43
    invoke-virtual {v6}, Lcom/android/updater/utils/Preferences;->getLastModeVersion()Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, lastVersion:Ljava/lang/String;
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getModVersion()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, currVersion:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v0, v5}, Lcom/android/updater/utils/StringUtils;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_3

    .line 50
    :cond_2
    new-instance p2, Landroid/content/Intent;

    .end local p2
    const-class v7, Lcom/android/updater/UpdaterBackgroundService;

    invoke-direct {p2, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .restart local p2
    const-string v7, "command"

    const-string v8, "upload_version"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 56
    invoke-virtual {v6, v1, v2}, Lcom/android/updater/utils/Preferences;->setLastUploadActiveTime(J)V

    .line 60
    :cond_3
    invoke-virtual {v6}, Lcom/android/updater/utils/Preferences;->getLastUploadActiveTime()J

    move-result-wide v3

    .line 61
    .local v3, lastUploadActiveTime:J
    sub-long v7, v1, v3

    cmp-long v7, v7, v11

    if-lez v7, :cond_4

    .line 63
    new-instance p2, Landroid/content/Intent;

    .end local p2
    const-class v7, Lcom/android/updater/UpdaterBackgroundService;

    invoke-direct {p2, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .restart local p2
    const-string v7, "command"

    const-string v8, "upload_active"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 70
    :cond_4
    invoke-static {p1}, Lcom/android/updater/utils/SysUtils;->checkNewVersion(Landroid/content/Context;)V

    .line 72
    .end local v0           #currVersion:Ljava/lang/String;
    .end local v3           #lastUploadActiveTime:J
    .end local v5           #lastVersion:Ljava/lang/String;
    :cond_5
    return-void
.end method
