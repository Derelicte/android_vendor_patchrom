.class final Lcom/miui/milk/service/CloudBackupService$ServiceHandler;
.super Landroid/os/Handler;
.source "CloudBackupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/service/CloudBackupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/service/CloudBackupService;


# direct methods
.method public constructor <init>(Lcom/miui/milk/service/CloudBackupService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;->this$0:Lcom/miui/milk/service/CloudBackupService;

    .line 272
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 273
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #getter for: Lcom/miui/milk/service/CloudBackupService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v0}, Lcom/miui/milk/service/CloudBackupService;->access$000(Lcom/miui/milk/service/CloudBackupService;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 278
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;->this$0:Lcom/miui/milk/service/CloudBackupService;

    iget v1, p1, Landroid/os/Message;->what:I

    #setter for: Lcom/miui/milk/service/CloudBackupService;->mTaskType:I
    invoke-static {v0, v1}, Lcom/miui/milk/service/CloudBackupService;->access$102(Lcom/miui/milk/service/CloudBackupService;I)I

    .line 279
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 290
    :goto_0
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #getter for: Lcom/miui/milk/service/CloudBackupService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v0}, Lcom/miui/milk/service/CloudBackupService;->access$000(Lcom/miui/milk/service/CloudBackupService;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #getter for: Lcom/miui/milk/service/CloudBackupService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v0}, Lcom/miui/milk/service/CloudBackupService;->access$000(Lcom/miui/milk/service/CloudBackupService;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 293
    :cond_0
    return-void

    .line 281
    :pswitch_0
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #calls: Lcom/miui/milk/service/CloudBackupService;->runBackup()V
    invoke-static {v0}, Lcom/miui/milk/service/CloudBackupService;->access$200(Lcom/miui/milk/service/CloudBackupService;)V

    goto :goto_0

    .line 284
    :pswitch_1
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #calls: Lcom/miui/milk/service/CloudBackupService;->runRestore()V
    invoke-static {v0}, Lcom/miui/milk/service/CloudBackupService;->access$300(Lcom/miui/milk/service/CloudBackupService;)V

    goto :goto_0

    .line 287
    :pswitch_2
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #calls: Lcom/miui/milk/service/CloudBackupService;->runFindlostContact()V
    invoke-static {v0}, Lcom/miui/milk/service/CloudBackupService;->access$400(Lcom/miui/milk/service/CloudBackupService;)V

    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
