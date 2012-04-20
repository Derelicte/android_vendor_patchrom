.class Lcom/miui/backup/ui/ProgressPageActivity$6;
.super Ljava/lang/Object;
.source "ProgressPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 512
    iput-object p1, p0, Lcom/miui/backup/ui/ProgressPageActivity$6;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 515
    invoke-static {}, Lcom/miui/backup/ui/ProgressPageActivity;->access$300()Lcom/miui/backup/BackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->hasTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$6;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    const v1, 0x7f070052

    #calls: Lcom/miui/backup/ui/ProgressPageActivity;->showErrorDialog(I)V
    invoke-static {v0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->access$700(Lcom/miui/backup/ui/ProgressPageActivity;I)V

    .line 528
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-static {}, Lcom/miui/backup/ui/ProgressPageActivity;->access$300()Lcom/miui/backup/BackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->isTaskRunning()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/backup/ui/ProgressPageActivity;->access$300()Lcom/miui/backup/BackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->isTaskFinished()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/backup/ui/ProgressPageActivity;->access$300()Lcom/miui/backup/BackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->isTaskCancel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    invoke-static {}, Lcom/miui/backup/ui/ProgressPageActivity;->access$300()Lcom/miui/backup/BackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->startExecuteTask()V

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$6;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-virtual {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 523
    invoke-static {}, Lcom/miui/backup/ui/ProgressPageActivity;->access$300()Lcom/miui/backup/BackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->switchToBackground()V

    .line 527
    :goto_1
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$6;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    const-wide/16 v1, 0x0

    #calls: Lcom/miui/backup/ui/ProgressPageActivity;->queueNextRefreshNow(J)V
    invoke-static {v0, v1, v2}, Lcom/miui/backup/ui/ProgressPageActivity;->access$800(Lcom/miui/backup/ui/ProgressPageActivity;J)V

    goto :goto_0

    .line 525
    :cond_2
    invoke-static {}, Lcom/miui/backup/ui/ProgressPageActivity;->access$300()Lcom/miui/backup/BackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->switchToForeground()V

    goto :goto_1
.end method
