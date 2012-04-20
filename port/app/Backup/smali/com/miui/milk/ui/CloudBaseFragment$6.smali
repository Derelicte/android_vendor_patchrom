.class Lcom/miui/milk/ui/CloudBaseFragment$6;
.super Ljava/lang/Object;
.source "CloudBaseFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/ui/CloudBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/CloudBaseFragment;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/CloudBaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/miui/milk/ui/CloudBaseFragment$6;->this$0:Lcom/miui/milk/ui/CloudBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment$6;->this$0:Lcom/miui/milk/ui/CloudBaseFragment;

    check-cast p2, Lcom/miui/milk/service/CloudBackupService$CloudBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/miui/milk/service/CloudBackupService$CloudBinder;->getService()Lcom/miui/milk/service/CloudBackupService;

    move-result-object v1

    #setter for: Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;
    invoke-static {v0, v1}, Lcom/miui/milk/ui/CloudBaseFragment;->access$002(Lcom/miui/milk/ui/CloudBaseFragment;Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;

    .line 276
    const-string v0, "CloudBaseFragment"

    const-string v1, "service bounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseFragment$6;->this$0:Lcom/miui/milk/ui/CloudBaseFragment;

    const/4 v1, 0x0

    #setter for: Lcom/miui/milk/ui/CloudBaseFragment;->mService:Lcom/miui/milk/service/CloudBackupService;
    invoke-static {v0, v1}, Lcom/miui/milk/ui/CloudBaseFragment;->access$002(Lcom/miui/milk/ui/CloudBaseFragment;Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;

    .line 285
    const-string v0, "CloudBaseFragment"

    const-string v1, "service unbounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method
