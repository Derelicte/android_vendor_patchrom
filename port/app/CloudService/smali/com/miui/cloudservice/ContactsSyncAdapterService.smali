.class public Lcom/miui/cloudservice/ContactsSyncAdapterService;
.super Landroid/app/Service;
.source "ContactsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/cloudservice/ContactsSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static sSyncAdapter:Lcom/miui/cloudservice/ContactsSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/cloudservice/ContactsSyncAdapterService;->sSyncAdapter:Lcom/miui/cloudservice/ContactsSyncAdapterService$SyncAdapterImpl;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/cloudservice/ContactsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 43
    sget-object v0, Lcom/miui/cloudservice/ContactsSyncAdapterService;->sSyncAdapter:Lcom/miui/cloudservice/ContactsSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/miui/cloudservice/ContactsSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 34
    sget-object v1, Lcom/miui/cloudservice/ContactsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/miui/cloudservice/ContactsSyncAdapterService;->sSyncAdapter:Lcom/miui/cloudservice/ContactsSyncAdapterService$SyncAdapterImpl;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/miui/cloudservice/ContactsSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/miui/cloudservice/ContactsSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/cloudservice/ContactsSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/cloudservice/ContactsSyncAdapterService;->sSyncAdapter:Lcom/miui/cloudservice/ContactsSyncAdapterService$SyncAdapterImpl;

    .line 38
    :cond_0
    monitor-exit v1

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
