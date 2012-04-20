.class public Lcom/google/android/gsf/gtalkservice/service/GTalkService;
.super Landroid/app/Service;
.source "GTalkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;,
        Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

.field private mAirplaneModeTurnedOffTimeStamp:J

.field private mAirplaneModeTurnedOnTimeStamp:J

.field private mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

.field private mChatMessageSentCallback:Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;

.field private mDeviceStorageLow:Z

.field private volatile mEnableTalkForegroundNotifications:Z

.field private mEndpointWrappers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mGTalkServiceBinder:Lcom/google/android/gtalkservice/IGTalkService$Stub;

.field private mHandler:Landroid/os/Handler;

.field private mIpcLock:Ljava/lang/Object;

.field private mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

.field private mPendingGservicesChange:Z

.field private mRawStanzaProvidersManager:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

.field private mReconnectManager:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

.field private mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

.field private mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

.field private mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

.field private mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

.field private mStatusBarNotifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

.field private final mTalkAppReportedInForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTimeSinceServiceOnCreate:J

.field private mUserIsIdle:Z

.field private mWorkerLooper:Landroid/os/Looper;

.field private mXMPPConnection:Lorg/jivesoftware/smack/XMPPConnection;

.field private mXMPPConnectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mXMPPConnectionWriteLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "username"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 904
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    .line 138
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 139
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    .line 140
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 144
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 145
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 150
    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPendingGservicesChange:Z

    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mTalkAppReportedInForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 161
    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    .line 1838
    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mGTalkServiceBinder:Lcom/google/android/gtalkservice/IGTalkService$Stub;

    .line 905
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->refreshAuthToken(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setIsUserIdle(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendDeviceIdleStatusForConnections(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/Alarm;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleUserPresent()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleScreenOff()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleConnectivityChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleAirplaneModeChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPendingGservicesChange:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createAccount(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createEndpoint(Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAndRemoveObsoleteEndpoints()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->maybeCreateMainEndpointAndLogin(Lcom/google/android/gsf/gtalkservice/Account;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAndRemoveMainEndpoint()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createEndpointAndLogin(Lcom/google/android/gsf/gtalkservice/Account;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAllSessions()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingCreateGTalkConnection(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEnableTalkForegroundNotifications:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mDeviceStorageLow:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setTalkForegroundState()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initializeConnection()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->resetOnGservicesChange()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mTalkAppReportedInForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    return-object p1
.end method

.method private accountsContainsUsername([Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 4
    .parameter "accounts"
    .parameter "username"

    .prologue
    .line 717
    array-length v1, p1

    .line 719
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 720
    aget-object v3, p1, v2

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 722
    .local v0, accountName:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 723
    const/4 v3, 0x1

    .line 726
    .end local v0           #accountName:Ljava/lang/String;
    :goto_1
    return v3

    .line 719
    .restart local v0       #accountName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 726
    .end local v0           #accountName:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private blockingCreateGTalkConnection(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1535
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getDeviceStorageLow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1536
    const-string v0, "GTalkService"

    const-string v2, "blockingCreateGTalkConnection failed due to low storage!"

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    :goto_0
    return-object v1

    .line 1540
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1549
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1550
    const-string v0, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1551
    const-string v0, "blockingCreateGTalkConnection: no username, use first account"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1553
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetFirstAccountUsername()Ljava/lang/String;

    move-result-object p1

    .line 1554
    if-eqz p1, :cond_5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetAccount(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 1566
    :goto_2
    if-eqz v2, :cond_8

    .line 1567
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1568
    const-string v0, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v0, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1569
    const-string v0, "blockingCreateGTalkConnection: async fetch auth token"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1572
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;

    invoke-direct {v6, p0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)V

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->blockingFetch(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Ljava/lang/String;

    move-result-object v0

    .line 1611
    if-eqz v0, :cond_4

    .line 1612
    const-string v5, "GTalkService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1613
    const-string v5, "blockingCreateGTalkConnection: authToken fetched, login"

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1615
    :cond_3
    invoke-virtual {v2, v0}, Lcom/google/android/gsf/gtalkservice/Account;->setAuthToken(Ljava/lang/String;)V

    .line 1616
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 1617
    if-eqz v0, :cond_4

    .line 1618
    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->login()V

    .line 1623
    :cond_4
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createEndpoint(Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1635
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 1554
    goto :goto_1

    .line 1560
    :cond_6
    :try_start_1
    const-string v0, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockingCreateGTalkConnection: username="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1563
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetAccount(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    .line 1625
    :cond_8
    const-string v0, "GTalkService"

    const-string v2, "blockingCreateGTalkConnection: account is null!"

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->reconcileGTalkAccount(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1632
    :catch_0
    move-exception v0

    .line 1633
    :try_start_2
    const-string v2, "GTalkService"

    const-string v5, "blockingCreateGTalkConnection: caught "

    invoke-static {v2, v5, v0}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1635
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private blockingGetAccount(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Lcom/google/android/gsf/gtalkservice/Account;
    .locals 4
    .parameter "username"
    .parameter "callback"

    .prologue
    .line 817
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isValidAccount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 818
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blockingGetAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const/4 v1, 0x0

    .line 833
    :goto_0
    return-object v1

    .line 823
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v2, Landroid/accounts/Account;

    const-string v3, "com.google"

    invoke-direct {v2, p1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ac2dm"

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, token:Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 827
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 828
    const-string v1, "blockingGetAccount: no auth token, fetch"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 830
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->blockingFetch(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Ljava/lang/String;

    move-result-object v0

    .line 833
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createAccount(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v1

    goto :goto_0
.end method

.method private createAccount(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;
    .locals 7
    .parameter "username"
    .parameter "token"
    .parameter "useAndroidId"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    .line 885
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAccount: user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 887
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 888
    const-string v3, "GTalkService"

    const-string v4, "createConnection: empty username."

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :goto_0
    return-object v2

    .line 892
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 894
    .local v0, androidId:J
    cmp-long v3, v0, v5

    if-nez v3, :cond_2

    .line 895
    const/16 v3, 0x9

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 896
    const-string v3, "GTalkService"

    const-string v4, "createAccount: get ANDROID_ID returned 0!"

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 900
    :cond_2
    invoke-static {v0, v1}, Lcom/google/android/gsf/MobileConnectionSettings;->getDeviceId(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2, v2, p3}, Lcom/google/android/gsf/gtalkservice/Account;->createAccountFromSettings(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v2

    goto :goto_0
.end method

.method private createEndpoint(Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1440
    if-nez p1, :cond_0

    .line 1441
    const-string v1, "createEndpoint: null account, bail"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1531
    :goto_0
    return-object v0

    .line 1446
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getPort()I

    move-result v1

    if-gez v1, :cond_1

    .line 1447
    const-string v1, "createEndpoint: rejected: port is negative"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1452
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1453
    const-string v1, "createEndpoint: rejected: bkgnd data OFF"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1459
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 1477
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1479
    :try_start_0
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->internalGetConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 1480
    if-eqz v0, :cond_4

    .line 1481
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "createEndpoint: endpoint exists"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    :cond_3
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1491
    new-instance v3, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Landroid/os/Looper;)V

    .line 1492
    new-instance v1, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    invoke-direct {v1, v3, p0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 1494
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1496
    :try_start_1
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->internalGetConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 1497
    if-eqz v0, :cond_6

    .line 1498
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1499
    const-string v1, "createEndpoint: endpoint exists, drop new conn"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1503
    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->closeSettingsQueryMap()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1520
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1485
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 1507
    :cond_6
    :try_start_2
    const-string v0, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v0, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createEndpoint: create new gtalk conn for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1510
    :cond_7
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 1512
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    .line 1515
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->addConnection(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    .line 1516
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getInitialDelay()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_8

    .line 1517
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1520
    :cond_8
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1524
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1525
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->login()V

    :goto_1
    move-object v0, v1

    .line 1531
    goto/16 :goto_0

    .line 1520
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 1527
    :cond_9
    const-string v0, "GTalkService"

    const-string v2, "createConnection: missing account.authToken..."

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->setConnectionError(I)Z

    goto :goto_1
.end method

.method private createEndpointAndLogin(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 1386
    const-string v0, "GTalkService"

    invoke-static {v0, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createEndpointAndLogin for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1390
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createEndpoint(Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1393
    if-nez v0, :cond_3

    .line 1437
    :cond_1
    :goto_1
    return-void

    .line 1387
    :cond_2
    const-string v0, " null acct"

    goto :goto_0

    .line 1396
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1402
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 1403
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1404
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1405
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setAccount(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 1406
    const-string v1, "GTalkService"

    invoke-static {v1, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1407
    const-string v1, "createConnAndLogin: auth token changed, reconnect"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1411
    :cond_4
    invoke-virtual {v0, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionError(I)Z

    .line 1413
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isSessionOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1415
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 1416
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->retryConnection(Z)V

    goto :goto_1

    .line 1418
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->login()V

    goto :goto_1

    .line 1423
    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/service/GTalkService$4;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$4;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method private deleteAccount(Ljava/lang/String;)V
    .locals 6
    .parameter "username"

    .prologue
    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 867
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 871
    .local v2, selectionArgs:[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 872
    const-string v3, "username"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .end local v2           #selectionArgs:[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 876
    .restart local v2       #selectionArgs:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, selection:Ljava/lang/String;
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GTalkService] delete Talk account(s) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    .end local p1
    :goto_0
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 882
    return-void

    .line 878
    .restart local p1
    :cond_1
    const-string p1, " because there is no account in AcctMgr"

    goto :goto_0
.end method

.method private getAppEndpointForIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;
    .locals 4
    .parameter "intent"

    .prologue
    .line 1108
    const-string v3, "username"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1109
    .local v2, username:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->getAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, appPackage:Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getApplicationEndpointFromUserAndPackageName(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v1

    .line 1111
    .local v1, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    return-object v1
.end method

.method private getApplicationEndpointFromUserAndPackageName(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Endpoint;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1173
    const/4 v1, 0x0

    .line 1175
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1176
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 1177
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v4

    .line 1178
    instance-of v5, v4, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    if-eqz v5, :cond_0

    .line 1182
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1183
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found appEndpoint for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1184
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1188
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private getDeviceStorageLow()Z
    .locals 2

    .prologue
    .line 435
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 436
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mDeviceStorageLow:Z

    monitor-exit v1

    return v0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getEndpointForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 3
    .parameter "user"

    .prologue
    .line 1642
    const/4 v0, 0x0

    .line 1644
    .local v0, retVal:Lcom/google/android/gtalkservice/IGTalkConnection;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1646
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->internalGetConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1648
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1651
    return-object v0

    .line 1648
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private getEndpointFromIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1060
    const-string v0, "username"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1062
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    const-string v0, "GTalkService"

    const-string v2, "getEndpointFromIntent: missing username"

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1082
    :goto_0
    return-object v0

    .line 1068
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mGTalkServiceBinder:Lcom/google/android/gtalkservice/IGTalkService$Stub;

    invoke-virtual {v0, v2}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->getConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 1069
    if-nez v0, :cond_1

    .line 1070
    const-string v0, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEndpointFromIntent: cannot find endpoint for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/Log;->sanitizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->getAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1074
    goto :goto_0

    .line 1077
    :cond_1
    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1078
    :catch_0
    move-exception v0

    .line 1079
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImSessionFromIntent: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1082
    goto :goto_0
.end method

.method private getIdleTimeout()J
    .locals 4

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gtalk_idle_timeout_ms"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSecurityTokenForAndroidId()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 686
    const/4 v3, 0x0

    .line 688
    .local v3, token:Ljava/lang/String;
    :try_start_0
    const-string v4, "CheckinService"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "CheckinTask_securityToken"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 690
    .local v1, securityToken:J
    cmp-long v4, v1, v8

    if-eqz v4, :cond_0

    .line 691
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 696
    .end local v1           #securityToken:J
    :cond_0
    :goto_0
    return-object v3

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v4, "CheckinTask_securityToken is not a long."

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSendIdleAlarm()Lcom/google/android/gsf/gtalkservice/Alarm;
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Alarm;

    const-string v1, "GTALK_IDLE_ALARM"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/service/GTalkService$3;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$3;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Alarm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    .line 374
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    const-string v1, "com.google.android.intent.action.SEND_IDLE"

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Alarm;->setAction(Ljava/lang/String;)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    return-object v0
.end method

.method private handleAirplaneModeChanged(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 1752
    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1753
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAirplaneModeChanged: airplaneModeOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1759
    :cond_0
    if-eqz v0, :cond_1

    .line 1760
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOnTimeStamp:J

    .line 1761
    iput-wide v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOffTimeStamp:J

    .line 1766
    :goto_0
    return-void

    .line 1763
    :cond_1
    iput-wide v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOnTimeStamp:J

    .line 1764
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOffTimeStamp:J

    goto :goto_0
.end method

.method private handleConnectivityChanged(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1712
    const-string v1, "noConnectivity"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1715
    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1718
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1719
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##### handleConnectivityChanged: connected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    networkInfo.type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    networkInfo.state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1725
    const-string v0, "otherNetwork"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1727
    const-string v3, "reason"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1728
    const-string v4, "isFailover"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    networkInfo2.type="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    networkInfo2.state="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    isFailover="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1743
    :goto_5
    if-nez v1, :cond_9

    .line 1749
    :goto_6
    return-void

    :cond_0
    move v0, v2

    .line 1719
    goto/16 :goto_0

    .line 1720
    :cond_1
    const-string v0, "unknown"

    goto/16 :goto_1

    .line 1722
    :cond_2
    const-string v0, "unknown"

    goto/16 :goto_2

    .line 1731
    :cond_3
    const-string v2, "unknown"

    goto :goto_3

    .line 1733
    :cond_4
    const-string v0, "unknown"

    goto :goto_4

    .line 1738
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##### Network broadcast (connected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v3, :cond_6

    :goto_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_7

    :cond_7
    const-string v0, ""

    goto :goto_8

    :cond_8
    const-string v0, ""

    goto :goto_9

    .line 1747
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOnTimeStamp:J

    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOffTimeStamp:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->networkStateChanged(Landroid/net/NetworkInfo;JJ)V

    goto :goto_6
.end method

.method private handleCreateXmppEndpoint(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1136
    const-string v0, "username"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->getAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 1138
    if-nez v5, :cond_1

    .line 1139
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    const-string v0, "received a create endpoint intent with no package name. bailing."

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    invoke-direct {p0, v0, v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getApplicationEndpointFromUserAndPackageName(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v1

    .line 1145
    if-nez v1, :cond_0

    .line 1151
    const-string v1, "bind_to_session_servers"

    invoke-virtual {p1, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1154
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetAccount(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v2

    .line 1156
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Landroid/os/Looper;ZLjava/lang/String;)V

    .line 1159
    new-instance v1, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 1161
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v2

    .line 1164
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->addConnection(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    .line 1165
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getInitialDelay()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 1166
    invoke-virtual {v2, v7}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 1169
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->login()V

    goto :goto_0
.end method

.method private handleGservicesChangeForEndpoint(Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1272
    if-nez p1, :cond_1

    .line 1304
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 1277
    if-eqz v0, :cond_0

    .line 1281
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 1282
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUseAndroidId()Z

    move-result v2

    .line 1283
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createAccount(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v1

    .line 1285
    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Account;->connectionSettingsMatch(Lcom/google/android/gsf/gtalkservice/Account;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1286
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1287
    const-string v2, "resetOnGservicesChange: cycle endpoint"

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetOnGservicesChange: old "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetOnGservicesChange: new "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Account;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1295
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v4, v0, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->closeConnection(ZZZ)V

    .line 1296
    invoke-virtual {p1, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setAccount(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 1297
    invoke-virtual {p1, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->retryConnection(Z)V

    .line 1303
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->onGServicesChangeDelegate()V

    goto :goto_0

    .line 1301
    :cond_3
    invoke-virtual {p1, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setAccount(Lcom/google/android/gsf/gtalkservice/Account;)V

    goto :goto_1
.end method

.method private handlePackageInstalled()V
    .locals 2

    .prologue
    .line 1026
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "handlePackageInstalled: re-init providers"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1027
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->createNewInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    .line 1028
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initializeProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V

    .line 1031
    invoke-static {v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->setDefault(Lorg/jivesoftware/smack/provider/ProviderManager;)V

    .line 1032
    return-void
.end method

.method private handleScreenOff()V
    .locals 3

    .prologue
    .line 1035
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1036
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSendIdleAlarm()Lcom/google/android/gsf/gtalkservice/Alarm;

    move-result-object v0

    .line 1037
    .local v0, alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1039
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->initAlarm()V

    .line 1041
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getIdleTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Alarm;->setTimer(J)V

    .line 1042
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->start()V

    .line 1045
    .end local v0           #alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    :cond_0
    return-void
.end method

.method private handleSendIqStanzaIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointFromIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1116
    .local v0, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v0, :cond_0

    .line 1117
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppFailed(Landroid/content/Intent;)V

    .line 1122
    :goto_0
    return-void

    .line 1121
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendIqStanza(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleSendMessageStanzaIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1125
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointFromIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1126
    .local v0, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v0, :cond_0

    .line 1127
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppFailed(Landroid/content/Intent;)V

    .line 1132
    :goto_0
    return-void

    .line 1131
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendMessageStanza(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleSendPresenceStanzaIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1192
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointFromIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1193
    .local v0, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v0, :cond_0

    .line 1194
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppFailed(Landroid/content/Intent;)V

    .line 1199
    :goto_0
    return-void

    .line 1198
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendPresenceStanza(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleSendXmppFailed(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 1202
    const-string v0, "invalid_account"

    invoke-static {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processSendFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1204
    return-void
.end method

.method private handleSendXmppIq(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1100
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getAppEndpointForIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1101
    .local v0, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-eqz v0, :cond_0

    .line 1102
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendIqStanza(Landroid/content/Intent;)V

    .line 1104
    :cond_0
    return-void
.end method

.method private handleSendXmppMessage(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1086
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getAppEndpointForIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1087
    .local v0, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-eqz v0, :cond_0

    .line 1088
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendMessageStanza(Landroid/content/Intent;)V

    .line 1090
    :cond_0
    return-void
.end method

.method private handleSendXmppPresence(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1093
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getAppEndpointForIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1094
    .local v0, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-eqz v0, :cond_0

    .line 1095
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendPresenceStanza(Landroid/content/Intent;)V

    .line 1097
    :cond_0
    return-void
.end method

.method private handleUserPresent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1048
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSendIdleAlarm()Lcom/google/android/gsf/gtalkservice/Alarm;

    move-result-object v0

    .line 1049
    .local v0, alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1050
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->stop()V

    .line 1053
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1054
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendDeviceIdleStatusForConnections(Z)V

    .line 1055
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setIsUserIdle(Z)V

    .line 1057
    :cond_1
    return-void
.end method

.method private initProviders()V
    .locals 2

    .prologue
    .line 1307
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "initProviders"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1309
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    .line 1310
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initializeProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V

    .line 1311
    return-void
.end method

.method private initRawXmlProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V
    .locals 3
    .parameter

    .prologue
    .line 1323
    const-string v0, "session"

    const-string v1, "http://www.google.com/session"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanzaProvider;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanzaProvider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addRawXmlIqProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 1326
    const-string v0, "query"

    const-string v1, "google:jingleinfo"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQueryProvider;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQueryProvider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addRawXmlIqProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 1330
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;-><init>(Landroid/content/Context;Lorg/jivesoftware/smack/provider/ProviderManager;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRawStanzaProvidersManager:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    .line 1331
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRawStanzaProvidersManager:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->searchProvidersFromIntent()V

    .line 1332
    return-void
.end method

.method private initializeConnection()V
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->asyncAuditMainConnection()V
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->access$1000(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)V

    .line 1246
    return-void
.end method

.method private initializeProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V
    .locals 0
    .parameter "providerMgr"

    .prologue
    .line 1314
    invoke-virtual {p1}, Lorg/jivesoftware/smack/provider/ProviderManager;->initializeBuiltInProviders()V

    .line 1315
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initRawXmlProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V

    .line 1316
    return-void
.end method

.method private internalGetConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 6
    .parameter "user"

    .prologue
    .line 1656
    const/4 v3, 0x0

    .line 1658
    .local v3, retVal:Lcom/google/android/gtalkservice/IGTalkConnection;
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1659
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 1660
    .local v4, user1:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getOriginalUsername()Ljava/lang/String;

    move-result-object v2

    .line 1661
    .local v2, originalUser1:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1662
    :cond_1
    move-object v3, v0

    .line 1667
    .end local v0           #connection:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    .end local v2           #originalUser1:Ljava/lang/String;
    .end local v4           #user1:Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private isBackgroundDataEnabled()Z
    .locals 1

    .prologue
    .line 1793
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    return v0
.end method

.method private isValidAccount(Ljava/lang/String;)Z
    .locals 7
    .parameter "username"

    .prologue
    .line 706
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 708
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 709
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 710
    const/4 v5, 0x1

    .line 713
    .end local v0           #account:Landroid/accounts/Account;
    :goto_1
    return v5

    .line 708
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 713
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1835
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GTalkService."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    return-void
.end method

.method private logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1988
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GTalkService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    return-void
.end method

.method private logoutAllSessions()V
    .locals 2

    .prologue
    .line 1680
    const-string v0, "logoutAllSessions"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1681
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAndRemoveMainEndpoint()V

    .line 1685
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1687
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1689
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1693
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1694
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->logout()V

    goto :goto_0

    .line 1689
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 1696
    :cond_0
    return-void
.end method

.method private logoutAndRemoveMainEndpoint()V
    .locals 2

    .prologue
    .line 1671
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1672
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logout()V

    .line 1674
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    .line 1676
    :cond_0
    monitor-exit v1

    .line 1677
    return-void

    .line 1676
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private logoutAndRemoveObsoleteEndpoints()V
    .locals 20

    .prologue
    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 739
    .local v8, accounts:[Landroid/accounts/Account;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v13, endpointsToBeClosed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/Endpoint;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 742
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 743
    .local v9, connection:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getUsername()Ljava/lang/String;

    move-result-object v18

    .line 744
    .local v18, username:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->accountsContainsUsername([Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v14

    .line 745
    .local v14, found:Z
    if-nez v14, :cond_0

    .line 746
    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 750
    .end local v9           #connection:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    .end local v14           #found:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #username:Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 753
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
    .local v19, whereClauseSB:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 755
    .local v6, selectionArgs:[Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 756
    .local v17, numEndpointsToClose:I
    if-lez v17, :cond_4

    .line 757
    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    .line 763
    const/4 v15, 0x0

    .line 764
    .local v15, i:I
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gsf/gtalkservice/Endpoint;

    .line 765
    .local v12, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logout()V

    .line 767
    if-lez v15, :cond_2

    .line 768
    const-string v2, " OR "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    :cond_2
    const-string v2, "username==?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getUsername()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v15

    .line 772
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 775
    .end local v12           #endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 779
    .local v5, whereClause:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 785
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_5

    .line 786
    const-string v2, "logoutAndRemoveObsoleteAccounts"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logEmptyCursor(Ljava/lang/String;)V

    .line 802
    .end local v5           #whereClause:Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v15           #i:I
    :cond_4
    :goto_2
    return-void

    .line 790
    .restart local v5       #whereClause:Ljava/lang/String;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v15       #i:I
    :cond_5
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 792
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 795
    .local v11, deleted:I
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logoutAndRemoveObsoleteAccounts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " accounts deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 800
    .end local v11           #deleted:I
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private maybeCreateMainEndpointAndLogin(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1347
    if-nez p1, :cond_0

    .line 1348
    const-string v0, "createMainEndpoint: no account"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1383
    :goto_0
    return-void

    .line 1353
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getPort()I

    move-result v0

    if-gez v0, :cond_1

    .line 1354
    const-string v0, "createMainEndpoint: port is negative"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1359
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1360
    const-string v0, "createMainEndpoint: bkgnd data OFF"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1364
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 1366
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1367
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1368
    monitor-exit v1

    goto :goto_0

    .line 1370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1372
    const-string v0, "createMainEndpoint"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1373
    new-instance v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    .line 1374
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    .line 1375
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setMainEndpoint(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    .line 1376
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getInitialDelay()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 1377
    invoke-virtual {v0, v5}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 1381
    :cond_4
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0, v5}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->setConnectionError(I)Z

    .line 1382
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->login()V

    goto :goto_0
.end method

.method private notifyServiceStarted()V
    .locals 2

    .prologue
    .line 986
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.talk.MCS_CONNECTION_SERVICE_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 987
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendBroadcast(Landroid/content/Intent;)V

    .line 988
    return-void
.end method

.method private reconcileGTalkAccount(Ljava/lang/String;)V
    .locals 2
    .parameter "username"

    .prologue
    .line 844
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reconcileGTalkAccount for username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 848
    :cond_0
    if-nez p1, :cond_2

    .line 850
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetFirstAccountUsername()Ljava/lang/String;

    move-result-object p1

    .line 851
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 861
    :cond_1
    :goto_0
    return-void

    .line 855
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isValidAccount(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 860
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->deleteAccount(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private refreshAuthToken(Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    .locals 5
    .parameter "endpoint"

    .prologue
    .line 246
    instance-of v3, p1, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v3, :cond_1

    .line 247
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "refreshAuthToken for AndroidEndpoint"

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 248
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->asyncAuditMainConnection()V
    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->access$1000(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)V

    .line 272
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 251
    .local v0, account:Lcom/google/android/gsf/gtalkservice/Account;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, username:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, oldToken:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/gtalkservice/Account;->setAuthToken(Ljava/lang/String;)V

    .line 260
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/android/gsf/gtalkservice/service/GTalkService$2;

    invoke-direct {v4, p0, v2, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$2;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private removeProviders()V
    .locals 2

    .prologue
    .line 1335
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "removeProviders"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1337
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    .line 1338
    invoke-virtual {v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeBuiltInProviders()V

    .line 1339
    invoke-virtual {v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeRawXmlIqProviders()V

    .line 1340
    return-void
.end method

.method private resetOnGservicesChange()V
    .locals 5

    .prologue
    .line 1252
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1253
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleGservicesChangeForEndpoint(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    .line 1254
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1260
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1262
    .local v2, listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;>;"
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1266
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1267
    .local v0, connectionWrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleGservicesChangeForEndpoint(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    goto :goto_0

    .line 1254
    .end local v0           #connectionWrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1262
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 1269
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;>;"
    :cond_0
    return-void
.end method

.method private sendDeviceIdleStatusForConnections(Z)V
    .locals 2
    .parameter "idle"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendDeviceIdleStatus(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 432
    return-void

    .line 430
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private setDeviceStorageLow(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 441
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mDeviceStorageLow:Z

    .line 443
    monitor-exit v1

    .line 444
    return-void

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setIsUserIdle(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 418
    monitor-enter p0

    .line 419
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mUserIsIdle:Z

    .line 420
    monitor-exit p0

    .line 421
    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setTalkForegroundState()V
    .locals 5

    .prologue
    const/16 v4, 0x12c

    const/4 v2, 0x1

    .line 2040
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEnableTalkForegroundNotifications:Z

    if-nez v0, :cond_0

    .line 2068
    :goto_0
    return-void

    .line 2043
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2044
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mTalkAppReportedInForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2047
    new-instance v1, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;-><init>(Z)V

    .line 2048
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getAccountId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;->setAccountId(J)V

    .line 2049
    const/4 v0, 0x0

    .line 2050
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    .line 2051
    if-eqz v2, :cond_1

    .line 2052
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 2054
    :cond_1
    if-eqz v0, :cond_2

    .line 2056
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2065
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2057
    :catch_0
    move-exception v0

    .line 2058
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send foreground state caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public blockingGetFirstAccountUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 648
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 650
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 651
    const/4 v1, 0x0

    .line 653
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public doXMPPConnectionWriteLock()V
    .locals 1

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2004
    return-void
.end method

.method public doXMPPConnectionWriteUnlock()V
    .locals 1

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2008
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 20
    .parameter "fd"
    .parameter "out"
    .parameter "args"

    .prologue
    .line 276
    const/4 v12, 0x1

    .line 277
    .local v12, printLog:Z
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v15, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    const-string v15, "-nolog"

    const/16 v16, 0x0

    aget-object v16, p3, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 278
    const/4 v12, 0x0

    .line 280
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 282
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getDeviceStorageLow()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 283
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    const-string v15, "----- DEVICE STORAGE IS LOW -----"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mTimeSinceServiceOnCreate:J

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    const-wide/16 v17, 0x3e8

    div-long v5, v15, v17

    .line 289
    .local v5, elapsed:J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "android_id"

    const-wide/16 v17, 0x0

    invoke-static/range {v15 .. v18}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 291
    .local v3, androidId:J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Time since service creation: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "aid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-wide/16 v17, 0x0

    cmp-long v15, v3, v17

    if-nez v15, :cond_7

    const-string v15, "(INVALID AID!!!)"

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "User idle timeout: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getIdleTimeout()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "s"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "User idle: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Protocol version: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-byte v16, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    const-string v15, "RMQ2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/LogTag;->getShowDebugLogs()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 299
    const-string v15, "debug logs ON"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 303
    .local v11, numEndpoints:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v15, :cond_3

    .line 304
    add-int/lit8 v11, v11, 0x1

    .line 306
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "num endpoints: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSendIdleAlarm()Lcom/google/android/gsf/gtalkservice/Alarm;

    move-result-object v2

    .line 309
    .local v2, alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    if-eqz v2, :cond_4

    .line 310
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->dump(Ljava/io/PrintWriter;)V

    .line 315
    :cond_4
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->dump(Ljava/io/PrintWriter;)V

    .line 319
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRawStanzaProvidersManager()Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->dump(Ljava/io/PrintWriter;)V

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getXMPPConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v14

    .line 324
    .local v14, xmppConnection:Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 325
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lorg/jivesoftware/smack/XMPPConnection;->dump(Ljava/io/PrintWriter;)V

    .line 328
    const-string v15, "GTalkService"

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 329
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lorg/jivesoftware/smack/XMPPConnection;->dumpVerbose(Ljava/io/PrintWriter;)V

    .line 333
    :cond_5
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v15, :cond_6

    .line 335
    const-string v15, "### Main Endpoint ###"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->dump(Ljava/io/PrintWriter;)V

    .line 340
    :cond_6
    const/4 v8, 0x2

    .line 341
    .local v8, i:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    move v9, v8

    .end local v8           #i:I
    .local v9, i:I
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 342
    .local v13, wrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v13}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v7

    .line 345
    .local v7, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "### Endpoint ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v8, v9, 0x1

    .end local v9           #i:I
    .restart local v8       #i:I
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") ###"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->dump(Ljava/io/PrintWriter;)V

    move v9, v8

    .line 348
    .end local v8           #i:I
    .restart local v9       #i:I
    goto :goto_1

    .line 292
    .end local v2           #alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    .end local v7           #endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #numEndpoints:I
    .end local v13           #wrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    .end local v14           #xmppConnection:Lorg/jivesoftware/smack/XMPPConnection;
    :cond_7
    const-string v15, ""

    goto/16 :goto_0

    .line 350
    .restart local v2       #alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    .restart local v9       #i:I
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #numEndpoints:I
    .restart local v14       #xmppConnection:Lorg/jivesoftware/smack/XMPPConnection;
    :cond_8
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    invoke-static/range {p2 .. p2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->dump(Ljava/io/PrintWriter;)V

    .line 353
    if-eqz v12, :cond_9

    .line 354
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    const-string v15, "------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    const-string v15, "### Log History ###"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    invoke-static/range {p2 .. p2}, Lcom/google/android/gsf/gtalkservice/Log;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 362
    return-void

    .line 360
    .end local v2           #alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    .end local v3           #androidId:J
    .end local v5           #elapsed:J
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #numEndpoints:I
    .end local v14           #xmppConnection:Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v15
.end method

.method public getAccountForAndroidId()Lcom/google/android/gsf/gtalkservice/Account;
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    .line 664
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 665
    .local v1, androidId:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@mcs.android.com"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 667
    .local v4, username:Ljava/lang/String;
    cmp-long v5, v1, v7

    if-nez v5, :cond_1

    .line 668
    const/16 v5, 0x9

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 669
    const-string v5, "GTalkService"

    const-string v6, "getAccountForAndroidId: get ANDROID_ID returned 0!"

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_0
    :goto_0
    return-object v0

    .line 673
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSecurityTokenForAndroidId()Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, token:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 677
    const-string v5, "GTalkService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 678
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAccountForAndroidId: aid username="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 680
    :cond_2
    invoke-static {v1, v2}, Lcom/google/android/gsf/MobileConnectionSettings;->getDeviceId(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v4, v3, v5, v6}, Lcom/google/android/gsf/gtalkservice/Account;->createAccountFromSettings(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 682
    .local v0, account:Lcom/google/android/gsf/gtalkservice/Account;
    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIsOkToConnectToMcs()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1780
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1789
    :cond_0
    :goto_0
    return v0

    .line 1786
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getDeviceStorageLow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1789
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMainEndpoint()Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;
    .locals 2

    .prologue
    .line 1239
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1240
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    monitor-exit v1

    return-object v0

    .line 1241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRawStanzaProvidersManager()Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;
    .locals 1

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRawStanzaProvidersManager:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    return-object v0
.end method

.method public getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;
    .locals 1

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mReconnectManager:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    return-object v0
.end method

.method public getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    .locals 1

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    return-object v0
.end method

.method public getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mStatusBarNotifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    return-object v0
.end method

.method public getXMPPConnection()Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnection:Lorg/jivesoftware/smack/XMPPConnection;

    return-object v0
.end method

.method public handleDeviceStorageLow()V
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 448
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setDeviceStorageLow(Z)V

    .line 450
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAllSessions()V

    .line 451
    return-void
.end method

.method public handleDeviceStorageOk()V
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setDeviceStorageLow(Z)V

    .line 456
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->asyncAuditMainConnection()V
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->access$1000(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)V

    .line 457
    return-void
.end method

.method public handleGservicesSettingChanged()V
    .locals 4

    .prologue
    .line 460
    monitor-enter p0

    .line 461
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPendingGservicesChange:Z

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPendingGservicesChange:Z

    .line 467
    :cond_0
    monitor-exit p0

    .line 468
    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUserIdle()Z
    .locals 1

    .prologue
    .line 412
    monitor-enter p0

    .line 413
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mUserIsIdle:Z

    monitor-exit p0

    return v0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyActiveChatSessionsOfChange(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;)V
    .locals 8
    .parameter "entry"

    .prologue
    .line 1818
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1820
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1821
    .local v3, wrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v1

    .line 1822
    .local v1, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;->getAccountId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    instance-of v4, v1, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    if-eqz v4, :cond_0

    .line 1824
    check-cast v1, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    .end local v1           #endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;

    move-result-object v0

    .line 1826
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;->notifyActiveChatSessionsOfChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1830
    .end local v0           #chatMgr:Lcom/google/android/gsf/gtalkservice/gtalk/ChatMgr;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #wrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1832
    return-void
.end method

.method public notifyActiveChatSessionsOfChanges(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1812
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;

    .line 1813
    .local v0, entry:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->notifyActiveChatSessionsOfChange(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;)V

    goto :goto_0

    .line 1815
    .end local v0           #entry:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter

    .prologue
    .line 1225
    const-class v0, Lcom/google/android/gtalkservice/IGTalkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mGTalkServiceBinder:Lcom/google/android/gtalkservice/IGTalkService$Stub;

    .line 1229
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 909
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/LogTag;->queryLoggingLevel()V

    .line 910
    const-string v0, "GTalkService"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onCreate"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 912
    :cond_0
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 914
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mReconnectManager:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    .line 916
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gtalk_send_app_foreground_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEnableTalkForegroundNotifications:Z

    .line 919
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mChatMessageSentCallback:Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;

    .line 921
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 922
    new-instance v1, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-direct {v1, v0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;-><init>(Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    .line 923
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getIncludeStreamIdFromGservices(Landroid/content/ContentResolver;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setIncludeStreamId(Z)V

    .line 925
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->getRmqAckIntervalFromGservices(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setAckingInterval(I)V

    .line 927
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mChatMessageSentCallback:Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setMessageQueueCallbacks(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbacks;)V

    .line 929
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mTimeSinceServiceOnCreate:J

    .line 931
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    .line 933
    new-instance v0, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    const-string v1, "ac2dm"

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    .line 935
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    .line 936
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 937
    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mStatusBarNotifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    .line 939
    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    .line 943
    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 944
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;->start()V

    .line 945
    :goto_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 946
    monitor-enter p0

    .line 948
    const-wide/16 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 954
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initProviders()V

    .line 956
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 957
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 958
    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 959
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 960
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 961
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 962
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 963
    const-string v1, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 966
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 969
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 971
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 973
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 974
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initializeConnection()V

    .line 977
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->notifyServiceStarted()V

    .line 979
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 980
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 981
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleScreenOff()V

    .line 983
    :cond_3
    return-void

    .line 949
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1208
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1209
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 1211
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAllSessions()V

    .line 1212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    .line 1214
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1216
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mStatusBarNotifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->onServiceDestroyed()V

    .line 1218
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->removeProviders()V

    .line 1220
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1221
    return-void
.end method

.method public onGotBatchPresence()V
    .locals 5

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 392
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 393
    .local v1, screenIsOn:Z
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGotBatchPresence but idle, screenIsOn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    if-eqz v1, :cond_1

    .line 396
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setIsUserIdle(Z)V

    .line 401
    .end local v0           #pm:Landroid/os/PowerManager;
    .end local v1           #screenIsOn:Z
    :cond_0
    :goto_0
    return-void

    .line 398
    .restart local v0       #pm:Landroid/os/PowerManager;
    .restart local v1       #screenIsOn:Z
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendDeviceIdleStatusForConnections(Z)V

    goto :goto_0
.end method

.method public onSentBatchPresenceRequest()V
    .locals 2

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const-string v0, "GTalkService"

    const-string v1, "onSentBatchPresenceRequest but user idle"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleUserPresent()V

    .line 409
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 992
    if-eqz p1, :cond_0

    .line 993
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 995
    const-string v1, "com.google.android.gtalkservice.intent.SEND_IQ_STANZA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 996
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendIqStanzaIntent(Landroid/content/Intent;)V

    .line 1021
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 997
    :cond_1
    const-string v1, "com.google.android.gtalkservice.intent.SEND_MESSAGE_STANZA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 998
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendMessageStanzaIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 999
    :cond_2
    const-string v1, "com.google.android.gtalkservice.intent.SEND_PRESENCE_STANZA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1000
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendPresenceStanzaIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1001
    :cond_3
    const-string v1, "com.google.android.gtalkservice.intent.CREATE_XMPP_ENDPOINT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1002
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleCreateXmppEndpoint(Landroid/content/Intent;)V

    goto :goto_0

    .line 1003
    :cond_4
    const-string v1, "com.google.android.gtalkservice.intent.SEND_XMPP_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1004
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppMessage(Landroid/content/Intent;)V

    goto :goto_0

    .line 1005
    :cond_5
    const-string v1, "com.google.android.gtalkservice.intent.SEND_XMPP_PRESENCE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1006
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppPresence(Landroid/content/Intent;)V

    goto :goto_0

    .line 1007
    :cond_6
    const-string v1, "com.google.android.gtalkservice.intent.SEND_XMPP_IQ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1008
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppIq(Landroid/content/Intent;)V

    goto :goto_0

    .line 1009
    :cond_7
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1010
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handlePackageInstalled()V

    goto :goto_0

    .line 1011
    :cond_8
    const-string v1, "com.google.android.c2dm.intent.SEND_DATA_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->isD2cmEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendDataMessageStanza(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 1234
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 1235
    const/4 v0, 0x1

    return v0
.end method

.method public removeConnection(Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;)V
    .locals 2
    .parameter "wrapper"

    .prologue
    .line 1699
    if-nez p1, :cond_0

    .line 1709
    :goto_0
    return-void

    .line 1703
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1705
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1707
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public sendHeartbeatToServer()V
    .locals 2

    .prologue
    .line 1798
    const-string v0, "com.google.android.gtalkservice.permission.SEND_HEARTBEAT"

    const-string v1, "Need SEND_HEART_BEAT permission"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-nez v0, :cond_0

    .line 1803
    const-string v0, "GTalkService"

    const-string v1, "sendHeartbeatToServer: main endpoint is null"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    :goto_0
    return-void

    .line 1807
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendHeartbeatToServer()Z

    goto :goto_0
.end method

.method public setXMPPConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .parameter

    .prologue
    .line 1996
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setXMPPConnection: connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1999
    :cond_0
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 2000
    return-void
.end method
