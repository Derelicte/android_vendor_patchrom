.class public Lcom/android/phone/MiuiCallNotifier;
.super Lcom/android/phone/CallNotifier;
.source "MiuiCallNotifier.java"


# instance fields
.field private mHandonRingerEnable:Z

.field private mHandonTriggered:Z

.field private mHandonTriggeringCount:I

.field private mIsRedialCall:Z

.field private mPreviousBackCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

.field private mRedialTimes:I

.field private mRingerSetFlags:I

.field private mRingerVolume:I

.field private mRingerVolumeControlling:Z

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorCount:I

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRunning:Z

.field private mStartZ:F

.field private mTurnoverMuteEnable:Z

.field private mTurnoverTiggeringCount:I

.field private mTurnoverTriggered:Z

.field private final mVibrator:Landroid/os/Vibrator;

.field private queryListenerForWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# direct methods
.method protected constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V
    .locals 2
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "btMgr"
    .parameter "callLog"

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    .line 47
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 48
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    .line 55
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    .line 56
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    .line 61
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerSetFlags:I

    .line 62
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    .line 64
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    .line 65
    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    .line 66
    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    .line 68
    new-instance v0, Lcom/android/phone/MiuiCallNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiCallNotifier$1;-><init>(Lcom/android/phone/MiuiCallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 656
    new-instance v0, Lcom/android/phone/MiuiCallNotifier$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiCallNotifier$2;-><init>(Lcom/android/phone/MiuiCallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->queryListenerForWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 154
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mVibrator:Landroid/os/Vibrator;

    .line 155
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorManager:Landroid/hardware/SensorManager;

    .line 156
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensor:Landroid/hardware/Sensor;

    .line 157
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    .line 158
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousBackCallState:Lcom/android/internal/telephony/Call$State;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiCallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    return v0
.end method

.method static synthetic access$004(Lcom/android/phone/MiuiCallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiCallNotifier;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mStartZ:F

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/MiuiCallNotifier;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/phone/MiuiCallNotifier;->mStartZ:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiCallNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverMuteEnable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiCallNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/MiuiCallNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/phone/MiuiCallNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    return p1
.end method

.method static synthetic access$404(Lcom/android/phone/MiuiCallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/MiuiCallNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonRingerEnable:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/MiuiCallNotifier;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/MiuiCallNotifier;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/phone/MiuiCallNotifier;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    return p1
.end method

.method static synthetic access$704(Lcom/android/phone/MiuiCallNotifier;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/MiuiCallNotifier;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->decrescendoRingerVolume()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/MiuiCallNotifier;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallNotifier;->processTelephonyFirewall(Lcom/android/internal/telephony/CallerInfo;)V

    return-void
.end method

.method private static addFirewallLog(Ljava/lang/String;IJIJ)V
    .locals 4
    .parameter "number"
    .parameter "presentation"
    .parameter "date"
    .parameter "reason"
    .parameter "duration"

    .prologue
    .line 719
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 720
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "number"

    invoke-static {p1, p0}, Lcom/android/phone/MiuiCallNotifier;->convertPresentationToFilterNumber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v2, "date"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 722
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 723
    const-string v2, "reason"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 724
    const-string v2, "data1"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 726
    :try_start_0
    sget-object v2, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    iget-object v2, v2, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :goto_0
    return-void

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "MiuiCallNotifier"

    const-string v3, "failed to add firewall log"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static convertPresentationToFilterNumber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "presentation"
    .parameter "logNumber"

    .prologue
    .line 735
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p0, v0, :cond_1

    .line 736
    const-string p1, "-2"

    .line 743
    :cond_0
    :goto_0
    return-object p1

    .line 737
    :cond_1
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p0, v0, :cond_2

    .line 738
    const-string p1, "-3"

    goto :goto_0

    .line 739
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne p0, v0, :cond_0

    .line 741
    :cond_3
    const-string p1, "-1"

    goto :goto_0
.end method

.method private crescendoRingerVolumeDelayed()V
    .locals 7

    .prologue
    const/16 v6, 0x191

    const/4 v5, 0x2

    .line 756
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-nez v4, :cond_1

    .line 777
    :cond_0
    return-void

    .line 761
    :cond_1
    iget-boolean v4, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    if-nez v4, :cond_2

    .line 762
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolume:I

    .line 763
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    .line 767
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 770
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 771
    .local v1, maxVolume:I
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .local v3, volume:I
    const/16 v0, 0x7530

    .line 772
    .local v0, delayTime:I
    :goto_0
    if-gt v3, v1, :cond_0

    .line 773
    invoke-static {p0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 774
    .local v2, message:Landroid/os/Message;
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 775
    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/phone/MiuiCallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 772
    add-int/lit8 v3, v3, 0x1

    add-int/lit16 v0, v0, 0x1388

    goto :goto_0
.end method

.method private decrescendoRingerVolume()V
    .locals 6

    .prologue
    const/16 v5, 0x191

    const/4 v4, 0x2

    .line 780
    iget-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    if-nez v3, :cond_0

    .line 781
    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolume:I

    .line 782
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    .line 786
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 788
    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, volume:I
    const/4 v0, 0x0

    .line 789
    .local v0, delayTime:I
    :goto_0
    if-ltz v2, :cond_1

    iget v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolume:I

    add-int/lit8 v3, v3, -0x3

    if-lt v2, v3, :cond_1

    .line 790
    invoke-static {p0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 791
    .local v1, message:Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 792
    int-to-long v3, v0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/phone/MiuiCallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 789
    add-int/lit8 v2, v2, -0x1

    add-int/lit16 v0, v0, 0x1f4

    goto :goto_0

    .line 794
    .end local v1           #message:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method static init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/CallNotifier;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    const-class v6, Lcom/android/phone/CallNotifier;

    monitor-enter v6

    .line 118
    :try_start_0
    sget-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/android/phone/MiuiCallNotifier;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/MiuiCallNotifier;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)V

    sput-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 123
    :goto_0
    sget-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    monitor-exit v6

    return-object v0

    .line 121
    :cond_0
    const-string v0, "MiuiCallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static isSkippingCallLog(I)Z
    .locals 2
    .parameter "firewallCode"

    .prologue
    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, skipping:Z
    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/16 v1, 0x101

    if-eq p0, v1, :cond_0

    const/16 v1, 0x102

    if-ne p0, v1, :cond_2

    :cond_0
    sget-object v1, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    iget-object v1, v1, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Lmiui/provider/ExtraTelephony;->isSkipInCallLogForFirewall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 533
    :cond_1
    const/4 v0, 0x1

    .line 535
    :cond_2
    return v0
.end method

.method static logCall(Lcom/android/internal/telephony/Connection;)V
    .locals 26
    .parameter "c"

    .prologue
    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v20

    .line 456
    .local v20, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v24

    .line 457
    .local v24, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Lmiui/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v21

    .line 459
    .local v21, isEmergencyNumber:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    .line 460
    .local v3, date:J
    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v10

    .line 461
    .local v10, ci:Lcom/android/internal/telephony/CallerInfo;
    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v10}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v11

    .line 463
    .local v11, logNumber:Ljava/lang/String;
    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v10}, Lcom/android/phone/CallNotifier;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v2

    .line 469
    .local v2, presentation:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 470
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v20

    if-ne v0, v9, :cond_2

    .line 471
    const/4 v13, 0x3

    .line 472
    .local v13, callLogType:I
    invoke-static/range {p0 .. p0}, Lcom/android/phone/MiuiExtraConnectionData;->getRingDurationMillis(Lcom/android/internal/telephony/Connection;)J

    move-result-wide v6

    .line 478
    .local v6, duration:J
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/phone/MiuiExtraConnectionData;->getFirewallCode(Lcom/android/internal/telephony/Connection;)I

    move-result v5

    .line 479
    .local v5, firewallCode:I
    const/4 v9, 0x2

    if-eq v5, v9, :cond_0

    const/16 v9, 0x102

    if-ne v5, v9, :cond_3

    .line 481
    :cond_0
    const/16 v18, 0x2

    .line 490
    .local v18, firewallType:I
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/android/phone/MiuiExtraConnectionData;->isForwarded(Lcom/android/internal/telephony/Connection;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v19, 0x1

    .line 492
    .local v19, forwardedCall:I
    :goto_2
    if-eqz v5, :cond_7

    .line 493
    invoke-static {v5}, Lcom/android/phone/MiuiCallNotifier;->isSkippingCallLog(I)Z

    move-result v25

    .line 495
    .local v25, skipCallLog:Z
    invoke-static/range {v1 .. v7}, Lcom/android/phone/MiuiCallNotifier;->addFirewallLog(Ljava/lang/String;IJIJ)V

    .line 508
    .end local v5           #firewallCode:I
    :goto_3
    invoke-static/range {v24 .. v24}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v22, 0x1

    .line 512
    .local v22, isOtaspNumber:Z
    :goto_4
    if-nez v22, :cond_a

    if-nez v25, :cond_a

    const/16 v23, 0x1

    .line 516
    .local v23, okToLogThisCall:Z
    :goto_5
    if-eqz v23, :cond_1

    .line 517
    new-instance v8, Lcom/android/phone/CallLogAsync$AddCallArgs;

    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    iget-object v9, v9, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move v12, v2

    move-wide v14, v3

    move-wide/from16 v16, v6

    invoke-direct/range {v8 .. v19}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJII)V

    .line 521
    .local v8, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    sget-object v9, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    iget-object v9, v9, Lcom/android/phone/CallNotifier;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v9, v8}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 523
    .end local v8           #args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    :cond_1
    return-void

    .line 474
    .end local v6           #duration:J
    .end local v13           #callLogType:I
    .end local v18           #firewallType:I
    .end local v19           #forwardedCall:I
    .end local v22           #isOtaspNumber:Z
    .end local v23           #okToLogThisCall:Z
    .end local v25           #skipCallLog:Z
    :cond_2
    const/4 v13, 0x1

    .line 475
    .restart local v13       #callLogType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    .restart local v6       #duration:J
    goto :goto_0

    .line 482
    .restart local v5       #firewallCode:I
    :cond_3
    const/4 v9, 0x1

    if-eq v5, v9, :cond_4

    const/16 v9, 0x101

    if-eq v5, v9, :cond_4

    const/4 v9, 0x7

    if-ne v5, v9, :cond_5

    .line 485
    :cond_4
    const/16 v18, 0x1

    .restart local v18       #firewallType:I
    goto :goto_1

    .line 487
    .end local v18           #firewallType:I
    :cond_5
    const/16 v18, 0x0

    .restart local v18       #firewallType:I
    goto :goto_1

    .line 490
    :cond_6
    const/16 v19, 0x0

    goto :goto_2

    .line 497
    .restart local v19       #forwardedCall:I
    :cond_7
    const/16 v25, 0x0

    .restart local v25       #skipCallLog:Z
    goto :goto_3

    .line 500
    .end local v5           #firewallCode:I
    .end local v6           #duration:J
    .end local v13           #callLogType:I
    .end local v18           #firewallType:I
    .end local v19           #forwardedCall:I
    .end local v25           #skipCallLog:Z
    :cond_8
    const/4 v13, 0x2

    .line 501
    .restart local v13       #callLogType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    .line 502
    .restart local v6       #duration:J
    const/16 v18, 0x0

    .line 503
    .restart local v18       #firewallType:I
    const/16 v19, 0x0

    .line 504
    .restart local v19       #forwardedCall:I
    const/16 v25, 0x0

    .restart local v25       #skipCallLog:Z
    goto :goto_3

    .line 508
    :cond_9
    const/16 v22, 0x0

    goto :goto_4

    .line 512
    .restart local v22       #isOtaspNumber:Z
    :cond_a
    const/16 v23, 0x0

    goto :goto_5
.end method

.method public static onNewPhoneRegisterToCallManager(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 132
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 133
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v1, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    const/16 v2, 0x195

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    const/16 v1, 0x192

    invoke-interface {p0, v0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static onPhoneUnregisterToCallManager(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 144
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 145
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v1, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    sget-object v0, Lcom/android/phone/MiuiCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private onSuppServiceNotification(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 699
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 704
    .local v1, not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    if-eqz v1, :cond_0

    .line 705
    iget v2, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-nez v2, :cond_2

    .line 707
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentConnection(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 708
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 709
    invoke-static {v0, v1}, Lcom/android/phone/MiuiExtraConnectionData;->setSuppServiceNotification(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    goto :goto_0

    .line 713
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_2
    invoke-static {v1}, Lcom/android/phone/MiuiExtraConnectionData;->setIncomingCallSuppServiceNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    goto :goto_0
.end method

.method private processTelephonyFirewall(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 8
    .parameter "ci"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 606
    iget-object v5, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentConnection(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 607
    .local v2, c:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_0

    .line 608
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 611
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiCallNotifier;->getTelephonyFirewallBlockType(Lcom/android/internal/telephony/CallerInfo;)I

    move-result v4

    .line 612
    .local v4, ret:I
    if-ne v4, v6, :cond_4

    .line 614
    iget-object v5, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v5}, Lmiui/provider/ExtraTelephony;->getCallAct(Landroid/content/Context;)I

    move-result v1

    .line 615
    .local v1, blacklist_act:I
    if-nez v1, :cond_3

    .line 616
    const-string v5, "Rejected incoming call for caller in blacklist"

    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 617
    if-eqz v2, :cond_1

    .line 618
    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 620
    :cond_1
    iget-object v5, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 654
    .end local v1           #blacklist_act:I
    .end local v4           #ret:I
    :cond_2
    :goto_0
    return-void

    .line 622
    .restart local v1       #blacklist_act:I
    .restart local v4       #ret:I
    :cond_3
    if-ne v1, v6, :cond_2

    .line 623
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 624
    const-string v5, "Muted incoming call for caller in blacklist"

    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 625
    const/4 v5, 0x2

    invoke-static {v2, v5}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 626
    iget-object v5, p0, Lcom/android/phone/MiuiCallNotifier;->mRinger:Lcom/android/phone/Ringer;

    check-cast v5, Lcom/android/phone/MiuiRinger;

    invoke-virtual {v5}, Lcom/android/phone/MiuiRinger;->mute()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 651
    .end local v1           #blacklist_act:I
    .end local v4           #ret:I
    :catch_0
    move-exception v3

    .line 652
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v5, "MiuiCallNotifier"

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 631
    .end local v3           #e:Ljava/lang/RuntimeException;
    .restart local v4       #ret:I
    :cond_4
    if-ne v4, v7, :cond_2

    .line 633
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v5}, Lmiui/provider/ExtraTelephony;->getCallAct(Landroid/content/Context;)I

    move-result v0

    .line 634
    .local v0, act:I
    if-nez v0, :cond_6

    .line 635
    const-string v5, "Rejected incoming call for caller not in whitelist"

    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 636
    if-eqz v2, :cond_5

    .line 637
    const/16 v5, 0x101

    invoke-static {v2, v5}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 639
    :cond_5
    iget-object v5, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 641
    :cond_6
    if-ne v0, v6, :cond_2

    .line 642
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 643
    const-string v5, "Muted incoming call for caller not in whitelist"

    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 644
    const/16 v5, 0x102

    invoke-static {v2, v5}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 645
    iget-object v5, p0, Lcom/android/phone/MiuiCallNotifier;->mRinger:Lcom/android/phone/Ringer;

    check-cast v5, Lcom/android/phone/MiuiRinger;

    invoke-virtual {v5}, Lcom/android/phone/MiuiRinger;->mute()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private resetRingerVolume()V
    .locals 4

    .prologue
    .line 747
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    if-eqz v0, :cond_0

    .line 749
    const/16 v0, 0x191

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 750
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolume:I

    iget v3, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerSetFlags:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 751
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerVolumeControlling:Z

    .line 753
    :cond_0
    return-void
.end method

.method private startAutoAnswer()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 797
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 798
    iget-object v3, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 799
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 802
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-nez v0, :cond_3

    .line 835
    :cond_2
    :goto_0
    return-void

    .line 809
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 810
    const-string v0, "button_auto_answer"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 811
    const-string v0, "button_auto_answer_scenario"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 813
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    check-cast v0, Lcom/android/phone/MiuiPhoneApp;

    .line 814
    packed-switch v5, :pswitch_data_0

    .line 828
    :cond_4
    :goto_1
    if-eqz v1, :cond_2

    .line 829
    const-string v0, "button_auto_answer_delay"

    const-string v1, "3"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 830
    const/16 v1, 0x194

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 831
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 832
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/MiuiCallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 816
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isBluetoothAvailable()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    move v1, v0

    .line 817
    goto :goto_1

    :cond_5
    move v0, v2

    .line 816
    goto :goto_2

    .line 819
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_6
    move v1, v2

    goto :goto_1

    .line 822
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneApp;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v2, v1

    :cond_8
    move v1, v2

    .line 823
    goto :goto_1

    .line 814
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private startSensor()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 851
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 852
    const-string v1, "button_turnover_mute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverMuteEnable:Z

    .line 853
    const-string v1, "button_handon_ringer"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonRingerEnable:Z

    .line 854
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverMuteEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonRingerEnable:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    if-nez v0, :cond_1

    .line 856
    iput-boolean v2, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    .line 857
    iput-boolean v2, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    .line 858
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    .line 861
    :cond_1
    return-void
.end method

.method private stopSensor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 838
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 841
    iput-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorRunning:Z

    .line 842
    iput v3, p0, Lcom/android/phone/MiuiCallNotifier;->mSensorCount:I

    .line 843
    iput-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTriggered:Z

    .line 844
    iput-boolean v3, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggered:Z

    .line 845
    iput v3, p0, Lcom/android/phone/MiuiCallNotifier;->mTurnoverTiggeringCount:I

    .line 846
    iput v3, p0, Lcom/android/phone/MiuiCallNotifier;->mHandonTriggeringCount:I

    .line 848
    :cond_0
    return-void
.end method

.method private vibrateWhenConnectOrDisconnect()V
    .locals 4

    .prologue
    .line 363
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "button_connect_disconnect_vibrate"

    const-string v3, "100"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 367
    .local v0, vibrateDuration:I
    if-lez v0, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mVibrator:Landroid/os/Vibrator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 370
    :cond_0
    return-void
.end method


# virtual methods
.method protected getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .parameter "conn"

    .prologue
    .line 591
    const/4 v0, 0x0

    .line 592
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 593
    .local v1, o:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 594
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 598
    .end local v1           #o:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v0

    .line 595
    .restart local v1       #o:Ljava/lang/Object;
    :cond_2
    instance-of v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_1

    .line 596
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1           #o:Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method protected getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 2
    .parameter "conn"
    .parameter "callerInfo"

    .prologue
    .line 579
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 582
    :cond_0
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getOrigDialAddress(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, logNumber:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 584
    .end local v0           #logNumber:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/CallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #logNumber:Ljava/lang/String;
    goto :goto_0
.end method

.method getRedialTimes()I
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getTelephonyFirewallBlockType(Lcom/android/internal/telephony/CallerInfo;)I
    .locals 3
    .parameter "ci"

    .prologue
    .line 602
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lmiui/provider/ExtraTelephony;->shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x2

    .line 163
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 205
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->handleMessage(Landroid/os/Message;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p0, Lcom/android/phone/MiuiCallNotifier;->mRingerSetFlags:I

    invoke-virtual {v4, v7, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-direct {p0, v4}, Lcom/android/phone/MiuiCallNotifier;->onSuppServiceNotification(Landroid/os/AsyncResult;)V

    .line 170
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_0

    .line 174
    :pswitch_2
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallNotifier;->resetAudioStateAfterDisconnect()V

    goto :goto_0

    .line 180
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 181
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-ne v4, v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 188
    .end local v3           #ringingCall:Lcom/android/internal/telephony/Call;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 189
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 190
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    .line 191
    .local v2, record:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;
    iget-byte v4, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;->lineCtrlPolarityIncluded:B

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 192
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentActiveCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 193
    .local v1, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 194
    sget-object v4, Lcom/android/phone/MiuiConstants$CdmaCallState;->AuthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    invoke-static {v1, v4}, Lcom/android/phone/MiuiExtraConnectionData;->setCdmaCallState(Lcom/android/internal/telephony/Call;Lcom/android/phone/MiuiConstants$CdmaCallState;)V

    .line 196
    const-string v4, "MiuiCallNotifier"

    const-string v5, "MIONE:Get cdma_line_control_info, then vibrate"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->vibrateWhenConnectOrDisconnect()V

    .line 198
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDisconnect(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "r"

    .prologue
    const/4 v9, 0x0

    .line 374
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSensor()V

    .line 375
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->resetRingerVolume()V

    .line 377
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 378
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_6

    .line 379
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 380
    .local v2, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v7, :cond_2

    .line 381
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 382
    .local v1, call:Lcom/android/internal/telephony/Call;
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    if-ne v1, v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    if-ne v1, v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousBackCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_2

    .line 384
    :cond_1
    const-string v7, "MiuiCallNotifier"

    const-string v8, "MIONE:phone disconnect, then vibrate"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->vibrateWhenConnectOrDisconnect()V

    .line 389
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v7, :cond_3

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v7, :cond_4

    .line 391
    :cond_3
    iput-boolean v9, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 394
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, number:Ljava/lang/String;
    invoke-static {v4}, Lmiui/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    .line 396
    .local v3, isEmergencyNumber:Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 397
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v7

    if-eqz v7, :cond_a

    if-nez v3, :cond_a

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v7, :cond_a

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v7, :cond_a

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v7, :cond_a

    .line 402
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 403
    .local v6, pref:Landroid/content/SharedPreferences;
    const-string v7, "button_auto_redial"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 404
    iget-boolean v7, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    if-nez v7, :cond_5

    .line 405
    iput v9, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    .line 406
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 408
    :cond_5
    iget v7, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_8

    .line 409
    iget v7, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/phone/MiuiCallNotifier;->mRedialTimes:I

    .line 410
    invoke-static {v5, v4, v0}, Lcom/android/phone/MiuiPhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/Connection;)I

    .line 422
    .end local v2           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v3           #isEmergencyNumber:Z
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #phone:Lcom/android/internal/telephony/Phone;
    .end local v6           #pref:Landroid/content/SharedPreferences;
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    .line 424
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_7

    .line 425
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 426
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 428
    :cond_7
    return-void

    .line 412
    .restart local v2       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v3       #isEmergencyNumber:Z
    .restart local v4       #number:Ljava/lang/String;
    .restart local v5       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v6       #pref:Landroid/content/SharedPreferences;
    :cond_8
    iput-boolean v9, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    goto :goto_0

    .line 415
    :cond_9
    iput-boolean v9, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    goto :goto_0

    .line 418
    .end local v6           #pref:Landroid/content/SharedPreferences;
    :cond_a
    iput-boolean v9, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    goto :goto_0
.end method

.method protected onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "r"

    .prologue
    const/4 v9, 0x0

    .line 212
    iput-boolean v9, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 214
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 215
    .local v0, c:Lcom/android/internal/telephony/Connection;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onNewRingingConnection(): state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", conn = { "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " }"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 216
    if-nez v0, :cond_1

    .line 217
    const-string v7, "MiuiCallNotifier"

    const-string v8, "CallNotifier.onNewRingingConnection(): null connection!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-static {v0}, Lcom/android/phone/MiuiExtraConnectionData;->onIncomingCall(Lcom/android/internal/telephony/Connection;)V

    .line 224
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 225
    .local v5, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 228
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallNotifier;->ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 233
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 237
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v7

    if-nez v7, :cond_3

    .line 238
    const-string v7, "MiuiCallNotifier"

    const-string v8, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :cond_3
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v7}, Lmiui/provider/ExtraTelephony;->isAntiPrivateEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 249
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, number:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 251
    .local v4, presentation:I
    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v4, v7, :cond_4

    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v4, v7, :cond_4

    sget v7, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-eq v4, v7, :cond_4

    const-string v7, "-1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "-2"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "-3"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 257
    :cond_4
    const-string v7, "Rejected incoming call for caller is private number/unknown number"

    invoke-virtual {p0, v7}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 258
    if-eqz v0, :cond_5

    .line 259
    const/4 v7, 0x7

    invoke-static {v0, v7}, Lcom/android/phone/MiuiExtraConnectionData;->setFirewallCode(Lcom/android/internal/telephony/Connection;I)V

    .line 261
    :cond_5
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 267
    .end local v2           #number:Ljava/lang/String;
    .end local v4           #presentation:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSignalInfoTone()V

    .line 269
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 271
    .local v6, state:Lcom/android/internal/telephony/Call$State;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- connection is ringing!  state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/MiuiCallNotifier;->log(Ljava/lang/String;)V

    .line 300
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v8, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 304
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 305
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 306
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->crescendoRingerVolumeDelayed()V

    .line 307
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->startSensor()V

    .line 308
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->startAutoAnswer()V

    goto/16 :goto_0

    .line 311
    :cond_7
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v8, p0, Lcom/android/phone/MiuiCallNotifier;->queryListenerForWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v7, v0, v8, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v1

    .line 314
    .local v1, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v7, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v7, :cond_0

    .line 315
    iget-object v7, p0, Lcom/android/phone/MiuiCallNotifier;->queryListenerForWaitingCall:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget-object v8, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-interface {v7, v9, p0, v8}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    goto/16 :goto_0
.end method

.method protected onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "r"

    .prologue
    .line 334
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 335
    .local v2, foreCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 336
    .local v0, backCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v4, :cond_2

    .line 338
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 339
    .local v1, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-static {v1}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/MiuiConstants$CdmaCallState;->UnauthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-eq v4, v5, :cond_1

    .line 341
    :cond_0
    const-string v4, "MiuiCallNotifier"

    const-string v5, "MIONE:phone state change to active, then vibrate"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->vibrateWhenConnectOrDisconnect()V

    .line 345
    :cond_1
    iget-boolean v4, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    if-eqz v4, :cond_2

    .line 346
    const/16 v3, 0xb

    .line 347
    .local v3, toneToPlay:I
    new-instance v4, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v4, p0, v3}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 348
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/phone/MiuiCallNotifier;->mIsRedialCall:Z

    .line 351
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v3           #toneToPlay:I
    :cond_2
    iput-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousForeCallState:Lcom/android/internal/telephony/Call$State;

    .line 352
    iput-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mPreviousBackCallState:Lcom/android/internal/telephony/Call$State;

    .line 354
    iget-object v4, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_3

    .line 355
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSensor()V

    .line 356
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->resetRingerVolume()V

    .line 359
    :cond_3
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 360
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 675
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 676
    invoke-virtual {p0, p3}, Lcom/android/phone/MiuiCallNotifier;->getTelephonyFirewallBlockType(Lcom/android/internal/telephony/CallerInfo;)I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/MiuiCallNotifier;->isSkippingCallLog(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 677
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    instance-of v1, p2, Lcom/android/phone/CallNotifier;

    if-eqz v1, :cond_0

    .line 680
    const/4 v0, 0x0

    .line 681
    .local v0, isQueryExecutionTimeOK:Z
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 682
    const/16 v1, 0x64

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallNotifier;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 683
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallNotifier;->removeMessages(I)V

    .line 684
    const/4 v0, 0x1

    .line 686
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    if-eqz v0, :cond_3

    .line 688
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mRinger:Lcom/android/phone/Ringer;

    check-cast v1, Lcom/android/phone/MiuiRinger;

    invoke-virtual {v1}, Lcom/android/phone/MiuiRinger;->unMute()V

    .line 689
    invoke-direct {p0, p3}, Lcom/android/phone/MiuiCallNotifier;->processTelephonyFirewall(Lcom/android/internal/telephony/CallerInfo;)V

    .line 692
    iget-object v1, p0, Lcom/android/phone/MiuiCallNotifier;->mRinger:Lcom/android/phone/Ringer;

    check-cast v1, Lcom/android/phone/MiuiRinger;

    iget-boolean v2, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v2}, Lmiui/provider/ExtraTelephony;->isAntiStrangerEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/phone/MiuiRinger;->setAntiStranger(Z)V

    .line 694
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    goto :goto_0

    .line 686
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 692
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected registerForNotifications()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 559
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 560
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 561
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 562
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x195

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 564
    :cond_0
    const/16 v2, 0x192

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 567
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method protected resetAudioStateAfterDisconnect()V
    .locals 2

    .prologue
    .line 432
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    const/16 v0, 0x193

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallNotifier;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V
    .locals 7
    .parameter "c"
    .parameter "date"

    .prologue
    .line 442
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getFirewallCode(Lcom/android/internal/telephony/Connection;)I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/MiuiCallNotifier;->isSkippingCallLog(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiCallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v6

    .line 444
    .local v6, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v6}, Lcom/android/phone/MiuiPhoneUtils;->getDisplayName(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0, p1, v6}, Lcom/android/phone/MiuiCallNotifier;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/MiuiCallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v3, v6, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 448
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #number:Ljava/lang/String;
    .end local v6           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_0
    return-void
.end method

.method silenceRinger()V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->stopSensor()V

    .line 572
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 573
    invoke-direct {p0}, Lcom/android/phone/MiuiCallNotifier;->resetRingerVolume()V

    .line 574
    return-void
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 540
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 541
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 542
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    goto :goto_0

    .line 544
    :cond_0
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    goto :goto_0

    .line 547
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 548
    iget-object v2, p0, Lcom/android/phone/MiuiCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 549
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 550
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x195

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 552
    :cond_2
    const/16 v2, 0x192

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 555
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_3
    return-void
.end method
