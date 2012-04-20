.class public Lcom/android/soundrecorder/SoundRecorder;
.super Landroid/app/Activity;
.source "SoundRecorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/soundrecorder/Recorder$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;
    }
.end annotation


# instance fields
.field private mCanRequestChanged:Z

.field private mDeleteButton:Landroid/widget/ImageButton;

.field private mErrorUiMessage:Ljava/lang/String;

.field private mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

.field private mFinishButton:Landroid/widget/ImageButton;

.field private final mHandler:Landroid/os/Handler;

.field private mLastButtonId:I

.field private mLastClickTime:J

.field private mMaxFileSize:J

.field private mNewButton:Landroid/widget/ImageButton;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseSound:I

.field private mPlayButton:Landroid/widget/ImageButton;

.field private mPlaySeekBar:Landroid/widget/SeekBar;

.field private mPlaySound:I

.field private mPreviousVUMax:I

.field private mReceiver:Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;

.field private mRecordButton:Landroid/widget/ImageButton;

.field private mRecorder:Lcom/android/soundrecorder/Recorder;

.field private mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

.field private mRequestedType:Ljava/lang/String;

.field private mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

.field private mSampleInterrupted:Z

.field private mSavedRecord:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarLayout:Landroid/widget/LinearLayout;

.field private mShowFinishButton:Z

.field private mSmallWheelLeft:Lcom/android/soundrecorder/WheelImageView;

.field private mSmallWheelRight:Lcom/android/soundrecorder/WheelImageView;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStartTime:Landroid/widget/TextView;

.field private mStopButton:Landroid/widget/ImageButton;

.field private mStopUiUpdate:Z

.field private mTimerFormat:Ljava/lang/String;

.field private mTimerLayout:Landroid/widget/LinearLayout;

.field private mToastTextViewForNoSd:Landroid/widget/TextView;

.field private mToastViewForNoSd:Landroid/view/ViewGroup;

.field private mTotalTime:Landroid/widget/TextView;

.field private mUpdateSeekBar:Ljava/lang/Runnable;

.field private mUpdateTimer:Ljava/lang/Runnable;

.field private mUpdateVUMetur:Ljava/lang/Runnable;

.field private mVUMeterLayout:Landroid/widget/LinearLayout;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWheelLeft:Lcom/android/soundrecorder/WheelImageView;

.field private mWheelRight:Lcom/android/soundrecorder/WheelImageView;

.field private vibratePatternButton:[B

.field private vibratePatternCenterButton:[B

.field private vibratePatternRecordPlayEnd:[B

.field private vibratePatternSeekEnd:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    const-string v0, "audio/*"

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mCanRequestChanged:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 101
    iput-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    .line 103
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 107
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$1;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mUpdateTimer:Ljava/lang/Runnable;

    .line 145
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$2;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$2;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mUpdateSeekBar:Ljava/lang/Runnable;

    .line 154
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$3;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$3;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mUpdateVUMetur:Ljava/lang/Runnable;

    .line 203
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 1338
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$11;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$11;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1392
    return-void
.end method

.method static synthetic access$000(Lcom/android/soundrecorder/SoundRecorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopUiUpdate:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateTimerView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/soundrecorder/SoundRecorder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/SoundRecorder;->updateUi(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/soundrecorder/SoundRecorder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mToastTextViewForNoSd:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopAnimation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/soundrecorder/SoundRecorder;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternSeekEnd:[B

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/soundrecorder/SoundRecorder;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->startForwardAnimation()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->startBackwardAnimation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/soundrecorder/SoundRecorder;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/SoundRecorder;->setTimerView(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateSeekBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateVUMeterView()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/soundrecorder/SoundRecorder;)Lcom/android/soundrecorder/Recorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/soundrecorder/SoundRecorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/soundrecorder/SoundRecorder;->mLastButtonId:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->startRecording()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/soundrecorder/SoundRecorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V

    return-void
.end method

.method private addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x3e8

    .line 902
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 903
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 904
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 905
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 906
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 907
    new-instance v7, Ljava/text/SimpleDateFormat;

    const v8, 0x7f060008

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 909
    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 910
    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v7}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v7, v11

    .line 914
    const-string v9, "is_music"

    const-string v10, "0"

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string v9, "title"

    invoke-virtual {v2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v0, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v0, "date_added"

    div-long/2addr v3, v11

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 919
    const-string v0, "date_modified"

    div-long v3, v5, v11

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 920
    const-string v0, "duration"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 921
    const-string v0, "mime_type"

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const-string v0, "artist"

    const v3, 0x7f060009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v0, "album"

    const v3, 0x7f06000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const-string v0, "SoundRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserting audio record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 926
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 928
    :goto_0
    const-string v4, "SoundRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContentURI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-virtual {v3, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 930
    if-nez v0, :cond_1

    .line 931
    const-string v0, "SoundRecorder"

    const v1, 0x7f06000e

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const/4 v0, 0x0

    .line 946
    :goto_1
    return-object v0

    .line 926
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 935
    :cond_1
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 936
    invoke-direct {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->getPlaylistId(Landroid/content/res/Resources;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 937
    invoke-direct {p0, v1, v3}, Lcom/android/soundrecorder/SoundRecorder;->createPlaylist(Landroid/content/res/Resources;Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 939
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 940
    invoke-direct {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->getPlaylistId(Landroid/content/res/Resources;)I

    move-result v1

    int-to-long v4, v1

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/android/soundrecorder/SoundRecorder;->addToPlaylist(Landroid/content/ContentResolver;IJ)V

    .line 945
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private addToPlaylist(Landroid/content/ContentResolver;IJ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 841
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v6

    .line 844
    const-string v0, "external"

    invoke-static {v0, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 845
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 846
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 847
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 848
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 849
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 850
    const-string v3, "play_order"

    add-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 851
    const-string v2, "audio_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 853
    return-void
.end method

.method private createPlaylist(Landroid/content/res/Resources;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 887
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 888
    const-string v1, "name"

    const v2, 0x7f06000b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 890
    if-nez v0, :cond_0

    .line 891
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060006

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 895
    :cond_0
    return-object v0
.end method

.method private getByteArray([I)[B
    .locals 3
    .parameter "from"

    .prologue
    .line 393
    if-nez p1, :cond_1

    .line 394
    const/4 v1, 0x0

    .line 402
    :cond_0
    return-object v1

    .line 397
    :cond_1
    array-length v2, p1

    new-array v1, v2, [B

    .line 398
    .local v1, to:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 399
    aget v2, p1, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPlaylistId(Landroid/content/res/Resources;)I
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 859
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 860
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    .line 863
    const-string v0, "name=?"

    .line 864
    new-array v4, v3, [Ljava/lang/String;

    const v0, 0x7f06000b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 867
    const-string v3, "name=?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/soundrecorder/SoundRecorder;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 868
    if-nez v1, :cond_0

    .line 869
    const-string v0, "SoundRecorder"

    const-string v2, "query returns null"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_0
    const/4 v0, -0x1

    .line 872
    if-eqz v1, :cond_2

    .line 873
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 874
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 875
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 877
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 879
    :cond_2
    return v0
.end method

.method private getTimerImage(C)Landroid/widget/ImageView;
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 950
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 951
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 952
    const/16 v2, 0x3a

    if-eq p1, v2, :cond_0

    .line 953
    const v2, 0x7f020002

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 955
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 990
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 991
    return-object v0

    .line 957
    :pswitch_0
    const v2, 0x7f020023

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 960
    :pswitch_1
    const v2, 0x7f020024

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 963
    :pswitch_2
    const v2, 0x7f020025

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 966
    :pswitch_3
    const v2, 0x7f020026

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 969
    :pswitch_4
    const v2, 0x7f020027

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 972
    :pswitch_5
    const v2, 0x7f020028

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 975
    :pswitch_6
    const v2, 0x7f020029

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 978
    :pswitch_7
    const v2, 0x7f02002a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 981
    :pswitch_8
    const v2, 0x7f02002b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 984
    :pswitch_9
    const v2, 0x7f02002c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 987
    :pswitch_a
    const v2, 0x7f02001c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 955
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private initInternalState(Landroid/content/Intent;)V
    .locals 5
    .parameter "i"

    .prologue
    const/4 v3, 0x0

    .line 260
    const-string v2, "audio/*"

    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 261
    iput-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    .line 262
    if-eqz p1, :cond_2

    .line 263
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, s:Ljava/lang/String;
    const-string v2, "audio/amr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/3gpp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "*/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 266
    :cond_0
    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 267
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    .line 275
    :cond_1
    const-string v0, "android.provider.MediaStore.extra.MAX_BYTES"

    .line 276
    .local v0, EXTRA_MAX_BYTES:Ljava/lang/String;
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    .line 279
    .end local v0           #EXTRA_MAX_BYTES:Ljava/lang/String;
    .end local v1           #s:Ljava/lang/String;
    :cond_2
    const-string v2, "audio/*"

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 280
    invoke-static {p0}, Lcom/android/soundrecorder/SoundRecorderPreferenceActivity;->getRecordType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 284
    :cond_3
    :goto_0
    return-void

    .line 268
    .restart local v1       #s:Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_1

    .line 270
    invoke-virtual {p0, v3}, Lcom/android/soundrecorder/SoundRecorder;->setResult(I)V

    .line 271
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    goto :goto_0

    .line 281
    .end local v1           #s:Ljava/lang/String;
    :cond_5
    const-string v2, "*/*"

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 282
    const-string v2, "audio/3gpp"

    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    goto :goto_0
.end method

.method private initResourceRefs()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 318
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    .line 319
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFinishButton:Landroid/widget/ImageButton;

    .line 320
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    .line 321
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    .line 322
    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    .line 323
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseButton:Landroid/widget/ImageButton;

    .line 324
    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDeleteButton:Landroid/widget/ImageButton;

    .line 325
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFinishButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/soundrecorder/WheelImageView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    .line 334
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/soundrecorder/WheelImageView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelRight:Lcom/android/soundrecorder/WheelImageView;

    .line 335
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/soundrecorder/WheelImageView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    .line 336
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/soundrecorder/WheelImageView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelRight:Lcom/android/soundrecorder/WheelImageView;

    .line 337
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/soundrecorder/RecordNameEditText;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    .line 339
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V

    .line 340
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    new-instance v1, Lcom/android/soundrecorder/SoundRecorder$4;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/SoundRecorder$4;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/RecordNameEditText;->setNameChangeListener(Lcom/android/soundrecorder/RecordNameEditText$OnNameChangeListener;)V

    .line 349
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerLayout:Landroid/widget/LinearLayout;

    .line 350
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    .line 351
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSeekBarLayout:Landroid/widget/LinearLayout;

    .line 352
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStartTime:Landroid/widget/TextView;

    .line 353
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mTotalTime:Landroid/widget/TextView;

    .line 354
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlaySeekBar:Landroid/widget/SeekBar;

    .line 355
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlaySeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 356
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlaySeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 358
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mToastViewForNoSd:Landroid/view/ViewGroup;

    .line 359
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mToastViewForNoSd:Landroid/view/ViewGroup;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mToastTextViewForNoSd:Landroid/widget/TextView;

    .line 360
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mToastTextViewForNoSd:Landroid/widget/TextView;

    const v1, 0x30c0039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 362
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    .line 364
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFinishButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFinishButton:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    .line 371
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v4, v2, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSoundPool:Landroid/media/SoundPool;

    .line 372
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSoundPool:Landroid/media/SoundPool;

    const-string v1, "/system/media/audio/ui/SoundRecorderPlay.ogg"

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlaySound:I

    .line 373
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSoundPool:Landroid/media/SoundPool;

    const-string v1, "/system/media/audio/ui/SoundRecorderPause.ogg"

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseSound:I

    .line 375
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mLastClickTime:J

    .line 376
    iput v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mLastButtonId:I

    .line 377
    return-void
.end method

.method private initVibratePatterns()V
    .locals 2

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->getByteArray([I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternButton:[B

    .line 407
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->getByteArray([I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternCenterButton:[B

    .line 408
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->getByteArray([I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternRecordPlayEnd:[B

    .line 409
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->getByteArray([I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternSeekEnd:[B

    .line 410
    return-void
.end method

.method private localVibrate([B)V
    .locals 4
    .parameter "pattern"

    .prologue
    .line 413
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1}, Landroid/os/Vibrator;->vibrateEx([B)V

    .line 416
    :cond_0
    return-void
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 826
    :try_start_0
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 827
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 832
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 830
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 831
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 832
    goto :goto_0
.end method

.method private registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 802
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$9;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$9;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 811
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 812
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 814
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 815
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 816
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/soundrecorder/SoundRecorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 818
    :cond_0
    return-void
.end method

.method private resetFileNameEditText()V
    .locals 4

    .prologue
    .line 380
    const-string v0, ""

    .line 381
    .local v0, extension:Ljava/lang/String;
    const-string v1, "audio/amr"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    const-string v0, ".amr"

    .line 389
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->getRecordDir()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/soundrecorder/RecordNameEditText;->initFileName(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 390
    return-void

    .line 383
    :cond_1
    const-string v1, "audio/3gpp"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    const-string v0, ".3gpp"

    goto :goto_0
.end method

.method private saveSample()V
    .locals 4

    .prologue
    .line 715
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v2

    if-nez v2, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSavedRecord:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v3}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 718
    const/4 v1, 0x0

    .line 720
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/soundrecorder/SoundRecorder;->addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 726
    if-eqz v1, :cond_0

    .line 729
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSavedRecord:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v3}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 730
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/soundrecorder/SoundRecorder;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 721
    :catch_0
    move-exception v0

    .line 724
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method private setTimerView(F)V
    .locals 11
    .parameter "progress"

    .prologue
    const-wide/16 v9, 0x3c

    .line 1020
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v4}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-long v1, v4

    .line 1021
    .local v1, time:J
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    div-long v7, v1, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    rem-long v7, v1, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1022
    .local v3, timeStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1023
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1024
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/soundrecorder/SoundRecorder;->getTimerImage(C)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1023
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1026
    :cond_0
    return-void
.end method

.method private showDeleteConfirmDialog()V
    .locals 3

    .prologue
    .line 735
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 736
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 737
    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 738
    const v1, 0x104000a

    new-instance v2, Lcom/android/soundrecorder/SoundRecorder$5;

    invoke-direct {v2, p0}, Lcom/android/soundrecorder/SoundRecorder$5;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 744
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/soundrecorder/SoundRecorder$6;

    invoke-direct {v2, p0}, Lcom/android/soundrecorder/SoundRecorder$6;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 750
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 751
    return-void
.end method

.method private showOverwriteConfirmDialogIfConflicts()V
    .locals 5

    .prologue
    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v1}, Lcom/android/soundrecorder/RecordNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "audio/amr"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".amr"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 757
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1, v0}, Lcom/android/soundrecorder/Recorder;->isRecordExisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    if-nez v1, :cond_1

    .line 759
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 760
    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 761
    const v2, 0x7f060013

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/soundrecorder/SoundRecorder;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 762
    const v0, 0x104000a

    new-instance v2, Lcom/android/soundrecorder/SoundRecorder$7;

    invoke-direct {v2, p0}, Lcom/android/soundrecorder/SoundRecorder$7;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 769
    const/high16 v0, 0x104

    new-instance v2, Lcom/android/soundrecorder/SoundRecorder$8;

    invoke-direct {v2, p0}, Lcom/android/soundrecorder/SoundRecorder$8;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 776
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 780
    :goto_1
    return-void

    .line 754
    :cond_0
    const-string v0, ".3gpp"

    goto :goto_0

    .line 778
    :cond_1
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->startRecording()V

    goto :goto_1
.end method

.method private showToastForNoSd(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1324
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->showToastForNoSd(Ljava/lang/String;)V

    .line 1325
    return-void
.end method

.method private showToastForNoSd(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mToastTextViewForNoSd:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1329
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mToastTextViewForNoSd:Landroid/widget/TextView;

    new-instance v1, Lcom/android/soundrecorder/SoundRecorder$10;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/SoundRecorder$10;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1336
    return-void
.end method

.method private startBackwardAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    const-wide/16 v2, 0xc8

    const/4 v1, 0x0

    .line 446
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 447
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 448
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 449
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 450
    return-void
.end method

.method private startForwardAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    const-wide/16 v2, 0xc8

    const/4 v1, 0x1

    .line 439
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 440
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 441
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 442
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 443
    return-void
.end method

.method private startRecordPlayingAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x708

    const-wide/16 v2, 0x384

    const/4 v1, 0x1

    .line 419
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 420
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 421
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 422
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 423
    return-void
.end method

.method private startRecordPlayingDoneAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const-wide/16 v4, 0x64

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 432
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v4, v5, v1, v3}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZI)V

    .line 433
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v4, v5, v1, v3}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZI)V

    .line 434
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZI)V

    .line 435
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZI)V

    .line 436
    return-void
.end method

.method private startRecording()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 540
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->reset()V

    .line 541
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lmiui/os/Environment;->isInternalStorageLow(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    iput-boolean v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 544
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x30c003a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 546
    invoke-direct {p0, v3}, Lcom/android/soundrecorder/SoundRecorder;->updateUi(Z)V

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->diskSpaceAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 548
    iput-boolean v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 549
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 550
    invoke-direct {p0, v3}, Lcom/android/soundrecorder/SoundRecorder;->updateUi(Z)V

    goto :goto_0

    .line 552
    :cond_2
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopAudioPlayback()V

    .line 554
    invoke-static {p0}, Lcom/android/soundrecorder/SoundRecorderPreferenceActivity;->isHighQuality(Landroid/content/Context;)Z

    move-result v4

    .line 555
    .local v4, isHighQuality:Z
    const-string v0, "audio/amr"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 556
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    const/16 v2, 0x4000

    invoke-virtual {v0, v2}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 557
    if-eqz v4, :cond_3

    const/4 v1, 0x4

    .line 559
    .local v1, outputfileformat:I
    :goto_1
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v2}, Lcom/android/soundrecorder/RecordNameEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".amr"

    iget-wide v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/soundrecorder/Recorder;->startRecording(ILjava/lang/String;Ljava/lang/String;ZJ)V

    .line 576
    .end local v1           #outputfileformat:I
    :goto_2
    iget-wide v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    const-wide/16 v5, -0x1

    cmp-long v0, v2, v5

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v2

    iget-wide v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setFileSizeLimit(Ljava/io/File;J)V

    goto :goto_0

    .line 557
    :cond_3
    const/4 v1, 0x3

    goto :goto_1

    .line 561
    :cond_4
    const-string v0, "audio/3gpp"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 564
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "HTC HD2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 565
    const/4 v4, 0x0

    .line 568
    :cond_5
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    const v2, 0x28000

    invoke-virtual {v0, v2}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 569
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RecordNameEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".3gpp"

    iget-wide v10, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    move v9, v4

    invoke-virtual/range {v5 .. v11}, Lcom/android/soundrecorder/Recorder;->startRecording(ILjava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_2

    .line 573
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid output file type requested"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private stopAnimation()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0}, Lcom/android/soundrecorder/WheelImageView;->stopAnimation()V

    .line 454
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0}, Lcom/android/soundrecorder/WheelImageView;->stopAnimation()V

    .line 455
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0}, Lcom/android/soundrecorder/WheelImageView;->stopAnimation()V

    .line 456
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0}, Lcom/android/soundrecorder/WheelImageView;->stopAnimation()V

    .line 457
    return-void
.end method

.method private stopAudioPlayback()V
    .locals 3

    .prologue
    .line 466
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 470
    return-void
.end method

.method private stopRecordPlayingAnimation()V
    .locals 1

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopAnimation()V

    .line 427
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->startRecordPlayingDoneAnimation()V

    .line 428
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternRecordPlayEnd:[B

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    .line 429
    return-void
.end method

.method private updateSeekBar()V
    .locals 4

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlaySeekBar:Landroid/widget/SeekBar;

    const v1, 0x461c4000

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->playProgress()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1031
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mUpdateSeekBar:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1033
    :cond_0
    return-void
.end method

.method private updateTimeRemaining()V
    .locals 4

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->timeRemaining()J

    move-result-wide v0

    .line 1043
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 1046
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->currentLowerLimit()I

    move-result v0

    .line 1047
    packed-switch v0, :pswitch_data_0

    .line 1055
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 1059
    :goto_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 1062
    :cond_0
    return-void

    .line 1049
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    goto :goto_0

    .line 1052
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    goto :goto_0

    .line 1047
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateTimerView()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3c

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 999
    iget-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v8}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v2

    .line 1001
    .local v2, state:I
    if-eq v2, v7, :cond_0

    if-ne v2, v9, :cond_1

    :cond_0
    move v1, v7

    .line 1003
    .local v1, ongoing:Z
    :goto_0
    iget-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v8}, Lcom/android/soundrecorder/Recorder;->progress()I

    move-result v8

    int-to-long v3, v8

    .line 1004
    .local v3, time:J
    iget-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    div-long v10, v3, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    rem-long v10, v3, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1005
    .local v5, timeStr:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1006
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 1007
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/soundrecorder/SoundRecorder;->getTimerImage(C)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1006
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #ongoing:Z
    .end local v3           #time:J
    .end local v5           #timeStr:Ljava/lang/String;
    :cond_1
    move v1, v6

    .line 1001
    goto :goto_0

    .line 1010
    .restart local v0       #i:I
    .restart local v1       #ongoing:Z
    .restart local v3       #time:J
    .restart local v5       #timeStr:Ljava/lang/String;
    :cond_2
    if-ne v2, v7, :cond_3

    .line 1011
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateTimeRemaining()V

    .line 1014
    :cond_3
    if-eqz v1, :cond_4

    .line 1015
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mUpdateTimer:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1017
    :cond_4
    return-void
.end method

.method private updateUi(Z)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/high16 v2, 0x3f80

    const/16 v7, 0x8

    const/4 v4, 0x0

    .line 1118
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1230
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateTimerView()V

    .line 1231
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateSeekBar()V

    .line 1232
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateVUMeterView()V

    .line 1234
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1235
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mToastViewForNoSd:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1239
    :goto_1
    return-void

    .line 1120
    :pswitch_0
    iput v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mLastButtonId:I

    .line 1122
    :pswitch_1
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v0

    if-nez v0, :cond_3

    .line 1123
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1124
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1126
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1127
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1129
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1130
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1132
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1133
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1150
    :goto_2
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v0, v6}, Lcom/android/soundrecorder/RecordNameEditText;->setEnabled(Z)V

    .line 1151
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RecordNameEditText;->clearFocus()V

    .line 1153
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v0

    if-lez v0, :cond_6

    .line 1154
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1155
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopAnimation()V

    .line 1156
    invoke-static {p0}, Lcom/android/soundrecorder/SoundRecorderPreferenceActivity;->isEnabledSoundEffect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1157
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseSound:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1172
    :cond_1
    :goto_3
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1173
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1174
    const v0, 0x7f060002

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1180
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1181
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1182
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1135
    :cond_3
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1136
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1137
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1139
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1141
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1142
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1144
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1145
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1146
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStartTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mTotalTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v5}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v5

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v5}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v5

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1160
    :cond_4
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlaySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1161
    if-nez p1, :cond_5

    .line 1162
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopRecordPlayingAnimation()V

    goto/16 :goto_3

    .line 1164
    :cond_5
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopAnimation()V

    goto/16 :goto_3

    .line 1168
    :cond_6
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopAnimation()V

    goto/16 :goto_3

    .line 1176
    :cond_7
    const v0, 0x7f060002

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->showToastForNoSd(I)V

    goto/16 :goto_4

    .line 1184
    :cond_8
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->showToastForNoSd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1190
    :pswitch_2
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1191
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1192
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1193
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1194
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1195
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1196
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1197
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1199
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1200
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1202
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v0, v4}, Lcom/android/soundrecorder/RecordNameEditText;->setEnabled(Z)V

    .line 1204
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->startRecordPlayingAnimation()V

    .line 1205
    iput v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPreviousVUMax:I

    goto/16 :goto_0

    .line 1209
    :pswitch_3
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1210
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1211
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1212
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1213
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1214
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1215
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1216
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1218
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1219
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1221
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v0, v4}, Lcom/android/soundrecorder/RecordNameEditText;->setEnabled(Z)V

    .line 1223
    invoke-static {p0}, Lcom/android/soundrecorder/SoundRecorderPreferenceActivity;->isEnabledSoundEffect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1224
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlaySound:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1226
    :cond_9
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->startRecordPlayingAnimation()V

    goto/16 :goto_0

    .line 1237
    :cond_a
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mToastViewForNoSd:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 1118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private updateVUMeterView()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x1

    const/16 v5, 0xb

    const/4 v1, 0x0

    .line 1065
    .line 1066
    new-array v3, v5, [Z

    .line 1068
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    if-ne v0, v6, :cond_8

    .line 1070
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->getMaxAmplitude()I

    move-result v0

    mul-int/lit8 v0, v0, 0xb

    const v2, 0x8000

    div-int/2addr v0, v2

    .line 1071
    if-lt v0, v5, :cond_0

    .line 1072
    const/16 v0, 0xa

    .line 1075
    :cond_0
    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPreviousVUMax:I

    if-lt v0, v2, :cond_2

    .line 1076
    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPreviousVUMax:I

    :cond_1
    :goto_0
    move v2, v1

    .line 1081
    :goto_1
    if-ge v2, v5, :cond_5

    .line 1082
    if-gt v2, v0, :cond_3

    .line 1083
    aput-boolean v6, v3, v2

    .line 1081
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1077
    :cond_2
    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPreviousVUMax:I

    if-lez v2, :cond_1

    .line 1078
    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPreviousVUMax:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPreviousVUMax:I

    goto :goto_0

    .line 1084
    :cond_3
    iget v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPreviousVUMax:I

    if-ne v2, v4, :cond_4

    .line 1085
    aput-boolean v6, v3, v2

    goto :goto_2

    .line 1087
    :cond_4
    aput-boolean v1, v3, v2

    goto :goto_2

    .line 1091
    :cond_5
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mUpdateVUMetur:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1099
    :cond_6
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 1100
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1101
    array-length v2, v3

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_9

    aget-boolean v1, v3, v0

    .line 1102
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1103
    const v5, 0x7f020003

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1104
    if-eqz v1, :cond_7

    .line 1105
    const v1, 0x7f020022

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1107
    :cond_7
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1109
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1101
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1092
    :cond_8
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1093
    iput v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPreviousVUMax:I

    move v0, v1

    .line 1094
    :goto_4
    if-ge v0, v5, :cond_6

    .line 1095
    aput-boolean v1, v3, v0

    .line 1094
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1112
    :cond_9
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mLastButtonId:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f07000d

    if-ne v0, v1, :cond_0

    .line 490
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070010

    if-ne v0, v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 496
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mLastClickTime:J

    .line 497
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mLastButtonId:I

    .line 499
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 501
    :pswitch_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RecordNameEditText;->clearFocus()V

    .line 502
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    .line 503
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->reset()V

    .line 504
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V

    .line 505
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternButton:[B

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    goto :goto_0

    .line 508
    :pswitch_1
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->showOverwriteConfirmDialogIfConflicts()V

    .line 509
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternCenterButton:[B

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    goto :goto_0

    .line 512
    :pswitch_2
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 513
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 514
    const v0, 0x30c003b

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->showToastForNoSd(I)V

    .line 516
    :cond_4
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternCenterButton:[B

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    goto :goto_0

    .line 519
    :pswitch_3
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->playProgress()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/Recorder;->startPlayback(F)V

    .line 520
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternCenterButton:[B

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    goto/16 :goto_0

    .line 523
    :pswitch_4
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->pausePlayback()V

    .line 524
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternCenterButton:[B

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    goto/16 :goto_0

    .line 527
    :pswitch_5
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 528
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    .line 529
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternButton:[B

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    .line 530
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    goto/16 :goto_0

    .line 533
    :pswitch_6
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->showDeleteConfirmDialog()V

    .line 534
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternButton:[B

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    goto/16 :goto_0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x7f07000d
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 290
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->setContentView(I)V

    .line 291
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initResourceRefs()V

    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi(Z)V

    .line 293
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icycle"

    .prologue
    const/4 v3, 0x0

    .line 211
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->initInternalState(Landroid/content/Intent;)V

    .line 213
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->setContentView(I)V

    .line 215
    new-instance v1, Lcom/android/soundrecorder/Recorder;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/Recorder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    .line 216
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1, p0}, Lcom/android/soundrecorder/Recorder;->setOnStateChangedListener(Lcom/android/soundrecorder/Recorder$OnStateChangedListener;)V

    .line 217
    new-instance v1, Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;-><init>(Lcom/android/soundrecorder/SoundRecorder;Lcom/android/soundrecorder/SoundRecorder$1;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mReceiver:Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;

    .line 218
    new-instance v1, Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/soundrecorder/RemainingTimeCalculator;-><init>(Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    .line 219
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSavedRecord:Ljava/util/HashSet;

    .line 220
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mVibrator:Landroid/os/Vibrator;

    .line 222
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initResourceRefs()V

    .line 223
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initVibratePatterns()V

    .line 225
    invoke-virtual {p0, v3}, Lcom/android/soundrecorder/SoundRecorder;->setResult(I)V

    .line 226
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->registerExternalStorageListener()V

    .line 227
    if-eqz p1, :cond_0

    .line 228
    const-string v1, "recorder_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 229
    .local v0, recorderState:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1, v0}, Lcom/android/soundrecorder/Recorder;->restoreState(Landroid/os/Bundle;)V

    .line 231
    const-string v1, "sample_interrupted"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 232
    const-string v1, "max_file_size"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    .line 236
    .end local v0           #recorderState:Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->setVolumeControlStream(I)V

    .line 238
    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->reset()V

    .line 241
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V

    .line 243
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 793
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 794
    return-void
.end method

.method public onError(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1257
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1260
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 1272
    :goto_0
    if-eqz v0, :cond_0

    .line 1273
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f060006

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1276
    :cond_0
    return-void

    .line 1262
    :pswitch_0
    const v2, 0x7f06000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1269
    :pswitch_1
    const v2, 0x7f06000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 587
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 588
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 607
    :goto_0
    const/4 v0, 0x1

    .line 609
    :goto_1
    return v0

    .line 591
    :pswitch_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    .line 593
    :cond_0
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    goto :goto_0

    .line 596
    :pswitch_1
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 597
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    goto :goto_0

    .line 600
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->clear()V

    goto :goto_0

    .line 603
    :cond_1
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    goto :goto_0

    .line 609
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 249
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    .line 250
    .local v0, preShowFinishButton:Z
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/SoundRecorder;->initInternalState(Landroid/content/Intent;)V

    .line 252
    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    if-eq v0, v1, :cond_1

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->reset()V

    .line 255
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V

    .line 257
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1300
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1320
    :goto_0
    return v3

    .line 1302
    :pswitch_0
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    .line 1303
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/RecordPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1304
    const-string v1, "record_preview_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1306
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1307
    const-string v1, "record_preview_highlight"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1314
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/SoundRecorderPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1315
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1300
    :pswitch_data_0
    .packed-switch 0x7f070017
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 675
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 678
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    .line 679
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RecordNameEditText;->clearFocus()V

    .line 680
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x3b74842

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mReceiver:Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;

    if-eqz v0, :cond_2

    .line 685
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mReceiver:Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 688
    :cond_2
    iput-boolean v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mCanRequestChanged:Z

    .line 689
    iput-boolean v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopUiUpdate:Z

    .line 690
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopAnimation()V

    .line 692
    invoke-static {}, Lcom/android/soundrecorder/RecorderService;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 693
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/RecorderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 694
    const-string v1, "action_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 699
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 700
    return-void
.end method

.method public onPlayComplete(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternRecordPlayEnd:[B

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    .line 1283
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1287
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1288
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1290
    :cond_0
    const/4 v0, 0x0

    .line 1293
    :goto_0
    return v0

    .line 1292
    :cond_1
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f030005

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 615
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 616
    invoke-static {p0}, Lcom/android/soundrecorder/SoundRecorderPreferenceActivity;->getRecordType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 617
    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mCanRequestChanged:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 618
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    .line 619
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->reset()V

    .line 620
    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 621
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V

    .line 623
    :cond_0
    iput-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mCanRequestChanged:Z

    .line 625
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->syncStateWithService()Z

    move-result v0

    if-nez v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->reset()V

    .line 627
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 631
    const-string v0, "audio/amr"

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ".amr"

    .line 633
    :goto_0
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 635
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->reset()V

    .line 636
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V

    .line 658
    :cond_2
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 659
    const-string v1, "com.android.soundrecorder.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 660
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mReceiver:Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/soundrecorder/SoundRecorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 662
    iput-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopUiUpdate:Z

    .line 663
    invoke-direct {p0, v4}, Lcom/android/soundrecorder/SoundRecorder;->updateUi(Z)V

    .line 665
    invoke-static {}, Lcom/android/soundrecorder/RecorderService;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 666
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/RecorderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 667
    const-string v1, "action_type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 669
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 671
    :cond_3
    return-void

    .line 631
    :cond_4
    const-string v0, ".3gpp"

    goto :goto_0

    .line 639
    :cond_5
    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    if-nez v1, :cond_6

    .line 640
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 641
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v1, v0}, Lcom/android/soundrecorder/RecordNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 644
    :cond_6
    const-string v0, "audio/amr"

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 645
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    goto :goto_1

    .line 646
    :cond_7
    const-string v0, "audio/3gpp"

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 647
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    const v1, 0x28000

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    goto :goto_1

    .line 651
    :cond_8
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->reset()V

    .line 654
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V

    goto/16 :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 299
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v1

    if-nez v1, :cond_0

    .line 311
    :goto_0
    return-void

    .line 302
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v0, recorderState:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 305
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1, v0}, Lcom/android/soundrecorder/Recorder;->saveState(Landroid/os/Bundle;)V

    .line 307
    :cond_1
    const-string v1, "sample_interrupted"

    iget-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 308
    const-string v1, "max_file_size"

    iget-wide v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 310
    const-string v1, "recorder_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 1245
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1246
    :cond_0
    iput-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 1247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 1250
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->updateUi(Z)V

    .line 1251
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    .line 707
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 708
    return-void
.end method
