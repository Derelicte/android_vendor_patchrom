.class public Lcom/miui/supermarket/model/AppUpdateService;
.super Landroid/app/Service;
.source "AppUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/supermarket/model/AppUpdateService$1;,
        Lcom/miui/supermarket/model/AppUpdateService$CheckUpdateTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/miui/supermarket/model/AppUpdateService;->showNotification(Landroid/content/Context;I)V

    return-void
.end method

.method private static showNotification(Landroid/content/Context;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x7f060034

    const/4 v5, 0x0

    .line 50
    const v0, 0x7f020022

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 52
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 54
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4, v0, v3, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 55
    iget v0, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v4, Landroid/app/Notification;->flags:I

    .line 58
    const v0, 0x7f060035

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/supermarket/UpdateInstalledAppsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 62
    invoke-virtual {v4, p0, v3, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 64
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 65
    invoke-virtual {v0, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 66
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 29
    invoke-static {p0}, Lcom/miui/supermarket/util/NetworkUtil;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 30
    new-instance v0, Lcom/miui/supermarket/model/AppUpdateService$CheckUpdateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/supermarket/model/AppUpdateService$CheckUpdateTask;-><init>(Lcom/miui/supermarket/model/AppUpdateService;Lcom/miui/supermarket/model/AppUpdateService$1;)V

    .line 31
    .local v0, updateTask:Lcom/miui/supermarket/model/AppUpdateService$CheckUpdateTask;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/supermarket/model/AppUpdateService$CheckUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 33
    .end local v0           #updateTask:Lcom/miui/supermarket/model/AppUpdateService$CheckUpdateTask;
    :cond_0
    const/4 v1, 0x2

    return v1
.end method
