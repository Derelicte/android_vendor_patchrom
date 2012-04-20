.class public Lcom/miui/backup/BackupRestoreCmd;
.super Ljava/lang/Object;
.source "BackupRestoreCmd.java"


# instance fields
.field protected mAppInfo:Lcom/miui/backup/AppInfo;

.field protected mBaseDir:Ljava/io/File;

.field protected mContext:Landroid/content/Context;

.field private mFinishedSize:J

.field protected mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

.field protected mStrategy:Lcom/miui/backup/BackupRestoreStrategy;


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 2
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/miui/backup/CmdRunningInfo;

    invoke-direct {v0}, Lcom/miui/backup/CmdRunningInfo;-><init>()V

    iput-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    .line 211
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mFinishedSize:J

    .line 21
    iput-object p1, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    .line 22
    iput-object p2, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    .line 23
    iput-object p3, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private recordTotalFinishedSize()V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->getFinishedSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mFinishedSize:J

    .line 214
    return-void
.end method


# virtual methods
.method protected action()Z
    .locals 2

    .prologue
    .line 117
    const/4 v0, 0x1

    .line 118
    .local v0, ret:Z
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->genStrategy()V

    .line 119
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    invoke-virtual {v1}, Lcom/miui/backup/BackupRestoreStrategy;->execute()Z

    move-result v0

    .line 122
    :cond_0
    return v0
.end method

.method protected addItemToScript(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "cmd"
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/miui/backup/BackupRestoreCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method protected addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "strategy"
    .parameter "cmd"
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 229
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/miui/backup/ScriptStrategy;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 230
    check-cast v0, Lcom/miui/backup/ScriptStrategy;

    .line 231
    .local v0, scStrategy:Lcom/miui/backup/ScriptStrategy;
    invoke-virtual {v0, p2, p3, p4}, Lcom/miui/backup/ScriptStrategy;->add(ILjava/lang/String;Ljava/lang/String;)V

    .line 233
    .end local v0           #scStrategy:Lcom/miui/backup/ScriptStrategy;
    :cond_0
    return-void
.end method

.method public cancel(Z)V
    .locals 2
    .parameter "isFailed"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v0, v0, Lcom/miui/backup/CmdRunningInfo;->status:I

    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_0
    :pswitch_0
    return-void

    .line 81
    :pswitch_1
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    invoke-virtual {v0}, Lcom/miui/backup/BackupRestoreStrategy;->cancel()V

    .line 86
    :cond_0
    :pswitch_2
    if-eqz p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    const/4 v1, 0x5

    iput v1, v0, Lcom/miui/backup/CmdRunningInfo;->status:I

    .line 88
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->handleErrors()V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    const/4 v1, 0x6

    iput v1, v0, Lcom/miui/backup/CmdRunningInfo;->status:I

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public execute()Z
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v1, 0x0

    const/4 v5, 0x5

    const/4 v2, 0x1

    .line 33
    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v3, v3, Lcom/miui/backup/CmdRunningInfo;->status:I

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v3, v3, Lcom/miui/backup/CmdRunningInfo;->status:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    :cond_0
    move v1, v2

    .line 75
    :cond_1
    :goto_0
    return v1

    .line 36
    :cond_2
    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v3, v3, Lcom/miui/backup/CmdRunningInfo;->status:I

    if-eq v3, v5, :cond_1

    .line 40
    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iput v2, v3, Lcom/miui/backup/CmdRunningInfo;->status:I

    .line 41
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->preAction()Z

    move-result v0

    .line 43
    .local v0, ret:Z
    if-eqz v0, :cond_3

    .line 44
    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    const/4 v4, 0x2

    iput v4, v3, Lcom/miui/backup/CmdRunningInfo;->status:I

    .line 45
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->action()Z

    move-result v0

    .line 49
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreCmd;->recordTotalFinishedSize()V

    .line 52
    :cond_3
    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v3, v3, Lcom/miui/backup/CmdRunningInfo;->status:I

    if-ne v3, v6, :cond_4

    move v1, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_4
    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v3, v3, Lcom/miui/backup/CmdRunningInfo;->status:I

    if-eq v3, v5, :cond_1

    .line 58
    if-eqz v0, :cond_6

    .line 59
    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    const/4 v4, 0x3

    iput v4, v3, Lcom/miui/backup/CmdRunningInfo;->status:I

    .line 60
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->postAction()Z

    move-result v0

    .line 65
    :goto_1
    if-eqz v0, :cond_7

    .line 66
    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    const/4 v4, 0x4

    iput v4, v3, Lcom/miui/backup/CmdRunningInfo;->status:I

    .line 72
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v3, v3, Lcom/miui/backup/CmdRunningInfo;->status:I

    if-eq v3, v5, :cond_1

    move v1, v2

    .line 75
    goto :goto_0

    .line 62
    :cond_6
    invoke-virtual {p0, v2}, Lcom/miui/backup/BackupRestoreCmd;->cancel(Z)V

    goto :goto_1

    .line 67
    :cond_7
    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v3, v3, Lcom/miui/backup/CmdRunningInfo;->status:I

    if-eq v3, v6, :cond_5

    .line 68
    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iput v5, v3, Lcom/miui/backup/CmdRunningInfo;->status:I

    .line 69
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->handleErrors()V

    goto :goto_2
.end method

.method protected forceStop(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method protected formatFinishedSize(J)Ljava/lang/String;
    .locals 1
    .parameter "finishedSize"

    .prologue
    .line 217
    invoke-static {p1, p2}, Lcom/miui/backup/BackupUtils;->getKMFormat(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected genStrategy()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method protected getFinishedDisplay()Ljava/lang/String;
    .locals 3

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->getFinishedSize()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/backup/BackupRestoreCmd;->formatFinishedSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFinishedSize()J
    .locals 4

    .prologue
    .line 172
    const-wide/16 v0, 0x0

    .line 173
    .local v0, size:J
    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v2, v2, Lcom/miui/backup/CmdRunningInfo;->status:I

    packed-switch v2, :pswitch_data_0

    .line 198
    :cond_0
    :goto_0
    :pswitch_0
    return-wide v0

    .line 175
    :pswitch_1
    const-wide/16 v0, 0x0

    .line 176
    goto :goto_0

    .line 178
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->getPreActionSize()J

    move-result-wide v0

    .line 179
    goto :goto_0

    .line 181
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->getPreActionSize()J

    move-result-wide v0

    .line 182
    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    invoke-virtual {v2}, Lcom/miui/backup/BackupRestoreStrategy;->getFinishedSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 188
    :pswitch_4
    iget-wide v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mFinishedSize:J

    .line 189
    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v0, v0, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPreActionSize()J
    .locals 2

    .prologue
    .line 207
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getProgress()I
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v0, v0, Lcom/miui/backup/CmdRunningInfo;->status:I

    packed-switch v0, :pswitch_data_0

    .line 168
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v0, v0, Lcom/miui/backup/CmdRunningInfo;->progress:I

    return v0

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/backup/CmdRunningInfo;->progress:I

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    invoke-virtual {v1}, Lcom/miui/backup/BackupRestoreStrategy;->getProgress()I

    move-result v1

    iput v1, v0, Lcom/miui/backup/CmdRunningInfo;->progress:I

    goto :goto_0

    .line 162
    :pswitch_2
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    const/16 v1, 0x64

    iput v1, v0, Lcom/miui/backup/CmdRunningInfo;->progress:I

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getRunningInfo()Lcom/miui/backup/CmdRunningInfo;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->getLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/backup/CmdRunningInfo;->title:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->getProgress()I

    move-result v1

    iput v1, v0, Lcom/miui/backup/CmdRunningInfo;->progress:I

    .line 102
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->getFinishedDisplay()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/backup/CmdRunningInfo;->finishedSize:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    return-object v0
.end method

.method protected getUnit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleErrors()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/backup/AppInfo;->error:Z

    .line 134
    :cond_0
    return-void
.end method

.method protected postAction()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method protected preAction()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method
