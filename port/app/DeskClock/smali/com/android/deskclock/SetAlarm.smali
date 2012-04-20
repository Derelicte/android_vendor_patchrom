.class public Lcom/android/deskclock/SetAlarm;
.super Landroid/preference/PreferenceActivity;
.source "SetAlarm.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# static fields
.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mAlarmPref:Lcom/android/deskclock/AlarmPreference;

.field private mEnableAlarm:Z

.field private mHour:I

.field private mId:I

.field private mLabel:Landroid/preference/EditTextPreference;

.field private mMinute:I

.field private mOriginalAlarm:Lcom/android/deskclock/Alarm;

.field private mRepeatPref:Lcom/android/deskclock/RepeatPreference;

.field private mTimePicker:Landroid/widget/TimePicker;

.field private mVibratePref:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/deskclock/SetAlarm;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/SetAlarm;Lcom/android/deskclock/Alarm;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/deskclock/SetAlarm;->saveAlarm(Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/SetAlarm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/deskclock/SetAlarm;->mEnableAlarm:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/deskclock/SetAlarm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/deskclock/SetAlarm;->mEnableAlarm:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/deskclock/SetAlarm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->isModified()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->showConfirmDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/deskclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->revert()V

    return-void
.end method

.method private buildAlarmFromUi()Lcom/android/deskclock/Alarm;
    .locals 2

    .prologue
    .line 259
    new-instance v0, Lcom/android/deskclock/Alarm;

    invoke-direct {v0}, Lcom/android/deskclock/Alarm;-><init>()V

    .line 260
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    iget v1, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    iput v1, v0, Lcom/android/deskclock/Alarm;->id:I

    .line 261
    iget-boolean v1, p0, Lcom/android/deskclock/SetAlarm;->mEnableAlarm:Z

    iput-boolean v1, v0, Lcom/android/deskclock/Alarm;->enabled:Z

    .line 262
    iget v1, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    iput v1, v0, Lcom/android/deskclock/Alarm;->hour:I

    .line 263
    iget v1, p0, Lcom/android/deskclock/SetAlarm;->mMinute:I

    iput v1, v0, Lcom/android/deskclock/Alarm;->minutes:I

    .line 264
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    invoke-virtual {v1}, Lcom/android/deskclock/RepeatPreference;->getDaysOfWeek()Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-result-object v1

    iput-object v1, v0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    .line 265
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/deskclock/Alarm;->vibrate:Z

    .line 266
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    invoke-virtual {v1}, Lcom/android/deskclock/AlarmPreference;->getAlert()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 268
    return-object v0
.end method

.method static formatToast(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 23
    .parameter "context"
    .parameter "timeInMillis"
    .parameter "arrayId"

    .prologue
    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v6, p1, v19

    .line 334
    .local v6, delta:J
    const-wide/32 v19, 0x36ee80

    div-long v13, v6, v19

    .line 335
    .local v13, hours:J
    const-wide/32 v19, 0xea60

    div-long v19, v6, v19

    const-wide/16 v21, 0x3c

    rem-long v17, v19, v21

    .line 336
    .local v17, minutes:J
    const-wide/16 v19, 0x18

    div-long v4, v13, v19

    .line 337
    .local v4, days:J
    const-wide/16 v19, 0x18

    rem-long v13, v13, v19

    .line 339
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-nez v19, :cond_0

    const-string v3, ""

    .line 343
    .local v3, daySeq:Ljava/lang/String;
    :goto_0
    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-nez v19, :cond_2

    const-string v16, ""

    .line 347
    .local v16, minSeq:Ljava/lang/String;
    :goto_1
    const-wide/16 v19, 0x0

    cmp-long v19, v13, v19

    if-nez v19, :cond_4

    const-string v12, ""

    .line 351
    .local v12, hourSeq:Ljava/lang/String;
    :goto_2
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-lez v19, :cond_6

    const/4 v8, 0x1

    .line 352
    .local v8, dispDays:Z
    :goto_3
    const-wide/16 v19, 0x0

    cmp-long v19, v13, v19

    if-lez v19, :cond_7

    const/4 v9, 0x1

    .line 353
    .local v9, dispHour:Z
    :goto_4
    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-lez v19, :cond_8

    const/4 v10, 0x1

    .line 355
    .local v10, dispMinute:Z
    :goto_5
    if-eqz v8, :cond_9

    const/16 v19, 0x1

    move/from16 v20, v19

    :goto_6
    if-eqz v9, :cond_a

    const/16 v19, 0x2

    :goto_7
    or-int v20, v20, v19

    if-eqz v10, :cond_b

    const/16 v19, 0x4

    :goto_8
    or-int v15, v20, v19

    .line 359
    .local v15, index:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 360
    .local v11, formats:[Ljava/lang/String;
    aget-object v19, v11, v15

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v3, v20, v21

    const/16 v21, 0x1

    aput-object v12, v20, v21

    const/16 v21, 0x2

    aput-object v16, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 339
    .end local v3           #daySeq:Ljava/lang/String;
    .end local v8           #dispDays:Z
    .end local v9           #dispHour:Z
    .end local v10           #dispMinute:Z
    .end local v11           #formats:[Ljava/lang/String;
    .end local v12           #hourSeq:Ljava/lang/String;
    .end local v15           #index:I
    .end local v16           #minSeq:Ljava/lang/String;
    :cond_0
    const-wide/16 v19, 0x1

    cmp-long v19, v4, v19

    if-nez v19, :cond_1

    const v19, 0x7f0b0018

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const v19, 0x7f0b0019

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 343
    .restart local v3       #daySeq:Ljava/lang/String;
    :cond_2
    const-wide/16 v19, 0x1

    cmp-long v19, v17, v19

    if-nez v19, :cond_3

    const v19, 0x7f0b001c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_3
    const v19, 0x7f0b001d

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 347
    .restart local v16       #minSeq:Ljava/lang/String;
    :cond_4
    const-wide/16 v19, 0x1

    cmp-long v19, v13, v19

    if-nez v19, :cond_5

    const v19, 0x7f0b001a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    :cond_5
    const v19, 0x7f0b001b

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 351
    .restart local v12       #hourSeq:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 352
    .restart local v8       #dispDays:Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 353
    .restart local v9       #dispHour:Z
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 355
    .restart local v10       #dispMinute:Z
    :cond_9
    const/16 v19, 0x0

    move/from16 v20, v19

    goto/16 :goto_6

    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_7

    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_8
.end method

.method static getAlarmInFurture(Landroid/content/Context;Lcom/android/deskclock/Alarm;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "alarm"

    .prologue
    .line 305
    iget v0, p1, Lcom/android/deskclock/Alarm;->hour:I

    iget v1, p1, Lcom/android/deskclock/Alarm;->minutes:I

    iget-object v2, p1, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/Alarms;->calculateAlarm(IILcom/android/deskclock/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const v2, 0x7f0c0007

    invoke-static {p0, v0, v1, v2}, Lcom/android/deskclock/SetAlarm;->formatToast(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAlertEqual(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 1
    .parameter "oriAlert"
    .parameter "curAlert"

    .prologue
    .line 286
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 287
    const/4 v0, 0x1

    .line 291
    :goto_0
    return v0

    .line 288
    :cond_0
    if-eqz p1, :cond_1

    .line 289
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 291
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isModified()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 272
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    iget v1, v1, Lcom/android/deskclock/Alarm;->hour:I

    iget v2, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    iget v1, v1, Lcom/android/deskclock/Alarm;->minutes:I

    iget v2, p0, Lcom/android/deskclock/SetAlarm;->mMinute:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    iget-object v1, v1, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v1, p0, v0}, Lcom/android/deskclock/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    invoke-virtual {v2}, Lcom/android/deskclock/RepeatPreference;->getDaysOfWeek()Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/android/deskclock/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    iget-boolean v1, v1, Lcom/android/deskclock/Alarm;->vibrate:Z

    iget-object v2, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/deskclock/SetAlarm;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    iget-object v2, v2, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/deskclock/SetAlarm;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    iget-object v1, v1, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    invoke-virtual {v2}, Lcom/android/deskclock/AlarmPreference;->getAlert()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/deskclock/SetAlarm;->isAlertEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static popAlarmSetToast(Landroid/content/Context;IILcom/android/deskclock/Alarm$DaysOfWeek;)V
    .locals 2
    .parameter "context"
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    .line 316
    invoke-static {p1, p2, p3}, Lcom/android/deskclock/Alarms;->calculateAlarm(IILcom/android/deskclock/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/deskclock/SetAlarm;->popAlarmSetToast(Landroid/content/Context;J)V

    .line 319
    return-void
.end method

.method static popAlarmSetToast(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "timeInMillis"

    .prologue
    .line 322
    const/high16 v2, 0x7f0c

    invoke-static {p0, p1, p2, v2}, Lcom/android/deskclock/SetAlarm;->formatToast(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, toastText:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 324
    .local v0, toast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/deskclock/ToastMaster;->setToast(Landroid/widget/Toast;)V

    .line 325
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 326
    return-void
.end method

.method private replaceNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "string"

    .prologue
    .line 282
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1
    :cond_0
    return-object p1
.end method

.method private revert()V
    .locals 3

    .prologue
    .line 295
    iget v0, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    .line 297
    .local v0, newId:I
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    iget v1, v1, Lcom/android/deskclock/Alarm;->id:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 298
    invoke-static {p0, v0}, Lcom/android/deskclock/Alarms;->deleteAlarm(Landroid/content/Context;I)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    invoke-direct {p0, v1}, Lcom/android/deskclock/SetAlarm;->saveAlarm(Lcom/android/deskclock/Alarm;)J

    goto :goto_0
.end method

.method private saveAlarm(Lcom/android/deskclock/Alarm;)J
    .locals 4
    .parameter "alarm"

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->buildAlarmFromUi()Lcom/android/deskclock/Alarm;

    move-result-object p1

    .line 247
    :cond_0
    iget v2, p1, Lcom/android/deskclock/Alarm;->id:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 248
    invoke-static {p0, p1}, Lcom/android/deskclock/Alarms;->addAlarm(Landroid/content/Context;Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    .line 251
    .local v0, time:J
    iget v2, p1, Lcom/android/deskclock/Alarm;->id:I

    iput v2, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    .line 255
    :goto_0
    return-wide v0

    .line 253
    .end local v0           #time:J
    :cond_1
    invoke-static {p0, p1}, Lcom/android/deskclock/Alarms;->setAlarm(Landroid/content/Context;Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    .restart local v0       #time:J
    goto :goto_0
.end method

.method private showConfirmDialog()V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0060

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/deskclock/SetAlarm$4;

    invoke-direct {v2, p0}, Lcom/android/deskclock/SetAlarm$4;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 225
    return-void
.end method

.method private showTimePicker()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 229
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePicker:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 230
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePicker:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/android/deskclock/SetAlarm;->mMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 231
    return-void
.end method

.method private updatePrefs(Lcom/android/deskclock/Alarm;)V
    .locals 2
    .parameter "alarm"

    .prologue
    .line 192
    iget v0, p1, Lcom/android/deskclock/Alarm;->id:I

    iput v0, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    .line 193
    iget-boolean v0, p1, Lcom/android/deskclock/Alarm;->enabled:Z

    iput-boolean v0, p0, Lcom/android/deskclock/SetAlarm;->mEnableAlarm:Z

    .line 194
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    iget-object v1, p1, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    iget v0, p1, Lcom/android/deskclock/Alarm;->hour:I

    iput v0, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    .line 196
    iget v0, p1, Lcom/android/deskclock/Alarm;->minutes:I

    iput v0, p0, Lcom/android/deskclock/SetAlarm;->mMinute:I

    .line 197
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    iget-object v1, p1, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/RepeatPreference;->setDaysOfWeek(Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 198
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p1, Lcom/android/deskclock/Alarm;->vibrate:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    iget-object v1, p1, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/AlarmPreference;->setAlert(Landroid/net/Uri;)V

    .line 201
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->showTimePicker()V

    .line 202
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->isModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->showConfirmDialog()V

    .line 212
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->revert()V

    .line 210
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v8, 0x7f04000d

    invoke-virtual {p0, v8}, Lcom/android/deskclock/SetAlarm;->setContentView(I)V

    .line 67
    const v8, 0x7f0f0027

    invoke-virtual {p0, v8}, Lcom/android/deskclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TimePicker;

    iput-object v8, p0, Lcom/android/deskclock/SetAlarm;->mTimePicker:Landroid/widget/TimePicker;

    .line 71
    const/high16 v8, 0x7f06

    invoke-virtual {p0, v8}, Lcom/android/deskclock/SetAlarm;->addPreferencesFromResource(I)V

    .line 74
    const-string v8, "alarm"

    invoke-virtual {p0, v8}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/deskclock/AlarmPreference;

    iput-object v8, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    .line 75
    iget-object v8, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    invoke-virtual {v8, p0}, Lcom/android/deskclock/AlarmPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    const-string v8, "vibrate"

    invoke-virtual {p0, v8}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    .line 77
    iget-object v8, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    const-string v8, "vibrator"

    invoke-virtual {p0, v8}, Lcom/android/deskclock/SetAlarm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    .line 79
    .local v7, v:Landroid/os/Vibrator;
    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v8

    if-nez v8, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 82
    :cond_0
    const-string v8, "setRepeat"

    invoke-virtual {p0, v8}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/deskclock/RepeatPreference;

    iput-object v8, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    .line 83
    iget-object v8, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    invoke-virtual {v8, p0}, Lcom/android/deskclock/RepeatPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 86
    .local v4, i:Landroid/content/Intent;
    const-string v8, "intent.extra.alarm"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    .line 88
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lcom/android/deskclock/Alarm;

    .end local v0           #alarm:Lcom/android/deskclock/Alarm;
    invoke-direct {v0}, Lcom/android/deskclock/Alarm;-><init>()V

    .line 92
    .restart local v0       #alarm:Lcom/android/deskclock/Alarm;
    :cond_1
    iput-object v0, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    .line 94
    const-string v8, "label"

    invoke-virtual {p0, v8}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    .line 95
    iget-object v8, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    iget-object v9, v9, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 96
    iget-object v8, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    iget-object v9, v9, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v8, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    iget-object v8, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    invoke-direct {p0, v8}, Lcom/android/deskclock/SetAlarm;->updatePrefs(Lcom/android/deskclock/Alarm;)V

    .line 103
    iget-object v8, p0, Lcom/android/deskclock/SetAlarm;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v8, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->getListView()Landroid/widget/ListView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 110
    .local v1, bar:Landroid/app/ActionBar;
    if-eqz v1, :cond_2

    .line 111
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/android/deskclock/SetAlarm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 113
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v8, 0x3030020

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 115
    .local v3, customActionBarView:Landroid/view/View;
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    const v8, 0x30b002e

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 117
    .local v6, saveMenuItem:Landroid/view/View;
    new-instance v8, Lcom/android/deskclock/SetAlarm$1;

    invoke-direct {v8, p0}, Lcom/android/deskclock/SetAlarm$1;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v8, 0x30b002b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 129
    .local v2, cancelMenuItem:Landroid/view/View;
    new-instance v8, Lcom/android/deskclock/SetAlarm$2;

    invoke-direct {v8, p0}, Lcom/android/deskclock/SetAlarm$2;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const/16 v8, 0x10

    const/16 v9, 0x1a

    invoke-virtual {v1, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 145
    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 147
    .end local v2           #cancelMenuItem:Landroid/view/View;
    .end local v3           #customActionBarView:Landroid/view/View;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #saveMenuItem:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "p"
    .parameter "newValue"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    if-ne p1, v1, :cond_0

    .line 176
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, summary:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
    .end local v0           #summary:Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/android/deskclock/SetAlarm;->sHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/deskclock/SetAlarm$3;

    invoke-direct {v2, p0}, Lcom/android/deskclock/SetAlarm$3;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    const/4 v1, 0x1

    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 160
    const-string v1, "originalAlarm"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    .line 161
    .local v0, alarmFromBundle:Lcom/android/deskclock/Alarm;
    if-eqz v0, :cond_0

    .line 162
    iput-object v0, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    .line 165
    :cond_0
    const-string v1, "currentAlarm"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #alarmFromBundle:Lcom/android/deskclock/Alarm;
    check-cast v0, Lcom/android/deskclock/Alarm;

    .line 166
    .restart local v0       #alarmFromBundle:Lcom/android/deskclock/Alarm;
    if-eqz v0, :cond_1

    .line 167
    invoke-direct {p0, v0}, Lcom/android/deskclock/SetAlarm;->updatePrefs(Lcom/android/deskclock/Alarm;)V

    .line 169
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    const-string v0, "originalAlarm"

    iget-object v1, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 153
    const-string v0, "currentAlarm"

    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->buildAlarmFromUi()Lcom/android/deskclock/Alarm;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 154
    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 1
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 235
    iput p2, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    .line 236
    iput p3, p0, Lcom/android/deskclock/SetAlarm;->mMinute:I

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/SetAlarm;->mEnableAlarm:Z

    .line 239
    return-void
.end method
