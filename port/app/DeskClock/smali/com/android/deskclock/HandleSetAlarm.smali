.class public Lcom/android/deskclock/HandleSetAlarm;
.super Landroid/app/Activity;
.source "HandleSetAlarm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private handleCursorResult(Landroid/database/Cursor;JZZ)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 111
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    new-instance v1, Lcom/android/deskclock/Alarm;

    invoke-direct {v1, p1}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 113
    if-eqz p4, :cond_0

    .line 114
    iget v2, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v2, v0}, Lcom/android/deskclock/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 116
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/android/deskclock/SetAlarm;->popAlarmSetToast(Landroid/content/Context;J)V

    .line 117
    if-nez p5, :cond_1

    .line 118
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/SetAlarm;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    const-string v3, "intent.extra.alarm"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v2}, Lcom/android/deskclock/HandleSetAlarm;->startActivity(Landroid/content/Intent;)V

    .line 124
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/deskclock/HandleSetAlarm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.SET_ALARM"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/HandleSetAlarm;->finish()V

    .line 107
    :cond_1
    :goto_0
    return-void

    .line 44
    :cond_2
    const-string v1, "android.intent.extra.alarm.HOUR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/DeskClockTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "navigation_tab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/deskclock/HandleSetAlarm;->startActivity(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/deskclock/HandleSetAlarm;->finish()V

    goto :goto_0

    .line 51
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 53
    const-string v2, "android.intent.extra.alarm.HOUR"

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 55
    const-string v2, "android.intent.extra.alarm.MINUTES"

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 57
    const-string v1, "android.intent.extra.alarm.SKIP_UI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 58
    const-string v1, "android.intent.extra.alarm.MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    if-nez v0, :cond_9

    .line 60
    const-string v0, ""

    move-object v6, v0

    .line 63
    :goto_1
    const/4 v7, 0x0

    .line 64
    new-instance v0, Lcom/android/deskclock/Alarm$DaysOfWeek;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/deskclock/Alarm$DaysOfWeek;-><init>(I)V

    invoke-static {v8, v9, v0}, Lcom/android/deskclock/Alarms;->calculateAlarm(IILcom/android/deskclock/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/android/deskclock/HandleSetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/deskclock/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hour="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "minutes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "daysofweek"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=0 AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 75
    const/4 v4, 0x1

    move-object v0, p0

    move-wide v2, v11

    move v5, v10

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/HandleSetAlarm;->handleCursorResult(Landroid/database/Cursor;JZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    invoke-virtual {p0}, Lcom/android/deskclock/HandleSetAlarm;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 80
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_5
    const/4 v7, 0x0

    .line 85
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 86
    const-string v0, "hour"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v0, "minutes"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v0, "message"

    invoke-virtual {v1, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "enabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v0, "vibrate"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    const-string v0, "daysofweek"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v0, "alarmtime"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/deskclock/HandleSetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 95
    sget-object v2, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_6

    .line 98
    :try_start_2
    sget-object v2, Lcom/android/deskclock/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 100
    const/4 v4, 0x0

    move-object v0, p0

    move-wide v2, v11

    move v5, v10

    :try_start_3
    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/HandleSetAlarm;->handleCursorResult(Landroid/database/Cursor;JZZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 102
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_6
    invoke-virtual {p0}, Lcom/android/deskclock/HandleSetAlarm;->finish()V

    goto/16 :goto_0

    .line 80
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_7
    throw v0

    .line 102
    :catchall_1
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 80
    :catchall_3
    move-exception v0

    goto :goto_2

    :cond_9
    move-object v6, v0

    goto/16 :goto_1
.end method
