.class final Lcom/miui/backup/AccountRestore;
.super Lcom/miui/backup/RestoreControllerStrategy;
.source "BackupRestoreStrategy.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "controllerType"

    .prologue
    .line 739
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/backup/RestoreControllerStrategy;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    return-void
.end method


# virtual methods
.method public canRestore()Z
    .locals 4

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/miui/backup/AccountRestore;->getTotalSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected execute_()V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/miui/backup/AccountRestore;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    check-cast v0, Lcom/miui/milk/control/local/AccountController;

    .line 745
    .local v0, accountController:Lcom/miui/milk/control/local/AccountController;
    iget-object v1, p0, Lcom/miui/backup/AccountRestore;->mDataFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/local/AccountController;->prepareImport(Ljava/io/File;)V

    .line 746
    return-void
.end method

.method public importAccount()V
    .locals 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/miui/backup/AccountRestore;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    check-cast v0, Lcom/miui/milk/control/local/AccountController;

    .line 754
    .local v0, accountController:Lcom/miui/milk/control/local/AccountController;
    iget-object v1, p0, Lcom/miui/backup/AccountRestore;->mDataFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/local/AccountController;->importData(Ljava/io/File;)V

    .line 755
    return-void
.end method
