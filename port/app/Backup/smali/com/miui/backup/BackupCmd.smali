.class public Lcom/miui/backup/BackupCmd;
.super Lcom/miui/backup/BackupRestoreCmd;
.source "BackupCmd.java"


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 2
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/BackupRestoreCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 24
    iget-object v0, p0, Lcom/miui/backup/BackupCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/backup/CmdRunningInfo;->isBackup:Z

    .line 25
    return-void
.end method
