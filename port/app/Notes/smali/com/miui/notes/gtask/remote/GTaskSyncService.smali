.class public Lcom/miui/notes/gtask/remote/GTaskSyncService;
.super Landroid/app/Service;
.source "GTaskSyncService.java"


# static fields
.field private static mSyncProgress:Ljava/lang/String;

.field private static mSyncTask:Lcom/miui/notes/gtask/remote/GTaskASyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/notes/gtask/remote/GTaskSyncService;->mSyncTask:Lcom/miui/notes/gtask/remote/GTaskASyncTask;

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/miui/notes/gtask/remote/GTaskSyncService;->mSyncProgress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/notes/gtask/remote/GTaskASyncTask;)Lcom/miui/notes/gtask/remote/GTaskASyncTask;
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    sput-object p0, Lcom/miui/notes/gtask/remote/GTaskSyncService;->mSyncTask:Lcom/miui/notes/gtask/remote/GTaskASyncTask;

    return-object p0
.end method

.method private cancelSync()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskSyncService;->mSyncTask:Lcom/miui/notes/gtask/remote/GTaskASyncTask;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskSyncService;->mSyncTask:Lcom/miui/notes/gtask/remote/GTaskASyncTask;

    invoke-virtual {v0}, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->cancelSync()V

    .line 49
    :cond_0
    return-void
.end method

.method public static cancelSync(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/notes/gtask/remote/GTaskSyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    const-string v1, "sync_action_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 105
    return-void
.end method

.method public static getProgressString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskSyncService;->mSyncProgress:Ljava/lang/String;

    return-object v0
.end method

.method public static isSyncing()Z
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskSyncService;->mSyncTask:Lcom/miui/notes/gtask/remote/GTaskASyncTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startSync()V
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskSyncService;->mSyncTask:Lcom/miui/notes/gtask/remote/GTaskASyncTask;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/miui/notes/gtask/remote/GTaskASyncTask;

    new-instance v1, Lcom/miui/notes/gtask/remote/GTaskSyncService$1;

    invoke-direct {v1, p0}, Lcom/miui/notes/gtask/remote/GTaskSyncService$1;-><init>(Lcom/miui/notes/gtask/remote/GTaskSyncService;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/notes/gtask/remote/GTaskASyncTask;-><init>(Landroid/content/Context;Lcom/miui/notes/gtask/remote/GTaskASyncTask$OnCompleteListener;)V

    sput-object v0, Lcom/miui/notes/gtask/remote/GTaskSyncService;->mSyncTask:Lcom/miui/notes/gtask/remote/GTaskASyncTask;

    .line 40
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->sendBroadcast(Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskSyncService;->mSyncTask:Lcom/miui/notes/gtask/remote/GTaskASyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 43
    :cond_0
    return-void
.end method

.method public static startSync(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 95
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskManager;->getInstance()Lcom/miui/notes/gtask/remote/GTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/notes/gtask/remote/GTaskManager;->setActivityContext(Landroid/app/Activity;)V

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/notes/gtask/remote/GTaskSyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    const-string v1, "sync_action_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 99
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/notes/gtask/remote/GTaskSyncService;->mSyncTask:Lcom/miui/notes/gtask/remote/GTaskASyncTask;

    .line 54
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskSyncService;->mSyncTask:Lcom/miui/notes/gtask/remote/GTaskASyncTask;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskSyncService;->mSyncTask:Lcom/miui/notes/gtask/remote/GTaskASyncTask;

    invoke-virtual {v0}, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->cancelSync()V

    .line 80
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "sync_action_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "sync_action_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 70
    :goto_0
    const/4 v1, 0x1

    .line 72
    :goto_1
    return v1

    .line 62
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->startSync()V

    goto :goto_0

    .line 65
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->cancelSync()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    goto :goto_1

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendBroadcast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 87
    sput-object p1, Lcom/miui/notes/gtask/remote/GTaskSyncService;->mSyncProgress:Ljava/lang/String;

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.notes.gtask.remote.gtask_sync_service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "isSyncing"

    sget-object v1, Lcom/miui/notes/gtask/remote/GTaskSyncService;->mSyncTask:Lcom/miui/notes/gtask/remote/GTaskASyncTask;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    const-string v1, "progressMsg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    return-void

    .line 89
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
