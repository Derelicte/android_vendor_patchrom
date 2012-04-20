.class public Lcom/android/soundrecorder/RemainingTimeCalculator;
.super Ljava/lang/Object;
.source "RemainingTimeCalculator.java"


# instance fields
.field private mBlocksChangedTime:J

.field private mBytesPerSecond:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentLowerLimit:I

.field private mFileSizeChangedTime:J

.field private mLastBlocks:J

.field private mLastFileSize:J

.field private mMaxBytes:J

.field private mRecordingFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "contentResolver"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 54
    iput-object p1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mContentResolver:Landroid/content/ContentResolver;

    .line 55
    return-void
.end method


# virtual methods
.method public currentLowerLimit()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    return v0
.end method

.method public diskSpaceAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, fs:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    .line 169
    .end local v0           #fs:Landroid/os/StatFs;
    :cond_0
    :goto_0
    return v1

    .restart local v0       #fs:Landroid/os/StatFs;
    :cond_1
    move v1, v2

    .line 167
    goto :goto_0

    .line 169
    .end local v0           #fs:Landroid/os/StatFs;
    :cond_2
    iget-object v3, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lmiui/os/Environment;->isInternalStorageLow(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 76
    iput-wide v1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    .line 77
    iput-wide v1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    .line 78
    return-void
.end method

.method public setBitRate(I)V
    .locals 1
    .parameter "bitRate"

    .prologue
    .line 178
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    .line 179
    return-void
.end method

.method public setFileSizeLimit(Ljava/io/File;J)V
    .locals 0
    .parameter "file"
    .parameter "maxBytes"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    .line 68
    iput-wide p2, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mMaxBytes:J

    .line 69
    return-void
.end method

.method public timeRemaining()J
    .locals 19

    .prologue
    .line 85
    const/4 v8, 0x0

    .line 86
    .local v8, fs:Landroid/os/StatFs;
    const-wide/16 v4, -0x1

    .line 87
    .local v4, blocks:J
    const-wide/16 v2, -0x1

    .line 88
    .local v2, blockSize:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 90
    .local v9, now:J
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 91
    new-instance v8, Landroid/os/StatFs;

    .end local v8           #fs:Landroid/os/StatFs;
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 93
    .restart local v8       #fs:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    add-int/lit8 v15, v15, -0x20

    int-to-long v4, v15

    .line 94
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v15

    int-to-long v2, v15

    .line 95
    const-wide/16 v15, 0x0

    cmp-long v15, v4, v15

    if-gez v15, :cond_0

    .line 96
    const-wide/16 v4, 0x0

    .line 109
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    cmp-long v15, v4, v15

    if-eqz v15, :cond_2

    .line 110
    :cond_1
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    .line 111
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    .line 122
    :cond_2
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    mul-long/2addr v15, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    div-long v11, v15, v17

    .line 124
    .local v11, result:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    sub-long v15, v9, v15

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    sub-long/2addr v11, v15

    .line 126
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    if-nez v15, :cond_4

    .line 127
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 147
    .end local v11           #result:J
    :goto_1
    return-wide v11

    .line 99
    :cond_3
    new-instance v8, Landroid/os/StatFs;

    .end local v8           #fs:Landroid/os/StatFs;
    invoke-static {}, Lmiui/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 101
    .restart local v8       #fs:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v15

    int-to-long v2, v15

    .line 102
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lmiui/provider/ExtraSettings$Secure;->getStorageThreshold(Landroid/content/ContentResolver;)J

    move-result-wide v17

    div-long v17, v17, v2

    sub-long v4, v15, v17

    .line 104
    const-wide/16 v15, 0x0

    cmp-long v15, v4, v15

    if-gez v15, :cond_0

    .line 105
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 134
    .restart local v11       #result:J
    :cond_4
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    .line 135
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 136
    .local v6, fileSize:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastFileSize:J

    cmp-long v15, v6, v15

    if-eqz v15, :cond_6

    .line 137
    :cond_5
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    .line 138
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastFileSize:J

    .line 141
    :cond_6
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mMaxBytes:J

    sub-long/2addr v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    div-long v13, v15, v17

    .line 142
    .local v13, result2:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    sub-long v15, v9, v15

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    sub-long/2addr v13, v15

    .line 143
    const-wide/16 v15, 0x1

    sub-long/2addr v13, v15

    .line 145
    cmp-long v15, v11, v13

    if-gez v15, :cond_7

    const/4 v15, 0x2

    :goto_2
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 147
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    goto/16 :goto_1

    .line 145
    :cond_7
    const/4 v15, 0x1

    goto :goto_2
.end method
