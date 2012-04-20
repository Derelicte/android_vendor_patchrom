.class Lcom/miui/milk/ui/ComputeBackupInfoTask$1;
.super Ljava/lang/Object;
.source "ComputeBackupInfoTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/ComputeBackupInfoTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/ComputeBackupInfoTask;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/ComputeBackupInfoTask;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask$1;->this$0:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 67
    invoke-static {}, Lcom/miui/milk/ui/CloudBackupInfo;->reset()V

    .line 68
    iget-object v1, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask$1;->this$0:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    #getter for: Lcom/miui/milk/ui/ComputeBackupInfoTask;->mRefreshBackupInfo:Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;
    invoke-static {v1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->access$100(Lcom/miui/milk/ui/ComputeBackupInfoTask;)Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask$1;->this$0:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    #getter for: Lcom/miui/milk/ui/ComputeBackupInfoTask;->mRefreshBackupInfo:Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;
    invoke-static {v1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->access$100(Lcom/miui/milk/ui/ComputeBackupInfoTask;)Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;->cancel()V

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask$1;->this$0:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    #getter for: Lcom/miui/milk/ui/ComputeBackupInfoTask;->mcController:Lcom/miui/milk/control/cloud/MetadataCloudController;
    invoke-static {v1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->access$200(Lcom/miui/milk/ui/ComputeBackupInfoTask;)Lcom/miui/milk/control/cloud/MetadataCloudController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/miui/milk/ui/ComputeBackupInfoTask$1;->this$0:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    #getter for: Lcom/miui/milk/ui/ComputeBackupInfoTask;->mcController:Lcom/miui/milk/control/cloud/MetadataCloudController;
    invoke-static {v1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->access$200(Lcom/miui/milk/ui/ComputeBackupInfoTask;)Lcom/miui/milk/control/cloud/MetadataCloudController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/milk/control/cloud/MetadataCloudController;->getHttpTransport()Lcom/miui/milk/transport/HttpTransport;

    move-result-object v0

    .line 73
    .local v0, httpTransport:Lcom/miui/milk/transport/HttpTransport;
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0}, Lcom/miui/milk/transport/HttpTransport;->shutDown()V

    .line 77
    .end local v0           #httpTransport:Lcom/miui/milk/transport/HttpTransport;
    :cond_1
    return-void
.end method
