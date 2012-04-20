.class Lcom/miui/milk/ui/ProgressPageActivity$3;
.super Ljava/lang/Object;
.source "ProgressPageActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/ui/ProgressPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/ProgressPageActivity;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/ProgressPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/miui/milk/ui/ProgressPageActivity$3;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 377
    check-cast p2, Lcom/miui/milk/service/CloudBackupService$CloudBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/miui/milk/service/CloudBackupService$CloudBinder;->getService()Lcom/miui/milk/service/CloudBackupService;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/milk/ui/ProgressPageActivity;->access$102(Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;

    .line 378
    invoke-static {}, Lcom/miui/milk/ui/ProgressPageActivity;->access$100()Lcom/miui/milk/service/CloudBackupService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity$3;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-virtual {v0}, Lcom/miui/milk/ui/ProgressPageActivity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-static {}, Lcom/miui/milk/ui/ProgressPageActivity;->access$100()Lcom/miui/milk/service/CloudBackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/milk/service/CloudBackupService;->switchToForeground()V

    .line 381
    :cond_0
    const-string v0, "ProgressPageActivity"

    const-string v1, "service bounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/milk/ui/ProgressPageActivity;->access$102(Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;

    .line 390
    const-string v0, "ProgressPageActivity"

    const-string v1, "service unbounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void
.end method
