.class Lcom/miui/backup/RestoreWifiCmd;
.super Lcom/miui/backup/RestoreCmd;
.source "RestoreCmd.java"


# instance fields
.field private mTmpFile:Ljava/io/File;

.field private mTotalSize:I


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 0
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 480
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/RestoreCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 481
    return-void
.end method

.method private enableWifi(Z)I
    .locals 4
    .parameter "enable"

    .prologue
    .line 564
    const/4 v0, 0x4

    .line 566
    .local v0, state:I
    iget-object v2, p0, Lcom/miui/backup/RestoreWifiCmd;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 567
    .local v1, wfm:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 568
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 569
    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 572
    :cond_0
    return v0
.end method


# virtual methods
.method protected formatFinishedSize(J)Ljava/lang/String;
    .locals 1
    .parameter "finishedSize"

    .prologue
    .line 539
    invoke-static {p1, p2}, Lcom/miui/backup/BackupUtils;->getCommaFormat(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected genStrategy()V
    .locals 3

    .prologue
    .line 549
    new-instance v0, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v0}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    iput-object v0, p0, Lcom/miui/backup/RestoreWifiCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 550
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/backup/RestoreWifiCmd;->mTmpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/backup/RestoreWifiCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v2, v2, Lcom/miui/backup/AppInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/backup/RestoreWifiCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method protected getFinishedSize()J
    .locals 2

    .prologue
    .line 534
    iget v0, p0, Lcom/miui/backup/RestoreWifiCmd;->mTotalSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected getUnit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/miui/backup/RestoreWifiCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected postAction()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 555
    new-instance v1, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v1}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 556
    .local v1, strategy:Lcom/miui/backup/ScriptStrategy;
    iget-object v0, p0, Lcom/miui/backup/RestoreWifiCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v2, v0, Lcom/miui/backup/AppInfo;->dataDir:Ljava/lang/String;

    const/16 v3, 0x294

    const/16 v4, 0x3e8

    const/16 v5, 0x3f2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/backup/RestoreWifiCmd;->changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V

    .line 557
    invoke-virtual {v1}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    .line 558
    iget-object v0, p0, Lcom/miui/backup/RestoreWifiCmd;->mTmpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 559
    invoke-direct {p0, v6}, Lcom/miui/backup/RestoreWifiCmd;->enableWifi(Z)I

    .line 560
    return v6
.end method

.method protected preAction()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 485
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/miui/backup/RestoreWifiCmd;->mBaseDir:Ljava/io/File;

    iget-object v7, p0, Lcom/miui/backup/RestoreWifiCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v7, v7, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 486
    .local v3, wifiFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move v2, v5

    .line 529
    :goto_0
    return v2

    .line 489
    :cond_0
    const/4 v2, 0x0

    .line 490
    .local v2, success:Z
    invoke-direct {p0, v5}, Lcom/miui/backup/RestoreWifiCmd;->enableWifi(Z)I

    .line 491
    iget-object v5, p0, Lcom/miui/backup/RestoreWifiCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v5, v5, Lcom/miui/backup/AppInfo;->dataDir:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/miui/backup/RestoreWifiCmd;->rmData(Ljava/lang/String;Z)Z

    .line 495
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/miui/backup/RestoreWifiCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "wifi.tmp"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/miui/backup/RestoreWifiCmd;->mTmpFile:Ljava/io/File;

    .line 496
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 497
    .local v1, reader:Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/miui/backup/RestoreWifiCmd;->mTmpFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 499
    .local v4, writer:Ljava/io/FileWriter;
    sget-boolean v5, Lmiui/os/Build;->IS_DEFY:Z

    if-nez v5, :cond_1

    sget-boolean v5, Lmiui/os/Build;->IS_MILESTONE:Z

    if-eqz v5, :cond_5

    .line 500
    :cond_1
    const-string v5, "ctrl_interface=tiwlan0\nupdate_config=1\n"

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 508
    :goto_1
    const/4 v0, 0x0

    .line 509
    .local v0, line:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 510
    const-string v5, "network={"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 516
    :cond_3
    :goto_2
    if-eqz v0, :cond_7

    .line 517
    const-string v5, "network={"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 518
    iget v5, p0, Lcom/miui/backup/RestoreWifiCmd;->mTotalSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/miui/backup/RestoreWifiCmd;->mTotalSize:I

    .line 520
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 501
    .end local v0           #line:Ljava/lang/String;
    :cond_5
    sget-boolean v5, Lmiui/os/Build;->IS_U8860:Z

    if-eqz v5, :cond_6

    .line 502
    const-string v5, "ctrl_interface=DIR=/data/misc/wpa_supplicant GROUP=system\nupdate_config=1\n"

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 526
    .end local v1           #reader:Ljava/io/BufferedReader;
    .end local v4           #writer:Ljava/io/FileWriter;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 504
    .restart local v1       #reader:Ljava/io/BufferedReader;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :cond_6
    const-string v5, "ctrl_interface=eth0\nupdate_config=1\n"

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 523
    .restart local v0       #line:Ljava/lang/String;
    :cond_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 524
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    const/4 v2, 0x1

    goto/16 :goto_0
.end method
