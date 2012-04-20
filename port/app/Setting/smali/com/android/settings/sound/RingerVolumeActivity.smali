.class public Lcom/android/settings/sound/RingerVolumeActivity;
.super Lcom/android/settings/BaseActivity;
.source "RingerVolumeActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;,
        Lcom/android/settings/sound/RingerVolumeActivity$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I

.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_MUTED_RES_ID:[I

.field private static final SEEKBAR_TYPE:[I

.field private static final SEEKBAR_UNMUTED_RES_ID:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_ID:[I

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->CHECKBOX_VIEW_ID:[I

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_MUTED_RES_ID:[I

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    .line 39
    nop

    :array_0
    .array-data 0x4
        0xcat 0x0t 0x8t 0x7ft
        0xcet 0x0t 0x8t 0x7ft
        0xd2t 0x0t 0x8t 0x7ft
        0xd4t 0x0t 0x8t 0x7ft
    .end array-data

    .line 46
    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 53
    :array_2
    .array-data 0x4
        0xc9t 0x0t 0x8t 0x7ft
        0xcct 0x0t 0x8t 0x7ft
        0xd0t 0x0t 0x8t 0x7ft
        0xd3t 0x0t 0x8t 0x7ft
    .end array-data

    .line 60
    :array_3
    .array-data 0x4
        0x4et 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
        0x48t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
    .end array-data

    .line 67
    :array_4
    .array-data 0x4
        0x4dt 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/BaseActivity;-><init>()V

    .line 74
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    .line 75
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBars:[Landroid/widget/SeekBar;

    .line 77
    new-instance v0, Lcom/android/settings/sound/RingerVolumeActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/RingerVolumeActivity$1;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;)V

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mHandler:Landroid/os/Handler;

    .line 302
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sound/RingerVolumeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sound/RingerVolumeActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_ID:[I

    return-object v0
.end method

.method private cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_ID:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->stop()V

    .line 208
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    aput-object v2, v1, v0

    .line 205
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/sound/RingerVolumeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 213
    iput-object v2, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    :cond_2
    return-void
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private initUI()V
    .locals 13

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 93
    .local v11, view:Landroid/view/View;
    invoke-virtual {p0, v11}, Lcom/android/settings/sound/RingerVolumeActivity;->setContentView(Landroid/view/View;)V

    .line 94
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    .line 96
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/RingerVolumeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 97
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_ID:[I

    array-length v0, v0

    if-ge v9, v0, :cond_1

    .line 98
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_ID:[I

    aget v0, v0, v9

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 99
    .local v3, seekBar:Landroid/widget/SeekBar;
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v3, v0, v9

    .line 100
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    aget v0, v0, v9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v12, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    new-instance v0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    sget-object v1, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    aget v4, v1, v9

    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v0, v12, v9

    .line 97
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    new-instance v1, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    sget-object v2, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    aget v2, v2, v9

    invoke-direct {v1, p0, p0, v3, v2}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v1, v0, v9

    goto :goto_1

    .line 110
    .end local v3           #seekBar:Landroid/widget/SeekBar;
    :cond_1
    const/4 v9, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge v9, v0, :cond_2

    .line 111
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->CHECKBOX_VIEW_ID:[I

    aget v0, v0, v9

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 112
    .local v6, checkbox:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v6, v0, v9

    .line 110
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 116
    .end local v6           #checkbox:Landroid/widget/ImageView;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->updateSlidersAndMutedStates()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    .line 120
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/android/settings/sound/RingerVolumeActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/RingerVolumeActivity$2;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;)V

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/android/settings/sound/RingerVolumeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    .end local v7           #filter:Landroid/content/IntentFilter;
    :cond_3
    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 137
    const v10, 0x7f0800cb

    .line 141
    .local v10, id:I
    :goto_3
    invoke-virtual {v11, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 142
    .local v8, hideSection:Landroid/view/View;
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    invoke-virtual {v11, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 148
    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    .line 149
    return-void

    .line 139
    .end local v8           #hideSection:Landroid/view/View;
    .end local v10           #id:I
    :cond_4
    const v10, 0x7f0800cf

    .restart local v10       #id:I
    goto :goto_3
.end method

.method private updateSlidersAndMutedStates()V
    .locals 6

    .prologue
    .line 152
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 153
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    aget v2, v4, v0

    .line 154
    .local v2, streamType:I
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 156
    .local v1, muted:Z
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    .line 157
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const v5, 0x7f02004c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    .line 167
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    .line 169
    .local v3, volume:I
    :goto_2
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 152
    .end local v3           #volume:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_2
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v5, v4, v0

    if-eqz v1, :cond_3

    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_MUTED_RES_ID:[I

    aget v4, v4, v0

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v4, v4, v0

    goto :goto_3

    .line 167
    :cond_4
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    goto :goto_2

    .line 172
    .end local v1           #muted:Z
    .end local v2           #streamType:I
    :cond_5
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->initUI()V

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->cleanup()V

    .line 201
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->onDestroy()V

    .line 202
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 182
    sparse-switch p2, :sswitch_data_0

    .line 188
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 186
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 182
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 220
    const-string v4, "save_state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;

    .line 221
    .local v1, myState:Lcom/android/settings/sound/RingerVolumeActivity$SavedState;
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_ID:[I

    array-length v4, v4

    invoke-virtual {v1, v4}, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->getVolumeStore(I)[Landroid/preference/MiuiVolumePreference$VolumeStore;

    move-result-object v3

    .line 222
    .local v3, volumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_ID:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 223
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    aget-object v2, v4, v0

    .line 224
    .local v2, vol:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    if-eqz v2, :cond_0

    .line 225
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/MiuiVolumePreference$VolumeStore;)V

    .line 222
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v2           #vol:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 229
    return-void
.end method

.method protected onSampleStarting(Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    .local v0, arr$:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 194
    .local v3, vol:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->stopSample()V

    .line 193
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v3           #vol:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 233
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_ID:[I

    array-length v4, v4

    new-array v3, v4, [Landroid/preference/MiuiVolumePreference$VolumeStore;

    .line 234
    .local v3, volumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_ID:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 235
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    aget-object v2, v4, v0

    .line 236
    .local v2, vol:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    if-eqz v2, :cond_0

    .line 237
    new-instance v4, Landroid/preference/MiuiVolumePreference$VolumeStore;

    invoke-direct {v4}, Landroid/preference/MiuiVolumePreference$VolumeStore;-><init>()V

    aput-object v4, v3, v0

    .line 238
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/MiuiVolumePreference$VolumeStore;)V

    .line 234
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .end local v2           #vol:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    :cond_1
    new-instance v1, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;

    invoke-direct {v1, v3}, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;-><init>([Landroid/preference/MiuiVolumePreference$VolumeStore;)V

    .line 242
    .local v1, savedState:Lcom/android/settings/sound/RingerVolumeActivity$SavedState;
    const-string v4, "save_state"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 243
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 244
    return-void
.end method
