.class public Lcom/android/deskclock/AlarmAlertFullScreen;
.super Landroid/app/Activity;
.source "AlarmAlertFullScreen.java"

# interfaces
.implements Lmiui/app/screenelement/elements/AdvancedSlider$OnLaunchListener;
.implements Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;


# instance fields
.field protected mAlarm:Lcom/android/deskclock/Alarm;

.field private mAlarmViewRoot:Landroid/view/ViewGroup;

.field private mAlertView:Lmiui/app/screenelement/MiAdvancedView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSnoozeMinutes:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field protected mTimerAlarm:Lcom/android/deskclock/Alarm;

.field private mTimerDialog:Landroid/app/AlertDialog;

.field private mVolumeBehavior:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    new-instance v0, Lcom/android/deskclock/AlarmAlertFullScreen$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmAlertFullScreen$1;-><init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmAlertFullScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->snooze()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/AlarmAlertFullScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmAlertFullScreen;->dismiss(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/deskclock/AlarmAlertFullScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVolumeBehavior:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/AlarmAlertFullScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->dismissTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/deskclock/AlarmAlertFullScreen;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmAlertFullScreen;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private dismiss(Z)V
    .locals 3
    .parameter "killed"

    .prologue
    .line 376
    if-eqz p1, :cond_1

    const-string v1, "Alarm killed"

    :goto_0
    invoke-static {v1}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    .line 379
    if-nez p1, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    .line 382
    .local v0, nm:Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v1, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 383
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/deskclock/AlarmAlertFullScreen;->stopService(Landroid/content/Intent;)Z

    .line 385
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    .line 386
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mTimerAlarm:Lcom/android/deskclock/Alarm;

    if-nez v1, :cond_2

    .line 387
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->finish()V

    .line 391
    :goto_1
    return-void

    .line 376
    :cond_1
    const-string v1, "Alarm dismissed by user"

    goto :goto_0

    .line 389
    :cond_2
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarmViewRoot:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private dismissTimer()V
    .locals 2

    .prologue
    .line 394
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->stopService(Landroid/content/Intent;)Z

    .line 395
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mTimerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mTimerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 398
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mTimerAlarm:Lcom/android/deskclock/Alarm;

    .line 399
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    if-nez v0, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->finish()V

    .line 402
    :cond_1
    return-void
.end method

.method private enableStatusBar(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 416
    .local v0, state:I
    if-nez p1, :cond_0

    .line 417
    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 419
    const/high16 v1, 0x20

    or-int/2addr v0, v1

    .line 420
    const/high16 v1, 0x100

    or-int/2addr v0, v1

    .line 421
    const/high16 v1, 0x40

    or-int/2addr v0, v1

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 424
    return-void
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 371
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 317
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 315
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 309
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method private setAlarmAlertFullScreenView(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x1

    .line 214
    iget-object v9, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlertView:Lmiui/app/screenelement/MiAdvancedView;

    if-eqz v9, :cond_0

    .line 215
    iget-object v9, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlertView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v9}, Lmiui/app/screenelement/MiAdvancedView;->cleanUp()V

    .line 216
    iget-object v9, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarmViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 219
    :cond_0
    const-string v9, "intent.extra.alarm"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    .line 221
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    new-instance v5, Lmiui/app/screenelement/ResourceManager;

    new-instance v9, Lmiui/app/screenelement/util/ZipResourceLoader;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "alarm_screen.mtz"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lmiui/app/screenelement/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Lmiui/app/screenelement/ResourceManager;-><init>(Lmiui/app/screenelement/ResourceManager$ResourceLoader;)V

    .line 223
    .local v5, resManager:Lmiui/app/screenelement/ResourceManager;
    new-instance v4, Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v4, p0, v5}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;)V

    .line 224
    .local v4, mElementContext:Lmiui/app/screenelement/ScreenContext;
    new-instance v6, Lmiui/app/screenelement/ScreenElementRoot;

    invoke-direct {v6, v4}, Lmiui/app/screenelement/ScreenElementRoot;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    .line 225
    .local v6, root:Lmiui/app/screenelement/ScreenElementRoot;
    invoke-virtual {v6}, Lmiui/app/screenelement/ScreenElementRoot;->load()Z

    .line 227
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "snooze_duration"

    const-string v11, "10"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mSnoozeMinutes:I

    .line 229
    new-instance v8, Lmiui/app/screenelement/util/IndexedStringVariable;

    const-string v9, "snooze_message"

    invoke-virtual {v6}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v10

    iget-object v10, v10, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v8, v9, v10}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    .line 231
    .local v8, snooze:Lmiui/app/screenelement/util/IndexedStringVariable;
    const v9, 0x7f0b0017

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mSnoozeMinutes:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {p0, v9, v10}, Lcom/android/deskclock/AlarmAlertFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 232
    new-instance v2, Lmiui/app/screenelement/util/IndexedStringVariable;

    const-string v9, "drag_message"

    invoke-virtual {v6}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v10

    iget-object v10, v10, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v2, v9, v10}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    .line 234
    .local v2, drag:Lmiui/app/screenelement/util/IndexedStringVariable;
    const v9, 0x7f0b0055

    invoke-virtual {p0, v9}, Lcom/android/deskclock/AlarmAlertFullScreen;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 235
    new-instance v3, Lmiui/app/screenelement/util/IndexedStringVariable;

    const-string v9, "label"

    invoke-virtual {v6}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v10

    iget-object v10, v10, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v3, v9, v10}, Lmiui/app/screenelement/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    .line 237
    .local v3, lable:Lmiui/app/screenelement/util/IndexedStringVariable;
    invoke-virtual {v0, p0}, Lcom/android/deskclock/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 239
    const-string v9, "dismiss_alarm"

    invoke-virtual {v6, v9}, Lmiui/app/screenelement/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v7

    check-cast v7, Lmiui/app/screenelement/elements/AdvancedSlider;

    .line 240
    .local v7, slider:Lmiui/app/screenelement/elements/AdvancedSlider;
    invoke-virtual {v7, p0}, Lmiui/app/screenelement/elements/AdvancedSlider;->setOnLaunchListener(Lmiui/app/screenelement/elements/AdvancedSlider$OnLaunchListener;)V

    .line 241
    const-string v9, "snooze_alarm"

    invoke-virtual {v6, v9}, Lmiui/app/screenelement/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/elements/ButtonScreenElement;

    .line 243
    .local v1, button:Lmiui/app/screenelement/elements/ButtonScreenElement;
    invoke-virtual {v1, p0}, Lmiui/app/screenelement/elements/ButtonScreenElement;->setListener(Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonActionListener;)V

    .line 245
    new-instance v9, Lmiui/app/screenelement/MiAdvancedView;

    invoke-direct {v9, p0, v6}, Lmiui/app/screenelement/MiAdvancedView;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ScreenElementRoot;)V

    iput-object v9, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlertView:Lmiui/app/screenelement/MiAdvancedView;

    .line 246
    iget-object v9, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarmViewRoot:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlertView:Lmiui/app/screenelement/MiAdvancedView;

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v11, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget v9, v0, Lcom/android/deskclock/Alarm;->id:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_2

    .line 250
    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mTimerAlarm:Lcom/android/deskclock/Alarm;

    .line 251
    iget-object v9, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    if-nez v9, :cond_1

    .line 252
    iget-object v9, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarmViewRoot:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 254
    :cond_1
    iget-object v9, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mTimerAlarm:Lcom/android/deskclock/Alarm;

    invoke-direct {p0, v9}, Lcom/android/deskclock/AlarmAlertFullScreen;->showTimerDialog(Lcom/android/deskclock/Alarm;)V

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_2
    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    .line 257
    iget-object v9, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarmViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private showTimerDialog(Lcom/android/deskclock/Alarm;)V
    .locals 6
    .parameter "alarm"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mTimerDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v0, p1, Lcom/android/deskclock/Alarm;->hour:I

    if-lez v0, :cond_1

    const v0, 0x7f0b0067

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/deskclock/Alarm;->hour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p1, Lcom/android/deskclock/Alarm;->minutes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b005e

    new-instance v2, Lcom/android/deskclock/AlarmAlertFullScreen$2;

    invoke-direct {v2, p0}, Lcom/android/deskclock/AlarmAlertFullScreen$2;-><init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mTimerDialog:Landroid/app/AlertDialog;

    .line 274
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mTimerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 275
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mTimerDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/deskclock/AlarmAlertFullScreen$3;

    invoke-direct {v1, p0}, Lcom/android/deskclock/AlarmAlertFullScreen$3;-><init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mTimerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 306
    return-void

    .line 263
    :cond_1
    const v0, 0x7f0b0068

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/deskclock/Alarm;->minutes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private snooze()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0xea60

    iget v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mSnoozeMinutes:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 326
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v2, v2, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v2, v0, v1}, Lcom/android/deskclock/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    .line 330
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 331
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 334
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {v0, p0}, Lcom/android/deskclock/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 335
    const v1, 0x7f0b0030

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-virtual {p0, v1, v3}, Lcom/android/deskclock/AlarmAlertFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 338
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/AlarmReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    const-string v3, "cancel_snooze"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v3, "intent.extra.alarm"

    iget-object v4, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 341
    iget-object v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v3, v3, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v3, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 343
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v3

    .line 344
    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f020070

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v0, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 346
    const v5, 0x7f0b0031

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/deskclock/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/deskclock/AlarmAlertFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, p0, v0, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 349
    iget v0, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x12

    iput v0, v4, Landroid/app/Notification;->flags:I

    .line 351
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v0, v0, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v3, v0, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 353
    const v0, 0x7f0b0017

    new-array v1, v9, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mSnoozeMinutes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/AlarmAlertFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 359
    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 361
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->stopService(Landroid/content/Intent;)Z

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    .line 363
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mTimerAlarm:Lcom/android/deskclock/Alarm;

    if-nez v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->finish()V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarmViewRoot:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private toggleScreenButtonState(Z)V
    .locals 3
    .parameter "disable"

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_buttons_state"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeAlarmZipToFileSystem()V
    .locals 7

    .prologue
    .line 187
    const/4 v2, 0x0

    .line 188
    .local v2, in:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 190
    .local v4, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "alarm_screen.mtz"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 191
    const-string v5, "alarm_screen.mtz"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/deskclock/AlarmAlertFullScreen;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 192
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 194
    .local v0, buf:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, len:I
    if-lez v3, :cond_2

    .line 195
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v0           #buf:[B
    .end local v3           #len:I
    :catch_0
    move-exception v1

    .line 198
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    const-string v5, "error when writing theme zip to files"

    invoke-static {v5, v1}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    if-eqz v2, :cond_0

    .line 202
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 204
    :cond_0
    if-eqz v4, :cond_1

    .line 205
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 211
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 201
    .restart local v0       #buf:[B
    .restart local v3       #len:I
    :cond_2
    if-eqz v2, :cond_3

    .line 202
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 204
    :cond_3
    if-eqz v4, :cond_1

    .line 205
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 207
    :catch_1
    move-exception v1

    .line 208
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "error when writing theme zip to files"

    invoke-static {v5, v1}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 207
    .end local v0           #buf:[B
    .end local v3           #len:I
    :catch_2
    move-exception v1

    .line 208
    const-string v5, "error when writing theme zip to files"

    invoke-static {v5, v1}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 200
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 201
    if-eqz v2, :cond_4

    .line 202
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 204
    :cond_4
    if-eqz v4, :cond_5

    .line 205
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 209
    :cond_5
    :goto_2
    throw v5

    .line 207
    :catch_3
    move-exception v1

    .line 208
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "error when writing theme zip to files"

    invoke-static {v6, v1}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 475
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmAlertFullScreen;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 477
    iget v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVolumeBehavior:I

    packed-switch v1, :pswitch_data_0

    .line 492
    :cond_0
    :goto_0
    return v0

    .line 479
    :pswitch_0
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->snooze()V

    goto :goto_0

    .line 483
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/deskclock/AlarmAlertFullScreen;->dismiss(Z)V

    goto :goto_0

    .line 492
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 511
    const-string v0, "snooze_alarm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->snooze()V

    .line 513
    const/4 v0, 0x1

    .line 515
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/deskclock/AlarmAlertFullScreen;->setVolumeControlStream(I)V

    .line 139
    const/high16 v6, 0x7f04

    invoke-virtual {p0, v6}, Lcom/android/deskclock/AlarmAlertFullScreen;->setContentView(I)V

    .line 140
    const/high16 v6, 0x7f0f

    invoke-virtual {p0, v6}, Lcom/android/deskclock/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarmViewRoot:Landroid/view/ViewGroup;

    .line 142
    const-string v6, "statusbar"

    invoke-virtual {p0, v6}, Lcom/android/deskclock/AlarmAlertFullScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/StatusBarManager;

    iput-object v6, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 145
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "volume_button_setting"

    const-string v8, "2"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, vol:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVolumeBehavior:I

    .line 151
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 152
    .local v5, win:Landroid/view/Window;
    const/high16 v6, 0x48

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "screen_off"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 157
    const v6, 0x200081

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 163
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v3, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 164
    .local v3, versionCode:I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "version_code"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-le v3, v6, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->writeAlarmZipToFileSystem()V

    .line 167
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 168
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "version_code"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #versionCode:I
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/deskclock/AlarmAlertFullScreen;->setAlarmAlertFullScreenView(Landroid/content/Intent;)V

    .line 179
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "alarm_killed"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 180
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v6, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v6, "com.android.deskclock.ALARM_DISMISS"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v6, "android.intent.action.KEYCODE_POWER_UP"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v6, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    return-void

    .line 171
    .end local v2           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "package name not found"

    invoke-static {v6, v0}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 173
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->writeAlarmZipToFileSystem()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 466
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 469
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 470
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlertView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->cleanUp()V

    .line 471
    return-void
.end method

.method public onLaunch(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 504
    const-string v0, "dismiss_endpoint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->dismiss(Z)V

    .line 507
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 433
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 434
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmAlertFullScreen;->setIntent(Landroid/content/Intent;)V

    .line 435
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmAlertFullScreen;->setAlarmAlertFullScreenView(Landroid/content/Intent;)V

    .line 436
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 440
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 441
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlertView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->onPause()V

    .line 444
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->toggleScreenButtonState(Z)V

    .line 445
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->enableStatusBar(Z)V

    .line 446
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 450
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 452
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v0, v0, Lcom/android/deskclock/Alarm;->id:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v1, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v0, v1}, Lcom/android/deskclock/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/deskclock/Alarm;

    move-result-object v0

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlertView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->getRoot()Lmiui/app/screenelement/ScreenElementRoot;

    move-result-object v0

    const-string v1, "snooze_alarm"

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/elements/ScreenElement;->show(Z)V

    .line 459
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlertView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->onResume()V

    .line 460
    invoke-direct {p0, v3}, Lcom/android/deskclock/AlarmAlertFullScreen;->toggleScreenButtonState(Z)V

    .line 461
    invoke-direct {p0, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->enableStatusBar(Z)V

    .line 462
    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlertView:Lmiui/app/screenelement/MiAdvancedView;

    invoke-virtual {v0}, Lmiui/app/screenelement/MiAdvancedView;->getRoot()Lmiui/app/screenelement/ScreenElementRoot;

    move-result-object v0

    const-string v1, "snooze_alarm"

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/app/screenelement/elements/ScreenElement;->show(Z)V

    goto :goto_0
.end method
