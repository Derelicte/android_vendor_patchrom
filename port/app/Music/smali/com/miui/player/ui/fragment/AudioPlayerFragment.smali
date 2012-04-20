.class public Lcom/miui/player/ui/fragment/AudioPlayerFragment;
.super Landroid/app/Fragment;
.source "AudioPlayerFragment.java"

# interfaces
.implements Lcom/miui/player/ui/DialogCallback;
.implements Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;,
        Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricSaveRunnable;,
        Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricChooseRunnable;,
        Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricAsyncChooseRunnable;,
        Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnRepeatClickListener;,
        Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnPlayerSeekListener;,
        Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnIndexerChangeAnimationListener;,
        Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnInternalIndexerClick;,
        Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;
    }
.end annotation


# static fields
.field static final ACTIVE_INTERVAL:[I = null

.field public static final ALBUM_SEARCH_EDIT:I = 0x1d

.field public static final ALBUM_SELECTED:I = 0x1e

.field private static final EDIT_ID3:I = 0x13

.field private static final EQUALIZER:I = 0x19

.field public static final ID3_EDIT:I = 0x1f

.field private static final INDEXER_COUNT:I = 0x2

.field public static final LOCAL_ALBUM_SET:I = 0x20

.field public static final LOCAL_LYRIC_SET:I = 0x21

.field public static final LYRIC_SEARCH_EDIT:I = 0x1c

.field private static final MAX_CHOOSE_COUNT:I = 0x5

.field public static final META_MODIFY:I = 0x1b

.field private static final MSG_VISULIZER_ENABLED:I = 0x2

.field private static final MSG_VISULIZER_PREPARED:I = 0x1

.field private static final PREFERENCE_PLAYBACK_SELECTION:Ljava/lang/String; = "preference_plackback_selection"

.field private static final QUIT:I = 0x2

.field private static final REFRESH:I = 0x1

.field private static final REFRESH_DELAY_ON_VISIBLE:I = 0x1f4

.field private static final SAVE_AS_PLAYLIST:I = 0x1a

.field private static final SEARCH_ALBUM:I = 0x15

.field private static final SEARCH_LYRIC:I = 0x14

.field public static final SEND_TO:I = 0x22

.field private static final SWITCH_DURATION:I = 0x12c

.field static final TAG:Ljava/lang/String; = null

.field private static final USE_AS_RINGTONE:I = 0x12

.field private static final USE_LOCAL_ALBUM:I = 0x17

.field private static final USE_LOCAL_LYRIC:I = 0x16


# instance fields
.field mActiveIndexer:I

.field mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

.field private mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

.field mAnimationView:Landroid/view/View;

.field mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

.field private mCurrentLocalId:J

.field mDownloadFreezeDialog:Landroid/app/ProgressDialog;

.field private mDownloadIndicator:Lcom/miui/player/ui/controller/DownloadIndicator;

.field mFolderView:Landroid/view/View;

.field mFrameFooter:Landroid/view/View;

.field mFrameHeader:Landroid/view/View;

.field final mHandler:Landroid/os/Handler;

.field mIsAnimationPlaying:Z

.field private mIsOnline:Z

.field private mLastActive:Z

.field private mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

.field private mLyricDir:Ljava/io/File;

.field private mNowplayingController:Lcom/miui/player/ui/controller/NowplayingController;

.field mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

.field private mPreparedHandler:Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;

.field mService:Lcom/miui/player/service/IMediaPlaybackService;

.field mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

.field private final mStatusListener:Landroid/content/BroadcastReceiver;

.field private final mSwitchAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTimeIndicatorController:Lcom/miui/player/ui/controller/TimeIndicatorController;

.field mToolBarController:Lcom/miui/player/ui/controller/ToolBarController;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->TAG:Ljava/lang/String;

    .line 124
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->ACTIVE_INTERVAL:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xc8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 145
    iput-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 147
    iput-boolean v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mIsAnimationPlaying:Z

    .line 308
    new-instance v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$1;-><init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mHandler:Landroid/os/Handler;

    .line 342
    new-instance v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$2;-><init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 468
    new-instance v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;-><init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mPreparedHandler:Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;

    .line 668
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mCurrentLocalId:J

    .line 1213
    iput-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    .line 1439
    iput-boolean v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mLastActive:Z

    .line 1520
    new-instance v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$5;-><init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mSwitchAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/fragment/AudioPlayerFragment;)Lcom/miui/player/ui/controller/DownloadIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadIndicator:Lcom/miui/player/ui/controller/DownloadIndicator;

    return-object v0
.end method

.method private doPickAlbumFromGallery()V
    .locals 3

    .prologue
    .line 921
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 922
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 923
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 933
    :goto_0
    return-void

    .line 926
    :cond_0
    const-string v2, "album"

    invoke-static {v0, v1, v2}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 927
    invoke-direct {p0, v0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->getAlbumPickIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 928
    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 929
    :catch_0
    move-exception v0

    .line 930
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const v1, 0x7f080083

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 931
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private doPickLyricFromFileExplorer()V
    .locals 5

    .prologue
    .line 888
    :try_start_0
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->getLyricPickIntent()Landroid/content/Intent;

    move-result-object v1

    .line 889
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x21

    invoke-virtual {p0, v1, v2}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const v3, 0x7f080081

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private editId3(Landroid/content/Intent;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 972
    const-string v0, "new_track_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 973
    const-string v2, "new_artist_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 974
    const-string v3, "new_album_name"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 975
    const-string v4, "raw_path"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 977
    const-string v5, "raw_track_name"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 978
    const-string v6, "raw_artist_name"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 979
    const-string v7, "raw_album_name"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 981
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 997
    :cond_0
    :goto_0
    return v1

    .line 987
    :cond_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 988
    iget-object v5, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-static {v5, v4}, Lcom/miui/player/util/SqlUtils;->translateToFileUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 989
    if-eqz v4, :cond_3

    .line 990
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 992
    iget-object v5, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, v0, v2, v3}, Lcom/miui/player/meta/MediaFileManager;->correctID3(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 993
    if-nez v0, :cond_2

    .line 994
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const v3, 0x7f080084

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    move v1, v0

    .line 997
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private enableSpectrumVisualizer(Z)V
    .locals 11
    .parameter "isPlaying"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 436
    iget-object v4, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    .line 437
    .local v4, spv:Lmiui/widget/SpectrumVisualizer;
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mPreparedHandler:Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;

    .line 439
    .local v1, handler:Landroid/os/Handler;
    iget-object v7, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const-string v8, "display_spectrogram"

    invoke-static {v7, v8}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 440
    .local v3, pref:Z
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->isActive()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_2

    move v0, v5

    .line 443
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 444
    invoke-virtual {v4}, Lmiui/widget/SpectrumVisualizer;->isUpdateEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 445
    invoke-virtual {v4}, Lmiui/widget/SpectrumVisualizer;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 446
    invoke-virtual {v4, v6}, Lmiui/widget/SpectrumVisualizer;->setVisibility(I)V

    .line 447
    iget-object v5, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const/high16 v7, 0x7f04

    invoke-static {v5, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/widget/SpectrumVisualizer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 449
    :cond_0
    iget-object v5, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mNowplayingController:Lcom/miui/player/ui/controller/NowplayingController;

    invoke-virtual {v5, v6}, Lcom/miui/player/ui/controller/NowplayingController;->setPrevFrameVisible(Z)V

    .line 450
    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 451
    .local v2, msg:Landroid/os/Message;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 464
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    :goto_1
    return-void

    .end local v0           #enabled:Z
    :cond_2
    move v0, v6

    .line 440
    goto :goto_0

    .line 454
    .restart local v0       #enabled:Z
    :cond_3
    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 455
    invoke-virtual {v4, v6}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 456
    if-eqz v3, :cond_4

    if-nez p1, :cond_1

    .line 457
    :cond_4
    invoke-virtual {v4}, Lmiui/widget/SpectrumVisualizer;->getVisibility()I

    move-result v6

    if-eq v6, v10, :cond_5

    .line 458
    invoke-virtual {v4, v10}, Lmiui/widget/SpectrumVisualizer;->setVisibility(I)V

    .line 459
    iget-object v6, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const v7, 0x7f040001

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v4, v6}, Lmiui/widget/SpectrumVisualizer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 461
    :cond_5
    iget-object v6, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mNowplayingController:Lcom/miui/player/ui/controller/NowplayingController;

    invoke-virtual {v6, v5}, Lcom/miui/player/ui/controller/NowplayingController;->setPrevFrameVisible(Z)V

    goto :goto_1
.end method

.method private getAlbumPickIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 940
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 942
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 944
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 945
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 946
    const-string v1, "output"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 947
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 948
    const-string v1, "noShowToast"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 949
    return-object v0
.end method

.method private getLyricPickIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 900
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 901
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mLyricDir:Ljava/io/File;

    if-nez v1, :cond_0

    .line 902
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mLyricDir:Ljava/io/File;

    .line 904
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mLyricDir:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 905
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 907
    const-string v1, "root_directory"

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    const-string v1, "ext_filter"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "lrc"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    const-string v1, "ext_file_first"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 912
    const-string v1, "back_to_parent_directory"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 913
    return-object v0
.end method

.method private getPreferenceSelection()I
    .locals 4

    .prologue
    .line 519
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preference_plackback_selection"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 520
    .local v0, ret:I
    if-ltz v0, :cond_0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 521
    :cond_0
    const/4 v0, 0x0

    .line 524
    :cond_1
    return v0
.end method

.method public static savePreferenceSelection(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "indexer"

    .prologue
    .line 528
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 529
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "preference_plackback_selection"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 530
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 531
    return-void
.end method

.method private startSwitchAnimation(Lcom/miui/player/ui/view/ClipAnimationBuilder;)V
    .locals 3
    .parameter

    .prologue
    .line 1513
    invoke-virtual {p1}, Lcom/miui/player/ui/view/ClipAnimationBuilder;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 1514
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1515
    invoke-virtual {p1}, Lcom/miui/player/ui/view/ClipAnimationBuilder;->createAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1516
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const v2, 0x10a0005

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 1517
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1518
    return-void
.end method


# virtual methods
.method adjustEqualizer()V
    .locals 2

    .prologue
    .line 1413
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.EQUALIZER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1414
    const/16 v1, 0x19

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1415
    return-void
.end method

.method changeActiveIndexer(I)V
    .locals 2
    .parameter "newIndexer"

    .prologue
    .line 508
    iget v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActiveIndexer:I

    if-eq v0, p1, :cond_0

    .line 509
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    iget v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActiveIndexer:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MediaPlaybackController;->deactive()V

    .line 510
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MediaPlaybackController;->active()V

    .line 511
    iput p1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActiveIndexer:I

    .line 512
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    iget v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActiveIndexer:I

    invoke-static {v0, v1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->savePreferenceSelection(Landroid/content/Context;I)V

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->refreshNow()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->queueNextRefresh(J)V

    .line 516
    return-void
.end method

.method getNextIndexerWhenInternalClick()I
    .locals 3

    .prologue
    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, newIndexer:I
    iget v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActiveIndexer:I

    if-nez v1, :cond_1

    .line 610
    const/4 v0, 0x1

    .line 615
    :cond_0
    :goto_0
    return v0

    .line 611
    :cond_1
    iget v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActiveIndexer:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 612
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isActive()Z
    .locals 1

    .prologue
    .line 1436
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActivityPaused()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isAnimationPlaying()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mIsAnimationPlaying:Z

    return v0
.end method

.method public onActiveChanged()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1450
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->isActive()Z

    move-result v2

    .line 1451
    iget-boolean v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mLastActive:Z

    if-ne v3, v2, :cond_0

    .line 1477
    :goto_0
    return v0

    .line 1455
    :cond_0
    iput-boolean v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mLastActive:Z

    .line 1456
    if-eqz v2, :cond_2

    .line 1457
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadIndicator:Lcom/miui/player/ui/controller/DownloadIndicator;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/DownloadIndicator;->register()V

    .line 1460
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mPreparedHandler:Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;->removeMessages(I)V

    .line 1461
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mPreparedHandler:Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1462
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mPreparedHandler:Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v0, v3, v4}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1464
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const-string v2, "screen_bright_wake"

    invoke-static {v0, v2}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1465
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    :goto_1
    move v0, v1

    .line 1477
    goto :goto_0

    .line 1468
    :cond_2
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadIndicator:Lcom/miui/player/ui/controller/DownloadIndicator;

    invoke-virtual {v2}, Lcom/miui/player/ui/controller/DownloadIndicator;->unregister()V

    .line 1469
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mToolBarController:Lcom/miui/player/ui/controller/ToolBarController;

    invoke-virtual {v2}, Lcom/miui/player/ui/controller/ToolBarController;->hideDetailInfo()Z

    .line 1471
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v2, v0}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 1472
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1473
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1132
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1138
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1140
    :pswitch_1
    const-string v0, "artist"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1141
    const-string v0, "album"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1142
    const-string v0, "raw_artist"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1143
    const-string v0, "raw_album"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1144
    new-instance v0, Lcom/miui/player/meta/AlbumInfo;

    const-wide/16 v1, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/meta/AlbumInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/player/model/AlbumListAdapter;->removeCacheAlbum(Lcom/miui/player/meta/AlbumInfo;)Z

    .line 1145
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 1147
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 1148
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 1150
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    :cond_3
    const-string v0, "album"

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->requestUpdate(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1156
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1163
    :pswitch_2
    if-eqz p3, :cond_0

    .line 1164
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1165
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1167
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    .line 1168
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    .line 1169
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1172
    :cond_4
    const-string v0, "album"

    invoke-static {v4, v5, v0}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1173
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    new-instance v0, Lcom/miui/player/meta/AlbumInfo;

    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/meta/AlbumInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/player/model/AlbumListAdapter;->removeCacheAlbum(Lcom/miui/player/meta/AlbumInfo;)Z

    .line 1175
    const-string v0, "album"

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->requestUpdate(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 1177
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 1178
    :catch_2
    move-exception v0

    .line 1179
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_0

    .line 1185
    :pswitch_3
    if-eqz p3, :cond_0

    .line 1186
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1187
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 1189
    :try_start_2
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 1190
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    .line 1191
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1192
    :cond_5
    const-string v3, "lyric"

    invoke-static {v2, v1, v3}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1193
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1194
    invoke-static {v0, v1}, Lcom/xiaomi/common/file/FileOperations;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1195
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1196
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mLyricDir:Ljava/io/File;

    .line 1197
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mLyricDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mLyricDir:Ljava/io/File;

    .line 1200
    :cond_6
    const-string v0, "lyric"

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->requestUpdate(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 1204
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 1138
    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/base/TemplateListActivity;

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    .line 205
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "icicle"

    .prologue
    .line 151
    const v0, 0x7f03000a

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 152
    .local v1, fragment:Landroid/view/View;
    iget-object v7, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    .line 154
    .local v7, a:Lcom/miui/player/ui/base/TemplateListActivity;
    const-string v0, "power"

    invoke-virtual {v7, v0}, Lcom/miui/player/ui/base/TemplateListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 155
    .local v9, pm:Landroid/os/PowerManager;
    const/16 v0, 0xa

    sget-object v2, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 157
    const v0, 0x7f0c001f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mAnimationView:Landroid/view/View;

    .line 158
    const v0, 0x7f0c001c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mFrameHeader:Landroid/view/View;

    .line 159
    const v0, 0x7f0c0027

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mFrameFooter:Landroid/view/View;

    .line 161
    const v0, 0x7f0c001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mFolderView:Landroid/view/View;

    .line 163
    const v0, 0x7f0c001d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SpectrumVisualizer;

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    .line 164
    new-instance v0, Lcom/miui/player/ui/controller/PlayerCommonController;

    new-instance v2, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnRepeatClickListener;

    invoke-direct {v2, p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnRepeatClickListener;-><init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;)V

    const v3, 0x7f020070

    const v4, 0x7f02006d

    const v5, 0x7f020073

    const v6, 0x7f02006a

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/ui/controller/PlayerCommonController;-><init>(Landroid/view/View;Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;IIII)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

    .line 171
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/PlayerCommonController;->refresh()V

    .line 172
    new-instance v0, Lcom/miui/player/ui/controller/TimeIndicatorController;

    new-instance v2, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnPlayerSeekListener;

    invoke-direct {v2, p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnPlayerSeekListener;-><init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/player/ui/controller/TimeIndicatorController;-><init>(Landroid/view/View;Lcom/miui/player/ui/controller/TimeIndicatorController$OnProgressSeekListener;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mTimeIndicatorController:Lcom/miui/player/ui/controller/TimeIndicatorController;

    .line 173
    new-instance v0, Lcom/miui/player/ui/controller/DownloadIndicator;

    invoke-direct {v0, v1}, Lcom/miui/player/ui/controller/DownloadIndicator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadIndicator:Lcom/miui/player/ui/controller/DownloadIndicator;

    .line 174
    new-instance v0, Lcom/miui/player/ui/controller/ToolBarController;

    invoke-direct {v0, v1}, Lcom/miui/player/ui/controller/ToolBarController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mToolBarController:Lcom/miui/player/ui/controller/ToolBarController;

    .line 176
    new-instance v0, Lcom/miui/player/ui/controller/NowplayingController;

    invoke-direct {v0, v1}, Lcom/miui/player/ui/controller/NowplayingController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mNowplayingController:Lcom/miui/player/ui/controller/NowplayingController;

    .line 178
    new-instance v5, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnInternalIndexerClick;

    invoke-direct {v5, p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnInternalIndexerClick;-><init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;)V

    .line 179
    .local v5, l:Landroid/view/View$OnClickListener;
    new-instance v0, Lcom/miui/player/ui/controller/AlbumViewController;

    invoke-direct {v0, v1, p0, v5}, Lcom/miui/player/ui/controller/AlbumViewController;-><init>(Landroid/view/View;Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    .line 180
    new-instance v0, Lcom/miui/player/ui/controller/LyricViewController;

    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mTimeIndicatorController:Lcom/miui/player/ui/controller/TimeIndicatorController;

    iget-object v4, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/controller/LyricViewController;-><init>(Landroid/view/View;Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;Lcom/miui/player/ui/controller/TimeIndicatorController;Lcom/miui/player/ui/controller/AlbumViewController;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    .line 182
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/player/ui/controller/MediaPlaybackController;

    iput-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    .line 183
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    aput-object v3, v0, v2

    .line 184
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    aput-object v3, v0, v2

    .line 185
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->getPreferenceSelection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->setActiveIndexer(I)V

    .line 187
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    .local v8, f:Landroid/content/IntentFilter;
    const-string v0, "com.miui.player.playstatechanged"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v0, "com.miui.player.metachanged"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v0, "com.miui.player.playbackcomplete"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v0, "com.miui.player.refreshprogress"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v0, "com.miui.player.queuechanged"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v8}, Lcom/miui/player/ui/base/TemplateListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    return-object v1
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/miui/player/ui/UIHelper;->unregistBroadcastReceiverSafe(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 210
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    iget v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActiveIndexer:I

    invoke-static {v0, v1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->savePreferenceSelection(Landroid/content/Context;I)V

    .line 214
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 216
    iput-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/AlbumViewController;->recycle()V

    .line 224
    iput-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 225
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 226
    return-void
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, -0x1

    const/4 v5, 0x0

    const v8, 0x7f080005

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 1010
    sparse-switch p1, :sswitch_data_0

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1012
    :sswitch_0
    if-eqz p2, :cond_0

    .line 1013
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1014
    if-eqz v0, :cond_0

    .line 1015
    new-array v1, v6, [J

    .line 1016
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAudioId()J

    move-result-wide v2

    aput-wide v2, v1, v9

    .line 1017
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1018
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    int-to-long v3, v0

    invoke-static {v2, v1, v3, v4, v6}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylist(Landroid/content/Context;[JJZ)I

    goto :goto_0

    .line 1023
    :sswitch_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1027
    invoke-direct {p0, p3}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->editId3(Landroid/content/Intent;)Z

    goto :goto_0

    .line 1030
    :sswitch_2
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1033
    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->showDownloadDialog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    const-string v0, "new_track_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1038
    const-string v0, "new_artist_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1039
    const-string v0, "new_album_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1040
    const-string v0, "raw_track_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1041
    const-string v0, "raw_artist_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1042
    const-string v4, "raw_path"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1046
    const-string v7, "modify_id3"

    invoke-virtual {p3, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 1047
    if-eqz v7, :cond_1

    invoke-direct {p0, p3}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->editId3(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v0, v1

    move-object v2, v3

    .line 1053
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1054
    iget-object v7, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/miui/player/util/SqlUtils;->translateToFileUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 1055
    if-eqz v4, :cond_6

    .line 1056
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1060
    :goto_1
    new-instance v7, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;

    invoke-direct {v7, v3, v1, v6, v4}, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/base/TemplateListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v3, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricAsyncChooseRunnable;

    invoke-direct {v3, p0, v2, v0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$LyricAsyncChooseRunnable;-><init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v7, v3}, Lcom/miui/player/service/LyricManager;->download(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)I

    move-result v0

    .line 1064
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1065
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1066
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1067
    iput-object v5, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    .line 1069
    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 1070
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v1, v8}, Lcom/miui/player/ui/base/TemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1072
    :cond_3
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const v2, 0x7f080073

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/base/TemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1079
    :sswitch_3
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-static {v0}, Lcom/xiaomi/common/util/Network;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1083
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v1, v8}, Lcom/miui/player/ui/base/TemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1088
    :cond_4
    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->showDownloadDialog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    const-string v0, "new_track_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1093
    const-string v1, "new_artist_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1094
    const-string v2, "new_album_name"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1096
    const-string v3, "raw_track_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1097
    const-string v3, "raw_artist_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1098
    const-string v3, "raw_album_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1100
    new-instance v3, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;

    invoke-direct {v3, v0, v2, v1}, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    new-instance v2, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;

    invoke-direct {v2, v4, v6, v5}, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const-string v0, "modify_id3"

    invoke-virtual {p3, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1105
    const-string v1, "trace"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1106
    const-string v4, "track_id"

    invoke-virtual {v1, v4, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 1107
    const-string v4, "album_id"

    invoke-virtual {v1, v4, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 1109
    if-eqz v0, :cond_5

    .line 1110
    invoke-direct {p0, p3}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->editId3(Landroid/content/Intent;)Z

    move-result v4

    .line 1112
    :goto_2
    new-instance v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;-><init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;ZJJ)V

    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$AlbumDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1116
    :sswitch_4
    if-eqz p2, :cond_0

    .line 1117
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1118
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 1119
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1121
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getQueue()[J

    move-result-object v1

    int-to-long v2, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylist(Landroid/content/Context;[JJZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1122
    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_5
    move v4, v9

    goto :goto_2

    :cond_6
    move-object v4, v5

    goto/16 :goto_1

    .line 1010
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x1a -> :sswitch_4
        0x1c -> :sswitch_2
        0x1d -> :sswitch_3
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .parameter "hidden"

    .prologue
    .line 1422
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 1424
    if-eqz p1, :cond_0

    .line 1425
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1427
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->onActiveChanged()Z

    .line 1428
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 744
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    move v0, v7

    .line 880
    :goto_1
    return v0

    .line 746
    :sswitch_0
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/base/TemplateListActivity;->finish()V

    move v0, v6

    .line 747
    goto :goto_1

    .line 750
    :sswitch_1
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-wide v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mCurrentLocalId:J

    invoke-static {v0, v1, v2}, Lcom/miui/player/ui/UIHelper;->setRingtone(Landroid/content/Context;J)V

    move v0, v6

    .line 751
    goto :goto_1

    .line 755
    :sswitch_2
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/miui/player/ui/OperationDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;ILandroid/content/Intent;)Lcom/miui/player/ui/OperationDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/ui/OperationDialog;->show()V

    move v0, v6

    .line 756
    goto :goto_1

    .line 760
    :sswitch_3
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 761
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->getAudioId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 762
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "dst_playlist"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 763
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const/4 v4, 0x1

    invoke-static {v3, v0, v1, v2, v4}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylist(Landroid/content/Context;[JJZ)I

    move v0, v6

    .line 764
    goto :goto_1

    .line 768
    :sswitch_4
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 769
    const/4 v0, 0x1

    new-array v1, v0, [J

    .line 770
    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mCurrentLocalId:J

    aput-wide v2, v1, v0

    .line 771
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 772
    const-string v2, "description"

    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const v4, 0x7f080037

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/miui/player/ui/base/TemplateListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v2, "items"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 775
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v5, 0xa

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/ui/DeleteItems;->show(Landroid/app/Activity;[JLjava/util/ArrayList;ILcom/miui/player/ui/DialogCallback;I)V

    :cond_1
    move v0, v6

    .line 777
    goto :goto_1

    .line 780
    :sswitch_5
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-static {v0}, Lcom/miui/player/service/SleepModeManager;->toggleSleepMode(Landroid/app/Activity;)V

    move v0, v6

    .line 781
    goto :goto_1

    .line 784
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const-class v2, Lcom/miui/player/ui/MusicSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 785
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->startActivity(Landroid/content/Intent;)V

    move v0, v6

    .line 786
    goto/16 :goto_1

    .line 789
    :sswitch_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 791
    const-string v1, "dialog_title"

    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const v3, 0x7f08007c

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/base/TemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 794
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 795
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 796
    iget-object v4, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/miui/player/service/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 797
    const-string v5, "raw_album_name"

    invoke-static {v1}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v1, "raw_artist_name"

    invoke-static {v2}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string v1, "raw_track_name"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v1, "raw_path"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v1, "modify_id3_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 803
    new-instance v1, Lcom/miui/player/ui/MediaEditDialog;

    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const/16 v3, 0x1f

    invoke-direct {v1, v2, v0, p0, v3}, Lcom/miui/player/ui/MediaEditDialog;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/ui/DialogCallback;I)V

    .line 804
    invoke-virtual {v1}, Lcom/miui/player/ui/MediaEditDialog;->show()V

    move v0, v6

    .line 805
    goto/16 :goto_1

    .line 808
    :sswitch_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 810
    const-string v1, "dialog_title"

    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const v3, 0x7f08007d

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/base/TemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 814
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 815
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 816
    const-string v4, "raw_album_name"

    invoke-static {v1}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v1, "raw_artist_name"

    invoke-static {v2}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v1, "raw_track_name"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-boolean v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mIsOnline:Z

    if-nez v1, :cond_2

    .line 820
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 821
    const-string v2, "raw_path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v1, "modify_id3_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 825
    :cond_2
    new-instance v1, Lcom/miui/player/ui/MediaEditDialog;

    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const/16 v3, 0x1c

    invoke-direct {v1, v2, v0, p0, v3}, Lcom/miui/player/ui/MediaEditDialog;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/ui/DialogCallback;I)V

    .line 826
    invoke-virtual {v1}, Lcom/miui/player/ui/MediaEditDialog;->show()V

    move v0, v6

    .line 827
    goto/16 :goto_1

    .line 831
    :sswitch_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 833
    const-string v1, "dialog_title"

    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const v3, 0x7f08007f

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/base/TemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 837
    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 838
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 839
    iget-object v4, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/miui/player/service/IMediaPlaybackService;->getAudioId()J

    move-result-wide v4

    .line 840
    iget-object v8, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v8

    .line 842
    const-string v10, "raw_album_name"

    invoke-static {v1}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const-string v1, "raw_artist_name"

    invoke-static {v2}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string v1, "raw_track_name"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-boolean v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mIsOnline:Z

    if-nez v1, :cond_3

    .line 846
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 847
    const-string v2, "raw_path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v1, "modify_id3_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 851
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 852
    const-string v2, "track_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 853
    const-string v2, "album_id"

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 854
    const-string v2, "trace"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 856
    new-instance v1, Lcom/miui/player/ui/MediaEditDialog;

    iget-object v2, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const/16 v3, 0x1d

    invoke-direct {v1, v2, v0, p0, v3}, Lcom/miui/player/ui/MediaEditDialog;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/ui/DialogCallback;I)V

    .line 857
    invoke-virtual {v1}, Lcom/miui/player/ui/MediaEditDialog;->show()V

    move v0, v6

    .line 858
    goto/16 :goto_1

    .line 861
    :sswitch_a
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->doPickAlbumFromGallery()V

    move v0, v6

    .line 862
    goto/16 :goto_1

    .line 864
    :sswitch_b
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->doPickLyricFromFileExplorer()V

    goto/16 :goto_0

    .line 878
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 867
    :sswitch_c
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->adjustEqualizer()V

    goto/16 :goto_0

    .line 870
    :sswitch_d
    iget-wide v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mCurrentLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-wide v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mCurrentLocalId:J

    invoke-static {v0, v1, v2}, Lcom/miui/player/ui/UIHelper;->sendByChooser(Landroid/content/Context;J)Z

    goto/16 :goto_0

    .line 875
    :sswitch_e
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/miui/player/ui/OperationDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;ILandroid/content/Intent;)Lcom/miui/player/ui/OperationDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/ui/OperationDialog;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    .line 876
    goto/16 :goto_1

    .line 744
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0xa -> :sswitch_4
        0xe -> :sswitch_6
        0xf -> :sswitch_5
        0x12 -> :sswitch_1
        0x13 -> :sswitch_7
        0x14 -> :sswitch_8
        0x15 -> :sswitch_9
        0x16 -> :sswitch_b
        0x17 -> :sswitch_a
        0x19 -> :sswitch_c
        0x1a -> :sswitch_e
        0x22 -> :sswitch_d
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->onActiveChanged()Z

    .line 237
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 238
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 13
    .parameter "menu"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 678
    iget-object v7, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-nez v7, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    invoke-static {}, Lcom/miui/player/util/Utils;->isExternalStorageMounted()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 685
    iput-wide v11, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mCurrentLocalId:J

    .line 686
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAudioId()J

    move-result-wide v2

    .line 688
    .local v2, audioId:J
    cmp-long v7, v2, v11

    if-ltz v7, :cond_0

    .line 689
    const/4 v6, 0x0

    .line 690
    .local v6, tr:Ljava/lang/String;
    const/4 v1, 0x0

    .line 691
    .local v1, ar:Ljava/lang/String;
    const/4 v0, 0x0

    .line 693
    .local v0, al:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v6

    .line 694
    iget-object v7, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 695
    iget-object v7, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 696
    iget-object v7, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-static {v7, v6, v1, v2, v3}, Lcom/miui/player/provider/PlayerProviderUtils;->getDownloadedAudioId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mCurrentLocalId:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_1
    iget-wide v7, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mCurrentLocalId:J

    cmp-long v7, v7, v11

    if-lez v7, :cond_2

    .line 701
    const/16 v7, 0xa

    const v8, 0x7f080035

    invoke-interface {p1, v9, v7, v9, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    const v8, 0x7f02003d

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 704
    :cond_2
    iget-object v7, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mToolBarController:Lcom/miui/player/ui/controller/ToolBarController;

    invoke-virtual {v7}, Lcom/miui/player/ui/controller/ToolBarController;->isEqualizerEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 705
    const/16 v7, 0x19

    const v8, 0x7f08008c

    invoke-interface {p1, v9, v7, v9, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    const v8, 0x7f02003f

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 708
    :cond_3
    const/16 v7, 0x1b

    const v8, 0x7f08007b

    invoke-interface {p1, v9, v7, v9, v8}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v7

    const v8, 0x7f020040

    invoke-interface {v7, v8}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v4

    .line 711
    .local v4, subMeta:Landroid/view/SubMenu;
    invoke-interface {v4}, Landroid/view/SubMenu;->clear()V

    .line 712
    invoke-static {v2, v3}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v7

    iput-boolean v7, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mIsOnline:Z

    .line 713
    iget-boolean v7, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mIsOnline:Z

    if-nez v7, :cond_4

    .line 714
    const/16 v7, 0x13

    const v8, 0x7f08007c

    invoke-interface {v4, v10, v7, v9, v8}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 717
    :cond_4
    const/16 v7, 0x14

    const v8, 0x7f08007d

    invoke-interface {v4, v10, v7, v9, v8}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 718
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 719
    :cond_5
    const/16 v7, 0x16

    const v8, 0x7f08007e

    invoke-interface {v4, v10, v7, v9, v8}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 722
    :cond_6
    const/16 v7, 0x15

    const v8, 0x7f08007f

    invoke-interface {v4, v10, v7, v9, v8}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 723
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 724
    :cond_7
    const/16 v7, 0x17

    const v8, 0x7f080080

    invoke-interface {v4, v10, v7, v9, v8}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 726
    :cond_8
    iget-wide v7, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mCurrentLocalId:J

    cmp-long v7, v7, v11

    if-lez v7, :cond_9

    .line 727
    const/16 v7, 0x12

    const v8, 0x7f080050

    invoke-interface {p1, v9, v7, v9, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    const v8, 0x7f020046

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 731
    :cond_9
    const v7, 0x7f080053

    invoke-interface {p1, v9, v10, v9, v7}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v7

    const v8, 0x7f02003b

    invoke-interface {v7, v8}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v5

    .line 733
    .local v5, subPlaylist:Landroid/view/SubMenu;
    iget-object v7, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-static {v7, v5, v8}, Lcom/miui/player/ui/UIHelper;->makePlaylistMenu(Landroid/content/Context;Landroid/view/Menu;Landroid/content/Intent;)V

    .line 735
    iget-wide v7, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mCurrentLocalId:J

    cmp-long v7, v7, v11

    if-lez v7, :cond_0

    .line 736
    const/16 v7, 0x22

    const v8, 0x7f080063

    invoke-interface {p1, v9, v7, v9, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 697
    .end local v4           #subMeta:Landroid/view/SubMenu;
    .end local v5           #subPlaylist:Landroid/view/SubMenu;
    :catch_0
    move-exception v7

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 231
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->onActiveChanged()Z

    .line 232
    return-void
.end method

.method public playAnimation(ZI)V
    .locals 8
    .parameter "show"
    .parameter "anchor"

    .prologue
    const/4 v7, 0x4

    .line 1486
    iget-object v6, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mFrameHeader:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1487
    iget-object v6, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mFrameFooter:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1488
    iget-object v6, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mFolderView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1490
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mAnimationView:Landroid/view/View;

    .line 1491
    .local v3, v:Landroid/view/View;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1493
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1494
    .local v5, viewTop:I
    move v1, p2

    .line 1495
    .local v1, animTop:I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1496
    .local v4, viewHeight:I
    iget-object v6, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mNowplayingController:Lcom/miui/player/ui/controller/NowplayingController;

    invoke-virtual {v6}, Lcom/miui/player/ui/controller/NowplayingController;->getContainer()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1497
    .local v0, animHeight:I
    new-instance v2, Lcom/miui/player/ui/view/ClipAnimationBuilder;

    iget-object v6, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mAnimationView:Landroid/view/View;

    invoke-direct {v2, v6}, Lcom/miui/player/ui/view/ClipAnimationBuilder;-><init>(Landroid/view/View;)V

    .line 1498
    .local v2, builder:Lcom/miui/player/ui/view/ClipAnimationBuilder;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/miui/player/ui/view/ClipAnimationBuilder;->setVerticalFrame(II)V

    .line 1499
    iget-object v6, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mSwitchAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v6}, Lcom/miui/player/ui/view/ClipAnimationBuilder;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1501
    if-eqz p1, :cond_0

    .line 1502
    invoke-virtual {v2, v0, v4}, Lcom/miui/player/ui/view/ClipAnimationBuilder;->setHeight(II)V

    .line 1503
    invoke-virtual {v2, v1, v5}, Lcom/miui/player/ui/view/ClipAnimationBuilder;->setTop(II)V

    .line 1509
    :goto_0
    invoke-direct {p0, v2}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->startSwitchAnimation(Lcom/miui/player/ui/view/ClipAnimationBuilder;)V

    .line 1510
    return-void

    .line 1505
    :cond_0
    invoke-virtual {v2, v4, v0}, Lcom/miui/player/ui/view/ClipAnimationBuilder;->setHeight(II)V

    .line 1506
    invoke-virtual {v2, v5, v1}, Lcom/miui/player/ui/view/ClipAnimationBuilder;->setTop(II)V

    goto :goto_0
.end method

.method queueNextRefresh(J)V
    .locals 4
    .parameter "delay"

    .prologue
    const/4 v3, 0x1

    .line 260
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 262
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 265
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method refreshNow()J
    .locals 14

    .prologue
    .line 272
    const-wide/16 v10, -0x1

    .line 273
    .local v10, ret:J
    const/4 v6, 0x0

    .line 275
    .local v6, isPlaying:Z
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_3

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->isPlaying()Z

    move-result v6

    .line 278
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->position()J

    move-result-wide v1

    .line 279
    .local v1, pos:J
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->duration()J

    move-result-wide v3

    .line 280
    .local v3, duration:J
    sget-object v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->ACTIVE_INTERVAL:[I

    iget v12, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActiveIndexer:I

    aget v0, v0, v12

    int-to-long v8, v0

    .line 281
    .local v8, interval:J
    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-lez v0, :cond_0

    .line 282
    rem-long v12, v1, v8

    sub-long v10, v8, v12

    .line 285
    :cond_0
    iget v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActiveIndexer:I

    const/4 v12, 0x1

    if-ne v0, v12, :cond_2

    .line 287
    const-wide/16 v12, 0x0

    cmp-long v0, v1, v12

    if-ltz v0, :cond_2

    const-wide/16 v12, 0x0

    cmp-long v0, v3, v12

    if-lez v0, :cond_2

    .line 288
    if-nez v6, :cond_1

    .line 289
    const-wide/16 v10, -0x1

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/ui/controller/LyricViewController;->refreshLyric(J)V

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getBufferedPercent()F

    move-result v5

    .line 295
    .local v5, bufferedPer:F
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->isBuffering()Z

    move-result v7

    .line 296
    .local v7, isBuffering:Z
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mTimeIndicatorController:Lcom/miui/player/ui/controller/TimeIndicatorController;

    invoke-virtual/range {v0 .. v7}, Lcom/miui/player/ui/controller/TimeIndicatorController;->refresh(JJFZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v1           #pos:J
    .end local v3           #duration:J
    .end local v5           #bufferedPer:F
    .end local v7           #isBuffering:Z
    .end local v8           #interval:J
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/miui/player/util/PreferenceCache;->IS_LPA_DECODE:Z

    if-nez v0, :cond_4

    .line 302
    invoke-direct {p0, v6}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->enableSpectrumVisualizer(Z)V

    .line 305
    :cond_4
    iget-boolean v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mIsAnimationPlaying:Z

    if-eqz v0, :cond_5

    const-wide/16 v10, -0x1

    .end local v10           #ret:J
    :cond_5
    return-wide v10

    .line 297
    .restart local v10       #ret:J
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method refreshTimeIndicator()V
    .locals 8

    .prologue
    .line 642
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->position()J

    move-result-wide v1

    .line 645
    .local v1, pos:J
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->duration()J

    move-result-wide v3

    .line 646
    .local v3, dur:J
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getBufferedPercent()F

    move-result v5

    .line 647
    .local v5, bufferedPer:F
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->isPlaying()Z

    move-result v6

    .line 648
    .local v6, isPlaying:Z
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->isBuffering()Z

    move-result v7

    .line 649
    .local v7, isBuffering:Z
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mTimeIndicatorController:Lcom/miui/player/ui/controller/TimeIndicatorController;

    invoke-virtual/range {v0 .. v7}, Lcom/miui/player/ui/controller/TimeIndicatorController;->refresh(JJFZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    .end local v1           #pos:J
    .end local v3           #dur:J
    .end local v5           #bufferedPer:F
    .end local v6           #isPlaying:Z
    .end local v7           #isBuffering:Z
    :cond_0
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public refreshToolBar()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mToolBarController:Lcom/miui/player/ui/controller/ToolBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/ToolBarController;->refresh()V

    .line 269
    return-void
.end method

.method requestUpdate(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1001
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.musicservicecommand.update_meta"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1002
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v1, v0}, Lcom/miui/player/ui/base/TemplateListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1004
    return-void
.end method

.method public setActiveIndexer(I)V
    .locals 8
    .parameter "indexer"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    .local v0, arr$:[Lcom/miui/player/ui/controller/MediaPlaybackController;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 492
    .local v1, c:Lcom/miui/player/ui/controller/MediaPlaybackController;
    invoke-virtual {v1}, Lcom/miui/player/ui/controller/MediaPlaybackController;->deactive()V

    .line 491
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    .end local v1           #c:Lcom/miui/player/ui/controller/MediaPlaybackController;
    :cond_0
    iget-object v4, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/miui/player/ui/controller/MediaPlaybackController;->active()V

    .line 495
    iput p1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActiveIndexer:I

    .line 496
    iget-object v4, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/miui/player/ui/fragment/AudioPlayerFragment$3;

    invoke-direct {v5, p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$3;-><init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 505
    return-void
.end method

.method public setAnimationPlaying(Z)V
    .locals 2
    .parameter "isAnimationPlaying"

    .prologue
    .line 540
    iput-boolean p1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mIsAnimationPlaying:Z

    .line 541
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->refreshNow()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->queueNextRefresh(J)V

    .line 544
    :cond_0
    return-void
.end method

.method public setService(Lcom/miui/player/service/IMediaPlaybackService;)V
    .locals 8
    .parameter "service"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 243
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mToolBarController:Lcom/miui/player/ui/controller/ToolBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/ToolBarController;->refresh()V

    .line 244
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadIndicator:Lcom/miui/player/ui/controller/DownloadIndicator;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/DownloadIndicator;->downloadRefresh()V

    .line 245
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->updateTrackInfo(I)V

    .line 250
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mTimeIndicatorController:Lcom/miui/player/ui/controller/TimeIndicatorController;

    invoke-interface {p1}, Lcom/miui/player/service/IMediaPlaybackService;->position()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/miui/player/service/IMediaPlaybackService;->duration()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/miui/player/service/IMediaPlaybackService;->getBufferedPercent()F

    move-result v5

    invoke-interface {p1}, Lcom/miui/player/service/IMediaPlaybackService;->isPlaying()Z

    move-result v6

    invoke-interface {p1}, Lcom/miui/player/service/IMediaPlaybackService;->isPlaying()Z

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/miui/player/ui/controller/TimeIndicatorController;->refresh(JJFZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSwitchListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mFolderView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1432
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mNowplayingController:Lcom/miui/player/ui/controller/NowplayingController;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/controller/NowplayingController;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1433
    return-void
.end method

.method showDownloadDialog(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 953
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 954
    const/4 v0, 0x0

    .line 968
    :goto_0
    return v0

    .line 957
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const-string v2, ""

    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v3, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    .line 958
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 959
    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/miui/player/ui/fragment/AudioPlayerFragment$4;

    invoke-direct {v2, p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$4;-><init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method public updateTrackInfo(I)V
    .locals 19
    .parameter "metaChanged"

    .prologue
    .line 387
    sget-object v12, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "** updateTrackInfo with metaChanged = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-nez v12, :cond_0

    .line 433
    :goto_0
    return-void

    .line 392
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/miui/player/service/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 393
    .local v14, path:Ljava/lang/String;
    if-nez v14, :cond_1

    .line 394
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v12}, Lcom/miui/player/ui/base/TemplateListActivity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    .end local v14           #path:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 431
    .local v13, ex:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v12}, Lcom/miui/player/ui/base/TemplateListActivity;->finish()V

    goto :goto_0

    .line 398
    .end local v13           #ex:Landroid/os/RemoteException;
    .restart local v14       #path:Ljava/lang/String;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/miui/player/service/IMediaPlaybackService;->getAudioId()J

    move-result-wide v3

    .line 399
    .local v3, trId:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v5

    .line 400
    .local v5, alId:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v7

    .line 401
    .local v7, tr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v9

    .line 402
    .local v9, ar:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v8

    .line 403
    .local v8, al:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/miui/player/service/IMediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 404
    .local v10, trPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v12}, Lcom/miui/player/service/IMediaPlaybackService;->getLyricStatus()I

    move-result v11

    .line 406
    .local v11, lrcStatus:I
    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_7

    const/4 v15, 0x1

    .line 407
    .local v15, trackChanged:Z
    :goto_1
    const/4 v12, 0x4

    move/from16 v0, p1

    if-ne v0, v12, :cond_8

    const/16 v16, 0x1

    .line 408
    .local v16, userForced:Z
    :goto_2
    if-nez v15, :cond_2

    if-eqz v16, :cond_3

    .line 409
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mNowplayingController:Lcom/miui/player/ui/controller/NowplayingController;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->isActive()Z

    move-result v12

    if-eqz v12, :cond_9

    if-eqz v15, :cond_9

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/miui/player/ui/controller/NowplayingController;->update(Z)V

    .line 412
    :cond_3
    invoke-static {v8}, Lcom/miui/player/meta/MetaManager;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 413
    const-wide/16 v5, -0x1

    .line 416
    :cond_4
    const-wide/16 v17, 0x0

    cmp-long v12, v3, v17

    if-gez v12, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v17, "http://"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 417
    const-wide/16 v3, -0x1

    .line 418
    const-wide/16 v5, -0x1

    .line 420
    :cond_5
    new-instance v2, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    move/from16 v12, p1

    invoke-direct/range {v2 .. v12}, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 421
    .local v2, info:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;
    if-eqz p1, :cond_6

    .line 422
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    move/from16 v0, p1

    invoke-virtual {v12, v0, v2}, Lcom/miui/player/ui/controller/AlbumViewController;->touch(ILcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;)V

    .line 426
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    move/from16 v0, p1

    invoke-virtual {v12, v0, v2}, Lcom/miui/player/ui/controller/LyricViewController;->touch(ILcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActiveIndexer:I

    move/from16 v17, v0

    aget-object v12, v12, v17

    invoke-virtual {v12}, Lcom/miui/player/ui/controller/MediaPlaybackController;->update()V

    .line 428
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-virtual {v12}, Lcom/miui/player/ui/controller/PlayerCommonController;->refresh()V

    .line 429
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mToolBarController:Lcom/miui/player/ui/controller/ToolBarController;

    invoke-virtual {v12}, Lcom/miui/player/ui/controller/ToolBarController;->refresh()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 406
    .end local v2           #info:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;
    .end local v15           #trackChanged:Z
    .end local v16           #userForced:Z
    :cond_7
    const/4 v15, 0x0

    goto :goto_1

    .line 407
    .restart local v15       #trackChanged:Z
    :cond_8
    const/16 v16, 0x0

    goto :goto_2

    .line 409
    .restart local v16       #userForced:Z
    :cond_9
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public updateVisible(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1540
    if-eqz p1, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mAnimationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1542
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mFrameHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1543
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mFrameFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1544
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mFolderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1550
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mAnimationView:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1551
    return-void

    .line 1546
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mAnimationView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1547
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mFrameHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1548
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mFrameFooter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
