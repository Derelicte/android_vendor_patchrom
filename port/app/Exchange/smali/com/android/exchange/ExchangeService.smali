.class public Lcom/android/exchange/ExchangeService;
.super Landroid/app/Service;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/ExchangeService$ConnectivityReceiver;,
        Lcom/android/exchange/ExchangeService$SyncError;,
        Lcom/android/exchange/ExchangeService$SyncStatus;,
        Lcom/android/exchange/ExchangeService$SyncedMessageObserver;,
        Lcom/android/exchange/ExchangeService$MailboxObserver;,
        Lcom/android/exchange/ExchangeService$CalendarObserver;,
        Lcom/android/exchange/ExchangeService$AccountObserver;,
        Lcom/android/exchange/ExchangeService$AccountList;,
        Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;
    }
.end annotation


# static fields
.field protected static INSTANCE:Lcom/android/exchange/ExchangeService;

.field private static final sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

.field private static sClientConnectionManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;

.field private static volatile sClientConnectionManagerShutdownCount:I

.field public static sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

.field public static sConnectivityHold:Z

.field public static final sConnectivityLock:Ljava/lang/Object;

.field private static sDeviceId:Ljava/lang/String;

.field private static sServiceThread:Ljava/lang/Thread;

.field private static volatile sStartingUp:Z

.field private static volatile sStop:Z

.field private static final sSyncLock:Ljava/lang/Object;


# instance fields
.field public final mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

.field private mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

.field private volatile mBackgroundData:Z

.field private mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

.field private final mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

.field private final mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/ExchangeService$CalendarObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/emailcommon/service/IEmailServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private mKicked:Z

.field private mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNextWaitReason:Ljava/lang/String;

.field private final mPendingIntents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private final mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/AbstractSyncService;",
            ">;"
        }
    .end annotation
.end field

.field mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/ExchangeService$SyncError;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 182
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    .line 185
    sput-boolean v1, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    .line 216
    sput-object v2, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    .line 218
    sput-object v2, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    .line 220
    sput-object v2, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    .line 222
    sput v1, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    .line 224
    sput-boolean v1, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    .line 225
    sput-boolean v1, Lcom/android/exchange/ExchangeService;->sStop:Z

    .line 253
    new-instance v0, Lcom/android/exchange/ExchangeService$1;

    invoke-direct {v0}, Lcom/android/exchange/ExchangeService$1;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    .line 1212
    new-instance v0, Lcom/android/exchange/ExchangeService$4;

    invoke-direct {v0}, Lcom/android/exchange/ExchangeService$4;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    .line 191
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    .line 198
    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 200
    new-instance v0, Lcom/android/exchange/ExchangeService$AccountList;

    invoke-direct {v0}, Lcom/android/exchange/ExchangeService$AccountList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    .line 203
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    .line 209
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 233
    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    .line 234
    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    .line 240
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 330
    new-instance v0, Lcom/android/exchange/ExchangeService$2;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$2;-><init>(Lcom/android/exchange/ExchangeService;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

    .line 1538
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/ExchangeService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exchange/ExchangeService;Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/exchange/ExchangeService;->onSyncDisabledHold(Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000()V
    .locals 0

    .prologue
    .line 105
    invoke-static {}, Lcom/android/exchange/ExchangeService;->shutdownConnectionManager()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/exchange/ExchangeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/exchange/ExchangeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    return p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    sput-boolean p0, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    return p0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/exchange/ExchangeService;->sStop:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    sput-boolean p0, Lcom/android/exchange/ExchangeService;->sStop:Z

    return p0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    sput-object p0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/exchange/ExchangeService;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exchange/ExchangeService;->setAlarm(JJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exchange/ExchangeService;Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/exchange/ExchangeService;->onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/exchange/ExchangeService;->sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exchange/ExchangeService;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZ)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-static {p0, p1}, Lcom/android/exchange/ExchangeService;->collectEasAccounts(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exchange/ExchangeService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/exchange/ExchangeService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    return-void
.end method

.method private acquireWakeLock(J)V
    .locals 6
    .parameter "id"

    .prologue
    .line 1367
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v3

    .line 1368
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1369
    .local v0, lock:Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 1370
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 1371
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1372
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v4, "MAIL_SERVICE"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1373
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1376
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_0
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    :cond_1
    monitor-exit v3

    .line 1379
    return-void

    .line 1378
    .end local v0           #lock:Ljava/lang/Boolean;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static alert(Landroid/content/Context;J)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1483
    sget-object v2, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1484
    invoke-static {}, Lcom/android/exchange/ExchangeService;->checkExchangeServiceServiceRunning()V

    .line 1485
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 1486
    const-string v0, "ExchangeService alert"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1487
    const-string v0, "ping ExchangeService"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1536
    :cond_0
    :goto_0
    return-void

    .line 1488
    :cond_1
    if-nez v2, :cond_2

    .line 1489
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exchange/ExchangeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1491
    :cond_2
    iget-object v0, v2, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 1492
    if-eqz v0, :cond_0

    .line 1495
    const-string v1, "ExchangeService Alert: "

    .line 1496
    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v3, :cond_3

    .line 1497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1499
    :cond_3
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/exchange/ExchangeService$5;

    invoke-direct {v4, v2, p1, p2, v0}, Lcom/android/exchange/ExchangeService$5;-><init>(Lcom/android/exchange/ExchangeService;JLcom/android/exchange/AbstractSyncService;)V

    invoke-direct {v3, v4, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static alwaysLog(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1185
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-nez v0, :cond_0

    .line 1186
    const-string v0, "ExchangeService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :goto_0
    return-void

    .line 1188
    :cond_0
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static callback()Lcom/android/emailcommon/service/IEmailServiceCallback;
    .locals 1

    .prologue
    .line 1018
    sget-object v0, Lcom/android/exchange/ExchangeService;->sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    return-object v0
.end method

.method static canAutoSync(Lcom/android/emailcommon/provider/Account;)Z
    .locals 8
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    .line 2076
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2077
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v0, :cond_1

    .line 2097
    :cond_0
    :goto_0
    return v5

    .line 2080
    :cond_1
    iget-object v1, v0, Lcom/android/exchange/ExchangeService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 2083
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    iget-wide v3, p0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    .line 2085
    .local v3, policyKey:J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-static {v6}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2088
    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 2089
    .local v2, policy:Lcom/android/emailcommon/provider/Policy;
    if-nez v2, :cond_2

    .line 2090
    sget-object v6, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-static {v6, v3, v4}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v2

    .line 2091
    iput-object v2, p0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 2093
    :cond_2
    if-eqz v2, :cond_3

    iget-boolean v6, v2, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2097
    .end local v2           #policy:Lcom/android/emailcommon/provider/Policy;
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private canSyncEmail(Landroid/accounts/Account;)Z
    .locals 1
    .parameter

    .prologue
    .line 2106
    const-string v0, "com.android.email.provider"

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static checkExchangeServiceServiceRunning()V
    .locals 3

    .prologue
    .line 1866
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1867
    if-nez v0, :cond_1

    .line 1872
    :cond_0
    :goto_0
    return-void

    .line 1868
    :cond_1
    sget-object v1, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 1869
    const-string v1, "!!! checkExchangeServiceServiceRunning; starting service..."

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1870
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/exchange/ExchangeService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/exchange/ExchangeService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private checkMailboxes()J
    .locals 13

    .prologue
    .line 2164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2165
    sget-object v2, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2166
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2167
    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 2168
    if-nez v0, :cond_0

    .line 2169
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2189
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2173
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2174
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/AbstractSyncService;

    .line 2175
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-nez v4, :cond_3

    .line 2176
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    goto :goto_1

    .line 2179
    :cond_3
    iget-object v4, v1, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    .line 2180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted mailbox: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, v1, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2181
    if-eqz v4, :cond_4

    .line 2182
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->stopManualSync(J)V

    goto :goto_1

    .line 2184
    :cond_4
    const-string v1, "Removing from serviceMap"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2185
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    goto :goto_1

    .line 2189
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2191
    const-wide/32 v6, 0xdbba0

    .line 2192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2196
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    if-nez v0, :cond_6

    .line 2197
    const-string v0, "mAccountObserver null; service died??"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    move-wide v2, v6

    .line 2305
    :goto_2
    return-wide v2

    .line 2201
    :cond_6
    invoke-virtual {p0}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    invoke-virtual {v3}, Lcom/android/exchange/ExchangeService$AccountObserver;->getSyncableEasMailboxWhere()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2203
    if-nez v10, :cond_17

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v0

    .line 2205
    :cond_7
    :goto_3
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2206
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2208
    sget-object v1, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2209
    :try_start_3
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 2210
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2211
    if-nez v0, :cond_10

    .line 2213
    const/4 v0, 0x4

    :try_start_4
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->getAccountById(J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 2214
    if-eqz v0, :cond_7

    .line 2217
    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2218
    invoke-direct {p0, v0, v1}, Lcom/android/exchange/ExchangeService;->isMailboxSyncable(Lcom/android/emailcommon/provider/Account;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2223
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 2224
    if-eqz v0, :cond_9

    .line 2226
    iget-boolean v4, v0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    if-nez v4, :cond_7

    .line 2227
    iget-wide v4, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    cmp-long v4, v8, v4

    if-gez v4, :cond_8

    .line 2230
    iget-wide v4, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    add-long v6, v8, v2

    cmp-long v1, v4, v6

    if-gez v1, :cond_7

    .line 2231
    iget-wide v0, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    sub-long v2, v0, v8

    .line 2232
    const-string v0, "Release hold"

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 2303
    :catchall_1
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2210
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    .line 2237
    :cond_8
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    .line 2242
    :cond_9
    const/16 v0, 0x9

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    .line 2243
    const-wide/16 v6, -0x2

    cmp-long v0, v4, v6

    if-nez v0, :cond_a

    .line 2244
    const-class v0, Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v10, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    .line 2245
    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-direct {p0, v0, v1, v4}, Lcom/android/exchange/ExchangeService;->requestSync(Lcom/android/emailcommon/provider/Mailbox;ILcom/android/exchange/Request;)V

    move-wide v0, v2

    :goto_4
    move-wide v2, v0

    .line 2269
    goto/16 :goto_3

    .line 2246
    :cond_a
    const/4 v0, 0x4

    if-ne v1, v0, :cond_b

    .line 2247
    invoke-direct {p0, v10}, Lcom/android/exchange/ExchangeService;->hasSendableMessages(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2248
    const-class v0, Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v10, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    .line 2249
    new-instance v1, Lcom/android/exchange/EasOutboxService;

    invoke-direct {v1, p0, v0}, Lcom/android/exchange/EasOutboxService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    invoke-direct {p0, v1, v0}, Lcom/android/exchange/ExchangeService;->startServiceThread(Lcom/android/exchange/AbstractSyncService;Lcom/android/emailcommon/provider/Mailbox;)V

    move-wide v0, v2

    .line 2250
    goto :goto_4

    .line 2251
    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_f

    const-wide/16 v0, 0x5a0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_f

    .line 2252
    const/16 v0, 0xa

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2253
    sub-long v0, v8, v0

    .line 2254
    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    sub-long v0, v4, v0

    .line 2255
    const/4 v4, 0x1

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2256
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gtz v5, :cond_c

    .line 2257
    const-class v0, Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v10, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    .line 2258
    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v1, v4}, Lcom/android/exchange/ExchangeService;->requestSync(Lcom/android/emailcommon/provider/Mailbox;ILcom/android/exchange/Request;)V

    move-wide v0, v2

    .line 2259
    goto :goto_4

    :cond_c
    cmp-long v5, v0, v2

    if-gez v5, :cond_e

    .line 2261
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_d

    .line 2262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next sync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v5, 0x3e8

    div-long v5, v0, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2264
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduled sync, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_4

    .line 2265
    :cond_e
    sget-boolean v5, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v5, :cond_f

    .line 2266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Next sync for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    :cond_f
    move-wide v0, v2

    goto/16 :goto_4

    .line 2270
    :cond_10
    iget-object v1, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 2272
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_12

    .line 2273
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_11

    .line 2274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dead thread, mailbox released: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2277
    :cond_11
    invoke-direct {p0, v4, v5}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    .line 2279
    const-wide/16 v0, 0xbb8

    cmp-long v0, v2, v0

    if-lez v0, :cond_7

    .line 2280
    const-wide/16 v2, 0xbb8

    .line 2281
    const-string v0, "Clean up dead thread(s)"

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_3

    .line 2284
    :cond_12
    iget-wide v6, v0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 2285
    const-wide/16 v4, 0x0

    cmp-long v1, v6, v4

    if-lez v1, :cond_7

    .line 2286
    sub-long v4, v6, v8

    .line 2287
    const-wide/16 v11, 0x0

    cmp-long v1, v4, v11

    if-gtz v1, :cond_13

    .line 2288
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 2289
    invoke-virtual {v0}, Lcom/android/exchange/AbstractSyncService;->alarm()Z

    goto/16 :goto_3

    .line 2290
    :cond_13
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_7

    cmp-long v0, v4, v2

    if-gez v0, :cond_7

    .line 2291
    const-wide/32 v0, 0xa1220

    cmp-long v0, v4, v0

    if-gez v0, :cond_15

    .line 2292
    const-wide/16 v0, 0xfa

    cmp-long v0, v4, v0

    if-gez v0, :cond_14

    const-wide/16 v2, 0xfa

    .line 2293
    :goto_5
    const-string v0, "Sync data change"

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_3

    :cond_14
    move-wide v2, v4

    .line 2292
    goto :goto_5

    .line 2295
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal timeToRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 2303
    :cond_16
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_17
    move-wide v2, v6

    goto/16 :goto_3
.end method

.method private clearAlarm(J)V
    .locals 5
    .parameter "id"

    .prologue
    .line 1414
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v3

    .line 1415
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 1416
    .local v1, pi:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 1417
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1418
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1420
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    :cond_0
    monitor-exit v3

    .line 1423
    return-void

    .line 1422
    .end local v1           #pi:Landroid/app/PendingIntent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private clearAlarms()V
    .locals 5

    .prologue
    .line 1443
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1444
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v4

    .line 1445
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 1446
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 1449
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1448
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1449
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1450
    return-void
.end method

.method public static clearWatchdogAlarm(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1469
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1470
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1471
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->clearAlarm(J)V

    .line 1473
    :cond_0
    return-void
.end method

.method private static collectEasAccounts(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;
    .locals 13
    .parameter "context"
    .parameter "accounts"

    .prologue
    const/4 v3, 0x0

    .line 500
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 501
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 504
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    new-instance v1, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v1

    .line 506
    :cond_0
    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 507
    .local v8, cv:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 508
    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 509
    .local v10, hostAuthId:J
    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-lez v1, :cond_1

    .line 510
    invoke-static {p0, v10, v11}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v9

    .line 511
    .local v9, ha:Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v9, :cond_1

    iget-object v1, v9, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    const-string v2, "eas"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    new-instance v6, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 513
    .local v6, account:Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v6, v7}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V

    .line 515
    iput-object v9, v6, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 516
    invoke-virtual {p1, v6}, Lcom/android/exchange/ExchangeService$AccountList;->add(Lcom/android/emailcommon/provider/Account;)Z

    .line 518
    iget-wide v1, v6, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v12

    .line 520
    .local v12, inbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v12, :cond_1

    iget v1, v12, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1

    .line 522
    const-string v1, "flags"

    iget v2, v12, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    or-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 524
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v12, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 532
    .end local v6           #account:Lcom/android/emailcommon/provider/Account;
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v9           #ha:Lcom/android/emailcommon/provider/HostAuth;
    .end local v10           #hostAuthId:J
    .end local v12           #inbox:Lcom/android/emailcommon/provider/Mailbox;
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v8       #cv:Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 534
    return-object p1
.end method

.method public static deleteAccountPIMData(J)V
    .locals 5
    .parameter "accountId"

    .prologue
    .line 578
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 579
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v1, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    const/16 v4, 0x42

    invoke-static {v1, p0, p1, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 582
    .local v2, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v2, :cond_2

    .line 583
    new-instance v3, Lcom/android/exchange/EasSyncService;

    invoke-direct {v3, v1, v2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 584
    .local v3, service:Lcom/android/exchange/EasSyncService;
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct {v0, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 585
    .local v0, adapter:Lcom/android/exchange/adapter/ContactsSyncAdapter;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->wipe()V

    .line 587
    .end local v0           #adapter:Lcom/android/exchange/adapter/ContactsSyncAdapter;
    .end local v3           #service:Lcom/android/exchange/EasSyncService;
    :cond_2
    const/16 v4, 0x41

    invoke-static {v1, p0, p1, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 589
    if-eqz v2, :cond_0

    .line 590
    new-instance v3, Lcom/android/exchange/EasSyncService;

    invoke-direct {v3, v1, v2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 591
    .restart local v3       #service:Lcom/android/exchange/EasSyncService;
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {v0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 592
    .local v0, adapter:Lcom/android/exchange/adapter/CalendarSyncAdapter;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->wipe()V

    goto :goto_0
.end method

.method public static done(Lcom/android/exchange/AbstractSyncService;)V
    .locals 12
    .parameter

    .prologue
    const/4 v8, 0x2

    .line 2490
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2491
    if-nez v1, :cond_0

    .line 2550
    :goto_0
    return-void

    .line 2492
    :cond_0
    sget-object v2, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2493
    :try_start_0
    iget-wide v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 2495
    invoke-direct {v1, v3, v4}, Lcom/android/exchange/ExchangeService;->isRunningInServiceThread(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2496
    monitor-exit v2

    goto :goto_0

    .line 2549
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2498
    :cond_1
    :try_start_1
    invoke-direct {v1, v3, v4}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    .line 2500
    iget-object v5, v1, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2501
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 2503
    iget v6, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 2504
    invoke-static {v1, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v7

    .line 2505
    if-nez v7, :cond_2

    monitor-exit v2

    goto :goto_0

    .line 2507
    :cond_2
    if-eq v6, v8, :cond_4

    .line 2508
    iget-wide v8, v7, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 2509
    invoke-static {v1, v8, v9}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v10

    .line 2510
    if-nez v10, :cond_3

    monitor-exit v2

    goto :goto_0

    .line 2511
    :cond_3
    const/4 v11, 0x2

    invoke-virtual {v1, v1, v11, v10}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2513
    new-instance v10, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v10, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v8, v9}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifyLoginSucceeded(J)V

    .line 2517
    :cond_4
    packed-switch v6, :pswitch_data_0

    .line 2548
    :goto_1
    const-string v0, "sync completed"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 2549
    monitor-exit v2

    goto :goto_0

    .line 2519
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->hasPendingRequests()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2522
    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2524
    const-class v1, Lcom/android/exchange/ExchangeService;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2525
    const/4 v0, 0x0

    :try_start_2
    sput v0, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    .line 2526
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0

    .line 2530
    :pswitch_1
    if-eqz v0, :cond_6

    .line 2531
    invoke-virtual {v0}, Lcom/android/exchange/ExchangeService$SyncError;->escalate()V

    .line 2532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " held for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2534
    :cond_6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/ExchangeService$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v6, v4}, Lcom/android/exchange/ExchangeService$SyncError;-><init>(Lcom/android/exchange/ExchangeService;IZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " added to syncErrorMap, hold for 15s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2540
    :pswitch_2
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v7, v7, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-virtual {v0, v7, v8}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifyLoginFailed(J)V

    .line 2545
    :pswitch_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/ExchangeService$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v6, v4}, Lcom/android/exchange/ExchangeService$SyncError;-><init>(Lcom/android/exchange/ExchangeService;IZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 2517
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static getAccountById(J)Lcom/android/emailcommon/provider/Account;
    .locals 3
    .parameter "accountId"

    .prologue
    .line 1022
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1023
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v1, :cond_0

    .line 1024
    iget-object v0, v1, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    .line 1025
    .local v0, accountList:Lcom/android/exchange/ExchangeService$AccountList;
    monitor-enter v0

    .line 1026
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/exchange/ExchangeService$AccountList;->getById(J)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    monitor-exit v0

    .line 1029
    .end local v0           #accountList:Lcom/android/exchange/ExchangeService$AccountList;
    :goto_0
    return-object v2

    .line 1027
    .restart local v0       #accountList:Lcom/android/exchange/ExchangeService$AccountList;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1029
    .end local v0           #accountList:Lcom/android/exchange/ExchangeService$AccountList;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    .locals 4

    .prologue
    .line 1219
    const-class v2, Lcom/android/exchange/ExchangeService;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    if-nez v1, :cond_1

    .line 1222
    sget v1, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 1223
    const-string v1, "Shutting down process to unblock threads"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1224
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 1226
    :cond_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1227
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const-string v1, "http.conn-manager.max-total"

    const/16 v3, 0x19

    invoke-interface {v0, v1, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1228
    const-string v1, "http.conn-manager.max-per-route"

    sget-object v3, Lcom/android/exchange/ExchangeService;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-interface {v0, v1, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1229
    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->newInstance(Lorg/apache/http/params/HttpParams;)Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v1

    sput-object v1, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    .line 1232
    :cond_1
    sget-object v1, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 1219
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2581
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1200
    sget-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1201
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received deviceId from Email app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1204
    :cond_0
    sget-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static getEasAccountSelector()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1044
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1045
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    if-eqz v1, :cond_0

    .line 1046
    iget-object v1, v0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    invoke-virtual {v1}, Lcom/android/exchange/ExchangeService$AccountObserver;->getAccountKeyWhere()Ljava/lang/String;

    move-result-object v1

    .line 1048
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getStatusChangeCount(Ljava/lang/String;)I
    .locals 3
    .parameter "status"

    .prologue
    .line 2573
    const/4 v2, 0x5

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2574
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2576
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return v2

    .line 2575
    :catch_0
    move-exception v0

    .line 2576
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getStatusType(Ljava/lang/String;)I
    .locals 1
    .parameter "status"

    .prologue
    .line 2558
    if-nez p0, :cond_0

    .line 2559
    const/4 v0, -0x1

    .line 2561
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    goto :goto_0
.end method

.method private hasSendableMessages(Landroid/database/Cursor;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2051
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

    new-array v4, v6, [Ljava/lang/String;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2056
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2057
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2062
    if-eqz v1, :cond_1

    .line 2063
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v6

    .line 2066
    :goto_0
    return v0

    .line 2062
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 2063
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2062
    :cond_2
    throw v0

    :cond_3
    if-eqz v1, :cond_4

    .line 2063
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v7

    .line 2066
    goto :goto_0
.end method

.method private isCalendarEnabled(J)Z
    .locals 6
    .parameter "accountId"

    .prologue
    const/4 v1, 0x1

    .line 865
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$CalendarObserver;

    .line 866
    .local v0, observer:Lcom/android/exchange/ExchangeService$CalendarObserver;
    if-eqz v0, :cond_0

    .line 867
    iget-wide v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mSyncEvents:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 871
    :cond_0
    :goto_0
    return v1

    .line 867
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMailboxSyncable(Lcom/android/emailcommon/provider/Account;I)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x42

    const/16 v6, 0x41

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2122
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/16 v0, 0x44

    if-ne p2, v0, :cond_1

    :cond_0
    move v0, v2

    .line 2159
    :goto_0
    return v0

    .line 2125
    :cond_1
    if-eq p2, v3, :cond_2

    if-ne p2, v6, :cond_7

    .line 2127
    :cond_2
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 2128
    goto :goto_0

    .line 2132
    :cond_3
    if-ne p2, v3, :cond_5

    .line 2133
    const-string v0, "com.android.contacts"

    .line 2143
    :cond_4
    :goto_1
    iget-object v3, p1, Lcom/android/emailcommon/provider/Account;->mAmAccount:Landroid/accounts/Account;

    invoke-static {v3, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 2144
    goto :goto_0

    .line 2135
    :cond_5
    const-string v0, "com.android.calendar"

    .line 2136
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2139
    invoke-direct {p0, p1}, Lcom/android/exchange/ExchangeService;->registerCalendarObserver(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_1

    .line 2146
    :cond_6
    if-ne p2, v6, :cond_a

    iget-wide v3, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-direct {p0, v3, v4}, Lcom/android/exchange/ExchangeService;->isCalendarEnabled(J)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 2147
    goto :goto_0

    .line 2150
    :cond_7
    const/4 v0, 0x6

    if-ne p2, v0, :cond_8

    move v0, v1

    .line 2151
    goto :goto_0

    .line 2156
    :cond_8
    invoke-static {p1}, Lcom/android/exchange/ExchangeService;->canAutoSync(Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->mAmAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/android/exchange/ExchangeService;->canSyncEmail(Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    if-nez v0, :cond_a

    :cond_9
    move v0, v1

    .line 2157
    goto :goto_0

    :cond_a
    move v0, v2

    .line 2159
    goto :goto_0
.end method

.method private isRunningInServiceThread(J)Z
    .locals 4
    .parameter "mailboxId"

    .prologue
    .line 2477
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 2478
    .local v0, syncService:Lcom/android/exchange/AbstractSyncService;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 2479
    .local v1, thisThread:Ljava/lang/Thread;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSyncable(Lcom/android/emailcommon/provider/Mailbox;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 2318
    const-string v0, "eas"

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/provider/Mailbox;->loadsFromServer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static kick(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 2438
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2439
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 2440
    monitor-enter v0

    .line 2442
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 2443
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2444
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2446
    :cond_0
    sget-object v1, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 2447
    sget-object v2, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2448
    :try_start_1
    sget-object v1, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2449
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2451
    :cond_1
    return-void

    .line 2444
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2449
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1172
    const-string v0, "ExchangeService"

    invoke-static {v0, p0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 1176
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 1177
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_0

    .line 1179
    invoke-static {p0, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    :cond_0
    return-void
.end method

.method private logSyncHolds()V
    .locals 12

    .prologue
    .line 1081
    sget-boolean v7, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v7, :cond_2

    .line 1082
    const-string v7, "Sync holds:"

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1083
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1084
    .local v5, time:J
    iget-object v7, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1085
    .local v3, mailboxId:J
    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 1086
    .local v2, m:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v2, :cond_1

    .line 1087
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mailbox "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " no longer exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1089
    :cond_1
    iget-object v7, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 1090
    .local v0, error:Lcom/android/exchange/ExchangeService$SyncError;
    if-eqz v0, :cond_0

    .line 1091
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mailbox "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/exchange/ExchangeService$SyncError;->reason:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fatal = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1093
    iget-wide v7, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 1094
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Hold ends in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    sub-long/2addr v8, v5

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1100
    .end local v0           #error:Lcom/android/exchange/ExchangeService$SyncError;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #m:Lcom/android/emailcommon/provider/Mailbox;
    .end local v3           #mailboxId:J
    .end local v5           #time:J
    :cond_2
    return-void
.end method

.method private onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 597
    iget v0, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSyncDisabledHold(Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 601
    iget v0, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pingStatus(J)I
    .locals 7
    .parameter "mailboxId"

    .prologue
    const/4 v2, 0x0

    .line 2380
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2381
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v1, :cond_1

    .line 2395
    :cond_0
    :goto_0
    return v2

    .line 2383
    :cond_1
    iget-object v3, v1, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2384
    const/4 v2, 0x1

    goto :goto_0

    .line 2387
    :cond_2
    iget-object v3, v1, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 2388
    .local v0, error:Lcom/android/exchange/ExchangeService$SyncError;
    if-eqz v0, :cond_0

    .line 2389
    iget-boolean v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    if-eqz v3, :cond_3

    .line 2390
    const/4 v2, 0x3

    goto :goto_0

    .line 2391
    :cond_3
    iget-wide v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 2392
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private registerCalendarObserver(Lcom/android/emailcommon/provider/Account;)V
    .locals 5
    .parameter "account"

    .prologue
    .line 834
    new-instance v0, Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/exchange/ExchangeService$CalendarObserver;-><init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;Lcom/android/emailcommon/provider/Account;)V

    .line 835
    .local v0, observer:Lcom/android/exchange/ExchangeService$CalendarObserver;
    iget-wide v1, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 842
    :cond_0
    return-void
.end method

.method private releaseMailbox(J)V
    .locals 2
    .parameter "mailboxId"

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/ExchangeService;->releaseWakeLock(J)V

    .line 2043
    return-void
.end method

.method public static releaseSecurityHold(Lcom/android/emailcommon/provider/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 1107
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1108
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1109
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 1112
    :cond_0
    return-void
.end method

.method private releaseSyncHoldsImpl(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z
    .locals 10
    .parameter "context"
    .parameter "reason"
    .parameter "account"

    .prologue
    .line 1128
    const/4 v1, 0x0

    .line 1129
    .local v1, holdWasReleased:Z
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1130
    .local v4, mailboxId:J
    if-eqz p3, :cond_1

    .line 1131
    invoke-static {p1, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 1132
    .local v3, m:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v3, :cond_2

    .line 1133
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    .end local v3           #m:Lcom/android/emailcommon/provider/Mailbox;
    :cond_1
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 1139
    .local v0, error:Lcom/android/exchange/ExchangeService$SyncError;
    if-eqz v0, :cond_0

    iget v6, v0, Lcom/android/exchange/ExchangeService$SyncError;->reason:I

    if-ne v6, p2, :cond_0

    .line 1140
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    const/4 v1, 0x1

    goto :goto_0

    .line 1134
    .end local v0           #error:Lcom/android/exchange/ExchangeService$SyncError;
    .restart local v3       #m:Lcom/android/emailcommon/provider/Mailbox;
    :cond_2
    iget-wide v6, v3, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    iget-wide v8, p3, Lcom/android/emailcommon/provider/Account;->mId:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    goto :goto_0

    .line 1144
    .end local v3           #m:Lcom/android/emailcommon/provider/Mailbox;
    .end local v4           #mailboxId:J
    :cond_3
    return v1
.end method

.method private releaseWakeLock(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 1382
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v2

    .line 1383
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1384
    .local v0, lock:Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 1385
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1387
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 1388
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1390
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1395
    :cond_1
    monitor-exit v2

    .line 1396
    return-void

    .line 1395
    .end local v0           #lock:Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static reloadFolderList(Landroid/content/Context;JZ)V
    .locals 18
    .parameter "context"
    .parameter "accountId"
    .parameter "force"

    .prologue
    .line 1294
    sget-object v9, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1295
    .local v9, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v9, :cond_0

    .line 1349
    :goto_0
    return-void

    .line 1296
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v5

    const/4 v5, 0x1

    const-wide/16 v16, 0x44

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1302
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1303
    sget-object v1, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1304
    :try_start_1
    new-instance v12, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v12}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 1305
    .local v12, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {v12, v7}, Lcom/android/emailcommon/provider/Mailbox;->restore(Landroid/database/Cursor;)V

    .line 1306
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 1307
    .local v6, acct:Lcom/android/emailcommon/provider/Account;
    if-nez v6, :cond_2

    .line 1308
    invoke-static/range {p1 .. p2}, Lcom/android/exchange/ExchangeService;->reloadFolderListFailed(J)V

    .line 1309
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1347
    .end local v6           #acct:Lcom/android/emailcommon/provider/Account;
    .end local v12           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1311
    .restart local v6       #acct:Lcom/android/emailcommon/provider/Account;
    .restart local v12       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_2
    :try_start_2
    iget-object v14, v6, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 1313
    .local v14, syncKey:Ljava/lang/String;
    if-nez p3, :cond_4

    if-eqz v14, :cond_3

    const-string v0, "0"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1314
    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/android/exchange/ExchangeService;->reloadFolderListFailed(J)V

    .line 1315
    monitor-exit v1

    goto :goto_1

    .line 1344
    .end local v6           #acct:Lcom/android/emailcommon/provider/Account;
    .end local v12           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v14           #syncKey:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1347
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1319
    .restart local v6       #acct:Lcom/android/emailcommon/provider/Account;
    .restart local v12       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v14       #syncKey:Ljava/lang/String;
    :cond_4
    :try_start_4
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1320
    .local v8, cv:Landroid/content/ContentValues;
    const-string v0, "syncInterval"

    const/4 v2, -0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1321
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=? and type!=68 and syncInterval IN (-3,-2)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v5

    invoke-virtual {v0, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1324
    const-string v0, "Set push/ping boxes to push/hold"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1326
    iget-wide v10, v12, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 1327
    .local v10, id:J
    iget-object v0, v9, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/exchange/AbstractSyncService;

    .line 1329
    .local v13, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v13, :cond_6

    .line 1330
    invoke-virtual {v13}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1331
    :try_start_5
    invoke-virtual {v13}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 1333
    iget-object v15, v13, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 1334
    .local v15, thread:Ljava/lang/Thread;
    if-eqz v15, :cond_5

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (Stopped)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {v15}, Ljava/lang/Thread;->interrupt()V

    .line 1338
    :cond_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1340
    :try_start_6
    invoke-direct {v9, v10, v11}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    .line 1342
    const-string v0, "reload folder list"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1344
    .end local v15           #thread:Ljava/lang/Thread;
    :cond_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1338
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private static reloadFolderListFailed(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 1286
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    :goto_0
    return-void

    .line 1288
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static removeFromSyncErrorMap(J)V
    .locals 3
    .parameter "mailboxId"

    .prologue
    .line 2470
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2471
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 2472
    iget-object v1, v0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2474
    :cond_0
    return-void
.end method

.method private requestSync(Lcom/android/emailcommon/provider/Mailbox;ILcom/android/exchange/Request;)V
    .locals 8
    .parameter "m"
    .parameter "reason"
    .parameter "req"

    .prologue
    .line 1631
    sget-boolean v3, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    sget-boolean v3, Lcom/android/exchange/ExchangeService;->sStop:Z

    if-eqz v3, :cond_2

    .line 1632
    :cond_0
    const/4 v3, 0x6

    if-lt p2, v3, :cond_1

    .line 1634
    :try_start_0
    sget-object v3, Lcom/android/exchange/ExchangeService;->sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1657
    :cond_1
    :goto_0
    return-void

    .line 1641
    :cond_2
    sget-object v4, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1642
    :try_start_1
    iget-wide v5, p1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 1643
    .local v1, acct:Lcom/android/emailcommon/provider/Account;
    if-eqz v1, :cond_5

    .line 1645
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    iget-wide v5, p1, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 1646
    .local v2, service:Lcom/android/exchange/AbstractSyncService;
    if-nez v2, :cond_5

    .line 1647
    new-instance v2, Lcom/android/exchange/EasSyncService;

    .end local v2           #service:Lcom/android/exchange/AbstractSyncService;
    invoke-direct {v2, p0, p1}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 1648
    .restart local v2       #service:Lcom/android/exchange/AbstractSyncService;
    move-object v0, v2

    check-cast v0, Lcom/android/exchange/EasSyncService;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    if-nez v3, :cond_3

    monitor-exit v4

    goto :goto_0

    .line 1656
    .end local v1           #acct:Lcom/android/emailcommon/provider/Account;
    .end local v2           #service:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1649
    .restart local v1       #acct:Lcom/android/emailcommon/provider/Account;
    .restart local v2       #service:Lcom/android/exchange/AbstractSyncService;
    :cond_3
    :try_start_2
    iput p2, v2, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 1650
    if-eqz p3, :cond_4

    .line 1651
    invoke-virtual {v2, p3}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    .line 1653
    :cond_4
    invoke-direct {p0, v2, p1}, Lcom/android/exchange/ExchangeService;->startServiceThread(Lcom/android/exchange/AbstractSyncService;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 1656
    .end local v2           #service:Lcom/android/exchange/AbstractSyncService;
    :cond_5
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1635
    .end local v1           #acct:Lcom/android/emailcommon/provider/Account;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static runAccountReconcilerSync(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1166
    const-string v0, "Reconciling accounts..."

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1167
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    const-string v1, "eas"

    const-string v2, "com.android.exchange"

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/service/AccountServiceProxy;->reconcileAccounts(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    return-void
.end method

.method public static runAsleep(JJ)V
    .locals 1
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 1461
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1462
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1463
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/exchange/ExchangeService;->setAlarm(JJ)V

    .line 1464
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->releaseWakeLock(J)V

    .line 1466
    :cond_0
    return-void
.end method

.method public static runAwake(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1453
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1454
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1455
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->acquireWakeLock(J)V

    .line 1456
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->clearAlarm(J)V

    .line 1458
    :cond_0
    return-void
.end method

.method public static sendMessageRequest(Lcom/android/exchange/Request;)V
    .locals 4
    .parameter

    .prologue
    .line 2355
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2356
    if-nez v0, :cond_1

    .line 2370
    :cond_0
    :goto_0
    return-void

    .line 2357
    :cond_1
    iget-wide v1, p0, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 2358
    if-eqz v1, :cond_0

    .line 2361
    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 2362
    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 2364
    if-nez v0, :cond_2

    .line 2365
    const/4 v0, 0x5

    invoke-static {v1, v2, v0, p0}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V

    .line 2366
    const-string v0, "part request"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_0

    .line 2368
    :cond_2
    invoke-virtual {v0, p0}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    goto :goto_0
.end method

.method public static serviceRequest(JI)V
    .locals 2
    .parameter "mailboxId"
    .parameter "reason"

    .prologue
    .line 2309
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/exchange/ExchangeService;->serviceRequest(JJI)V

    .line 2310
    return-void
.end method

.method public static serviceRequest(JJI)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2322
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2323
    if-nez v0, :cond_1

    .line 2337
    :cond_0
    :goto_0
    return-void

    .line 2324
    :cond_1
    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 2325
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->isSyncable(Lcom/android/emailcommon/provider/Mailbox;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2327
    :try_start_0
    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 2328
    if-eqz v0, :cond_2

    .line 2329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    iput-wide v1, v0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 2330
    const-string v0, "service request"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2334
    :catch_0
    move-exception v0

    .line 2335
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2332
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, p4, v0}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setAlarm(JJ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1426
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v1

    .line 1427
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1428
    if-nez v0, :cond_0

    .line 1429
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/exchange/MailboxAlarmReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1430
    const-string v2, "mailbox"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Box"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1432
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1433
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1436
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p3

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1439
    :cond_0
    monitor-exit v1

    .line 1440
    return-void

    .line 1439
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setWatchdogAlarm(JJ)V
    .locals 1
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 1476
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1477
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1478
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/exchange/ExchangeService;->setAlarm(JJ)V

    .line 1480
    :cond_0
    return-void
.end method

.method private shutdown()V
    .locals 3

    .prologue
    .line 1983
    sget-object v1, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1985
    :try_start_0
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v0, :cond_6

    .line 1986
    const-string v0, "ExchangeService shutting down..."

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1989
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->stopServiceThreads()V

    .line 1992
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    if-eqz v0, :cond_0

    .line 1993
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exchange/ExchangeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1995
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    if-eqz v0, :cond_1

    .line 1996
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exchange/ExchangeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2000
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2001
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    if-eqz v2, :cond_2

    .line 2002
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2003
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    .line 2005
    :cond_2
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    if-eqz v2, :cond_3

    .line 2006
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2007
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    .line 2009
    :cond_3
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    if-eqz v2, :cond_4

    .line 2010
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2011
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    .line 2013
    :cond_4
    invoke-static {}, Lcom/android/exchange/ExchangeService;->unregisterCalendarObservers()V

    .line 2016
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->clearAlarms()V

    .line 2019
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2020
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_5

    .line 2021
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2022
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2024
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2026
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2027
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    .line 2028
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/exchange/ExchangeService;->sStop:Z

    .line 2029
    const-string v0, "Goodbye"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2031
    :cond_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2032
    return-void

    .line 2024
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 2031
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private static declared-synchronized shutdownConnectionManager()V
    .locals 2

    .prologue
    .line 1236
    const-class v1, Lcom/android/exchange/ExchangeService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    if-eqz v0, :cond_0

    .line 1237
    const-string v0, "Shutting down ClientConnectionManager"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1238
    sget-object v0, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->shutdown()V

    .line 1239
    sget v0, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    .line 1240
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    :cond_0
    monitor-exit v1

    return-void

    .line 1236
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static startManualSync(JILcom/android/exchange/Request;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2399
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2400
    if-nez v1, :cond_0

    .line 2417
    :goto_0
    return-void

    .line 2401
    :cond_0
    sget-object v2, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2402
    :try_start_0
    iget-object v0, v1, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 2403
    if-nez v0, :cond_2

    .line 2404
    iget-object v0, v1, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2405
    invoke-static {v1, p0, p1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 2406
    if-eqz v0, :cond_1

    .line 2407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting sync for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2408
    invoke-direct {v1, v0, p2, p3}, Lcom/android/exchange/ExchangeService;->requestSync(Lcom/android/emailcommon/provider/Mailbox;ILcom/android/exchange/Request;)V

    .line 2416
    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2412
    :cond_2
    const/4 v1, 0x6

    if-lt p2, v1, :cond_1

    .line 2413
    :try_start_1
    iput p2, v0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private startServiceThread(Lcom/android/exchange/AbstractSyncService;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1592
    if-nez p2, :cond_0

    .line 1605
    :goto_0
    return-void

    .line 1593
    :cond_0
    sget-object v1, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1594
    :try_start_0
    iget-object v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 1595
    iget-object v2, p1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    .line 1596
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1597
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting thread for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " in account "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1598
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1599
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    iget-wide v2, p2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    iget-wide v2, p2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 1601
    iget-object v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    const-string v2, "__eas"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1602
    iget-wide v2, p2, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-direct {p0, v2, v3}, Lcom/android/exchange/ExchangeService;->stopPing(J)V

    .line 1604
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static stopAccountSyncs(J)V
    .locals 2
    .parameter "acctId"

    .prologue
    .line 1245
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1246
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1247
    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZ)V

    .line 1249
    :cond_0
    return-void
.end method

.method private stopAccountSyncs(JZ)V
    .locals 10
    .parameter "acctId"
    .parameter "includeAccountMailbox"

    .prologue
    .line 1252
    sget-object v7, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1253
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    .local v1, deletedBoxes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1255
    .local v3, mid:Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 1256
    .local v0, box:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_0

    .line 1257
    iget-wide v8, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    cmp-long v6, v8, p1

    if-nez v6, :cond_0

    .line 1258
    if-nez p3, :cond_1

    iget v6, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v8, 0x44

    if-ne v6, v8, :cond_1

    .line 1260
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exchange/AbstractSyncService;

    .line 1261
    .local v4, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v4, :cond_0

    .line 1262
    invoke-virtual {v4}, Lcom/android/exchange/AbstractSyncService;->stop()V

    goto :goto_0

    .line 1281
    .end local v0           #box:Lcom/android/emailcommon/provider/Mailbox;
    .end local v1           #deletedBoxes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mid:Ljava/lang/Long;
    .end local v4           #svc:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1266
    .restart local v0       #box:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v1       #deletedBoxes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #mid:Ljava/lang/Long;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exchange/AbstractSyncService;

    .line 1267
    .restart local v4       #svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v4, :cond_2

    .line 1268
    invoke-virtual {v4}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 1269
    iget-object v5, v4, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 1270
    .local v5, t:Ljava/lang/Thread;
    if-eqz v5, :cond_2

    .line 1271
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 1274
    .end local v5           #t:Ljava/lang/Thread;
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1278
    .end local v0           #box:Lcom/android/emailcommon/provider/Mailbox;
    .end local v3           #mid:Ljava/lang/Long;
    .end local v4           #svc:Lcom/android/exchange/AbstractSyncService;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1279
    .restart local v3       #mid:Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    goto :goto_1

    .line 1281
    .end local v3           #mid:Ljava/lang/Long;
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1282
    return-void
.end method

.method public static stopManualSync(J)V
    .locals 5
    .parameter

    .prologue
    .line 2421
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2422
    if-nez v1, :cond_0

    .line 2432
    :goto_0
    return-void

    .line 2423
    :cond_0
    sget-object v2, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2424
    :try_start_0
    iget-object v0, v1, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 2425
    if-eqz v0, :cond_1

    .line 2426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping sync for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2427
    invoke-virtual {v0}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 2428
    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2429
    invoke-direct {v1, p0, p1}, Lcom/android/exchange/ExchangeService;->releaseWakeLock(J)V

    .line 2431
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static stopNonAccountMailboxSyncsForAccount(J)V
    .locals 2
    .parameter "acctId"

    .prologue
    .line 1359
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1360
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1361
    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZ)V

    .line 1362
    const-string v1, "reload folder list"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1364
    :cond_0
    return-void
.end method

.method private stopPing(J)V
    .locals 8
    .parameter

    .prologue
    .line 1613
    sget-object v1, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1614
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1615
    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 1616
    if-eqz v0, :cond_0

    .line 1617
    iget-object v5, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 1618
    iget-wide v6, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    cmp-long v0, v6, p1

    if-nez v0, :cond_0

    if-eqz v5, :cond_0

    const-string v0, "__eas"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1621
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 1622
    invoke-virtual {v0}, Lcom/android/exchange/AbstractSyncService;->reset()V

    goto :goto_0

    .line 1626
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1627
    return-void
.end method

.method private stopServiceThreads()V
    .locals 6

    .prologue
    .line 1660
    sget-object v2, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1661
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1664
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1665
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1680
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1669
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1670
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/AbstractSyncService;

    .line 1671
    if-eqz v1, :cond_1

    .line 1672
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1673
    invoke-virtual {v1}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 1674
    iget-object v4, v1, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-eqz v4, :cond_1

    .line 1675
    iget-object v1, v1, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1678
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/ExchangeService;->releaseWakeLock(J)V

    goto :goto_1

    .line 1680
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1681
    return-void
.end method

.method public static unregisterCalendarObservers()V
    .locals 5

    .prologue
    .line 848
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 849
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v0, :cond_0

    .line 855
    :goto_0
    return-void

    .line 850
    :cond_0
    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    .line 851
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v4, v0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/ExchangeService$CalendarObserver;

    .line 852
    .local v2, observer:Lcom/android/exchange/ExchangeService$CalendarObserver;
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 854
    .end local v2           #observer:Lcom/android/exchange/ExchangeService$CalendarObserver;
    :cond_1
    iget-object v4, v0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0
.end method

.method private waitForConnectivity()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1684
    .line 1685
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1687
    :goto_0
    sget-boolean v3, Lcom/android/exchange/ExchangeService;->sStop:Z

    if-nez v3, :cond_0

    .line 1688
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1689
    if-eqz v3, :cond_1

    .line 1690
    iput-object v3, p0, Lcom/android/exchange/ExchangeService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1692
    if-eqz v1, :cond_0

    .line 1694
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v2, v0}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 1696
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->logSyncHolds()V

    .line 1723
    :cond_0
    return-void

    .line 1701
    :cond_1
    if-nez v1, :cond_2

    .line 1703
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->stopServiceThreads()V

    move v1, v2

    .line 1707
    :cond_2
    sget-object v3, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1708
    const-wide/16 v4, -0x1

    const-wide/32 v6, 0x93b48

    :try_start_0
    invoke-static {v4, v5, v6, v7}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1710
    :try_start_1
    const-string v4, "Connectivity lock..."

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1711
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    .line 1712
    sget-object v4, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    const-wide/32 v5, 0x927c0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 1713
    const-string v4, "Connectivity lock released..."

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1717
    const/4 v4, 0x0

    :try_start_2
    sput-boolean v4, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    .line 1719
    :goto_1
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 1720
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1717
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    sput-boolean v1, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    throw v0

    .line 1714
    :catch_0
    move-exception v4

    .line 1717
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method maybeStartExchangeServiceThread()V
    .locals 3

    .prologue
    .line 1850
    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1851
    :cond_0
    sget-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "protocol=\"eas\""

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1852
    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    if-nez v0, :cond_2

    const-string v0, "Starting thread..."

    :goto_0
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1853
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ExchangeService"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    .line 1854
    sput-object p0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1855
    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1858
    :cond_1
    return-void

    .line 1852
    :cond_2
    const-string v0, "Restarting thread..."

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 1749
    new-instance v0, Lcom/android/exchange/ExchangeService$6;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$6;-><init>(Lcom/android/exchange/ExchangeService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1764
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1830
    const-string v0, "!!! EAS ExchangeService, onDestroy"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1832
    new-instance v0, Lcom/android/exchange/ExchangeService$8;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$8;-><init>(Lcom/android/exchange/ExchangeService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1845
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! EAS ExchangeService, onStartCommand, startingUp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", running = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1770
    sget-boolean v0, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-nez v0, :cond_0

    .line 1771
    sput-boolean v1, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    .line 1772
    new-instance v0, Lcom/android/exchange/ExchangeService$7;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$7;-><init>(Lcom/android/exchange/ExchangeService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1825
    :cond_0
    return v1

    .line 1768
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z
    .locals 2
    .parameter "context"
    .parameter "reason"
    .parameter "account"

    .prologue
    .line 1122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/ExchangeService;->releaseSyncHoldsImpl(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    move-result v0

    .line 1123
    .local v0, holdWasReleased:Z
    const-string v1, "security release"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1124
    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1875
    sput-boolean v0, Lcom/android/exchange/ExchangeService;->sStop:Z

    .line 1876
    const-string v0, "ExchangeService thread running"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1878
    sget-boolean v0, Lcom/android/exchange/Eas;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1879
    sput-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 1880
    sput-boolean v1, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    .line 1881
    sput-boolean v1, Lcom/android/exchange/Eas;->FILE_LOG:Z

    .line 1884
    :cond_0
    invoke-static {p0}, Lcom/android/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 1887
    sget-boolean v0, Lcom/android/exchange/Eas;->WAIT_DEBUG:Z

    if-eqz v0, :cond_1

    .line 1888
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 1893
    :cond_1
    sget-object v1, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1894
    :try_start_0
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v0, :cond_2

    .line 1895
    invoke-virtual {p0}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    .line 1900
    new-instance v0, Lcom/android/exchange/ExchangeService$AccountObserver;

    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v4}, Lcom/android/exchange/ExchangeService$AccountObserver;-><init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    .line 1901
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Account;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1902
    new-instance v0, Lcom/android/exchange/ExchangeService$MailboxObserver;

    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v4}, Lcom/android/exchange/ExchangeService$MailboxObserver;-><init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    .line 1903
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1904
    new-instance v0, Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v4}, Lcom/android/exchange/ExchangeService$SyncedMessageObserver;-><init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    .line 1905
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1909
    new-instance v0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;-><init>(Lcom/android/exchange/ExchangeService;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    .line 1910
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4}, Lcom/android/exchange/ExchangeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1913
    new-instance v0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;-><init>(Lcom/android/exchange/ExchangeService;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    .line 1914
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4}, Lcom/android/exchange/ExchangeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1918
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1920
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    .line 1924
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getEasAccountSelector()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/exchange/provider/MailboxUtilities;->fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V

    .line 1926
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1930
    :goto_0
    :try_start_1
    sget-boolean v0, Lcom/android/exchange/ExchangeService;->sStop:Z

    if-nez v0, :cond_a

    .line 1931
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 1932
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->waitForConnectivity()V

    .line 1933
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    .line 1934
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->checkMailboxes()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v0

    .line 1936
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1937
    :try_start_3
    iget-boolean v4, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    if-nez v4, :cond_6

    .line 1938
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    .line 1939
    const-string v0, "Negative wait? Setting to 1s"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    move-wide v0, v2

    .line 1942
    :cond_3
    const-wide/16 v4, 0x2710

    cmp-long v4, v0, v4

    if-lez v4, :cond_5

    .line 1943
    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1944
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Next awake "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1946
    :cond_4
    const-wide/16 v4, -0x1

    const-wide/16 v6, 0xbb8

    add-long/2addr v6, v0

    invoke-static {v4, v5, v6, v7}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 1948
    :cond_5
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 1950
    :cond_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1955
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1956
    :try_start_5
    iget-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    if-eqz v0, :cond_7

    .line 1958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 1960
    :cond_7
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1964
    :catch_0
    move-exception v0

    .line 1970
    :try_start_7
    const-string v0, "ExchangeService"

    const-string v1, "EmailProvider unavailable; shutting down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exchange/ExchangeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/exchange/ExchangeService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1978
    :goto_1
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->shutdown()V

    .line 1980
    return-void

    .line 1926
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 1950
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    .line 1951
    :catch_1
    move-exception v0

    .line 1953
    :try_start_b
    const-string v0, "ExchangeService interrupted"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1955
    :try_start_c
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    .line 1956
    :try_start_d
    iget-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    if-eqz v0, :cond_8

    .line 1958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 1960
    :cond_8
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    .line 1973
    :catch_2
    move-exception v0

    .line 1975
    :try_start_f
    const-string v1, "ExchangeService"

    const-string v2, "RuntimeException in ExchangeService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1976
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1978
    :catchall_4
    move-exception v0

    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->shutdown()V

    throw v0

    .line 1955
    :catchall_5
    move-exception v0

    :try_start_10
    monitor-enter p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_2

    .line 1956
    :try_start_11
    iget-boolean v1, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    if-eqz v1, :cond_9

    .line 1958
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 1960
    :cond_9
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 1955
    :try_start_12
    throw v0

    .line 1963
    :cond_a
    const-string v0, "Shutdown requested"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_1

    .line 1960
    :catchall_6
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_2
.end method
