.class public Lcom/android/soundrecorder/Recorder;
.super Ljava/lang/Object;
.source "Recorder.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/soundrecorder/Recorder$OnStateChangedListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mSampleDir:Ljava/io/File;

.field private mSampleFile:Ljava/io/File;

.field private mSampleLength:I

.field private mSampleStart:J

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v5, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    .line 54
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    .line 56
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 59
    iput v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 61
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 63
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleDir:Ljava/io/File;

    .line 65
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 68
    iput-object p1, p0, Lcom/android/soundrecorder/Recorder;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getMIUIStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sound_recorder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, sampleDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 78
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleDir:Ljava/io/File;

    .line 80
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->syncStateWithService()Z

    .line 81
    return-void

    .line 75
    :cond_1
    const/16 v1, 0x1ff

    invoke-static {v0, v1, v4, v4}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    goto :goto_0
.end method

.method private signalStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/soundrecorder/Recorder$OnStateChangedListener;->onStateChanged(I)V

    .line 350
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 208
    iput v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 209
    invoke-direct {p0, v0}, Lcom/android/soundrecorder/Recorder;->signalStateChanged(I)V

    .line 210
    return-void
.end method

.method public delete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 193
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 196
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 197
    iput v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 199
    invoke-direct {p0, v1}, Lcom/android/soundrecorder/Recorder;->signalStateChanged(I)V

    .line 200
    return-void
.end method

.method public getMaxAmplitude()I
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/soundrecorder/RecorderService;->getMaxAmplitude()I

    move-result v0

    goto :goto_0
.end method

.method public getRecordDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRecordExisted(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 238
    .end local v0           #file:Ljava/io/File;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 335
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/soundrecorder/Recorder$OnStateChangedListener;->onPlayComplete(Landroid/media/MediaPlayer;)V

    .line 337
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v0, 0x1

    .line 328
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 329
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    .line 330
    return v0
.end method

.method public pausePlayback()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 309
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    goto :goto_0
.end method

.method public playProgress()F
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public progress()I
    .locals 4

    .prologue
    .line 146
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 154
    :goto_0
    return v0

    .line 148
    :cond_0
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    .line 154
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public renameSampleFile(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 173
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, oldName:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, extension:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, newFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 179
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    iput-object v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 185
    .end local v0           #extension:Ljava/lang/String;
    .end local v1           #newFile:Ljava/io/File;
    .end local v2           #oldName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 215
    iput v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 216
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 217
    iput v3, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    .line 219
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getMIUIStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sound_recorder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, sampleDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 228
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleDir:Ljava/io/File;

    .line 230
    invoke-direct {p0, v3}, Lcom/android/soundrecorder/Recorder;->signalStateChanged(I)V

    .line 231
    return-void

    .line 225
    :cond_1
    const/16 v1, 0x1ff

    invoke-static {v0, v1, v4, v4}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "recorderState"

    .prologue
    const/4 v4, -0x1

    .line 116
    const-string v3, "sample_path"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, samplePath:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v3, "sample_length"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 120
    .local v1, sampleLength:I
    if-eq v1, v4, :cond_0

    .line 123
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->delete()V

    .line 131
    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 132
    iput v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 134
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/soundrecorder/Recorder;->signalStateChanged(I)V

    goto :goto_0
.end method

.method public sampleFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    return-object v0
.end method

.method public sampleLength()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "recorderState"

    .prologue
    .line 101
    const-string v0, "sample_path"

    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "sample_length"

    iget v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    return-void
.end method

.method public setError(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/soundrecorder/Recorder$OnStateChangedListener;->onError(I)V

    .line 355
    :cond_0
    return-void
.end method

.method public setOnStateChangedListener(Lcom/android/soundrecorder/Recorder$OnStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    .line 139
    return-void
.end method

.method public setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 340
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    if-ne p1, v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    iput p1, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    .line 344
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/Recorder;->signalStateChanged(I)V

    goto :goto_0
.end method

.method public startPlayback(F)V
    .locals 6
    .parameter "percentage"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    .line 272
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 274
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 275
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 276
    invoke-virtual {p0, v5}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    .line 301
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 280
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 284
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 285
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 286
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 287
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 299
    invoke-virtual {p0, v5}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, v5}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    .line 290
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 292
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 293
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    .line 294
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public startRecording(ILjava/lang/String;Ljava/lang/String;ZJ)V
    .locals 7
    .parameter "outputfileformat"
    .parameter "name"
    .parameter "extension"
    .parameter "highQuality"
    .parameter "maxFileSize"

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 245
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 247
    :try_start_0
    const-string v0, "recording"

    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleDir:Ljava/io/File;

    invoke-static {v0, p3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 248
    invoke-virtual {p0, p2}, Lcom/android/soundrecorder/Recorder;->renameSampleFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move v1, p1

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/soundrecorder/RecorderService;->startRecording(Landroid/content/Context;ILjava/lang/String;ZJ)V

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 258
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v6

    .line 250
    .local v6, e:Ljava/io/IOException;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    goto :goto_0
.end method

.method public state()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    return v0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stopRecording()V

    .line 324
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stopPlayback()V

    .line 325
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 317
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 4

    .prologue
    .line 261
    invoke-static {}, Lcom/android/soundrecorder/RecorderService;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/soundrecorder/RecorderService;->stopRecording(Landroid/content/Context;)V

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 264
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 269
    :cond_0
    return-void
.end method

.method public syncStateWithService()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 84
    invoke-static {}, Lcom/android/soundrecorder/RecorderService;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iput v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    .line 86
    invoke-static {}, Lcom/android/soundrecorder/RecorderService;->getStartTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 87
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/soundrecorder/RecorderService;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    iget v2, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    if-ne v2, v0, :cond_2

    move v0, v1

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    if-nez v2, :cond_0

    move v0, v1

    .line 95
    goto :goto_0
.end method
