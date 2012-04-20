.class Lcom/miui/backup/ui/ProgressPageActivity$7;
.super Ljava/lang/Object;
.source "ProgressPageActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/ui/ProgressPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/ui/ProgressPageActivity;


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/ProgressPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/miui/backup/ui/ProgressPageActivity$7;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 543
    check-cast p2, Lcom/miui/backup/BackupService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/miui/backup/BackupService$LocalBinder;->getService()Lcom/miui/backup/BackupService;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->access$302(Lcom/miui/backup/BackupService;)Lcom/miui/backup/BackupService;

    .line 544
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$7;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity$7;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    #getter for: Lcom/miui/backup/ui/ProgressPageActivity;->mConnectServiceRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/backup/ui/ProgressPageActivity;->access$900(Lcom/miui/backup/ui/ProgressPageActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 545
    const-string v0, "ProgressPageActivity"

    const-string v1, "service bounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 553
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->access$302(Lcom/miui/backup/BackupService;)Lcom/miui/backup/BackupService;

    .line 554
    const-string v0, "ProgressPageActivity"

    const-string v1, "service unbounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void
.end method
