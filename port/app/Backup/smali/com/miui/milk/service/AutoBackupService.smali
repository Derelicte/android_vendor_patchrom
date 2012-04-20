.class public Lcom/miui/milk/service/AutoBackupService;
.super Landroid/app/Service;
.source "AutoBackupService.java"


# instance fields
.field private mCloudConnection:Landroid/content/ServiceConnection;

.field private mCloudService:Lcom/miui/milk/service/CloudBackupService;

.field private mIsBoundCloud:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 66
    new-instance v0, Lcom/miui/milk/service/AutoBackupService$1;

    invoke-direct {v0, p0}, Lcom/miui/milk/service/AutoBackupService$1;-><init>(Lcom/miui/milk/service/AutoBackupService;)V

    iput-object v0, p0, Lcom/miui/milk/service/AutoBackupService;->mCloudConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/milk/service/AutoBackupService;Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/miui/milk/service/AutoBackupService;->mCloudService:Lcom/miui/milk/service/CloudBackupService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/miui/milk/service/AutoBackupService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/miui/milk/service/AutoBackupService;->mIsBoundCloud:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/milk/service/AutoBackupService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/milk/service/AutoBackupService;->runBackup()V

    return-void
.end method

.method private runBackup()V
    .locals 4

    .prologue
    .line 41
    const-string v2, "AutoBackupService"

    const-string v3, "run auto backup action"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {p0}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 46
    .local v1, defaultSharedPref:Landroid/content/SharedPreferences;
    const-string v2, "auto_backup_only_wifi"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/miui/milk/util/SysHelpers;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 48
    const-string v2, "AutoBackupService"

    const-string v3, "auto backup only wifi but no wifi"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_2
    iget-object v2, p0, Lcom/miui/milk/service/AutoBackupService;->mCloudService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/miui/milk/service/AutoBackupService;->mCloudService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v2}, Lcom/miui/milk/service/CloudBackupService;->taskIsRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    invoke-static {p0}, Lcom/miui/milk/util/SysHelpers;->getCloudApp(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 57
    .local v0, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/common/AppInfo;>;"
    iget-object v2, p0, Lcom/miui/milk/service/AutoBackupService;->mCloudService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v2, v0}, Lcom/miui/milk/service/CloudBackupService;->runAutoBackup(Ljava/util/ArrayList;)J

    goto :goto_0
.end method


# virtual methods
.method doBindService(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/service/CloudBackupService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/milk/service/AutoBackupService;->mCloudConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 83
    return-void
.end method

.method doUnbindService(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/miui/milk/service/AutoBackupService;->mIsBoundCloud:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/miui/milk/service/AutoBackupService;->mCloudConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/service/AutoBackupService;->mIsBoundCloud:Z

    .line 89
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p0}, Lcom/miui/milk/service/AutoBackupService;->doUnbindService(Landroid/content/Context;)V

    .line 30
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 31
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 35
    const-string v0, "AutoBackupService"

    const-string v1, "on start AutoBackupService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0, p0}, Lcom/miui/milk/service/AutoBackupService;->doBindService(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x1

    return v0
.end method
