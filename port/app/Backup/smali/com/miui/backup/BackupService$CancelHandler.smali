.class final Lcom/miui/backup/BackupService$CancelHandler;
.super Landroid/os/Handler;
.source "BackupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/BackupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CancelHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/BackupService;


# direct methods
.method public constructor <init>(Lcom/miui/backup/BackupService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/miui/backup/BackupService$CancelHandler;->this$0:Lcom/miui/backup/BackupService;

    .line 223
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 224
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/miui/backup/BackupService$CancelHandler;->this$0:Lcom/miui/backup/BackupService;

    #getter for: Lcom/miui/backup/BackupService;->mTask:Lcom/miui/backup/BackupRestoreTask;
    invoke-static {v0}, Lcom/miui/backup/BackupService;->access$100(Lcom/miui/backup/BackupService;)Lcom/miui/backup/BackupRestoreTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/backup/BackupRestoreTask;->cancel()V

    .line 229
    return-void
.end method
