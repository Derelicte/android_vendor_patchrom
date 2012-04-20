.class Lcom/miui/supermarket/model/AppUpdateService$CheckUpdateTask;
.super Landroid/os/AsyncTask;
.source "AppUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/model/AppUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/model/AppUpdateService;


# direct methods
.method private constructor <init>(Lcom/miui/supermarket/model/AppUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/supermarket/model/AppUpdateService$CheckUpdateTask;->this$0:Lcom/miui/supermarket/model/AppUpdateService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/supermarket/model/AppUpdateService;Lcom/miui/supermarket/model/AppUpdateService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/miui/supermarket/model/AppUpdateService$CheckUpdateTask;-><init>(Lcom/miui/supermarket/model/AppUpdateService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, [Landroid/content/Context;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/model/AppUpdateService$CheckUpdateTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 40
    aget-object v1, p1, v2

    invoke-static {v1}, Lcom/miui/supermarket/util/SuperMarketUtil;->checkNecessaryUpdates(Landroid/content/Context;)I

    move-result v0

    .line 41
    .local v0, updateCount:I
    if-lez v0, :cond_0

    .line 42
    aget-object v1, p1, v2

    #calls: Lcom/miui/supermarket/model/AppUpdateService;->showNotification(Landroid/content/Context;I)V
    invoke-static {v1, v0}, Lcom/miui/supermarket/model/AppUpdateService;->access$100(Landroid/content/Context;I)V

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/miui/supermarket/model/AppUpdateService$CheckUpdateTask;->this$0:Lcom/miui/supermarket/model/AppUpdateService;

    invoke-virtual {v1}, Lcom/miui/supermarket/model/AppUpdateService;->stopSelf()V

    .line 45
    const/4 v1, 0x0

    return-object v1
.end method
