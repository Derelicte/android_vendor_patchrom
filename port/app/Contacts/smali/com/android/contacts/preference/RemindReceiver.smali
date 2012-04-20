.class public Lcom/android/contacts/preference/RemindReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemindReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/android/contacts/preference/RemindReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/preference/RemindReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private startCheck(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/preference/CheckUnsynchronizedServices;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string v1, "action_check_account_sync_status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 90
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "check_unsynchronized_remind_date"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    const-string v19, "android.intent.action.USER_PRESENT"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 28
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 29
    .local v15, sp:Landroid/content/SharedPreferences;
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v19, "yyyy-MM-dd"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 30
    .local v12, format:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 31
    .local v5, cal:Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    .line 32
    .local v18, today:Ljava/lang/String;
    const-string v19, "check_unsynchronized_remind_date"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 33
    .local v13, lastCheckDate:Ljava/lang/String;
    const-string v19, "android.contacts.CHECK_UNSYNCHRONIZED_ACCOUNTS"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 37
    .local v7, checkFrequency:I
    const/4 v6, 0x0

    .line 39
    .local v6, check:Z
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v7, v0, :cond_2

    .line 41
    const/4 v6, 0x1

    .line 80
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v15, v2}, Lcom/android/contacts/preference/RemindReceiver;->startCheck(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 84
    .end local v5           #cal:Ljava/util/Calendar;
    .end local v6           #check:Z
    .end local v7           #checkFrequency:I
    .end local v12           #format:Ljava/text/SimpleDateFormat;
    .end local v13           #lastCheckDate:Ljava/lang/String;
    .end local v15           #sp:Landroid/content/SharedPreferences;
    .end local v18           #today:Ljava/lang/String;
    :cond_1
    return-void

    .line 43
    .restart local v5       #cal:Ljava/util/Calendar;
    .restart local v6       #check:Z
    .restart local v7       #checkFrequency:I
    .restart local v12       #format:Ljava/text/SimpleDateFormat;
    .restart local v13       #lastCheckDate:Ljava/lang/String;
    .restart local v15       #sp:Landroid/content/SharedPreferences;
    .restart local v18       #today:Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 44
    .local v14, lastDate:Ljava/util/Calendar;
    const/4 v8, 0x0

    .line 46
    .local v8, date:Ljava/util/Date;
    const-wide/32 v3, 0x5265c00

    .line 47
    .local v3, DAY:J
    :try_start_0
    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 48
    invoke-virtual {v14, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 50
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v21

    sub-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    .line 51
    .local v16, timeOffset:J
    const-wide/32 v19, 0x5265c00

    div-long v9, v16, v19

    .line 53
    .local v9, dayOffset:J
    sget-object v19, Lcom/android/contacts/preference/RemindReceiver;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " days since the last check"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    packed-switch v7, :pswitch_data_0

    .line 71
    const/4 v6, 0x0

    goto :goto_0

    .line 57
    :pswitch_0
    const-wide/16 v19, 0x3

    cmp-long v19, v9, v19

    if-ltz v19, :cond_0

    .line 58
    const/4 v6, 0x1

    goto :goto_0

    .line 62
    :pswitch_1
    const-wide/16 v19, 0x7

    cmp-long v19, v9, v19

    if-ltz v19, :cond_0

    .line 63
    const/4 v6, 0x1

    goto :goto_0

    .line 67
    :pswitch_2
    const/4 v6, 0x0

    .line 68
    goto :goto_0

    .line 74
    .end local v9           #dayOffset:J
    .end local v16           #timeOffset:J
    :catch_0
    move-exception v11

    .line 75
    .local v11, e:Ljava/text/ParseException;
    const/4 v6, 0x1

    .line 76
    invoke-virtual {v11}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
