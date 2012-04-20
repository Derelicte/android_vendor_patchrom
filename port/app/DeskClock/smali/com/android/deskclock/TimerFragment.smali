.class public Lcom/android/deskclock/TimerFragment;
.super Landroid/app/Fragment;
.source "TimerFragment.java"

# interfaces
.implements Lcom/android/deskclock/WatchDial$ValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/TimerFragment$TimerThread;
    }
.end annotation


# instance fields
.field private final REQUEST_RINETONE:I

.field private mActivity:Landroid/app/Activity;

.field private mCancelButton:Landroid/view/View;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mConitnueButton:Landroid/view/View;

.field private mDuration:J

.field private mEndTime:J

.field private mHandler:Landroid/os/Handler;

.field private mIsShown:Z

.field private mKeepScreen:Landroid/view/View;

.field private mPauseButton:Landroid/view/View;

.field private mRingToneText:Landroid/widget/TextView;

.field private mRingtone:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mSP:Landroid/content/SharedPreferences;

.field private mStartButton:Landroid/view/View;

.field private mTimeRemained:J

.field private mTimerState:I

.field private mTimerThread:Lcom/android/deskclock/TimerFragment$TimerThread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWatchDial:Lcom/android/deskclock/WatchDial;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/deskclock/TimerFragment;->REQUEST_RINETONE:I

    .line 381
    new-instance v0, Lcom/android/deskclock/TimerFragment$7;

    invoke-direct {v0, p0}, Lcom/android/deskclock/TimerFragment$7;-><init>(Lcom/android/deskclock/TimerFragment;)V

    iput-object v0, p0, Lcom/android/deskclock/TimerFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/TimerFragment;)Lcom/android/deskclock/WatchDial;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/TimerFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/deskclock/TimerFragment;->mTimerState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/deskclock/TimerFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/deskclock/TimerFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/android/deskclock/TimerFragment;->mEndTime:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/deskclock/TimerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/deskclock/TimerFragment;->timerOff()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/deskclock/TimerFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/android/deskclock/TimerFragment;->mDuration:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/deskclock/TimerFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/android/deskclock/TimerFragment;->mTimeRemained:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/deskclock/TimerFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/android/deskclock/TimerFragment;->mTimeRemained:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/deskclock/TimerFragment;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/TimerFragment;->startTimer(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/deskclock/TimerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/deskclock/TimerFragment;->cancelTimer()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/deskclock/TimerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/deskclock/TimerFragment;->pauseTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/deskclock/TimerFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/deskclock/TimerFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mSP:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/deskclock/TimerFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/deskclock/TimerFragment;->setKeepScreen(Z)V

    return-void
.end method

.method private cancelTimer()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 297
    invoke-direct {p0, v0}, Lcom/android/deskclock/TimerFragment;->setTimerState(I)V

    .line 298
    invoke-direct {p0, v0}, Lcom/android/deskclock/TimerFragment;->setKeepScreen(Z)V

    .line 299
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mTimerThread:Lcom/android/deskclock/TimerFragment$TimerThread;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mTimerThread:Lcom/android/deskclock/TimerFragment$TimerThread;

    invoke-virtual {v0}, Lcom/android/deskclock/TimerFragment$TimerThread;->stopThread()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    invoke-virtual {v0}, Lcom/android/deskclock/WatchDial;->resetWatchDial()V

    .line 303
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    invoke-virtual {v0}, Lcom/android/deskclock/WatchDial;->drawAll()V

    .line 304
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/deskclock/AlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    const-string v1, "action.timer.stop"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 307
    return-void
.end method

.method private pauseTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 310
    iget v0, p0, Lcom/android/deskclock/TimerFragment;->mTimerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 311
    iget-wide v0, p0, Lcom/android/deskclock/TimerFragment;->mEndTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/deskclock/TimerFragment;->mTimeRemained:J

    .line 312
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimerFragment;->setTimerState(I)V

    .line 313
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mTimerThread:Lcom/android/deskclock/TimerFragment$TimerThread;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mTimerThread:Lcom/android/deskclock/TimerFragment$TimerThread;

    invoke-virtual {v0}, Lcom/android/deskclock/TimerFragment$TimerThread;->stopThread()V

    .line 316
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/deskclock/AlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    const-string v1, "action.timer.stop"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 322
    :cond_1
    :goto_0
    return-void

    .line 319
    :cond_2
    iget v0, p0, Lcom/android/deskclock/TimerFragment;->mTimerState:I

    if-ne v0, v4, :cond_1

    .line 320
    iget-wide v0, p0, Lcom/android/deskclock/TimerFragment;->mTimeRemained:J

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/TimerFragment;->startTimer(J)V

    goto :goto_0
.end method

.method private setKeepScreen(Z)V
    .locals 1
    .parameter "isKeepScreenOn"

    .prologue
    .line 226
    if-eqz p1, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private setRingtoneText(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"

    .prologue
    .line 214
    iget-object v3, p0, Lcom/android/deskclock/TimerFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 215
    .local v2, ringtone:Landroid/media/Ringtone;
    if-nez v2, :cond_0

    .line 216
    iget-object v3, p0, Lcom/android/deskclock/TimerFragment;->mActivity:Landroid/app/Activity;

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 218
    :cond_0
    if-eqz v2, :cond_1

    .line 219
    iget-object v3, p0, Lcom/android/deskclock/TimerFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, fileName:Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 221
    .local v1, pos:I
    iget-object v3, p0, Lcom/android/deskclock/TimerFragment;->mRingToneText:Landroid/widget/TextView;

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .end local v0           #fileName:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .end local v1           #pos:I
    :cond_1
    return-void

    .line 221
    .restart local v0       #fileName:Ljava/lang/String;
    .restart local v1       #pos:I
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setTimerState(I)V
    .locals 5
    .parameter "timerState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 238
    packed-switch p1, :pswitch_data_0

    .line 267
    :goto_0
    iput p1, p0, Lcom/android/deskclock/TimerFragment;->mTimerState:I

    .line 268
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mSP:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 269
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "timestate"

    iget v2, p0, Lcom/android/deskclock/TimerFragment;->mTimerState:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 270
    const-string v1, "endtime"

    iget-wide v2, p0, Lcom/android/deskclock/TimerFragment;->mEndTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 271
    const-string v1, "timerremained"

    iget-wide v2, p0, Lcom/android/deskclock/TimerFragment;->mTimeRemained:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 272
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/android/deskclock/TimerFragment;->mDuration:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 273
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 274
    return-void

    .line 240
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :pswitch_0
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mCancelButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mPauseButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mConitnueButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    invoke-virtual {v1, v3}, Lcom/android/deskclock/WatchDial;->setIsRunning(Z)V

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mConitnueButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mPauseButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mCancelButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    invoke-virtual {v1, v4}, Lcom/android/deskclock/WatchDial;->setIsRunning(Z)V

    .line 252
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    iget-wide v2, p0, Lcom/android/deskclock/TimerFragment;->mDuration:J

    invoke-virtual {v1, v2, v3}, Lcom/android/deskclock/WatchDial;->setTotalValue(J)V

    .line 253
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    iget-wide v2, p0, Lcom/android/deskclock/TimerFragment;->mTimeRemained:J

    invoke-virtual {v1, v2, v3}, Lcom/android/deskclock/WatchDial;->setValue(J)V

    goto :goto_0

    .line 256
    :pswitch_2
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mConitnueButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mPauseButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mCancelButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    invoke-virtual {v1, v4}, Lcom/android/deskclock/WatchDial;->setIsRunning(Z)V

    .line 261
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    iget-wide v2, p0, Lcom/android/deskclock/TimerFragment;->mDuration:J

    invoke-virtual {v1, v2, v3}, Lcom/android/deskclock/WatchDial;->setTotalValue(J)V

    .line 262
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    iget-wide v2, p0, Lcom/android/deskclock/TimerFragment;->mTimeRemained:J

    invoke-virtual {v1, v2, v3}, Lcom/android/deskclock/WatchDial;->setValue(J)V

    goto/16 :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startTimer(J)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 277
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 278
    iput-wide p1, p0, Lcom/android/deskclock/TimerFragment;->mTimeRemained:J

    .line 280
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    iget-wide v1, p0, Lcom/android/deskclock/TimerFragment;->mDuration:J

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/WatchDial;->setTotalValue(J)V

    .line 281
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    invoke-virtual {v0, v4}, Lcom/android/deskclock/WatchDial;->setIsRunning(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    iget-wide v1, p0, Lcom/android/deskclock/TimerFragment;->mTimeRemained:J

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/WatchDial;->setValue(J)V

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/deskclock/TimerFragment;->mTimeRemained:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/deskclock/TimerFragment;->mEndTime:J

    .line 285
    new-instance v0, Lcom/android/deskclock/TimerFragment$TimerThread;

    invoke-direct {v0, p0, v4}, Lcom/android/deskclock/TimerFragment$TimerThread;-><init>(Lcom/android/deskclock/TimerFragment;Z)V

    iput-object v0, p0, Lcom/android/deskclock/TimerFragment;->mTimerThread:Lcom/android/deskclock/TimerFragment$TimerThread;

    .line 286
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mTimerThread:Lcom/android/deskclock/TimerFragment$TimerThread;

    invoke-virtual {v0}, Lcom/android/deskclock/TimerFragment$TimerThread;->start()V

    .line 287
    invoke-direct {p0, v4}, Lcom/android/deskclock/TimerFragment;->setTimerState(I)V

    .line 288
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/deskclock/TimerFragment;->setKeepScreen(Z)V

    .line 289
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/deskclock/AlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    const-string v1, "action.timer.start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v1, "extra_endtime"

    iget-wide v2, p0, Lcom/android/deskclock/TimerFragment;->mEndTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 292
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 294
    :cond_0
    return-void
.end method

.method private timerOff()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mTimerThread:Lcom/android/deskclock/TimerFragment$TimerThread;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mTimerThread:Lcom/android/deskclock/TimerFragment$TimerThread;

    invoke-virtual {v0}, Lcom/android/deskclock/TimerFragment$TimerThread;->stopThread()V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    invoke-virtual {v0}, Lcom/android/deskclock/WatchDial;->resetWatchDial()V

    .line 329
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    invoke-virtual {v0}, Lcom/android/deskclock/WatchDial;->drawAll()V

    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/deskclock/TimerFragment;->setTimerState(I)V

    .line 331
    return-void
.end method

.method private updateStartButton(Z)V
    .locals 1
    .parameter "isValid"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 407
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 159
    packed-switch p1, :pswitch_data_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 161
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 162
    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 163
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/deskclock/TimerFragment;->mSP:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Ringtone"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 166
    invoke-direct {p0, v1}, Lcom/android/deskclock/TimerFragment;->setRingtoneText(Landroid/net/Uri;)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/android/deskclock/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/TimerFragment;->mActivity:Landroid/app/Activity;

    .line 68
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/TimerFragment;->mSP:Landroid/content/SharedPreferences;

    .line 69
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mSP:Landroid/content/SharedPreferences;

    const-string v2, "timestate"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/TimerFragment;->mTimerState:I

    .line 70
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mSP:Landroid/content/SharedPreferences;

    const-string v2, "endtime"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/deskclock/TimerFragment;->mEndTime:J

    .line 71
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mSP:Landroid/content/SharedPreferences;

    const-string v2, "duration"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/deskclock/TimerFragment;->mDuration:J

    .line 72
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mSP:Landroid/content/SharedPreferences;

    const-string v2, "timerremained"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/deskclock/TimerFragment;->mTimeRemained:J

    .line 73
    iget-wide v2, p0, Lcom/android/deskclock/TimerFragment;->mTimeRemained:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/deskclock/TimerFragment;->mTimerState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/deskclock/TimerFragment;->mEndTime:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 74
    :cond_0
    iput v1, p0, Lcom/android/deskclock/TimerFragment;->mTimerState:I

    .line 77
    :cond_1
    const v0, 0x7f040011

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/TimerFragment;->mRootView:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0f0036

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/WatchDial;

    iput-object v0, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    .line 79
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    invoke-virtual {v0, p0}, Lcom/android/deskclock/WatchDial;->setValueChangeListener(Lcom/android/deskclock/WatchDial$ValueChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0f003c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/TimerFragment;->mRingToneText:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mSP:Landroid/content/SharedPreferences;

    const-string v2, "Ringtone"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/deskclock/TimerFragment;->setRingtoneText(Landroid/net/Uri;)V

    .line 90
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0f0037

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/TimerFragment;->mStartButton:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mStartButton:Landroid/view/View;

    new-instance v2, Lcom/android/deskclock/TimerFragment$1;

    invoke-direct {v2, p0}, Lcom/android/deskclock/TimerFragment$1;-><init>(Lcom/android/deskclock/TimerFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-direct {p0, v1}, Lcom/android/deskclock/TimerFragment;->updateStartButton(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0f0038

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/TimerFragment;->mCancelButton:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mCancelButton:Landroid/view/View;

    new-instance v2, Lcom/android/deskclock/TimerFragment$2;

    invoke-direct {v2, p0}, Lcom/android/deskclock/TimerFragment$2;-><init>(Lcom/android/deskclock/TimerFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0f0039

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/TimerFragment;->mPauseButton:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mPauseButton:Landroid/view/View;

    new-instance v2, Lcom/android/deskclock/TimerFragment$3;

    invoke-direct {v2, p0}, Lcom/android/deskclock/TimerFragment$3;-><init>(Lcom/android/deskclock/TimerFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0f003a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/TimerFragment;->mConitnueButton:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mConitnueButton:Landroid/view/View;

    new-instance v2, Lcom/android/deskclock/TimerFragment$4;

    invoke-direct {v2, p0}, Lcom/android/deskclock/TimerFragment$4;-><init>(Lcom/android/deskclock/TimerFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/deskclock/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 126
    const v2, 0x2000000a

    const-class v3, Lcom/android/deskclock/TimerFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/TimerFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 129
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mSP:Landroid/content/SharedPreferences;

    const-string v2, "KeepScreen"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 130
    iget v0, p0, Lcom/android/deskclock/TimerFragment;->mTimerState:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/deskclock/TimerFragment;->setKeepScreen(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0f003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/deskclock/TimerFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 132
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0f003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/TimerFragment;->mKeepScreen:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mKeepScreen:Landroid/view/View;

    new-instance v1, Lcom/android/deskclock/TimerFragment$5;

    invoke-direct {v1, p0}, Lcom/android/deskclock/TimerFragment$5;-><init>(Lcom/android/deskclock/TimerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0f003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/TimerFragment;->mRingtone:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mRingtone:Landroid/view/View;

    new-instance v1, Lcom/android/deskclock/TimerFragment$6;

    invoke-direct {v1, p0}, Lcom/android/deskclock/TimerFragment$6;-><init>(Lcom/android/deskclock/TimerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mRootView:Landroid/view/View;

    return-object v0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/android/deskclock/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 130
    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 202
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mTimerThread:Lcom/android/deskclock/TimerFragment$TimerThread;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mTimerThread:Lcom/android/deskclock/TimerFragment$TimerThread;

    invoke-virtual {v0}, Lcom/android/deskclock/TimerFragment$TimerThread;->stopThread()V

    .line 205
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 177
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 178
    iget v1, p0, Lcom/android/deskclock/TimerFragment;->mTimerState:I

    if-ne v1, v4, :cond_2

    .line 179
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    iget-wide v2, p0, Lcom/android/deskclock/TimerFragment;->mDuration:J

    invoke-virtual {v1, v2, v3}, Lcom/android/deskclock/WatchDial;->setTotalValue(J)V

    .line 180
    new-instance v1, Lcom/android/deskclock/TimerFragment$TimerThread;

    invoke-direct {v1, p0, v4}, Lcom/android/deskclock/TimerFragment$TimerThread;-><init>(Lcom/android/deskclock/TimerFragment;Z)V

    iput-object v1, p0, Lcom/android/deskclock/TimerFragment;->mTimerThread:Lcom/android/deskclock/TimerFragment$TimerThread;

    .line 181
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mTimerThread:Lcom/android/deskclock/TimerFragment$TimerThread;

    invoke-virtual {v1}, Lcom/android/deskclock/TimerFragment$TimerThread;->start()V

    .line 193
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/deskclock/TimerFragment;->mIsShown:Z

    if-eqz v1, :cond_1

    .line 194
    iget v1, p0, Lcom/android/deskclock/TimerFragment;->mTimerState:I

    if-nez v1, :cond_4

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/deskclock/TimerFragment;->setKeepScreen(Z)V

    .line 196
    :cond_1
    iget v0, p0, Lcom/android/deskclock/TimerFragment;->mTimerState:I

    invoke-direct {p0, v0}, Lcom/android/deskclock/TimerFragment;->setTimerState(I)V

    .line 197
    return-void

    .line 182
    :cond_2
    iget v1, p0, Lcom/android/deskclock/TimerFragment;->mTimerState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 183
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    iget-wide v2, p0, Lcom/android/deskclock/TimerFragment;->mDuration:J

    invoke-virtual {v1, v2, v3}, Lcom/android/deskclock/WatchDial;->setTotalValue(J)V

    .line 184
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    invoke-virtual {v1, v4}, Lcom/android/deskclock/WatchDial;->setIsRunning(Z)V

    .line 185
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    iget-wide v2, p0, Lcom/android/deskclock/TimerFragment;->mTimeRemained:J

    invoke-virtual {v1, v2, v3}, Lcom/android/deskclock/WatchDial;->setValue(J)V

    .line 186
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    invoke-virtual {v1}, Lcom/android/deskclock/WatchDial;->drawAll()V

    goto :goto_0

    .line 188
    :cond_3
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    invoke-virtual {v1}, Lcom/android/deskclock/WatchDial;->getHour()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    invoke-virtual {v1}, Lcom/android/deskclock/WatchDial;->getMinute()I

    move-result v1

    if-gtz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    invoke-virtual {v1}, Lcom/android/deskclock/WatchDial;->runCircle()V

    goto :goto_0

    .line 194
    :cond_4
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mSP:Landroid/content/SharedPreferences;

    const-string v2, "KeepScreen"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/deskclock/TimerFragment;->setKeepScreen(Z)V

    .line 211
    return-void
.end method

.method public onValueChanged(III)V
    .locals 1
    .parameter "hour"
    .parameter "minute"
    .parameter "second"

    .prologue
    .line 402
    if-gtz p1, :cond_0

    if-lez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/deskclock/TimerFragment;->updateStartButton(Z)V

    .line 403
    return-void

    .line 402
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public operationAfterTimerDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 344
    iput-boolean v1, p0, Lcom/android/deskclock/TimerFragment;->mIsShown:Z

    .line 345
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0, v1}, Lcom/android/deskclock/TimerFragment;->setKeepScreen(Z)V

    .line 348
    :cond_0
    return-void
.end method

.method public operationAfterTimerShown()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 334
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/deskclock/TimerFragment;->mIsShown:Z

    .line 335
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    invoke-virtual {v1}, Lcom/android/deskclock/WatchDial;->getHour()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    invoke-virtual {v1}, Lcom/android/deskclock/WatchDial;->getMinute()I

    move-result v1

    if-gtz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;

    invoke-virtual {v1}, Lcom/android/deskclock/WatchDial;->runCircle()V

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mSP:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 339
    iget v1, p0, Lcom/android/deskclock/TimerFragment;->mTimerState:I

    if-nez v1, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/deskclock/TimerFragment;->setKeepScreen(Z)V

    .line 341
    :cond_1
    return-void

    .line 339
    :cond_2
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment;->mSP:Landroid/content/SharedPreferences;

    const-string v2, "KeepScreen"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
