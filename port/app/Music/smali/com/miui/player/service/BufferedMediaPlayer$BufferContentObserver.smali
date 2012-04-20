.class Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;
.super Landroid/database/ContentObserver;
.source "BufferedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/BufferedMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/BufferedMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/miui/player/service/BufferedMediaPlayer;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 805
    iput-object p1, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    .line 806
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 807
    return-void
.end method

.method private updateBitrate(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 863
    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget v3, v3, Lcom/miui/player/service/BufferedMediaPlayer;->mBitrate:I

    if-gtz v3, :cond_0

    .line 864
    const-string v3, "title"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 865
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 876
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 866
    .restart local v2       #name:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v3, v3, Lcom/miui/player/service/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 869
    :try_start_0
    invoke-static {v1}, Lentagged/audioformats/AudioFileIO;->read(Ljava/io/File;)Lentagged/audioformats/AudioFile;

    move-result-object v0

    .line 870
    .local v0, audio:Lentagged/audioformats/AudioFile;
    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v0}, Lentagged/audioformats/AudioFile;->getBitrate()I

    move-result v4

    iput v4, v3, Lcom/miui/player/service/BufferedMediaPlayer;->mBitrate:I
    :try_end_0
    .catch Lentagged/audioformats/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 871
    .end local v0           #audio:Lentagged/audioformats/AudioFile;
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 12
    .parameter "selfChange"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 811
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 812
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v0, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v0, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget v0, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    if-nez v0, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v0, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v1, v1, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 816
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 820
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget v7, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 822
    .local v7, newStatus:I
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 823
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    const-string v1, "current_bytes"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentBytes:J

    .line 824
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    const-string v1, "total_bytes"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    .line 825
    sget-object v0, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "current=%d,  total=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-wide v4, v4, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-wide v4, v4, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 827
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-wide v0, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentBytes:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-wide v0, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    cmp-long v0, v0, v10

    if-gez v0, :cond_2

    .line 828
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    const-wide/32 v1, 0x493e0

    iput-wide v1, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    .line 829
    sget-object v0, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "bad total bytes !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_2
    const-string v0, "status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 832
    .local v8, status:I
    invoke-static {v8}, Lcom/miui/player/network/DownloadProvider;->isRawStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 833
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v0, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v1, v1, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/miui/player/network/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 834
    const/4 v7, 0x3

    .line 849
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v1}, Lcom/miui/player/service/BufferedMediaPlayer;->getBufferdPercent()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/player/service/BufferedMediaPlayer;->runOnBufferedPositionChanged(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 852
    .end local v8           #status:I
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 855
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v1, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 856
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget v0, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    if-eqz v0, :cond_5

    .line 857
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iput v7, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 859
    :cond_5
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 835
    .restart local v8       #status:I
    :cond_6
    :try_start_2
    invoke-static {v8}, Lcom/miui/player/network/DownloadProvider;->isRawStatusSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 836
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v0, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v1, v1, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/miui/player/network/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 837
    invoke-direct {p0, v6}, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->updateBitrate(Landroid/database/Cursor;)V

    .line 838
    const/4 v7, 0x4

    goto :goto_1

    .line 839
    :cond_7
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget v0, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    if-ne v0, v9, :cond_3

    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-wide v0, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentBytes:J

    const-wide/32 v2, 0x80000

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 841
    invoke-direct {p0, v6}, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->updateBitrate(Landroid/database/Cursor;)V

    .line 844
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget v0, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mBitrate:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez v0, :cond_3

    .line 845
    const/4 v7, 0x2

    goto :goto_1

    .line 852
    .end local v8           #status:I
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
