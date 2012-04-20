.class public Lcom/android/phone/MiuiNotificationMgr;
.super Lcom/android/phone/NotificationMgr;
.source "MiuiNotificationMgr.java"


# instance fields
.field private mCurrentCallRecordNotificationId:I


# direct methods
.method protected constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;-><init>(Lcom/android/phone/PhoneApp;)V

    .line 24
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mCurrentCallRecordNotificationId:I

    .line 43
    return-void
.end method

.method static init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/NotificationMgr;
    .locals 4
    .parameter

    .prologue
    .line 29
    const-class v1, Lcom/android/phone/NotificationMgr;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/android/phone/MiuiNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/android/phone/MiuiNotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiNotificationMgr;-><init>(Lcom/android/phone/PhoneApp;)V

    sput-object v0, Lcom/android/phone/MiuiNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    .line 33
    sget-object v0, Lcom/android/phone/MiuiNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationsAtStartup()V

    .line 37
    :goto_0
    sget-object v0, Lcom/android/phone/MiuiNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    monitor-exit v1

    return-object v0

    .line 35
    :cond_0
    const-string v0, "MiuiNotificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MiuiNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendApplicationUpdateMessage()V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.update_application_message_text"

    iget v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mNumberMissedCalls:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mNumberMissedCalls:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v1, "android.intent.extra.update_application_component_name"

    const-string v2, "com.android.contacts/.activities.TwelveKeyDialer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
    return-void

    .line 127
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected cancelInCall()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 120
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ENTER_INCALL_SCREEN_DURING_CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method cancelMissedCallNotification()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/phone/NotificationMgr;->cancelMissedCallNotification()V

    .line 70
    invoke-direct {p0}, Lcom/android/phone/MiuiNotificationMgr;->sendApplicationUpdateMessage()V

    .line 71
    return-void
.end method

.method protected configureLedNotification(Landroid/app/Notification;)V
    .locals 6
    .parameter "note"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 48
    iget-object v3, p0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_breathing_light_color"

    sget v5, Lmiui/provider/ExtraSettings$System;->CALL_BREATHING_LIGHT_COLOR_DEFAULT:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 51
    .local v0, color:I
    iget-object v3, p0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_breathing_light_freq"

    sget v5, Lmiui/provider/ExtraSettings$System;->CALL_BREATHING_LIGHT_FREQ_DEFAULT:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 54
    .local v1, freq:I
    iput v0, p1, Landroid/app/Notification;->ledARGB:I

    .line 55
    invoke-static {v1}, Lmiui/app/ExtraNotification;->getLedPwmOffOn(I)[I

    move-result-object v2

    .line 56
    .local v2, offOn:[I
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, p1, Landroid/app/Notification;->ledOffMS:I

    .line 57
    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, p1, Landroid/app/Notification;->ledOnMS:I

    .line 58
    iget v3, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p1, Landroid/app/Notification;->defaults:I

    .line 59
    return-void
.end method

.method protected getInCallNotificationDisplayName(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 4
    .parameter "currentCall"

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 98
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v1

    .line 99
    .local v1, state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    sget-object v2, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayIncoming:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v1, v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0383

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .end local v1           #state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    .local v0, displayName:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 101
    .end local v0           #displayName:Ljava/lang/String;
    .restart local v1       #state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    :cond_0
    sget-object v2, Lcom/android/phone/MiuiConstants$CdmaCallState;->Conference:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v1, v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0384

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #displayName:Ljava/lang/String;
    goto :goto_0

    .line 103
    .end local v0           #displayName:Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayOutgoing:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v1, v2, :cond_2

    .line 104
    invoke-static {p1}, Lcom/android/phone/MiuiCdmaSecondCall;->getInstance(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCdmaSecondCall;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/android/phone/NotificationMgr;->getInCallNotificationDisplayName(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #displayName:Ljava/lang/String;
    goto :goto_0

    .line 106
    .end local v0           #displayName:Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/phone/NotificationMgr;->getInCallNotificationDisplayName(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #displayName:Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v0           #displayName:Ljava/lang/String;
    .end local v1           #state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    :cond_3
    invoke-super {p0, p1}, Lcom/android/phone/NotificationMgr;->getInCallNotificationDisplayName(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #displayName:Ljava/lang/String;
    goto :goto_0
.end method

.method notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "name"
    .parameter "number"
    .parameter "label"
    .parameter "date"

    .prologue
    .line 63
    invoke-super/range {p0 .. p5}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 64
    invoke-direct {p0}, Lcom/android/phone/MiuiNotificationMgr;->sendApplicationUpdateMessage()V

    .line 65
    return-void
.end method

.method public updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "success"
    .parameter "message"
    .parameter "fileName"

    .prologue
    .line 157
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v8, intent:Landroid/content/Intent;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    const/high16 v1, 0x1000

    invoke-virtual {v8, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callrec://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 168
    :goto_0
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x3020109

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    const v3, 0x7f0c02a4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, p2

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 174
    .local v0, notification:Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiNotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 176
    iget v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mCurrentCallRecordNotificationId:I

    const v2, 0x7ffffffe

    if-lt v1, v2, :cond_0

    .line 177
    const/16 v1, 0x2710

    iput v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mCurrentCallRecordNotificationId:I

    .line 179
    :cond_0
    iget v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mCurrentCallRecordNotificationId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mCurrentCallRecordNotificationId:I

    .line 180
    iget-object v1, p0, Lcom/android/phone/MiuiNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/android/phone/MiuiNotificationMgr;->mCurrentCallRecordNotificationId:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 181
    return-void

    .line 165
    .end local v0           #notification:Landroid/app/Notification;
    :cond_1
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$StorageSettingsActivity"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 168
    :cond_2
    const v3, 0x7f0c02a3

    goto :goto_1
.end method

.method protected updateInCallNotification(Z)V
    .locals 9
    .parameter "allowFullScreenIntent"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(Z)V

    .line 76
    iget-object v5, p0, Lcom/android/phone/MiuiNotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentConnection(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 77
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/phone/MiuiNotificationMgr;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 79
    .local v4, state:Lcom/android/internal/telephony/Call$State;
    iget-object v5, p0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    check-cast v5, Lcom/android/phone/MiuiPhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/MiuiPhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v5

    if-nez v5, :cond_1

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v1, v5, v7

    .line 84
    .local v1, diff:J
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.LEAVE_INCALL_SCREEN_DURING_CALL"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "call_state"

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v7, "base_time"

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_2

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v5

    add-long/2addr v5, v1

    :goto_0
    invoke-virtual {v3, v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 89
    iget-object v5, p0, Lcom/android/phone/MiuiNotificationMgr;->mApp:Lcom/android/phone/PhoneApp;

    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v5, v3, v6}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 92
    .end local v1           #diff:J
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #state:Lcom/android/internal/telephony/Call$State;
    :cond_1
    return-void

    .line 86
    .restart local v1       #diff:J
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #state:Lcom/android/internal/telephony/Call$State;
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    add-long/2addr v5, v1

    goto :goto_0
.end method
