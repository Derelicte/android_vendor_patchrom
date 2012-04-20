.class public abstract Lcom/miui/backup/BackupRestoreCmdFactory;
.super Ljava/lang/Object;
.source "BackupRestoreCmdFactory.java"


# static fields
.field public static FACTORY_TYPE_BACKUP:I

.field public static FACTORY_TYPE_RESTORE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/miui/backup/BackupRestoreCmdFactory;->FACTORY_TYPE_BACKUP:I

    .line 22
    const/4 v0, 0x1

    sput v0, Lcom/miui/backup/BackupRestoreCmdFactory;->FACTORY_TYPE_RESTORE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactory(I)Lcom/miui/backup/BackupRestoreCmdFactory;
    .locals 2
    .parameter "factoryType"

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, factory:Lcom/miui/backup/BackupRestoreCmdFactory;
    sget v1, Lcom/miui/backup/BackupRestoreCmdFactory;->FACTORY_TYPE_BACKUP:I

    if-ne p0, v1, :cond_1

    .line 28
    new-instance v0, Lcom/miui/backup/BackupCmdFactory;

    .end local v0           #factory:Lcom/miui/backup/BackupRestoreCmdFactory;
    invoke-direct {v0}, Lcom/miui/backup/BackupCmdFactory;-><init>()V

    .line 33
    .restart local v0       #factory:Lcom/miui/backup/BackupRestoreCmdFactory;
    :cond_0
    :goto_0
    return-object v0

    .line 29
    :cond_1
    sget v1, Lcom/miui/backup/BackupRestoreCmdFactory;->FACTORY_TYPE_RESTORE:I

    if-ne p0, v1, :cond_0

    .line 30
    new-instance v0, Lcom/miui/backup/RestoreCmdFactory;

    .end local v0           #factory:Lcom/miui/backup/BackupRestoreCmdFactory;
    invoke-direct {v0}, Lcom/miui/backup/RestoreCmdFactory;-><init>()V

    .restart local v0       #factory:Lcom/miui/backup/BackupRestoreCmdFactory;
    goto :goto_0
.end method


# virtual methods
.method public abstract createCmd(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)Lcom/miui/backup/BackupRestoreCmd;
.end method
