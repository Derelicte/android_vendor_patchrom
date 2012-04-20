.class final Lcom/miui/backup/BackupService$ServiceHandler;
.super Landroid/os/Handler;
.source "BackupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/BackupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/BackupService;


# direct methods
.method public constructor <init>(Lcom/miui/backup/BackupService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/miui/backup/BackupService$ServiceHandler;->this$0:Lcom/miui/backup/BackupService;

    .line 210
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 211
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/miui/backup/BackupService$ServiceHandler;->this$0:Lcom/miui/backup/BackupService;

    #calls: Lcom/miui/backup/BackupService;->executeTask()V
    invoke-static {v0}, Lcom/miui/backup/BackupService;->access$000(Lcom/miui/backup/BackupService;)V

    .line 216
    return-void
.end method
