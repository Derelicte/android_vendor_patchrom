.class Lcom/miui/milk/service/AutoBackupService$1;
.super Ljava/lang/Object;
.source "AutoBackupService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/service/AutoBackupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/service/AutoBackupService;


# direct methods
.method constructor <init>(Lcom/miui/milk/service/AutoBackupService;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/miui/milk/service/AutoBackupService$1;->this$0:Lcom/miui/milk/service/AutoBackupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/milk/service/AutoBackupService$1;->this$0:Lcom/miui/milk/service/AutoBackupService;

    check-cast p2, Lcom/miui/milk/service/CloudBackupService$CloudBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/miui/milk/service/CloudBackupService$CloudBinder;->getService()Lcom/miui/milk/service/CloudBackupService;

    move-result-object v1

    #setter for: Lcom/miui/milk/service/AutoBackupService;->mCloudService:Lcom/miui/milk/service/CloudBackupService;
    invoke-static {v0, v1}, Lcom/miui/milk/service/AutoBackupService;->access$002(Lcom/miui/milk/service/AutoBackupService;Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;

    .line 69
    const-string v0, "AutoBackupService"

    const-string v1, "cloud service bounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/miui/milk/service/AutoBackupService$1;->this$0:Lcom/miui/milk/service/AutoBackupService;

    const/4 v1, 0x1

    #setter for: Lcom/miui/milk/service/AutoBackupService;->mIsBoundCloud:Z
    invoke-static {v0, v1}, Lcom/miui/milk/service/AutoBackupService;->access$102(Lcom/miui/milk/service/AutoBackupService;Z)Z

    .line 71
    iget-object v0, p0, Lcom/miui/milk/service/AutoBackupService$1;->this$0:Lcom/miui/milk/service/AutoBackupService;

    #calls: Lcom/miui/milk/service/AutoBackupService;->runBackup()V
    invoke-static {v0}, Lcom/miui/milk/service/AutoBackupService;->access$200(Lcom/miui/milk/service/AutoBackupService;)V

    .line 72
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/milk/service/AutoBackupService$1;->this$0:Lcom/miui/milk/service/AutoBackupService;

    const/4 v1, 0x0

    #setter for: Lcom/miui/milk/service/AutoBackupService;->mCloudService:Lcom/miui/milk/service/CloudBackupService;
    invoke-static {v0, v1}, Lcom/miui/milk/service/AutoBackupService;->access$002(Lcom/miui/milk/service/AutoBackupService;Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;

    .line 76
    const-string v0, "AutoBackupService"

    const-string v1, "cloud service unbounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method
