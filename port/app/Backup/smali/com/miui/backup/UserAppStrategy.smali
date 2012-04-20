.class abstract Lcom/miui/backup/UserAppStrategy;
.super Lcom/miui/backup/BackupRestoreStrategy;
.source "BackupRestoreStrategy.java"


# instance fields
.field protected mDstFile:Ljava/io/File;

.field protected mPackageName:Ljava/lang/String;

.field protected mSrcFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .parameter "srcFile"
    .parameter "dstFile"
    .parameter "packageName"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreStrategy;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/miui/backup/UserAppStrategy;->mSrcFile:Ljava/io/File;

    .line 172
    iput-object p2, p0, Lcom/miui/backup/UserAppStrategy;->mDstFile:Ljava/io/File;

    .line 173
    iput-object p3, p0, Lcom/miui/backup/UserAppStrategy;->mPackageName:Ljava/lang/String;

    .line 174
    return-void
.end method


# virtual methods
.method protected getFinishedSize()J
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miui/backup/UserAppStrategy;->mDstFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/backup/UserAppStrategy;->mDstFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getTotalSize()J
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miui/backup/UserAppStrategy;->mSrcFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/backup/UserAppStrategy;->mSrcFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
