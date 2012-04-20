.class abstract Lcom/miui/backup/ScriptItem;
.super Lcom/miui/backup/BackupRestoreStrategy;
.source "BackupRestoreStrategy.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute_()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public abstract genScript()Ljava/lang/String;
.end method

.method protected getFinishedSize()J
    .locals 2

    .prologue
    .line 359
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getTotalSize()J
    .locals 2

    .prologue
    .line 354
    const-wide/16 v0, 0x0

    return-wide v0
.end method
