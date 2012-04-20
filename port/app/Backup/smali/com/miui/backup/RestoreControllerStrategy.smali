.class Lcom/miui/backup/RestoreControllerStrategy;
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
    .line 127
    invoke-direct {p0, p2, p3}, Lcom/miui/backup/ControllerStrategy;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    const-string v0, "addressbook.store"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    new-instance v0, Lcom/miui/milk/control/local/AddressBookController;

    invoke-direct {v0, p1}, Lcom/miui/milk/control/local/AddressBookController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/RestoreControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const-string v0, "calllog.store"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    new-instance v0, Lcom/miui/milk/control/local/CalllogController;

    invoke-direct {v0, p1}, Lcom/miui/milk/control/local/CalllogController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/RestoreControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    goto :goto_0

    .line 132
    :cond_2
    const-string v0, "sms.store"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    new-instance v0, Lcom/miui/milk/control/local/SmsController;

    invoke-direct {v0, p1}, Lcom/miui/milk/control/local/SmsController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/RestoreControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    goto :goto_0

    .line 134
    :cond_3
    const-string v0, "mms.store"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    new-instance v0, Lcom/miui/milk/control/local/MmsController;

    invoke-direct {v0, p1}, Lcom/miui/milk/control/local/MmsController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/RestoreControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    goto :goto_0

    .line 136
    :cond_4
    const-string v0, "note.store"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    new-instance v0, Lcom/miui/milk/control/local/NoteController;

    invoke-direct {v0, p1}, Lcom/miui/milk/control/local/NoteController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/RestoreControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    goto :goto_0

    .line 138
    :cond_5
    const-string v0, "antispam.store"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 139
    new-instance v0, Lcom/miui/milk/control/local/AntiSpamController;

    invoke-direct {v0, p1}, Lcom/miui/milk/control/local/AntiSpamController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/RestoreControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    goto :goto_0

    .line 140
    :cond_6
    const-string v0, "setting.store"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 141
    new-instance v0, Lcom/miui/milk/control/local/SettingController;

    invoke-direct {v0, p1}, Lcom/miui/milk/control/local/SettingController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/RestoreControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    goto :goto_0

    .line 142
    :cond_7
    const-string v0, "deskclock.store"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 143
    new-instance v0, Lcom/miui/milk/control/local/AlarmController;

    invoke-direct {v0, p1}, Lcom/miui/milk/control/local/AlarmController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/RestoreControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    goto :goto_0

    .line 144
    :cond_8
    const-string v0, "accounts.db"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lcom/miui/milk/control/local/AccountController;

    invoke-direct {v0, p1}, Lcom/miui/milk/control/local/AccountController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/RestoreControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    goto :goto_0
.end method


# virtual methods
.method protected execute_()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/miui/backup/RestoreControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    iget-object v1, p0, Lcom/miui/backup/RestoreControllerStrategy;->mDataFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/local/BaseController;->importData(Ljava/io/File;)V

    .line 152
    return-void
.end method

.method protected getFinishedSize()J
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/backup/RestoreControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/BaseController;->getImportedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getTotalSize()J
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/backup/RestoreControllerStrategy;->mBaseController:Lcom/miui/milk/control/local/BaseController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/BaseController;->getTotalImportSize()J

    move-result-wide v0

    return-wide v0
.end method
