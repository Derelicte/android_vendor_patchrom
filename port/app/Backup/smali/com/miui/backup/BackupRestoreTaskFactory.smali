.class public Lcom/miui/backup/BackupRestoreTaskFactory;
.super Ljava/lang/Object;
.source "BackupRestoreTaskFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTask(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;I)Lcom/miui/backup/BackupRestoreTask;
    .locals 2
    .parameter "context"
    .parameter
    .parameter "baseDir"
    .parameter "taskType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;",
            "Ljava/io/File;",
            "I)",
            "Lcom/miui/backup/BackupRestoreTask;"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/backup/AppInfo;>;"
    const/4 v0, 0x0

    .line 17
    .local v0, task:Lcom/miui/backup/BackupRestoreTask;
    packed-switch p3, :pswitch_data_0

    .line 28
    :goto_0
    return-object v0

    .line 19
    :pswitch_0
    new-instance v0, Lcom/miui/backup/BackupTask;

    .end local v0           #task:Lcom/miui/backup/BackupRestoreTask;
    sget v1, Lcom/miui/backup/BackupRestoreCmdFactory;->FACTORY_TYPE_BACKUP:I

    invoke-static {v1}, Lcom/miui/backup/BackupRestoreCmdFactory;->getFactory(I)Lcom/miui/backup/BackupRestoreCmdFactory;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/miui/backup/BackupTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;Lcom/miui/backup/BackupRestoreCmdFactory;)V

    .line 20
    .restart local v0       #task:Lcom/miui/backup/BackupRestoreTask;
    goto :goto_0

    .line 22
    :pswitch_1
    new-instance v0, Lcom/miui/backup/RestoreTask;

    .end local v0           #task:Lcom/miui/backup/BackupRestoreTask;
    sget v1, Lcom/miui/backup/BackupRestoreCmdFactory;->FACTORY_TYPE_RESTORE:I

    invoke-static {v1}, Lcom/miui/backup/BackupRestoreCmdFactory;->getFactory(I)Lcom/miui/backup/BackupRestoreCmdFactory;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/miui/backup/RestoreTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;Lcom/miui/backup/BackupRestoreCmdFactory;)V

    .line 23
    .restart local v0       #task:Lcom/miui/backup/BackupRestoreTask;
    goto :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
