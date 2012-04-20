.class public Lcom/miui/home/launcher/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# static fields
.field private static sScreenDensity:F


# instance fields
.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field mLauncherProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/home/launcher/LauncherProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mModel:Lcom/miui/home/launcher/LauncherModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getScreenDensity()F
    .locals 1

    .prologue
    .line 95
    sget v0, Lcom/miui/home/launcher/LauncherApplication;->sScreenDensity:F

    return v0
.end method


# virtual methods
.method getIconCache()Lcom/miui/home/launcher/IconCache;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mIconCache:Lcom/miui/home/launcher/IconCache;

    return-object v0
.end method

.method getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object v0
.end method

.method getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherProvider;

    return-object v0
.end method

.method getModel()Lcom/miui/home/launcher/LauncherModel;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 39
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 40
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/miui/home/launcher/LauncherApplication;->sScreenDensity:F

    .line 42
    new-instance v1, Lcom/miui/home/launcher/IconCache;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/IconCache;-><init>(Lcom/miui/home/launcher/LauncherApplication;)V

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherApplication;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 43
    new-instance v1, Lcom/miui/home/launcher/LauncherModel;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherApplication;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/LauncherModel;-><init>(Lcom/miui/home/launcher/LauncherApplication;Lcom/miui/home/launcher/IconCache;)V

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;
    .locals 1
    .parameter "launcher"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherApplication;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->initialize(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object v0
.end method

.method setLauncherProvider(Lcom/miui/home/launcher/LauncherProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 84
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherApplication;->mLauncherProvider:Ljava/lang/ref/WeakReference;

    .line 85
    return-void
.end method
