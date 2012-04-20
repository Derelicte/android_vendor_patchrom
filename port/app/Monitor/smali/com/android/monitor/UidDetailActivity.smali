.class public Lcom/android/monitor/UidDetailActivity;
.super Landroid/app/Activity;
.source "UidDetailActivity.java"


# static fields
.field private static sUidInfo:Lcom/android/monitor/net/UidInfo;


# instance fields
.field private mAppDetailButton:Landroid/widget/Button;

.field private mBackground:Landroid/widget/TextView;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDataUsageRestrictBackground:Lmiui/widget/SlidingButton;

.field private mForceStopButton:Landroid/widget/Button;

.field private mForeground:Landroid/widget/TextView;

.field private mIsBound:Z

.field private mPackages:[Ljava/lang/String;

.field private mRestrictBackgroundChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mTrafficDetailPanel:Lcom/android/monitor/widget/TrafficDetailPanel;

.field private mTrafficService:Lcom/android/monitor/net/TrafficService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 158
    new-instance v0, Lcom/android/monitor/UidDetailActivity$5;

    invoke-direct {v0, p0}, Lcom/android/monitor/UidDetailActivity$5;-><init>(Lcom/android/monitor/UidDetailActivity;)V

    iput-object v0, p0, Lcom/android/monitor/UidDetailActivity;->mRestrictBackgroundChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 246
    new-instance v0, Lcom/android/monitor/UidDetailActivity$6;

    invoke-direct {v0, p0}, Lcom/android/monitor/UidDetailActivity$6;-><init>(Lcom/android/monitor/UidDetailActivity;)V

    iput-object v0, p0, Lcom/android/monitor/UidDetailActivity;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/monitor/UidDetailActivity;->mIsBound:Z

    .line 258
    new-instance v0, Lcom/android/monitor/UidDetailActivity$7;

    invoke-direct {v0, p0}, Lcom/android/monitor/UidDetailActivity$7;-><init>(Lcom/android/monitor/UidDetailActivity;)V

    iput-object v0, p0, Lcom/android/monitor/UidDetailActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/monitor/UidDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/monitor/UidDetailActivity;->killProcesses()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/monitor/UidDetailActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/monitor/UidDetailActivity;->mPackages:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/monitor/net/UidInfo;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/monitor/UidDetailActivity;->sUidInfo:Lcom/android/monitor/net/UidInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/monitor/UidDetailActivity;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/monitor/UidDetailActivity;->setAccessMode(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/monitor/UidDetailActivity;)Lcom/android/monitor/net/TrafficService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/monitor/UidDetailActivity;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/monitor/UidDetailActivity;Lcom/android/monitor/net/TrafficService;)Lcom/android/monitor/net/TrafficService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/monitor/UidDetailActivity;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/monitor/UidDetailActivity;)Lmiui/widget/SlidingButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/monitor/UidDetailActivity;->mDataUsageRestrictBackground:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/monitor/UidDetailActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/monitor/UidDetailActivity;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/monitor/UidDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/monitor/UidDetailActivity;->refreshTrafficInfo()V

    return-void
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lcom/android/monitor/UidDetailActivity;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/monitor/UidDetailActivity;->sUidInfo:Lcom/android/monitor/net/UidInfo;

    iget v0, v0, Lcom/android/monitor/net/UidInfo;->mUid:I

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/monitor/UidDetailActivity;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 235
    :goto_0
    return-void

    .line 229
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/monitor/UidDetailActivity;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 231
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    iget-object v3, p0, Lcom/android/monitor/UidDetailActivity;->mPackages:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v0, "android.intent.extra.UID"

    sget-object v3, Lcom/android/monitor/UidDetailActivity;->sUidInfo:Lcom/android/monitor/net/UidInfo;

    iget v3, v3, Lcom/android/monitor/net/UidInfo;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    iget-object v3, p0, Lcom/android/monitor/UidDetailActivity;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v0, p0

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/monitor/UidDetailActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private doBindService()V
    .locals 3

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/monitor/net/TrafficService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    invoke-virtual {p0, v0}, Lcom/android/monitor/UidDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 272
    iget-object v1, p0, Lcom/android/monitor/UidDetailActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/monitor/UidDetailActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/monitor/UidDetailActivity;->mIsBound:Z

    .line 273
    return-void
.end method

.method private doUnbindService()V
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/monitor/UidDetailActivity;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/monitor/UidDetailActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/monitor/UidDetailActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/monitor/UidDetailActivity;->mIsBound:Z

    .line 281
    :cond_0
    return-void
.end method

.method private killProcesses()V
    .locals 3

    .prologue
    .line 238
    iget-object v2, p0, Lcom/android/monitor/UidDetailActivity;->mPackages:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 244
    :goto_0
    return-void

    .line 239
    :cond_0
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/monitor/UidDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 240
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/monitor/UidDetailActivity;->mPackages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/android/monitor/UidDetailActivity;->mPackages:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 243
    :cond_1
    invoke-direct {p0}, Lcom/android/monitor/UidDetailActivity;->checkForceStop()V

    goto :goto_0
.end method

.method private refreshTrafficInfo()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 197
    iget-object v1, p0, Lcom/android/monitor/UidDetailActivity;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/android/monitor/UidDetailActivity;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    sget-object v4, Lcom/android/monitor/UidDetailActivity;->sUidInfo:Lcom/android/monitor/net/UidInfo;

    invoke-virtual {v1, v4}, Lcom/android/monitor/net/TrafficService;->getUidStat(Lcom/android/monitor/net/UidInfo;)V

    .line 199
    iget-object v1, p0, Lcom/android/monitor/UidDetailActivity;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    invoke-virtual {v1}, Lcom/android/monitor/net/TrafficService;->getRestrictBackground()Z

    move-result v0

    .line 200
    .local v0, isSystemRestrictBackground:Z
    iget-object v4, p0, Lcom/android/monitor/UidDetailActivity;->mDataUsageRestrictBackground:Lmiui/widget/SlidingButton;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v4, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 201
    iget-object v4, p0, Lcom/android/monitor/UidDetailActivity;->mDataUsageRestrictBackground:Lmiui/widget/SlidingButton;

    if-nez v0, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    .line 202
    iget-object v1, p0, Lcom/android/monitor/UidDetailActivity;->mDataUsageRestrictBackground:Lmiui/widget/SlidingButton;

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/monitor/UidDetailActivity;->mTrafficService:Lcom/android/monitor/net/TrafficService;

    sget-object v5, Lcom/android/monitor/UidDetailActivity;->sUidInfo:Lcom/android/monitor/net/UidInfo;

    iget v5, v5, Lcom/android/monitor/net/UidInfo;->mUid:I

    invoke-virtual {v4, v5}, Lcom/android/monitor/net/TrafficService;->getAppRestrictBackground(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    invoke-virtual {v1, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 205
    .end local v0           #isSystemRestrictBackground:Z
    :cond_2
    sget-object v1, Lcom/android/monitor/UidDetailActivity;->sUidInfo:Lcom/android/monitor/net/UidInfo;

    invoke-direct {p0, v1}, Lcom/android/monitor/UidDetailActivity;->updateTrafficTable(Lcom/android/monitor/net/UidInfo;)V

    .line 206
    return-void

    .line 200
    .restart local v0       #isSystemRestrictBackground:Z
    :cond_3
    iget-object v1, p0, Lcom/android/monitor/UidDetailActivity;->mRestrictBackgroundChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    goto :goto_0

    :cond_4
    move v1, v3

    .line 201
    goto :goto_1
.end method

.method private setAccessMode(ZZ)V
    .locals 2
    .parameter "isChecked"
    .parameter "isMobile"

    .prologue
    .line 135
    sget-object v1, Lcom/android/monitor/UidDetailActivity;->sUidInfo:Lcom/android/monitor/net/UidInfo;

    invoke-static {p0, v1}, Lcom/android/monitor/net/Firewall;->saveRules(Landroid/content/Context;Lcom/android/monitor/net/UidInfo;)V

    .line 136
    invoke-static {p0, p2}, Lcom/android/monitor/net/Firewall;->getAccessMode(Landroid/content/Context;Z)I

    move-result v0

    .line 137
    .local v0, mode:I
    if-nez p1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 139
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v1, p2}, Lcom/android/monitor/net/Firewall;->setAccessMode(Landroid/content/Context;IZ)V

    .line 141
    :cond_2
    return-void
.end method

.method public static setUidInfo(Lcom/android/monitor/net/UidInfo;)V
    .locals 0
    .parameter "uidInfo"

    .prologue
    .line 46
    sput-object p0, Lcom/android/monitor/UidDetailActivity;->sUidInfo:Lcom/android/monitor/net/UidInfo;

    .line 47
    return-void
.end method

.method private updateTrafficTable(Lcom/android/monitor/net/UidInfo;)V
    .locals 11
    .parameter "u"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 209
    new-array v2, v8, [J

    .line 210
    .local v2, mobileBytes:[J
    new-array v3, v8, [J

    .line 211
    .local v3, wifiBytes:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 212
    iget-object v4, p1, Lcom/android/monitor/net/UidInfo;->mMobileTxBytes:[J

    aget-wide v4, v4, v1

    iget-object v6, p1, Lcom/android/monitor/net/UidInfo;->mMobileRxBytes:[J

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    aput-wide v4, v2, v1

    .line 213
    iget-object v4, p1, Lcom/android/monitor/net/UidInfo;->mTxBytes:[J

    aget-wide v4, v4, v1

    iget-object v6, p1, Lcom/android/monitor/net/UidInfo;->mRxBytes:[J

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    aput-wide v4, v3, v1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_0
    iget-wide v4, p1, Lcom/android/monitor/net/UidInfo;->mBackgroundBytes:J

    invoke-static {p0, v4, v5}, Lcom/android/monitor/util/SysUtils;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, formatBytes:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/monitor/UidDetailActivity;->mBackground:Landroid/widget/TextView;

    const v5, 0x7f050033

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v0, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/monitor/UidDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-wide v4, p1, Lcom/android/monitor/net/UidInfo;->mForegroundBytes:J

    invoke-static {p0, v4, v5}, Lcom/android/monitor/util/SysUtils;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v4, p0, Lcom/android/monitor/UidDetailActivity;->mForeground:Landroid/widget/TextView;

    const v5, 0x7f050032

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v0, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/monitor/UidDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v4, p0, Lcom/android/monitor/UidDetailActivity;->mTrafficDetailPanel:Lcom/android/monitor/widget/TrafficDetailPanel;

    invoke-virtual {v4, v2, v3}, Lcom/android/monitor/widget/TrafficDetailPanel;->updateTrafficTable([J[J)V

    .line 222
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/high16 v8, 0x7f03

    invoke-virtual {p0, v8}, Lcom/android/monitor/UidDetailActivity;->setContentView(I)V

    .line 54
    sget-object v8, Lcom/android/monitor/UidDetailActivity;->sUidInfo:Lcom/android/monitor/net/UidInfo;

    if-nez v8, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/monitor/UidDetailActivity;->finish()V

    .line 132
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/android/monitor/UidDetailActivity;->doBindService()V

    .line 61
    invoke-virtual {p0}, Lcom/android/monitor/UidDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 62
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/android/monitor/UidDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    sget-object v11, Lcom/android/monitor/UidDetailActivity;->sUidInfo:Lcom/android/monitor/net/UidInfo;

    iget v11, v11, Lcom/android/monitor/net/UidInfo;->mUid:I

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/monitor/UidDetailActivity;->mPackages:[Ljava/lang/String;

    .line 68
    const v8, 0x1020006

    invoke-virtual {p0, v8}, Lcom/android/monitor/UidDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 69
    .local v2, icon:Landroid/widget/ImageView;
    const v8, 0x1020014

    invoke-virtual {p0, v8}, Lcom/android/monitor/UidDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 70
    .local v4, text1:Landroid/widget/TextView;
    const v8, 0x1020015

    invoke-virtual {p0, v8}, Lcom/android/monitor/UidDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 71
    .local v5, text2:Landroid/widget/TextView;
    sget-object v8, Lcom/android/monitor/UidDetailActivity;->sUidInfo:Lcom/android/monitor/net/UidInfo;

    invoke-virtual {v8}, Lcom/android/monitor/net/UidInfo;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const-string v6, ""

    .line 74
    .local v6, version:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/monitor/UidDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    sget-object v8, Lcom/android/monitor/UidDetailActivity;->sUidInfo:Lcom/android/monitor/net/UidInfo;

    iget-object v8, v8, Lcom/android/monitor/net/UidInfo;->mApplications:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v12, 0x2240

    invoke-virtual {v11, v8, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_1
    const v8, 0x7f05000e

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v6, v11, v10

    invoke-virtual {p0, v8, v11}, Lcom/android/monitor/UidDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    sget-object v8, Lcom/android/monitor/UidDetailActivity;->sUidInfo:Lcom/android/monitor/net/UidInfo;

    invoke-virtual {v8}, Lcom/android/monitor/net/UidInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    const v8, 0x7f070006

    invoke-virtual {p0, v8}, Lcom/android/monitor/UidDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/monitor/UidDetailActivity;->mForceStopButton:Landroid/widget/Button;

    .line 85
    const v8, 0x7f070007

    invoke-virtual {p0, v8}, Lcom/android/monitor/UidDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/monitor/UidDetailActivity;->mAppDetailButton:Landroid/widget/Button;

    .line 86
    iget-object v8, p0, Lcom/android/monitor/UidDetailActivity;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 87
    iget-object v11, p0, Lcom/android/monitor/UidDetailActivity;->mAppDetailButton:Landroid/widget/Button;

    sget-object v8, Lcom/android/monitor/UidDetailActivity;->sUidInfo:Lcom/android/monitor/net/UidInfo;

    iget-boolean v8, v8, Lcom/android/monitor/net/UidInfo;->mIsSystemApp:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/monitor/UidDetailActivity;->mPackages:[Ljava/lang/String;

    if-eqz v8, :cond_2

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    iget-object v8, p0, Lcom/android/monitor/UidDetailActivity;->mForceStopButton:Landroid/widget/Button;

    new-instance v9, Lcom/android/monitor/UidDetailActivity$1;

    invoke-direct {v9, p0}, Lcom/android/monitor/UidDetailActivity$1;-><init>(Lcom/android/monitor/UidDetailActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v8, p0, Lcom/android/monitor/UidDetailActivity;->mAppDetailButton:Landroid/widget/Button;

    new-instance v9, Lcom/android/monitor/UidDetailActivity$2;

    invoke-direct {v9, p0}, Lcom/android/monitor/UidDetailActivity$2;-><init>(Lcom/android/monitor/UidDetailActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-static {p0}, Lcom/android/monitor/net/Firewall;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 105
    .local v1, enabled:Z
    const v8, 0x7f070003

    invoke-virtual {p0, v8}, Lcom/android/monitor/UidDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/SlidingButton;

    .line 106
    .local v3, mobileBtn:Lmiui/widget/SlidingButton;
    sget-object v8, Lcom/android/monitor/UidDetailActivity;->sUidInfo:Lcom/android/monitor/net/UidInfo;

    iget-boolean v8, v8, Lcom/android/monitor/net/UidInfo;->mEnableMobile:Z

    invoke-virtual {v3, v8}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 107
    new-instance v8, Lcom/android/monitor/UidDetailActivity$3;

    invoke-direct {v8, p0}, Lcom/android/monitor/UidDetailActivity$3;-><init>(Lcom/android/monitor/UidDetailActivity;)V

    invoke-virtual {v3, v8}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    invoke-virtual {v3, v1}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    .line 117
    const v8, 0x7f070004

    invoke-virtual {p0, v8}, Lcom/android/monitor/UidDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lmiui/widget/SlidingButton;

    .line 118
    .local v7, wifiBtn:Lmiui/widget/SlidingButton;
    sget-object v8, Lcom/android/monitor/UidDetailActivity;->sUidInfo:Lcom/android/monitor/net/UidInfo;

    iget-boolean v8, v8, Lcom/android/monitor/net/UidInfo;->mEnableWifi:Z

    invoke-virtual {v7, v8}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 119
    new-instance v8, Lcom/android/monitor/UidDetailActivity$4;

    invoke-direct {v8, p0}, Lcom/android/monitor/UidDetailActivity$4;-><init>(Lcom/android/monitor/UidDetailActivity;)V

    invoke-virtual {v7, v8}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    invoke-virtual {v7, v1}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    .line 127
    const/high16 v8, 0x7f07

    invoke-virtual {p0, v8}, Lcom/android/monitor/UidDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/monitor/widget/TrafficDetailPanel;

    iput-object v8, p0, Lcom/android/monitor/UidDetailActivity;->mTrafficDetailPanel:Lcom/android/monitor/widget/TrafficDetailPanel;

    .line 128
    const v8, 0x7f070005

    invoke-virtual {p0, v8}, Lcom/android/monitor/UidDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lmiui/widget/SlidingButton;

    iput-object v8, p0, Lcom/android/monitor/UidDetailActivity;->mDataUsageRestrictBackground:Lmiui/widget/SlidingButton;

    .line 130
    const v8, 0x7f070002

    invoke-virtual {p0, v8}, Lcom/android/monitor/UidDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/monitor/UidDetailActivity;->mBackground:Landroid/widget/TextView;

    .line 131
    const v8, 0x7f070001

    invoke-virtual {p0, v8}, Lcom/android/monitor/UidDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/monitor/UidDetailActivity;->mForeground:Landroid/widget/TextView;

    goto/16 :goto_0

    .end local v1           #enabled:Z
    .end local v3           #mobileBtn:Lmiui/widget/SlidingButton;
    .end local v7           #wifiBtn:Lmiui/widget/SlidingButton;
    :cond_2
    move v8, v10

    .line 87
    goto :goto_2

    .line 79
    :catch_0
    move-exception v8

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/monitor/UidDetailActivity;->doUnbindService()V

    .line 145
    const/4 v0, 0x0

    sput-object v0, Lcom/android/monitor/UidDetailActivity;->sUidInfo:Lcom/android/monitor/net/UidInfo;

    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 147
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 189
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/monitor/UidDetailActivity;->finish()V

    .line 190
    const/4 v0, 0x1

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 152
    invoke-direct {p0}, Lcom/android/monitor/UidDetailActivity;->refreshTrafficInfo()V

    .line 154
    invoke-direct {p0}, Lcom/android/monitor/UidDetailActivity;->checkForceStop()V

    .line 155
    return-void
.end method
