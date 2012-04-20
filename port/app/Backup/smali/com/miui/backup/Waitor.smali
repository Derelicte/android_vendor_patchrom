.class Lcom/miui/backup/Waitor;
.super Ljava/lang/Object;
.source "RestoreCmd.java"


# instance fields
.field private mInstallFinished:Z

.field private mWaitInterval:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "interval"

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/miui/backup/Waitor;->mWaitInterval:I

    .line 336
    iput p1, p0, Lcom/miui/backup/Waitor;->mWaitInterval:I

    .line 337
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 351
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/backup/Waitor;->mInstallFinished:Z

    .line 352
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isFinished()Z
    .locals 1

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/backup/Waitor;->mInstallFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitInterval()V
    .locals 2

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/backup/Waitor;->mWaitInterval:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    monitor-exit p0

    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 346
    :catch_0
    move-exception v0

    goto :goto_0
.end method
