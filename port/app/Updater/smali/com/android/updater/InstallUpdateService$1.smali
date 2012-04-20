.class Lcom/android/updater/InstallUpdateService$1;
.super Ljava/lang/Thread;
.source "InstallUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/InstallUpdateService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/InstallUpdateService;

.field final synthetic val$logFile:Ljava/lang/String;

.field final synthetic val$packageFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/updater/InstallUpdateService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/updater/InstallUpdateService$1;->this$0:Lcom/android/updater/InstallUpdateService;

    iput-object p2, p0, Lcom/android/updater/InstallUpdateService$1;->val$packageFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/updater/InstallUpdateService$1;->val$logFile:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 112
    invoke-static {}, Lcom/android/updater/InstallUpdateService;->access$000()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 113
    const-string v0, "/mnt"

    .line 114
    .local v0, MNT:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/updater/InstallUpdateService$1;->val$packageFilePath:Ljava/lang/String;

    .line 115
    .local v1, filePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/updater/InstallUpdateService$1;->val$packageFilePath:Ljava/lang/String;

    const-string v4, "/mnt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 116
    iget-object v3, p0, Lcom/android/updater/InstallUpdateService$1;->val$packageFilePath:Ljava/lang/String;

    const-string v4, "/mnt"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    :cond_0
    invoke-static {v1}, Lcom/android/updater/InstallUpdateService;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    iget-object v3, p0, Lcom/android/updater/InstallUpdateService$1;->this$0:Lcom/android/updater/InstallUpdateService;

    iget-object v4, p0, Lcom/android/updater/InstallUpdateService$1;->val$logFile:Ljava/lang/String;

    invoke-static {v3, v1, v4}, Lcom/android/updater/DualSystem;->installUpdate(Lcom/android/updater/InstallUpdateListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 120
    .local v2, status:I
    invoke-static {}, Lcom/android/updater/InstallUpdateService;->access$000()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 121
    iget-object v3, p0, Lcom/android/updater/InstallUpdateService$1;->this$0:Lcom/android/updater/InstallUpdateService;

    iget-object v4, p0, Lcom/android/updater/InstallUpdateService$1;->val$logFile:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/android/updater/InstallUpdateService;->finishInstall(ILjava/lang/String;)V

    .line 122
    return-void
.end method
