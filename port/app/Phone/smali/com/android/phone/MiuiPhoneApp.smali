.class public Lcom/android/phone/MiuiPhoneApp;
.super Lcom/android/phone/PhoneApp;
.source "MiuiPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiPhoneApp$Handler;
    }
.end annotation


# instance fields
.field private mCurrentServiceState:I

.field private mIntentAfterCall:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;-><init>()V

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/MiuiPhoneApp;->mCurrentServiceState:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    .line 100
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/phone/MiuiPhoneApp$Handler;

    iget-object v1, p0, Lcom/android/phone/MiuiPhoneApp;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiPhoneApp$Handler;-><init>(Lcom/android/phone/MiuiPhoneApp;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mHandler:Landroid/os/Handler;

    .line 103
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiPhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/phone/MiuiPhoneApp;->isInCallScreenForeground()Z

    move-result v0

    return v0
.end method

.method private isInCallScreenForeground()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v3

    .line 128
    :cond_1
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/phone/MiuiPhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 129
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 130
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 131
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 132
    .local v2, taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_2

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    const-string v5, "com.android.phone.MiuiInCallScreen"

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .end local v2           #taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    move v3, v4

    .line 136
    goto :goto_0
.end method


# virtual methods
.method public createPhoneEndIntentUsingCallOrigin()Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 232
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->createPhoneEndIntentUsingCallOrigin()Landroid/content/Intent;

    move-result-object v1

    .line 244
    :cond_0
    :goto_0
    return-object v1

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    const/high16 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiPhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_1
    iput-object v1, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/android/phone/PhoneApp;->handleServiceStateChanged(Landroid/content/Intent;)V

    .line 194
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 199
    .local v0, ss:Landroid/telephony/ServiceState;
    if-eqz v0, :cond_2

    .line 200
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 201
    .local v1, state:I
    iget v2, p0, Lcom/android/phone/MiuiPhoneApp;->mCurrentServiceState:I

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 203
    iget-object v2, p0, Lcom/android/phone/MiuiPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 205
    :cond_1
    iput v1, p0, Lcom/android/phone/MiuiPhoneApp;->mCurrentServiceState:I

    goto :goto_0

    .line 207
    .end local v1           #state:I
    :cond_2
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/phone/MiuiPhoneApp;->mCurrentServiceState:I

    goto :goto_0
.end method

.method isBluetoothAvailable()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/phone/PhoneApp;->onCreate()V

    .line 109
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/MiuiCallNotifier;->onNewPhoneRegisterToCallManager(Lcom/android/internal/telephony/Phone;)V

    .line 112
    :cond_0
    return-void
.end method

.method public setIntentAfterCall(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    .line 213
    return-void
.end method

.method public setLatestActiveCallOrigin(Ljava/lang/String;)V
    .locals 1
    .parameter "callOrigin"

    .prologue
    .line 217
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-super {p0, p1}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 222
    :cond_0
    if-nez p1, :cond_1

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    goto :goto_0

    .line 225
    :cond_1
    invoke-static {}, Lcom/android/phone/MiuiPhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiPhoneApp;->mIntentAfterCall:Landroid/content/Intent;

    goto :goto_0
.end method

.method updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 141
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 142
    invoke-super {p0, p1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiPhoneApp;->proximitySensorModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "button_enable_proximity"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    iget-object v4, p0, Lcom/android/phone/MiuiPhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v4

    .line 157
    :try_start_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/phone/MiuiPhoneApp;->mIsHardKeyboardOpen:Z

    if-eqz v5, :cond_4

    :cond_2
    move v2, v3

    .line 159
    .local v2, screenOnImmediately:Z
    :goto_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "button_enforce_proximity_during_ringing"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v5, :cond_5

    move v1, v3

    .line 163
    .local v1, proximityWhenIncall:Z
    :goto_2
    if-nez v1, :cond_3

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v5, :cond_3

    iget-boolean v5, p0, Lcom/android/phone/MiuiPhoneApp;->mBeginningCall:Z

    if-eqz v5, :cond_7

    :cond_3
    if-nez v2, :cond_7

    .line 166
    iget-object v3, p0, Lcom/android/phone/MiuiPhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_6

    .line 167
    const-string v3, "PhoneApp"

    const-string v5, "updateProximitySensorMode: acquiring..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v3, p0, Lcom/android/phone/MiuiPhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 187
    :goto_3
    monitor-exit v4

    goto :goto_0

    .end local v1           #proximityWhenIncall:Z
    .end local v2           #screenOnImmediately:Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_4
    move v2, v0

    .line 157
    goto :goto_1

    .restart local v2       #screenOnImmediately:Z
    :cond_5
    move v1, v0

    .line 159
    goto :goto_2

    .line 170
    .restart local v1       #proximityWhenIncall:Z
    :cond_6
    :try_start_1
    const-string v3, "PhoneApp"

    const-string v5, "updateProximitySensorMode: lock already held."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 175
    :cond_7
    iget-object v5, p0, Lcom/android/phone/MiuiPhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 176
    const-string v5, "PhoneApp"

    const-string v6, "updateProximitySensorMode: releasing..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-eqz v2, :cond_8

    .line 182
    .local v0, flags:I
    :goto_4
    iget-object v3, p0, Lcom/android/phone/MiuiPhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    goto :goto_3

    .end local v0           #flags:I
    :cond_8
    move v0, v3

    .line 180
    goto :goto_4

    .line 184
    :cond_9
    const-string v3, "PhoneApp"

    const-string v5, "updateProximitySensorMode: lock already released."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method
