.class Lcom/miui/milk/ui/FindlostContactSelectActivity$2;
.super Ljava/lang/Object;
.source "FindlostContactSelectActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/ui/FindlostContactSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    check-cast p2, Lcom/miui/milk/service/CloudBackupService$CloudBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/miui/milk/service/CloudBackupService$CloudBinder;->getService()Lcom/miui/milk/service/CloudBackupService;

    move-result-object v1

    #setter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mService:Lcom/miui/milk/service/CloudBackupService;
    invoke-static {v0, v1}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$102(Lcom/miui/milk/ui/FindlostContactSelectActivity;Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;

    .line 259
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    new-instance v1, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;

    iget-object v2, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    invoke-direct {v1, v2}, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;-><init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V

    #setter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mFindlostTask:Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;
    invoke-static {v0, v1}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$002(Lcom/miui/milk/ui/FindlostContactSelectActivity;Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;)Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;

    .line 260
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mFindlostTask:Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;
    invoke-static {v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$000(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/milk/ui/FindlostContactSelectActivity$FindlostTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 262
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$2;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    const/4 v1, 0x0

    #setter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mService:Lcom/miui/milk/service/CloudBackupService;
    invoke-static {v0, v1}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$102(Lcom/miui/milk/ui/FindlostContactSelectActivity;Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;

    .line 270
    return-void
.end method
