.class public Lcom/android/phone/MiuiPhoneUtils;
.super Lcom/android/phone/PhoneUtils;
.source "MiuiPhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiPhoneUtils$9;,
        Lcom/android/phone/MiuiPhoneUtils$RetryWrapper;,
        Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;
    }
.end annotation


# static fields
.field private static sCurrentAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/android/phone/MiuiPhoneUtils$1;

    invoke-direct {v0}, Lcom/android/phone/MiuiPhoneUtils$1;-><init>()V

    sput-object v0, Lcom/android/phone/MiuiPhoneUtils;->sHandler:Landroid/os/Handler;

    .line 120
    sget-object v0, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    sput-object v0, Lcom/android/phone/MiuiPhoneUtils;->sCurrentAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/phone/PhoneUtils;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/phone/MiuiPhoneUtils;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static answerCall(Lcom/android/internal/telephony/Call;)Z
    .locals 6
    .parameter "ringing"

    .prologue
    .line 127
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 128
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 130
    .local v1, hasActiveCall:Z
    :goto_0
    if-nez v1, :cond_3

    .line 131
    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v4

    .line 136
    .local v4, speakerOnBefore:Z
    :goto_1
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->internalAnswerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 138
    .local v2, ret:Z
    if-nez v1, :cond_1

    .line 139
    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    .line 140
    .local v3, speakerOnAfter:Z
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 142
    sget-object v5, Lcom/android/phone/MiuiPhoneUtils;->sCurrentAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    invoke-static {v5}, Lcom/android/phone/MiuiPhoneUtils;->resetAudioRoute(Lcom/android/phone/MiuiConstants$AudioMode;)V

    .line 143
    sget-object v5, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    sput-object v5, Lcom/android/phone/MiuiPhoneUtils;->sCurrentAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 146
    .end local v3           #speakerOnAfter:Z
    :cond_1
    return v2

    .line 128
    .end local v1           #hasActiveCall:Z
    .end local v2           #ret:Z
    .end local v4           #speakerOnBefore:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 133
    .restart local v1       #hasActiveCall:Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4       #speakerOnBefore:Z
    goto :goto_1
.end method

.method public static cdmaCanDial(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .parameter "phone"

    .prologue
    .line 385
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    .line 387
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v0

    .line 388
    .local v0, state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayIncoming:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayOutgoing:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->Conference:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v0, v1, :cond_1

    .line 391
    :cond_0
    const/4 v1, 0x0

    .line 394
    .end local v0           #state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static checkUsingMiuiActivity(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/phone/MiuiPhoneUtils;->checkUsingMiuiActivity(Landroid/app/Activity;Z)Z

    move-result v0

    return v0
.end method

.method public static checkUsingMiuiActivity(Landroid/app/Activity;Z)Z
    .locals 5
    .parameter "activity"
    .parameter "forwardIntent"

    .prologue
    .line 410
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->isMiuiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, parts:[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 413
    .local v0, name:Ljava/lang/String;
    const-string v2, "Miui"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 414
    if-eqz p1, :cond_0

    .line 415
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Miui"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 416
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/phone/MiuiPhoneUtils;->forwardIntentToActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_0
    const/4 v2, 0x1

    .line 422
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #parts:[Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static forwardIntentToActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 431
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 433
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 434
    return-void
.end method

.method public static getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "phone"

    .prologue
    .line 380
    instance-of v0, p0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/internal/telephony/PhoneProxy;

    .end local p0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    return-object v0

    .restart local p0
    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static getCallForwardingOption(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;)V
    .locals 1
    .parameter "phone"
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 668
    new-instance v0, Lcom/android/phone/MiuiPhoneUtils$3;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/phone/MiuiPhoneUtils$3;-><init>(Landroid/os/Message;Lcom/android/internal/telephony/Phone;I)V

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneUtils$3;->retry()V

    .line 674
    return-void
.end method

.method public static getCallWaiting(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V
    .locals 1
    .parameter "phone"
    .parameter "onComplete"

    .prologue
    .line 692
    new-instance v0, Lcom/android/phone/MiuiPhoneUtils$5;

    invoke-direct {v0, p1, p0}, Lcom/android/phone/MiuiPhoneUtils$5;-><init>(Landroid/os/Message;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneUtils$5;->retry()V

    .line 698
    return-void
.end method

.method public static getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter "call"

    .prologue
    .line 364
    if-nez p0, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 376
    :goto_0
    return-object v0

    .line 366
    :cond_0
    const/4 v0, 0x0

    .line 367
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 368
    invoke-static {p0}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayOutgoing:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v1, v2, :cond_1

    .line 369
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentActiveCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Call;
    .locals 7
    .parameter "cm"

    .prologue
    .line 315
    const/4 v2, 0x0

    .line 317
    .local v2, curCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 318
    .local v4, ringCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 319
    .local v1, activeFgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 320
    .local v0, activeBgCall:Lcom/android/internal/telephony/Call;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 322
    move-object v2, v4

    .line 341
    :cond_0
    :goto_0
    if-nez v2, :cond_4

    .line 342
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "current call is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 323
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_2

    .line 327
    move-object v2, v1

    goto :goto_0

    .line 328
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_3

    .line 332
    move-object v2, v0

    goto :goto_0

    .line 335
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 336
    .local v3, defaultPhone:Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_0

    .line 337
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    goto :goto_0

    .line 344
    .end local v3           #defaultPhone:Lcom/android/internal/telephony/Phone;
    :cond_4
    return-object v2
.end method

.method public static getCurrentConnection(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "cm"

    .prologue
    .line 360
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->getCurrentActiveCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 5
    .parameter "callerInfo"

    .prologue
    const v4, 0x7f0c0004

    .line 275
    if-nez p0, :cond_1

    .line 276
    const-string v1, ""

    .line 303
    :cond_0
    :goto_0
    return-object v1

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iget-object v1, v2, Lmiui/telephony/ExtraCallerInfo;->displayName:Ljava/lang/String;

    .line 280
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 284
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 286
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    goto :goto_0

    .line 287
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v2, v3, :cond_3

    const-string v2, "-1"

    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 289
    :cond_3
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 290
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v2, v3, :cond_5

    const-string v2, "-2"

    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 292
    :cond_5
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 293
    :cond_6
    iget v2, p0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-eq v2, v3, :cond_7

    const-string v2, "-3"

    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 295
    :cond_7
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 296
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 298
    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Lmiui/telephony/PhoneNumberUtils;->splitNetworkAndPostDialPortion(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    goto :goto_0

    .line 300
    :cond_9
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getOutgoingCallerIdDisplay(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V
    .locals 1
    .parameter "phone"
    .parameter "onComplete"

    .prologue
    .line 710
    new-instance v0, Lcom/android/phone/MiuiPhoneUtils$7;

    invoke-direct {v0, p1, p0}, Lcom/android/phone/MiuiPhoneUtils$7;-><init>(Landroid/os/Message;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneUtils$7;->retry()V

    .line 716
    return-void
.end method

.method public static goBackToParent(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 4
    .parameter "current"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, parent:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 443
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 451
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v2, "PhoneUtils"

    const-string v3, "can not go back to parent "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    throw v2
.end method

.method public static goBackToParent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "current"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 459
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 460
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 463
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 469
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v2, "PhoneUtils"

    const-string v3, "can not go back to parent "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    throw v2
.end method

.method public static handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "phone"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 246
    const/4 v3, 0x1

    .line 247
    .local v3, ret:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 248
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 249
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 250
    sget-object v4, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    invoke-static {v4}, Lcom/android/phone/MiuiPhoneUtils;->resetAudioRoute(Lcom/android/phone/MiuiConstants$AudioMode;)V

    .line 266
    :cond_1
    :goto_0
    return v3

    .line 253
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_4

    .line 254
    const-string v4, "power"

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 255
    .local v2, pm:Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_3

    .line 256
    sget-object v4, Lcom/android/phone/MiuiPhoneUtils;->sHandler:Landroid/os/Handler;

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    aput-object p1, v5, v8

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 257
    .local v1, msg:Landroid/os/Message;
    sget-object v4, Lcom/android/phone/MiuiPhoneUtils;->sHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 262
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #pm:Landroid/os/PowerManager;
    :cond_3
    :goto_1
    sget-object v4, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    invoke-static {v4}, Lcom/android/phone/MiuiPhoneUtils;->setCurrentAudioMode(Lcom/android/phone/MiuiConstants$AudioMode;)V

    .line 263
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z

    move-result v3

    .line 264
    sget-object v4, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    sput-object v4, Lcom/android/phone/MiuiPhoneUtils;->sCurrentAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    goto :goto_0

    .line 260
    :cond_4
    sget-object v4, Lcom/android/phone/MiuiPhoneUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method

.method public static logCall(Lcom/android/phone/Constants$CallStatusCode;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "status"
    .parameter "context"
    .parameter "number"

    .prologue
    .line 601
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    if-eq p0, v0, :cond_0

    .line 604
    const/4 v0, -0x1

    new-instance v1, Lcom/android/phone/MiuiPhoneUtils$2;

    invoke-direct {v1, p1, p2}, Lcom/android/phone/MiuiPhoneUtils$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 616
    :cond_0
    return-void
.end method

.method public static placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;Lcom/android/internal/telephony/CallerInfo;)I
    .locals 7
    .parameter "context"
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"
    .parameter "isEmergencyCall"
    .parameter "gatewayUri"
    .parameter "ci"

    .prologue
    .line 223
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 224
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_1

    const/4 v1, 0x1

    .line 226
    .local v1, isPhoneIdle:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 227
    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v4

    .line 232
    .local v4, speakerOnBefore:Z
    :goto_1
    invoke-static/range {p0 .. p6}, Lcom/android/phone/PhoneUtils;->internalPlaceCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v2

    .line 234
    .local v2, ret:I
    if-eqz v1, :cond_0

    .line 235
    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    .line 236
    .local v3, speakerOnAfter:Z
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 238
    sget-object v5, Lcom/android/phone/MiuiPhoneUtils;->sCurrentAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    invoke-static {v5}, Lcom/android/phone/MiuiPhoneUtils;->resetAudioRoute(Lcom/android/phone/MiuiConstants$AudioMode;)V

    .line 239
    sget-object v5, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    sput-object v5, Lcom/android/phone/MiuiPhoneUtils;->sCurrentAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 242
    .end local v3           #speakerOnAfter:Z
    :cond_0
    return v2

    .line 224
    .end local v1           #isPhoneIdle:Z
    .end local v2           #ret:I
    .end local v4           #speakerOnBefore:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 229
    .restart local v1       #isPhoneIdle:Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4       #speakerOnBefore:Z
    goto :goto_1
.end method

.method public static placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)I
    .locals 8
    .parameter "phone"
    .parameter "number"
    .parameter "ci"

    .prologue
    const/4 v3, 0x0

    .line 203
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 205
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-object v7, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 208
    .local v7, currentAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v6

    .line 209
    .local v6, bluetooth:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v6}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    sget-object v7, Lcom/android/phone/MiuiConstants$AudioMode;->Bluetooth:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 215
    :cond_0
    :goto_0
    invoke-static {v7}, Lcom/android/phone/MiuiPhoneUtils;->setCurrentAudioMode(Lcom/android/phone/MiuiConstants$AudioMode;)V

    .line 217
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/phone/MiuiPhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    move-result v1

    return v1

    .line 211
    :cond_1
    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    sget-object v7, Lcom/android/phone/MiuiConstants$AudioMode;->Speaker:Lcom/android/phone/MiuiConstants$AudioMode;

    goto :goto_0
.end method

.method public static placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/Connection;)I
    .locals 3
    .parameter "phone"
    .parameter "number"
    .parameter "c"

    .prologue
    .line 194
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 195
    .local v1, userData:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 196
    .local v0, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 197
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 199
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/phone/MiuiPhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v2

    return v2
.end method

.method public static postDial(Landroid/content/Context;Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "context"
    .parameter "pni"
    .parameter "c"

    .prologue
    .line 657
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 658
    iget-boolean v0, p1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->emergencySuffixAdded:Z

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->original:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/android/phone/MiuiExtraConnectionData;->setOrigDialAddress(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    iget-object v0, p1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->toDial:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/android/phone/MiuiExtraConnectionData;->setOrigDialAddress(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static preDial(Landroid/content/Context;Ljava/lang/String;ZLandroid/net/Uri;)Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;
    .locals 3
    .parameter "context"
    .parameter "Number"
    .parameter "isEmergency"
    .parameter "contactRef"

    .prologue
    .line 619
    const/4 v0, 0x0

    .line 620
    .local v0, isKnownContact:Z
    if-eqz p3, :cond_0

    .line 621
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 624
    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcom/android/phone/MiuiPhoneUtils;->preDial(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;

    move-result-object v1

    return-object v1
.end method

.method public static preDial(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;
    .locals 6
    .parameter "context"
    .parameter "number"
    .parameter "isEmergency"
    .parameter "isKnownContact"

    .prologue
    const/4 v5, 0x1

    .line 628
    new-instance v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;

    invoke-direct {v1, p1, p2}, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;-><init>(Ljava/lang/String;Z)V

    .line 629
    .local v1, pni:Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;
    if-eqz p2, :cond_1

    .line 630
    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportDialingEmergencyNumberDirectly()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "111"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/phone/MiuiTelephonyCapabilities;->supportDialingEmergencyNumberWithSuffix()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->toDial:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "111"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->toDial:Ljava/lang/String;

    .line 634
    iput-boolean v5, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->emergencySuffixAdded:Z

    .line 653
    :cond_0
    :goto_0
    return-object v1

    .line 638
    :cond_1
    if-eqz p3, :cond_2

    .line 639
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_country_code"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 642
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->addCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->toDial:Ljava/lang/String;

    .line 643
    iput-boolean v5, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->countryCodeAdded:Z

    .line 647
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, networkOperator:Ljava/lang/String;
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->isChineseOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 649
    iget-object v2, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->toDial:Ljava/lang/String;

    invoke-static {p0, v2}, Lmiui/telephony/PhoneNumberUtils;->formatNumberWithIp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->toDial:Ljava/lang/String;

    .line 650
    iput-boolean v5, v1, Lcom/android/phone/MiuiPhoneUtils$PhoneNumberInfo;->ipPrefixAdded:Z

    goto :goto_0
.end method

.method public static removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "group"
    .parameter "pref"

    .prologue
    .line 518
    const/4 v3, 0x0

    .line 519
    .local v3, ret:Z
    if-eqz p1, :cond_1

    .line 520
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    .line 521
    if-nez v3, :cond_1

    .line 522
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 523
    .local v2, prefCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    if-nez v3, :cond_1

    .line 524
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 525
    .local v1, p:Landroid/preference/Preference;
    instance-of v4, v1, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 526
    check-cast v1, Landroid/preference/PreferenceGroup;

    .end local v1           #p:Landroid/preference/Preference;
    invoke-static {v1, p1}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    move-result v3

    .line 523
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    .end local v0           #i:I
    .end local v2           #prefCount:I
    :cond_1
    return v3
.end method

.method public static removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .parameter "group"
    .parameter "prefKey"

    .prologue
    .line 540
    const/4 v3, 0x0

    .line 541
    .local v3, ret:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 542
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 543
    .local v2, prefCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    if-nez v3, :cond_2

    .line 544
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 545
    .local v1, p:Landroid/preference/Preference;
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 546
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    .line 543
    .end local v1           #p:Landroid/preference/Preference;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    .restart local v1       #p:Landroid/preference/Preference;
    :cond_1
    instance-of v4, v1, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 548
    check-cast v1, Landroid/preference/PreferenceGroup;

    .end local v1           #p:Landroid/preference/Preference;
    invoke-static {v1, p1}, Lcom/android/phone/MiuiPhoneUtils;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 552
    .end local v0           #i:I
    .end local v2           #prefCount:I
    :cond_2
    return v3
.end method

.method public static resetAudioRoute(Lcom/android/phone/MiuiConstants$AudioMode;)V
    .locals 7
    .parameter "audioMode"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 150
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 151
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    .line 152
    .local v1, bluetooth:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 153
    .local v2, bluetoothAvailable:Z
    :goto_0
    sget-object v5, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    if-ne p0, v5, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    sget-object p0, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 163
    :cond_0
    :goto_1
    sget-object v5, Lcom/android/phone/MiuiPhoneUtils$9;->$SwitchMap$com$android$phone$MiuiConstants$AudioMode:[I

    invoke-virtual {p0}, Lcom/android/phone/MiuiConstants$AudioMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 191
    :cond_1
    :goto_2
    return-void

    .end local v2           #bluetoothAvailable:Z
    :cond_2
    move v2, v4

    .line 152
    goto :goto_0

    .line 156
    .restart local v2       #bluetoothAvailable:Z
    :cond_3
    if-eqz v2, :cond_4

    .line 157
    sget-object p0, Lcom/android/phone/MiuiConstants$AudioMode;->Bluetooth:Lcom/android/phone/MiuiConstants$AudioMode;

    goto :goto_1

    .line 159
    :cond_4
    sget-object p0, Lcom/android/phone/MiuiConstants$AudioMode;->Earpiece:Lcom/android/phone/MiuiConstants$AudioMode;

    goto :goto_1

    .line 165
    :pswitch_0
    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    if-nez v3, :cond_5

    .line 166
    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 168
    :cond_5
    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    invoke-static {v0, v4, v4}, Lcom/android/phone/MiuiPhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_2

    .line 174
    :pswitch_1
    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 175
    invoke-static {v0, v3, v4}, Lcom/android/phone/MiuiPhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 177
    :cond_6
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    goto :goto_2

    .line 183
    :pswitch_2
    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 184
    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 186
    :cond_7
    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    invoke-static {v0, v4, v4}, Lcom/android/phone/MiuiPhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_2

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setActionBar(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 404
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 405
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 407
    :cond_0
    return-void
.end method

.method public static setCallForwardingOption(Lcom/android/internal/telephony/Phone;IILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .parameter "phone"
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 682
    new-instance v0, Lcom/android/phone/MiuiPhoneUtils$4;

    move-object v1, p5

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/MiuiPhoneUtils$4;-><init>(Landroid/os/Message;Lcom/android/internal/telephony/Phone;IILjava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneUtils$4;->retry()V

    .line 689
    return-void
.end method

.method public static setCurrentAudioMode(Lcom/android/phone/MiuiConstants$AudioMode;)V
    .locals 0
    .parameter "audioMode"

    .prologue
    .line 123
    sput-object p0, Lcom/android/phone/MiuiPhoneUtils;->sCurrentAudioMode:Lcom/android/phone/MiuiConstants$AudioMode;

    .line 124
    return-void
.end method

.method public static setOutgoingCallerIdDisplay(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;)V
    .locals 1
    .parameter "phone"
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 720
    new-instance v0, Lcom/android/phone/MiuiPhoneUtils$8;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/phone/MiuiPhoneUtils$8;-><init>(Landroid/os/Message;Lcom/android/internal/telephony/Phone;I)V

    invoke-virtual {v0}, Lcom/android/phone/MiuiPhoneUtils$8;->retry()V

    .line 726
    return-void
.end method

.method public static setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V
    .locals 11
    .parameter "v"
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 563
    sget-object v8, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 564
    .local v6, style:Landroid/content/res/TypedArray;
    const/4 v8, 0x6

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 565
    .local v0, color:I
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 569
    :cond_0
    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 570
    .local v1, colors:Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    .line 571
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 574
    :cond_1
    const/4 v8, 0x2

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 575
    .local v7, ts:I
    if-eqz v7, :cond_2

    .line 576
    int-to-float v8, v7

    invoke-virtual {p0, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 579
    :cond_2
    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 580
    if-eqz v1, :cond_3

    .line 581
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 584
    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 585
    if-eqz v1, :cond_4

    .line 586
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 591
    :cond_4
    const/16 v8, 0x24

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 592
    .local v2, shadowColor:I
    const/16 v8, 0x25

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 593
    .local v3, shadowDx:F
    const/16 v8, 0x26

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 594
    .local v4, shadowDy:F
    const/16 v8, 0x27

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 595
    .local v5, shadowRadius:F
    invoke-virtual {p0, v5, v3, v4, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 597
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 598
    return-void
.end method
