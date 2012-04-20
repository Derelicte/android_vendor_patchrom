.class public Lcom/android/email/EmailConnectivityManager;
.super Landroid/content/BroadcastReceiver;
.source "EmailConnectivityManager.java"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mRegistered:Z

.field private mStop:Z

.field private mWaitThread:Ljava/lang/Thread;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 55
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mStop:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    .line 70
    iput-object p1, p0, Lcom/android/email/EmailConnectivityManager;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/email/EmailConnectivityManager;->mName:Ljava/lang/String;

    .line 72
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 74
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 75
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0, v2, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 76
    iget-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method public static getActiveNetworkType(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 156
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 158
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/net/ConnectivityManager;)I

    move-result v1

    return v1
.end method

.method public static getActiveNetworkType(Landroid/net/ConnectivityManager;)I
    .locals 2
    .parameter "cm"

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 163
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 164
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getActiveNetworkType()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/net/ConnectivityManager;)I

    move-result v0

    return v0
.end method

.method public hasConnectivity()Z
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 144
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAutoSyncAllowed()Z
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method public onConnectivityLost(I)V
    .locals 0
    .parameter "networkType"

    .prologue
    .line 105
    return-void
.end method

.method public onConnectivityRestored(I)V
    .locals 0
    .parameter "networkType"

    .prologue
    .line 97
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 122
    const-string v3, "networkInfo"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 124
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 136
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 125
    .restart local v0       #extras:Landroid/os/Bundle;
    .restart local v1       #networkInfo:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 126
    .local v2, state:Landroid/net/NetworkInfo$State;
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_2

    .line 127
    iget-object v4, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 128
    :try_start_0
    iget-object v3, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 129
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/email/EmailConnectivityManager;->onConnectivityRestored(I)V

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 131
    :cond_2
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 132
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/email/EmailConnectivityManager;->onConnectivityLost(I)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/email/EmailConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    .line 115
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 113
    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    throw v0
.end method

.method public waitForConnectivity()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 169
    iget-boolean v2, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    if-nez v2, :cond_0

    .line 170
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ConnectivityManager not registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_0
    const/4 v1, 0x0

    .line 173
    .local v1, waiting:Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    .line 175
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 177
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/email/EmailConnectivityManager;->mStop:Z

    if-nez v2, :cond_7

    .line 178
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 179
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_3

    .line 181
    if-eqz v1, :cond_1

    .line 182
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 183
    const-string v2, "EmailConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/EmailConnectivityManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Connectivity wait ended"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 213
    :cond_2
    iput-object v6, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    .line 215
    .end local v0           #info:Landroid/net/NetworkInfo;
    :goto_1
    return-void

    .line 188
    .restart local v0       #info:Landroid/net/NetworkInfo;
    :cond_3
    if-nez v1, :cond_5

    .line 189
    :try_start_1
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 190
    const-string v2, "EmailConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/EmailConnectivityManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Connectivity waiting..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_4
    const/4 v1, 0x1

    .line 195
    :cond_5
    iget-object v3, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    :try_start_2
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    :try_start_3
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 204
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 205
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 210
    .end local v0           #info:Landroid/net/NetworkInfo;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 211
    iget-object v3, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 213
    :cond_6
    iput-object v6, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    throw v2

    .line 210
    :cond_7
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 211
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 213
    :cond_8
    iput-object v6, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    goto :goto_1

    .line 200
    .restart local v0       #info:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    goto :goto_2
.end method
