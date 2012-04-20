.class public Lcom/android/monitor/net/TrafficService;
.super Landroid/app/Service;
.source "TrafficService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/monitor/net/TrafficService$AppUsageItem;,
        Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;,
        Lcom/android/monitor/net/TrafficService$TrafficHandler;,
        Lcom/android/monitor/net/TrafficService$TrafficBinder;
    }
.end annotation


# instance fields
.field private mBackgroundStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/monitor/net/TrafficService$AppUsageItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Landroid/os/IBinder;

.field private mForegroundStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/monitor/net/TrafficService$AppUsageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/monitor/net/TrafficService$TrafficHandler;

.field private mMobilePolicy:Landroid/net/NetworkPolicy;

.field private mMobileStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Lcom/android/monitor/net/TrafficService$AppUsageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileTemplate:Landroid/net/NetworkTemplate;

.field private mNetworkConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mPolicyEditor:Lcom/android/monitor/net/NetworkPolicyEditor;

.field private mPolicyService:Landroid/net/INetworkPolicyManager;

.field private mPreferences:Lcom/android/monitor/util/Preferences;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mWifiStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Lcom/android/monitor/net/TrafficService$AppUsageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 79
    new-instance v0, Lcom/android/monitor/net/TrafficService$TrafficBinder;

    invoke-direct {v0, p0}, Lcom/android/monitor/net/TrafficService$TrafficBinder;-><init>(Lcom/android/monitor/net/TrafficService;)V

    iput-object v0, p0, Lcom/android/monitor/net/TrafficService;->mBinder:Landroid/os/IBinder;

    .line 86
    new-instance v0, Lcom/android/monitor/net/TrafficService$1;

    invoke-direct {v0, p0}, Lcom/android/monitor/net/TrafficService$1;-><init>(Lcom/android/monitor/net/TrafficService;)V

    iput-object v0, p0, Lcom/android/monitor/net/TrafficService;->mNetworkConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 446
    return-void
.end method

.method static synthetic access$000(Lcom/android/monitor/net/TrafficService;)Lcom/android/monitor/net/TrafficService$TrafficHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mHandler:Lcom/android/monitor/net/TrafficService$TrafficHandler;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/monitor/net/TrafficService;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/monitor/net/TrafficService;->mBackgroundStats:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/monitor/net/TrafficService;)Landroid/net/NetworkPolicy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mMobilePolicy:Landroid/net/NetworkPolicy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/monitor/net/TrafficService;)Landroid/net/NetworkTemplate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mMobileTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/monitor/net/TrafficService;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/monitor/net/TrafficService;)Landroid/net/NetworkTemplate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mWifiTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/monitor/net/TrafficService;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/monitor/net/TrafficService;->mMobileStats:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/monitor/net/TrafficService;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/monitor/net/TrafficService;->mWifiStats:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/monitor/net/TrafficService;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/monitor/net/TrafficService;->mForegroundStats:Landroid/util/SparseArray;

    return-object p1
.end method

.method private getActiveSubscriberId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/monitor/net/TrafficService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 278
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAppRestrictBackground(I)Z
    .locals 3
    .parameter "uid"

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, appRestrictBackground:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/monitor/net/TrafficService;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v2, p1}, Landroid/net/INetworkPolicyManager;->getUidPolicy(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 269
    .local v1, policy:I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 273
    .end local v1           #policy:I
    :goto_0
    return v0

    .line 269
    .restart local v1       #policy:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 270
    .end local v1           #policy:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getCycleDay()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mMobilePolicy:Landroid/net/NetworkPolicy;

    iget v0, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    return v0
.end method

.method public getLimitBytes()J
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mMobilePolicy:Landroid/net/NetworkPolicy;

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    return-wide v0
.end method

.method public getMobileUsedBytes()J
    .locals 5

    .prologue
    .line 164
    const-wide/16 v0, 0x0

    .line 165
    .local v0, mobileBytes:J
    iget-object v3, p0, Lcom/android/monitor/net/TrafficService;->mMobileStats:Landroid/util/SparseArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/monitor/net/TrafficService$AppUsageItem;

    .line 166
    .local v2, mobileUsage:[Lcom/android/monitor/net/TrafficService$AppUsageItem;
    if-eqz v2, :cond_0

    .line 167
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lcom/android/monitor/net/TrafficService$AppUsageItem;->getTotal()J

    move-result-wide v0

    .line 170
    :cond_0
    return-wide v0
.end method

.method public getRestrictBackground()Z
    .locals 2

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, restrictBackground:Z
    :try_start_0
    iget-object v1, p0, Lcom/android/monitor/net/TrafficService;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 253
    :goto_0
    return v0

    .line 251
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getUidStat(Lcom/android/monitor/net/UidInfo;)V
    .locals 12
    .parameter "uidInfo"

    .prologue
    const-wide/16 v10, 0x0

    .line 174
    if-nez p1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget v4, p1, Lcom/android/monitor/net/UidInfo;->mUid:I

    .line 178
    .local v4, uid:I
    iget-object v6, p0, Lcom/android/monitor/net/TrafficService;->mMobileStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/monitor/net/TrafficService$AppUsageItem;

    .line 179
    .local v3, mobileUsage:[Lcom/android/monitor/net/TrafficService$AppUsageItem;
    iget-object v6, p0, Lcom/android/monitor/net/TrafficService;->mWifiStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/monitor/net/TrafficService$AppUsageItem;

    .line 180
    .local v5, wifiUsage:[Lcom/android/monitor/net/TrafficService$AppUsageItem;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v6, 0x3

    if-ge v2, v6, :cond_4

    .line 181
    if-eqz v3, :cond_2

    .line 182
    iget-object v6, p1, Lcom/android/monitor/net/UidInfo;->mMobileRxBytes:[J

    aget-object v7, v3, v2

    invoke-virtual {v7}, Lcom/android/monitor/net/TrafficService$AppUsageItem;->getRxBytes()J

    move-result-wide v7

    aput-wide v7, v6, v2

    .line 183
    iget-object v6, p1, Lcom/android/monitor/net/UidInfo;->mMobileTxBytes:[J

    aget-object v7, v3, v2

    invoke-virtual {v7}, Lcom/android/monitor/net/TrafficService$AppUsageItem;->getTxBytes()J

    move-result-wide v7

    aput-wide v7, v6, v2

    .line 185
    :cond_2
    if-eqz v5, :cond_3

    .line 186
    iget-object v6, p1, Lcom/android/monitor/net/UidInfo;->mRxBytes:[J

    aget-object v7, v5, v2

    invoke-virtual {v7}, Lcom/android/monitor/net/TrafficService$AppUsageItem;->getRxBytes()J

    move-result-wide v7

    aput-wide v7, v6, v2

    .line 187
    iget-object v6, p1, Lcom/android/monitor/net/UidInfo;->mTxBytes:[J

    aget-object v7, v5, v2

    invoke-virtual {v7}, Lcom/android/monitor/net/TrafficService$AppUsageItem;->getTxBytes()J

    move-result-wide v7

    aput-wide v7, v6, v2

    .line 180
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 191
    :cond_4
    iget-object v6, p0, Lcom/android/monitor/net/TrafficService;->mForegroundStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/monitor/net/TrafficService$AppUsageItem;

    .line 192
    .local v1, foregroundUsage:Lcom/android/monitor/net/TrafficService$AppUsageItem;
    if-eqz v1, :cond_5

    .line 193
    iput-wide v10, p1, Lcom/android/monitor/net/UidInfo;->mForegroundBytes:J

    .line 194
    iget-wide v6, p1, Lcom/android/monitor/net/UidInfo;->mForegroundBytes:J

    invoke-virtual {v1}, Lcom/android/monitor/net/TrafficService$AppUsageItem;->getTxBytes()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p1, Lcom/android/monitor/net/UidInfo;->mForegroundBytes:J

    .line 195
    iget-wide v6, p1, Lcom/android/monitor/net/UidInfo;->mForegroundBytes:J

    invoke-virtual {v1}, Lcom/android/monitor/net/TrafficService$AppUsageItem;->getRxBytes()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p1, Lcom/android/monitor/net/UidInfo;->mForegroundBytes:J

    .line 198
    :cond_5
    iget-object v6, p0, Lcom/android/monitor/net/TrafficService;->mBackgroundStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/monitor/net/TrafficService$AppUsageItem;

    .line 199
    .local v0, backgroundUsage:Lcom/android/monitor/net/TrafficService$AppUsageItem;
    if-eqz v0, :cond_0

    .line 200
    iput-wide v10, p1, Lcom/android/monitor/net/UidInfo;->mBackgroundBytes:J

    .line 201
    iget-wide v6, p1, Lcom/android/monitor/net/UidInfo;->mBackgroundBytes:J

    invoke-virtual {v0}, Lcom/android/monitor/net/TrafficService$AppUsageItem;->getTxBytes()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p1, Lcom/android/monitor/net/UidInfo;->mBackgroundBytes:J

    .line 202
    iget-wide v6, p1, Lcom/android/monitor/net/UidInfo;->mBackgroundBytes:J

    invoke-virtual {v0}, Lcom/android/monitor/net/TrafficService$AppUsageItem;->getRxBytes()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p1, Lcom/android/monitor/net/UidInfo;->mBackgroundBytes:J

    goto/16 :goto_0
.end method

.method public getWarningBytes()J
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mMobilePolicy:Landroid/net/NetworkPolicy;

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 109
    new-instance v0, Lcom/android/monitor/net/TrafficService$TrafficHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/monitor/net/TrafficService$TrafficHandler;-><init>(Lcom/android/monitor/net/TrafficService;Lcom/android/monitor/net/TrafficService$1;)V

    iput-object v0, p0, Lcom/android/monitor/net/TrafficService;->mHandler:Lcom/android/monitor/net/TrafficService$TrafficHandler;

    .line 110
    new-instance v0, Lcom/android/monitor/util/Preferences;

    invoke-direct {v0, p0}, Lcom/android/monitor/util/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/monitor/net/TrafficService;->mPreferences:Lcom/android/monitor/util/Preferences;

    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/monitor/net/TrafficService;->mMobileStats:Landroid/util/SparseArray;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/monitor/net/TrafficService;->mWifiStats:Landroid/util/SparseArray;

    .line 113
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/monitor/net/TrafficService;->mForegroundStats:Landroid/util/SparseArray;

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/monitor/net/TrafficService;->mBackgroundStats:Landroid/util/SparseArray;

    .line 115
    const-string v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/monitor/net/TrafficService;->mPolicyService:Landroid/net/INetworkPolicyManager;

    .line 118
    new-instance v0, Lcom/android/monitor/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/monitor/net/TrafficService;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-direct {v0, v1}, Lcom/android/monitor/net/NetworkPolicyEditor;-><init>(Landroid/net/INetworkPolicyManager;)V

    iput-object v0, p0, Lcom/android/monitor/net/TrafficService;->mPolicyEditor:Lcom/android/monitor/net/NetworkPolicyEditor;

    .line 119
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mPolicyEditor:Lcom/android/monitor/net/NetworkPolicyEditor;

    invoke-virtual {v0}, Lcom/android/monitor/net/NetworkPolicyEditor;->read()V

    .line 121
    invoke-direct {p0}, Lcom/android/monitor/net/TrafficService;->getActiveSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/monitor/net/TrafficService;->mMobileTemplate:Landroid/net/NetworkTemplate;

    .line 122
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/monitor/net/TrafficService;->mWifiTemplate:Landroid/net/NetworkTemplate;

    .line 125
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mPreferences:Lcom/android/monitor/util/Preferences;

    invoke-virtual {v0}, Lcom/android/monitor/util/Preferences;->isInitNetworkPolicy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mPreferences:Lcom/android/monitor/util/Preferences;

    invoke-virtual {v0, v2}, Lcom/android/monitor/util/Preferences;->setInitNetworkPolicy(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mPolicyEditor:Lcom/android/monitor/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/monitor/net/TrafficService;->mMobileTemplate:Landroid/net/NetworkTemplate;

    const-wide/32 v3, 0x3200000

    const-wide/32 v5, 0x2800000

    invoke-virtual/range {v0 .. v6}, Lcom/android/monitor/net/NetworkPolicyEditor;->setPolicy(Landroid/net/NetworkTemplate;IJJ)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mNetworkConnectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/monitor/net/TrafficService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/monitor/net/TrafficService;->mStatsService:Landroid/net/INetworkStatsService;

    .line 137
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mNetworkConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/monitor/net/TrafficService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 144
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mPolicyEditor:Lcom/android/monitor/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/monitor/net/TrafficService;->mMobileTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/monitor/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/monitor/net/TrafficService;->mMobilePolicy:Landroid/net/NetworkPolicy;

    .line 156
    new-instance v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;

    invoke-direct {v0, p0}, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;-><init>(Lcom/android/monitor/net/TrafficService;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 158
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mHandler:Lcom/android/monitor/net/TrafficService$TrafficHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/monitor/net/TrafficService$TrafficHandler;->removeMessages(I)V

    .line 159
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mHandler:Lcom/android/monitor/net/TrafficService$TrafficHandler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/monitor/net/TrafficService$TrafficHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 160
    monitor-exit p0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppRestrictBackground(IZ)V
    .locals 2
    .parameter "uid"
    .parameter "restrictBackground"

    .prologue
    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/android/monitor/net/TrafficService;->mPolicyService:Landroid/net/INetworkPolicyManager;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, p1, v0}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_1
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setCycleDay(I)V
    .locals 2
    .parameter "cycleDay"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mPolicyEditor:Lcom/android/monitor/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/monitor/net/TrafficService;->mMobileTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1}, Lcom/android/monitor/net/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;I)V

    .line 230
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mPolicyEditor:Lcom/android/monitor/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/monitor/net/TrafficService;->mWifiTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1}, Lcom/android/monitor/net/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;I)V

    .line 231
    invoke-virtual {p0}, Lcom/android/monitor/net/TrafficService;->refresh()V

    .line 232
    return-void
.end method

.method public setLimitBytes(J)V
    .locals 2
    .parameter "limitBytes"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mPolicyEditor:Lcom/android/monitor/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/monitor/net/TrafficService;->mMobileTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/monitor/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 220
    invoke-virtual {p0}, Lcom/android/monitor/net/TrafficService;->refresh()V

    .line 221
    return-void
.end method

.method public setPolicy(IJJ)V
    .locals 7
    .parameter "cycleDay"
    .parameter "limitBytes"
    .parameter "warningBytes"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mPolicyEditor:Lcom/android/monitor/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/monitor/net/TrafficService;->mMobileTemplate:Landroid/net/NetworkTemplate;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/monitor/net/NetworkPolicyEditor;->setPolicy(Landroid/net/NetworkTemplate;IJJ)V

    .line 236
    invoke-virtual {p0}, Lcom/android/monitor/net/TrafficService;->refresh()V

    .line 237
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .parameter "restrictBackground"

    .prologue
    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    .line 242
    invoke-virtual {p0}, Lcom/android/monitor/net/TrafficService;->refresh()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    goto :goto_0
.end method
