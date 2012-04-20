.class Lcom/miui/backup/BackupControllerStrategy;
.super Lcom/miui/backup/ControllerStrategy;
.source "BackupRestoreStrategy.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "controllerType"

    .prologue
    .line 88
    invoke-direct {p0, p2, p3}, Lcom/miui/backup/ControllerStrategy;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    const-string v0, "ADDRESSBOOK"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Lcom/miui/milk/control/local/AddressBookController;

    invoke-direct {v0, p1}, Lcom/miui/milk/control/local/AddressBookController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/BackupControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const-string v0, "CALLLOG"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    new-instance v0, Lcom/miui/milk/control/local/CalllogController;

    invoke-direct {v0, p1}, Lcom/miui/milk/control/local/CalllogController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/BackupControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    goto :goto_0

    .line 93
    :cond_2
    const-string v0, "SMS"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    new-instance v0, Lcom/miui/milk/control/local/SmsController;

    invoke-direct {v0, p1}, Lcom/miui/milk/control/local/SmsController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/BackupControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    goto :goto_0

    .line 95
    :cond_3
    const-string v0, "MMS"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    new-instance v0, Lcom/miui/milk/control/local/MmsController;

    invoke-direct {v0, p1}, Lcom/miui/milk/control/local/MmsController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/BackupControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    goto :goto_0

    .line 97
    :cond_4
    const-string v0, "NOTE"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    new-instance v0, Lcom/miui/milk/control/local/NoteController;

    invoke-direct {v0, p1}, Lcom/miui/milk/control/local/NoteController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/BackupControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    goto :goto_0

    .line 99
    :cond_5
    const-string v0, "ANTISPAM"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    new-instance v0, Lcom/miui/milk/control/local/AntiSpamController;

    invoke-direct {v0, p1}, Lcom/miui/milk/control/local/AntiSpamController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/BackupControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    goto :goto_0

    .line 101
    :cond_6
    const-string v0, "SETTING"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 102
    new-instance v0, Lcom/miui/milk/control/local/SettingController;

    invoke-direct {v0, p1}, Lcom/miui/milk/control/local/SettingController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/BackupControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    goto :goto_0

    .line 103
    :cond_7
    const-string v0, "com.android.deskclock"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lcom/miui/milk/control/local/AlarmController;

    invoke-direct {v0, p1}, Lcom/miui/milk/control/local/AlarmController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/BackupControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    goto :goto_0
.end method


# virtual methods
.method protected execute_()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/backup/BackupControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    iget-object v1, p0, Lcom/miui/backup/BackupControllerStrategy;->mDataFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/local/BaseController;->export(Ljava/io/File;)V

    .line 111
    return-void
.end method

.method protected getFinishedSize()J
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/miui/backup/BackupControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/BaseController;->getExportedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getTotalSize()J
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/backup/BackupControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/BaseController;->getTotalExportSize()J

    move-result-wide v0

    return-wide v0
.end method
