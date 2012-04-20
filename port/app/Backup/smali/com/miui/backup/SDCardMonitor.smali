.class public Lcom/miui/backup/SDCardMonitor;
.super Ljava/lang/Object;
.source "SDCardMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/backup/SDCardMonitor$1;,
        Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;,
        Lcom/miui/backup/SDCardMonitor$SdCardReceiver;
    }
.end annotation


# static fields
.field private static mMonitor:Lcom/miui/backup/SDCardMonitor;


# instance fields
.field private isMount:Ljava/lang/Boolean;

.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v1, p0, Lcom/miui/backup/SDCardMonitor;->isMount:Ljava/lang/Boolean;

    .line 18
    iput-object p1, p0, Lcom/miui/backup/SDCardMonitor;->mContext:Landroid/content/Context;

    .line 19
    new-instance v0, Lcom/miui/backup/SDCardMonitor$SdCardReceiver;

    invoke-direct {v0, p0, v1}, Lcom/miui/backup/SDCardMonitor$SdCardReceiver;-><init>(Lcom/miui/backup/SDCardMonitor;Lcom/miui/backup/SDCardMonitor$1;)V

    iput-object v0, p0, Lcom/miui/backup/SDCardMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/backup/SDCardMonitor;->mListeners:Ljava/util/HashSet;

    .line 21
    return-void
.end method

.method static synthetic access$100(Lcom/miui/backup/SDCardMonitor;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/miui/backup/SDCardMonitor;->isMount:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/backup/SDCardMonitor;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/miui/backup/SDCardMonitor;->isMount:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/backup/SDCardMonitor;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/miui/backup/SDCardMonitor;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method public static getSDCardMonitor(Landroid/content/Context;)Lcom/miui/backup/SDCardMonitor;
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    sget-object v0, Lcom/miui/backup/SDCardMonitor;->mMonitor:Lcom/miui/backup/SDCardMonitor;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/backup/SDCardMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/backup/SDCardMonitor;->mMonitor:Lcom/miui/backup/SDCardMonitor;

    .line 45
    :cond_0
    sget-object v0, Lcom/miui/backup/SDCardMonitor;->mMonitor:Lcom/miui/backup/SDCardMonitor;

    return-object v0
.end method


# virtual methods
.method public addSdCardStatusListener(Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 24
    iget-object v1, p0, Lcom/miui/backup/SDCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 26
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/miui/backup/SDCardMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/backup/SDCardMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/miui/backup/SDCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public isSdCardAvailable()Z
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    return v0
.end method

.method public removeSdCardStatusListener(Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/backup/SDCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/miui/backup/SDCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/miui/backup/SDCardMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/backup/SDCardMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 39
    :cond_0
    return-void
.end method
