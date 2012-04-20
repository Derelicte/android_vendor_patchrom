.class Lcom/miui/backup/ui/BaseSelectList$5;
.super Ljava/lang/Object;
.source "BaseSelectList.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/ui/BaseSelectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/ui/BaseSelectList;


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/BaseSelectList;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/miui/backup/ui/BaseSelectList$5;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$5;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    check-cast p2, Lcom/miui/backup/BackupService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/miui/backup/BackupService$LocalBinder;->getService()Lcom/miui/backup/BackupService;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/backup/ui/BaseSelectList;->mService:Lcom/miui/backup/BackupService;

    .line 413
    const-string v0, "BaseSelectList"

    const-string v1, "service bounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$5;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/backup/ui/BaseSelectList;->mService:Lcom/miui/backup/BackupService;

    .line 422
    const-string v0, "BaseSelectList"

    const-string v1, "service unbounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void
.end method
