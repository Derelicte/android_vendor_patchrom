.class public Lcom/android/fileexplorer/FTPServerService;
.super Landroid/app/Service;
.source "FTPServerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static acceptNet:Z

.field protected static acceptWifi:Z

.field protected static fullWake:Z

.field protected static port:I

.field protected static serverLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static serverThread:Ljava/lang/Thread;

.field protected static sessionMonitor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static settings:Landroid/content/SharedPreferences;

.field protected static staticLog:Lorg/swiftp/MyLog;

.field protected static uiLogLevel:I

.field protected static wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# instance fields
.field protected listenSocket:Ljava/net/ServerSocket;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected myLog:Lorg/swiftp/MyLog;

.field private proxyConnector:Lorg/swiftp/ProxyConnector;

.field private sessionThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/swiftp/SessionThread;",
            ">;"
        }
    .end annotation
.end field

.field protected shouldExit:Z

.field wakeLock:Landroid/os/PowerManager$WakeLock;

.field private wifiListener:Lorg/swiftp/TcpListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    sput-object v2, Lcom/android/fileexplorer/FTPServerService;->serverThread:Ljava/lang/Thread;

    .line 64
    new-instance v0, Lorg/swiftp/MyLog;

    const-class v1, Lcom/android/fileexplorer/FTPServerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/swiftp/MyLog;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/fileexplorer/FTPServerService;->staticLog:Lorg/swiftp/MyLog;

    .line 75
    sput-object v2, Lcom/android/fileexplorer/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/FTPServerService;->sessionMonitor:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/FTPServerService;->serverLog:Ljava/util/List;

    .line 83
    invoke-static {}, Lorg/swiftp/Defaults;->getUiLogLevel()I

    move-result v0

    sput v0, Lcom/android/fileexplorer/FTPServerService;->uiLogLevel:I

    .line 105
    sput-object v2, Lcom/android/fileexplorer/FTPServerService;->settings:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/FTPServerService;->shouldExit:Z

    .line 62
    new-instance v0, Lorg/swiftp/MyLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/swiftp/MyLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    .line 99
    iput-object v2, p0, Lcom/android/fileexplorer/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    .line 101
    iput-object v2, p0, Lcom/android/fileexplorer/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->sessionThreads:Ljava/util/List;

    .line 109
    new-instance v0, Lcom/android/fileexplorer/FTPServerService$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FTPServerService$1;-><init>(Lcom/android/fileexplorer/FTPServerService;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    return-void
.end method

.method private clearNotification()V
    .locals 2

    .prologue
    .line 277
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FTPServerService;->stopForeground(Z)V

    .line 278
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "Cleared notification"

    invoke-virtual {v0, v1}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public static getPort()I
    .locals 1

    .prologue
    .line 589
    sget v0, Lcom/android/fileexplorer/FTPServerService;->port:I

    return v0
.end method

.method public static getWifiIp()Ljava/net/InetAddress;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 516
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 517
    .local v1, myContext:Landroid/content/Context;
    if-nez v1, :cond_0

    .line 518
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Global context is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 520
    :cond_0
    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 521
    .local v2, wifiMgr:Landroid/net/wifi/WifiManager;
    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 522
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 523
    .local v0, ipAsInt:I
    if-nez v0, :cond_2

    .line 529
    .end local v0           #ipAsInt:I
    :cond_1
    :goto_0
    return-object v3

    .line 526
    .restart local v0       #ipAsInt:I
    :cond_2
    invoke-static {v0}, Lorg/swiftp/Util;->intToInet(I)Ljava/net/InetAddress;

    move-result-object v3

    goto :goto_0
.end method

.method public static isRunning()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 171
    sget-object v0, Lcom/android/fileexplorer/FTPServerService;->serverThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 172
    sget-object v0, Lcom/android/fileexplorer/FTPServerService;->staticLog:Lorg/swiftp/MyLog;

    const-string v1, "Server is not running (null serverThread)"

    invoke-virtual {v0, v2, v1}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 173
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    .line 175
    :cond_0
    sget-object v0, Lcom/android/fileexplorer/FTPServerService;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    sget-object v0, Lcom/android/fileexplorer/FTPServerService;->staticLog:Lorg/swiftp/MyLog;

    const-string v1, "serverThread non-null but !isAlive()"

    invoke-virtual {v0, v2, v1}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 180
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    sget-object v0, Lcom/android/fileexplorer/FTPServerService;->staticLog:Lorg/swiftp/MyLog;

    const-string v1, "Server is alive"

    invoke-virtual {v0, v2, v1}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public static isWifiEnabled()Z
    .locals 6

    .prologue
    .line 534
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 535
    .local v1, myContext:Landroid/content/Context;
    if-nez v1, :cond_0

    .line 536
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Global context is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 538
    :cond_0
    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 539
    .local v3, wifiMgr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 540
    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 542
    .local v0, connManager:Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 544
    .local v2, wifiInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    .line 546
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #wifiInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private loadSettings()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 224
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "Loading settings"

    invoke-virtual {v0, v5, v1}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 225
    invoke-static {}, Lorg/swiftp/Defaults;->getSettingsName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/swiftp/Defaults;->getSettingsMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/FTPServerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/FTPServerService;->settings:Landroid/content/SharedPreferences;

    .line 226
    sget-object v0, Lcom/android/fileexplorer/FTPServerService;->settings:Landroid/content/SharedPreferences;

    const-string v1, "portNum"

    sget v2, Lorg/swiftp/Defaults;->portNumber:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/FTPServerService;->port:I

    .line 227
    sget v0, Lcom/android/fileexplorer/FTPServerService;->port:I

    if-nez v0, :cond_0

    .line 229
    sget v0, Lorg/swiftp/Defaults;->portNumber:I

    sput v0, Lcom/android/fileexplorer/FTPServerService;->port:I

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/fileexplorer/FTPServerService;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 233
    sput-boolean v3, Lcom/android/fileexplorer/FTPServerService;->acceptNet:Z

    .line 234
    sput-boolean v4, Lcom/android/fileexplorer/FTPServerService;->acceptWifi:Z

    .line 235
    sput-boolean v3, Lcom/android/fileexplorer/FTPServerService;->fullWake:Z

    .line 237
    return v4
.end method

.method public static log(ILjava/lang/String;)V
    .locals 3
    .parameter "msgLevel"
    .parameter "s"

    .prologue
    .line 559
    sget-object v1, Lcom/android/fileexplorer/FTPServerService;->serverLog:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-static {}, Lorg/swiftp/Defaults;->getServerLogScrollBack()I

    move-result v0

    .line 561
    .local v0, maxSize:I
    :goto_0
    sget-object v1, Lcom/android/fileexplorer/FTPServerService;->serverLog:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 562
    sget-object v1, Lcom/android/fileexplorer/FTPServerService;->serverLog:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 565
    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "Releasing wake lock"

    invoke-virtual {v0, v1}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 481
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "Finished releasing wake lock"

    invoke-virtual {v0, v1}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 485
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "Couldn\'t release null wake lock"

    invoke-virtual {v0, v1}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseWifiLock()V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "Releasing wifi lock"

    invoke-virtual {v0, v1}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 499
    sget-object v0, Lcom/android/fileexplorer/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 500
    sget-object v0, Lcom/android/fileexplorer/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 501
    const/4 v0, 0x0

    sput-object v0, Lcom/android/fileexplorer/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 503
    :cond_0
    return-void
.end method

.method private safeSetupListener()Z
    .locals 4

    .prologue
    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/android/fileexplorer/FTPServerService;->setupListener()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const/4 v2, 0x5

    const-string v3, "Error opening port, check your network connection."

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 286
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 251
    const v0, 0x7f020050

    .line 252
    const v1, 0x7f060028

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/FTPServerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 254
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 257
    const v0, 0x7f060029

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FTPServerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    const-string v0, ""

    .line 259
    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->getWifiIp()Ljava/net/InetAddress;

    move-result-object v2

    .line 260
    if-eqz v2, :cond_1

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->getPort()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ftp://"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->getPort()I

    move-result v3

    const/16 v5, 0x15

    if-ne v3, v5, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    const-string v3, "TAB"

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    invoke-static {p0, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 268
    invoke-virtual {p0}, Lcom/android/fileexplorer/FTPServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v4, v3, v1, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 269
    iget v0, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v4, Landroid/app/Notification;->flags:I

    .line 271
    const v0, 0x1e23d

    invoke-virtual {p0, v0, v4}, Lcom/android/fileexplorer/FTPServerService;->startForeground(ILandroid/app/Notification;)V

    .line 273
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "Notication setup done"

    invoke-virtual {v0, v1}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method private takeWakeLock()V
    .locals 3

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/fileexplorer/FTPServerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 456
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/FTPServerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 465
    .local v0, pm:Landroid/os/PowerManager;
    sget-boolean v1, Lcom/android/fileexplorer/FTPServerService;->fullWake:Z

    if-eqz v1, :cond_1

    .line 466
    const/16 v1, 0x1a

    const-string v2, "SwiFTP"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/FTPServerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 470
    :goto_0
    iget-object v1, p0, Lcom/android/fileexplorer/FTPServerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 472
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v2, "Acquiring wake lock"

    invoke-virtual {v1, v2}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/android/fileexplorer/FTPServerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 474
    return-void

    .line 468
    .restart local v0       #pm:Landroid/os/PowerManager;
    :cond_1
    const/4 v1, 0x1

    const-string v2, "SwiFTP"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/FTPServerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method private takeWifiLock()V
    .locals 3

    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v2, "Taking wifi lock"

    invoke-virtual {v1, v2}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 489
    sget-object v1, Lcom/android/fileexplorer/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v1, :cond_0

    .line 490
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/FTPServerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 491
    .local v0, manager:Landroid/net/wifi/WifiManager;
    const-string v1, "SwiFTP"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    sput-object v1, Lcom/android/fileexplorer/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 492
    sget-object v1, Lcom/android/fileexplorer/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 494
    .end local v0           #manager:Landroid/net/wifi/WifiManager;
    :cond_0
    sget-object v1, Lcom/android/fileexplorer/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 495
    return-void
.end method

.method private terminateAllSessions()V
    .locals 5

    .prologue
    .line 433
    iget-object v2, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Terminating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fileexplorer/FTPServerService;->sessionThreads:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " session thread(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    .line 434
    monitor-enter p0

    .line 435
    :try_start_0
    iget-object v2, p0, Lcom/android/fileexplorer/FTPServerService;->sessionThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/swiftp/SessionThread;

    .line 436
    .local v1, sessionThread:Lorg/swiftp/SessionThread;
    if-eqz v1, :cond_0

    .line 437
    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    .line 438
    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->closeSocket()V

    goto :goto_0

    .line 441
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sessionThread:Lorg/swiftp/SessionThread;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    return-void
.end method

.method public static updateClients()V
    .locals 0

    .prologue
    .line 568
    invoke-static {}, Lorg/swiftp/UiUpdater;->updateClients()V

    .line 569
    return-void
.end method

.method public static writeMonitor(ZLjava/lang/String;)V
    .locals 0
    .parameter "incoming"
    .parameter "s"

    .prologue
    .line 572
    return-void
.end method


# virtual methods
.method public cleanupAndStopService()V
    .locals 3

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/android/fileexplorer/FTPServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 447
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/fileexplorer/FTPServerService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 449
    invoke-direct {p0}, Lcom/android/fileexplorer/FTPServerService;->releaseWifiLock()V

    .line 450
    invoke-direct {p0}, Lcom/android/fileexplorer/FTPServerService;->releaseWakeLock()V

    .line 451
    invoke-direct {p0}, Lcom/android/fileexplorer/FTPServerService;->clearNotification()V

    .line 452
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const/4 v3, 0x3

    const-string v4, "SwiFTP server created"

    invoke-virtual {v2, v3, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 130
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 131
    .local v1, myContext:Landroid/content/Context;
    if-nez v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/fileexplorer/FTPServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_0

    .line 134
    invoke-static {v1}, Lorg/swiftp/Globals;->setContext(Landroid/content/Context;)V

    .line 138
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/android/fileexplorer/FTPServerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/fileexplorer/FTPServerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 184
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "onDestroy() Stopping server"

    invoke-virtual {v0, v2, v1}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/FTPServerService;->shouldExit:Z

    .line 186
    sget-object v0, Lcom/android/fileexplorer/FTPServerService;->serverThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "Stopping with null serverThread"

    invoke-virtual {v0, v3, v1}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 190
    :cond_0
    sget-object v0, Lcom/android/fileexplorer/FTPServerService;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 192
    :try_start_0
    sget-object v0, Lcom/android/fileexplorer/FTPServerService;->serverThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    :goto_1
    sget-object v0, Lcom/android/fileexplorer/FTPServerService;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "Server thread failed to exit"

    invoke-virtual {v0, v3, v1}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 206
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->listenSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const/4 v1, 0x4

    const-string v2, "Closing listenSocket"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->listenSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    :cond_1
    :goto_3
    invoke-static {}, Lorg/swiftp/UiUpdater;->updateClients()V

    .line 214
    sget-object v0, Lcom/android/fileexplorer/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_2

    .line 215
    sget-object v0, Lcom/android/fileexplorer/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 216
    sput-object v4, Lcom/android/fileexplorer/FTPServerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 218
    :cond_2
    invoke-direct {p0}, Lcom/android/fileexplorer/FTPServerService;->clearNotification()V

    .line 219
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FTPServerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 220
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "FTPServerService.onDestroy() finished"

    invoke-virtual {v0, v1}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "serverThread join()ed ok"

    invoke-virtual {v0, v1}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 202
    sput-object v4, Lcom/android/fileexplorer/FTPServerService;->serverThread:Ljava/lang/Thread;

    goto :goto_2

    .line 210
    :catch_0
    move-exception v0

    goto :goto_3

    .line 194
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/fileexplorer/FTPServerService;->shouldExit:Z

    .line 149
    const/16 v0, 0xa

    .line 152
    .local v0, attempts:I
    :goto_0
    sget-object v1, Lcom/android/fileexplorer/FTPServerService;->serverThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const/4 v2, 0x5

    const-string v3, "Won\'t start, server thread exists"

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 154
    if-lez v0, :cond_0

    .line 155
    add-int/lit8 v0, v0, -0x1

    .line 156
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Lorg/swiftp/Util;->sleepIgnoreInterupt(J)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const/4 v2, 0x6

    const-string v3, "Server thread already exists"

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 167
    :goto_1
    return-void

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const/4 v2, 0x3

    const-string v3, "Creating server thread"

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 163
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v1, Lcom/android/fileexplorer/FTPServerService;->serverThread:Ljava/lang/Thread;

    .line 164
    sget-object v1, Lcom/android/fileexplorer/FTPServerService;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public registerSessionThread(Lorg/swiftp/SessionThread;)V
    .locals 8
    .parameter "newSession"

    .prologue
    .line 607
    monitor-enter p0

    .line 608
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v4, toBeRemoved:Ljava/util/List;,"Ljava/util/List<Lorg/swiftp/SessionThread;>;"
    iget-object v5, p0, Lcom/android/fileexplorer/FTPServerService;->sessionThreads:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/swiftp/SessionThread;

    .line 610
    .local v3, sessionThread:Lorg/swiftp/SessionThread;
    invoke-virtual {v3}, Lorg/swiftp/SessionThread;->isAlive()Z

    move-result v5

    if-nez v5, :cond_0

    .line 611
    iget-object v5, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const/4 v6, 0x3

    const-string v7, "Cleaning up finished session..."

    invoke-virtual {v5, v6, v7}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :try_start_1
    invoke-virtual {v3}, Lorg/swiftp/SessionThread;->join()V

    .line 614
    iget-object v5, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const/4 v6, 0x3

    const-string v7, "Thread joined"

    invoke-virtual {v5, v6, v7}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 615
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-virtual {v3}, Lorg/swiftp/SessionThread;->closeSocket()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v5, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const/4 v6, 0x3

    const-string v7, "Interrupted while joining"

    invoke-virtual {v5, v6, v7}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto :goto_0

    .line 629
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #sessionThread:Lorg/swiftp/SessionThread;
    .end local v4           #toBeRemoved:Ljava/util/List;,"Ljava/util/List<Lorg/swiftp/SessionThread;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 623
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #toBeRemoved:Ljava/util/List;,"Ljava/util/List<Lorg/swiftp/SessionThread;>;"
    :cond_1
    :try_start_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/swiftp/SessionThread;

    .line 624
    .local v2, removeThread:Lorg/swiftp/SessionThread;
    iget-object v5, p0, Lcom/android/fileexplorer/FTPServerService;->sessionThreads:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 628
    .end local v2           #removeThread:Lorg/swiftp/SessionThread;
    :cond_2
    iget-object v5, p0, Lcom/android/fileexplorer/FTPServerService;->sessionThreads:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 630
    iget-object v5, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "Registered session thread"

    invoke-virtual {v5, v6}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x3

    .line 295
    const/4 v1, 0x0

    .line 296
    .local v1, consecutiveProxyStartFailures:I
    const-wide/16 v6, 0x0

    .line 298
    .local v6, proxyStartMillis:J
    invoke-static {}, Lorg/swiftp/UiUpdater;->updateClients()V

    .line 300
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v10, "Server thread running"

    invoke-virtual {v9, v13, v10}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lcom/android/fileexplorer/FTPServerService;->loadSettings()Z

    move-result v9

    if-nez v9, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/fileexplorer/FTPServerService;->cleanupAndStopService()V

    .line 430
    :goto_0
    return-void

    .line 310
    :cond_0
    sget-boolean v9, Lcom/android/fileexplorer/FTPServerService;->acceptWifi:Z

    if-eqz v9, :cond_3

    .line 313
    const/16 v3, 0xa

    .line 314
    .local v3, maxTry:I
    const/4 v0, 0x0

    .line 315
    .local v0, atmp:I
    :goto_1
    invoke-direct {p0}, Lcom/android/fileexplorer/FTPServerService;->safeSetupListener()Z

    move-result v9

    if-nez v9, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v3, :cond_1

    .line 316
    sget v9, Lcom/android/fileexplorer/FTPServerService;->port:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/android/fileexplorer/FTPServerService;->port:I

    goto :goto_1

    .line 319
    :cond_1
    if-lt v0, v3, :cond_2

    .line 321
    invoke-virtual {p0}, Lcom/android/fileexplorer/FTPServerService;->cleanupAndStopService()V

    goto :goto_0

    .line 324
    :cond_2
    invoke-direct {p0}, Lcom/android/fileexplorer/FTPServerService;->takeWifiLock()V

    .line 326
    .end local v0           #atmp:I
    .end local v3           #maxTry:I
    :cond_3
    invoke-direct {p0}, Lcom/android/fileexplorer/FTPServerService;->takeWakeLock()V

    .line 328
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const/4 v10, 0x4

    const-string v11, "SwiFTP server ready"

    invoke-virtual {v9, v10, v11}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lcom/android/fileexplorer/FTPServerService;->setupNotification()V

    .line 333
    invoke-static {}, Lorg/swiftp/UiUpdater;->updateClients()V

    .line 335
    :goto_2
    iget-boolean v9, p0, Lcom/android/fileexplorer/FTPServerService;->shouldExit:Z

    if-nez v9, :cond_b

    .line 336
    sget-boolean v9, Lcom/android/fileexplorer/FTPServerService;->acceptWifi:Z

    if-eqz v9, :cond_5

    .line 337
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    if-eqz v9, :cond_4

    .line 338
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    invoke-virtual {v9}, Lorg/swiftp/TcpListener;->isAlive()Z

    move-result v9

    if-nez v9, :cond_4

    .line 339
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v10, "Joining crashed wifiListener thread"

    invoke-virtual {v9, v13, v10}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 341
    :try_start_0
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    invoke-virtual {v9}, Lorg/swiftp/TcpListener;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 344
    :goto_3
    iput-object v14, p0, Lcom/android/fileexplorer/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    .line 347
    :cond_4
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    if-nez v9, :cond_5

    .line 351
    new-instance v9, Lorg/swiftp/TcpListener;

    iget-object v10, p0, Lcom/android/fileexplorer/FTPServerService;->listenSocket:Ljava/net/ServerSocket;

    invoke-direct {v9, v10, p0}, Lorg/swiftp/TcpListener;-><init>(Ljava/net/ServerSocket;Lcom/android/fileexplorer/FTPServerService;)V

    iput-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    .line 352
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    invoke-virtual {v9}, Lorg/swiftp/TcpListener;->start()V

    .line 355
    :cond_5
    sget-boolean v9, Lcom/android/fileexplorer/FTPServerService;->acceptNet:Z

    if-eqz v9, :cond_8

    .line 356
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    if-eqz v9, :cond_6

    .line 357
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    invoke-virtual {v9}, Lorg/swiftp/ProxyConnector;->isAlive()Z

    move-result v9

    if-nez v9, :cond_6

    .line 358
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v10, "Joining crashed proxy connector"

    invoke-virtual {v9, v13, v10}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 360
    :try_start_1
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    invoke-virtual {v9}, Lorg/swiftp/ProxyConnector;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 363
    :goto_4
    iput-object v14, p0, Lcom/android/fileexplorer/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 364
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 367
    .local v4, nowMillis:J
    sub-long v9, v4, v6

    const-wide/16 v11, 0xbb8

    cmp-long v9, v9, v11

    if-gez v9, :cond_9

    .line 373
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v10, "Incrementing proxy start failures"

    invoke-virtual {v9, v13, v10}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 374
    add-int/lit8 v1, v1, 0x1

    .line 384
    .end local v4           #nowMillis:J
    :cond_6
    :goto_5
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    if-nez v9, :cond_8

    .line 385
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 386
    .restart local v4       #nowMillis:J
    const/4 v8, 0x0

    .line 390
    .local v8, shouldStartListener:Z
    if-ge v1, v13, :cond_a

    sub-long v9, v4, v6

    const-wide/16 v11, 0x1388

    cmp-long v9, v9, v11

    if-lez v9, :cond_a

    .line 392
    const/4 v8, 0x1

    .line 397
    :cond_7
    :goto_6
    if-eqz v8, :cond_8

    .line 398
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v10, "Spawning ProxyConnector"

    invoke-virtual {v9, v13, v10}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 399
    new-instance v9, Lorg/swiftp/ProxyConnector;

    invoke-direct {v9, p0}, Lorg/swiftp/ProxyConnector;-><init>(Lcom/android/fileexplorer/FTPServerService;)V

    iput-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 400
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    invoke-virtual {v9}, Lorg/swiftp/ProxyConnector;->start()V

    .line 401
    move-wide v6, v4

    .line 408
    .end local v4           #nowMillis:J
    .end local v8           #shouldStartListener:Z
    :cond_8
    const-wide/16 v9, 0x3e8

    :try_start_2
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 409
    :catch_0
    move-exception v2

    .line 410
    .local v2, e:Ljava/lang/InterruptedException;
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v10, "Thread interrupted"

    invoke-virtual {v9, v13, v10}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 379
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v4       #nowMillis:J
    :cond_9
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v10, "Resetting proxy start failures"

    invoke-virtual {v9, v13, v10}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 380
    const/4 v1, 0x0

    goto :goto_5

    .line 393
    .restart local v8       #shouldStartListener:Z
    :cond_a
    sub-long v9, v4, v6

    const-wide/16 v11, 0x7530

    cmp-long v9, v9, v11

    if-lez v9, :cond_7

    .line 395
    const/4 v8, 0x1

    goto :goto_6

    .line 414
    .end local v4           #nowMillis:J
    .end local v8           #shouldStartListener:Z
    :cond_b
    invoke-direct {p0}, Lcom/android/fileexplorer/FTPServerService;->terminateAllSessions()V

    .line 416
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    if-eqz v9, :cond_c

    .line 417
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    invoke-virtual {v9}, Lorg/swiftp/ProxyConnector;->quit()V

    .line 418
    iput-object v14, p0, Lcom/android/fileexplorer/FTPServerService;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 420
    :cond_c
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    if-eqz v9, :cond_d

    .line 421
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    invoke-virtual {v9}, Lorg/swiftp/TcpListener;->quit()V

    .line 422
    iput-object v14, p0, Lcom/android/fileexplorer/FTPServerService;->wifiListener:Lorg/swiftp/TcpListener;

    .line 424
    :cond_d
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/fileexplorer/FTPServerService;->shouldExit:Z

    .line 426
    iget-object v9, p0, Lcom/android/fileexplorer/FTPServerService;->myLog:Lorg/swiftp/MyLog;

    const-string v10, "Exiting cleanly, returning from run()"

    invoke-virtual {v9, v13, v10}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 427
    invoke-direct {p0}, Lcom/android/fileexplorer/FTPServerService;->clearNotification()V

    .line 428
    invoke-direct {p0}, Lcom/android/fileexplorer/FTPServerService;->releaseWakeLock()V

    .line 429
    invoke-direct {p0}, Lcom/android/fileexplorer/FTPServerService;->releaseWifiLock()V

    goto/16 :goto_0

    .line 361
    :catch_1
    move-exception v9

    goto/16 :goto_4

    .line 342
    :catch_2
    move-exception v9

    goto/16 :goto_3
.end method

.method setupListener()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->listenSocket:Ljava/net/ServerSocket;

    .line 243
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->listenSocket:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/fileexplorer/FTPServerService;->listenSocket:Ljava/net/ServerSocket;

    new-instance v1, Ljava/net/InetSocketAddress;

    sget v2, Lcom/android/fileexplorer/FTPServerService;->port:I

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 245
    return-void
.end method
