.class public Lcom/android/deskclock/Alarms;
.super Ljava/lang/Object;
.source "Alarms.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAlarm(Landroid/content/Context;Lcom/android/deskclock/Alarm;)J
    .locals 6
    .parameter "context"
    .parameter "alarm"

    .prologue
    .line 112
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->createContentValues(Lcom/android/deskclock/Alarm;)Landroid/content/ContentValues;

    move-result-object v3

    .line 113
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 115
    .local v2, uri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p1, Lcom/android/deskclock/Alarm;->id:I

    .line 117
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->calculateAlarm(Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    .line 118
    .local v0, timeInMillis:J
    iget-boolean v4, p1, Lcom/android/deskclock/Alarm;->enabled:Z

    if-eqz v4, :cond_0

    .line 119
    invoke-static {p0, v0, v1}, Lcom/android/deskclock/Alarms;->clearSnoozeIfNeeded(Landroid/content/Context;J)V

    .line 121
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 122
    return-wide v0
.end method

.method private static calculateAlarm(Lcom/android/deskclock/Alarm;)J
    .locals 3
    .parameter "alarm"

    .prologue
    .line 574
    iget v0, p0, Lcom/android/deskclock/Alarm;->hour:I

    iget v1, p0, Lcom/android/deskclock/Alarm;->minutes:I

    iget-object v2, p0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/Alarms;->calculateAlarm(IILcom/android/deskclock/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static calculateAlarm(IILcom/android/deskclock/Alarm$DaysOfWeek;)Ljava/util/Calendar;
    .locals 9
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 586
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 587
    .local v1, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 589
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 590
    .local v2, nowHour:I
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 593
    .local v3, nowMinute:I
    if-lt p0, v2, :cond_0

    if-ne p0, v2, :cond_1

    if-gt p1, v3, :cond_1

    .line 595
    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 597
    :cond_1
    invoke-virtual {v1, v7, p0}, Ljava/util/Calendar;->set(II)V

    .line 598
    invoke-virtual {v1, v8, p1}, Ljava/util/Calendar;->set(II)V

    .line 599
    const/16 v4, 0xd

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 600
    const/16 v4, 0xe

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 602
    invoke-virtual {p2, v1}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getNextAlarm(Ljava/util/Calendar;)I

    move-result v0

    .line 603
    .local v0, addDays:I
    if-lez v0, :cond_2

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 604
    :cond_2
    return-object v1
.end method

.method private static calculateNextAlert(Landroid/content/Context;)Lcom/android/deskclock/Alarm;
    .locals 18
    .parameter "context"

    .prologue
    .line 299
    const-wide v7, 0x7fffffffffffffffL

    .line 300
    .local v7, minTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 301
    .local v9, now:J
    const-string v14, "AlarmClock"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 303
    .local v11, prefs:Landroid/content/SharedPreferences;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 310
    .local v4, alarms:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/deskclock/Alarm;>;"
    const-string v14, "snooze_ids"

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v13

    .line 311
    .local v13, snoozedIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 312
    .local v12, snoozedAlarm:Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 313
    .local v3, alarmId:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v14, v3}, Lcom/android/deskclock/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/deskclock/Alarm;

    move-result-object v1

    .line 314
    .local v1, a:Lcom/android/deskclock/Alarm;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    .end local v1           #a:Lcom/android/deskclock/Alarm;
    .end local v3           #alarmId:I
    .end local v12           #snoozedAlarm:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v14}, Lcom/android/deskclock/Alarms;->getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v5

    .line 319
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_3

    .line 321
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 323
    :cond_1
    new-instance v1, Lcom/android/deskclock/Alarm;

    invoke-direct {v1, v5}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 324
    .restart local v1       #a:Lcom/android/deskclock/Alarm;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-nez v14, :cond_1

    .line 328
    .end local v1           #a:Lcom/android/deskclock/Alarm;
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 332
    :cond_3
    const/4 v2, 0x0

    .line 334
    .local v2, alarm:Lcom/android/deskclock/Alarm;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/Alarm;

    .line 337
    .restart local v1       #a:Lcom/android/deskclock/Alarm;
    iget-wide v14, v1, Lcom/android/deskclock/Alarm;->time:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_5

    .line 338
    invoke-static {v1}, Lcom/android/deskclock/Alarms;->calculateAlarm(Lcom/android/deskclock/Alarm;)J

    move-result-wide v14

    iput-wide v14, v1, Lcom/android/deskclock/Alarm;->time:J

    .line 342
    :cond_5
    invoke-static {v11, v1}, Lcom/android/deskclock/Alarms;->updateAlarmTimeForSnooze(Landroid/content/SharedPreferences;Lcom/android/deskclock/Alarm;)Z

    .line 344
    iget-wide v14, v1, Lcom/android/deskclock/Alarm;->time:J

    cmp-long v14, v14, v9

    if-gez v14, :cond_6

    .line 345
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Disabling expired alarm set for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v15, v1, Lcom/android/deskclock/Alarm;->time:J

    invoke-static/range {v15 .. v16}, Lcom/android/deskclock/Log;->formatTime(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 347
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v14}, Lcom/android/deskclock/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/android/deskclock/Alarm;Z)V

    goto :goto_1

    .line 328
    .end local v1           #a:Lcom/android/deskclock/Alarm;
    .end local v2           #alarm:Lcom/android/deskclock/Alarm;
    :catchall_0
    move-exception v14

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v14

    .line 350
    .restart local v1       #a:Lcom/android/deskclock/Alarm;
    .restart local v2       #alarm:Lcom/android/deskclock/Alarm;
    :cond_6
    iget-wide v14, v1, Lcom/android/deskclock/Alarm;->time:J

    cmp-long v14, v14, v7

    if-gez v14, :cond_4

    .line 351
    iget-wide v7, v1, Lcom/android/deskclock/Alarm;->time:J

    .line 352
    move-object v2, v1

    goto :goto_1

    .line 356
    .end local v1           #a:Lcom/android/deskclock/Alarm;
    :cond_7
    return-object v2
.end method

.method private static clearAllSnoozePreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 7
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 522
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 524
    .local v2, nm:Landroid/app/NotificationManager;
    const-string v5, "snooze_ids"

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 526
    .local v4, snoozedIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 527
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 528
    .local v3, snoozeId:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 529
    invoke-static {v3}, Lcom/android/deskclock/Alarms;->getAlarmPrefSnoozeTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 532
    .end local v3           #snoozeId:Ljava/lang/String;
    :cond_0
    const-string v5, "snooze_ids"

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 533
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 534
    return-void
.end method

.method private static clearSnoozeIfNeeded(Landroid/content/Context;J)V
    .locals 10
    .parameter "context"
    .parameter "alarmTime"

    .prologue
    .line 187
    const-string v7, "AlarmClock"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 190
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v7, "snooze_ids"

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    .line 191
    .local v6, snoozedIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 192
    .local v5, snoozedAlarm:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/deskclock/Alarms;->getAlarmPrefSnoozeTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-interface {v2, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 193
    .local v3, snoozeTime:J
    cmp-long v7, p1, v3

    if-gez v7, :cond_0

    .line 194
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 195
    .local v0, alarmId:I
    invoke-static {p0, v2, v0}, Lcom/android/deskclock/Alarms;->clearSnoozePreference(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    goto :goto_0

    .line 198
    .end local v0           #alarmId:I
    .end local v3           #snoozeTime:J
    .end local v5           #snoozedAlarm:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static clearSnoozePreference(Landroid/content/Context;Landroid/content/SharedPreferences;I)V
    .locals 6
    .parameter "context"
    .parameter "prefs"
    .parameter "id"

    .prologue
    .line 504
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, alarmStr:Ljava/lang/String;
    const-string v4, "snooze_ids"

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 507
    .local v3, snoozedIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 508
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 510
    .local v2, nm:Landroid/app/NotificationManager;
    invoke-virtual {v2, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 513
    .end local v2           #nm:Landroid/app/NotificationManager;
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 514
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 515
    const-string v4, "snooze_ids"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 516
    invoke-static {v0}, Lcom/android/deskclock/Alarms;->getAlarmPrefSnoozeTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 517
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 518
    return-void
.end method

.method private static createContentValues(Lcom/android/deskclock/Alarm;)Landroid/content/ContentValues;
    .locals 5
    .parameter "alarm"

    .prologue
    .line 161
    new-instance v2, Landroid/content/ContentValues;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 164
    .local v2, values:Landroid/content/ContentValues;
    const-wide/16 v0, 0x0

    .line 165
    .local v0, time:J
    iget-object v3, p0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v3}, Lcom/android/deskclock/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->calculateAlarm(Lcom/android/deskclock/Alarm;)J

    move-result-wide v0

    .line 169
    :cond_0
    const-string v4, "enabled"

    iget-boolean v3, p0, Lcom/android/deskclock/Alarm;->enabled:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v3, "hour"

    iget v4, p0, Lcom/android/deskclock/Alarm;->hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string v3, "minutes"

    iget v4, p0, Lcom/android/deskclock/Alarm;->minutes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v3, "alarmtime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    const-string v3, "daysofweek"

    iget-object v4, p0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v4}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string v3, "vibrate"

    iget-boolean v4, p0, Lcom/android/deskclock/Alarm;->vibrate:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 175
    const-string v3, "message"

    iget-object v4, p0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v4, "alert"

    iget-object v3, p0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    if-nez v3, :cond_2

    const-string v3, "silent"

    :goto_1
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-object v2

    .line 169
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 178
    :cond_2
    iget-object v3, p0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static deleteAlarm(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "alarmId"

    .prologue
    .line 130
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 140
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 134
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/android/deskclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)V

    .line 136
    sget-object v2, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 137
    .local v1, uri:Landroid/net/Uri;
    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 139
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static disableAlert(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 450
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 452
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-static {p0, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 455
    .local v1, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 456
    invoke-static {p0, v4}, Lcom/android/deskclock/Alarms;->setStatusBarIcon(Landroid/content/Context;Z)V

    .line 457
    const-string v2, ""

    invoke-static {p0, v2}, Lcom/android/deskclock/Alarms;->saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public static disableExpiredAlarms(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/deskclock/Alarms;->getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    .line 365
    .local v1, cur:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 368
    .local v2, now:J
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 370
    :cond_0
    new-instance v0, Lcom/android/deskclock/Alarm;

    invoke-direct {v0, v1}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 373
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    iget-wide v4, v0, Lcom/android/deskclock/Alarm;->time:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lcom/android/deskclock/Alarm;->time:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disabling expired alarm set for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/deskclock/Alarm;->time:J

    invoke-static {v5, v6}, Lcom/android/deskclock/Log;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 376
    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Lcom/android/deskclock/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/android/deskclock/Alarm;Z)V

    .line 378
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 381
    .end local v0           #alarm:Lcom/android/deskclock/Alarm;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 383
    return-void

    .line 381
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method static disableSnoozeAlert(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    .line 491
    const-string v1, "AlarmClock"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 493
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-static {v0, p1}, Lcom/android/deskclock/Alarms;->hasAlarmBeenSnoozed(Landroid/content/SharedPreferences;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    invoke-static {p0, v0, p1}, Lcom/android/deskclock/Alarms;->clearSnoozePreference(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    .line 497
    :cond_0
    return-void
.end method

.method public static enableAlarm(Landroid/content/Context;IZ)V
    .locals 0
    .parameter "context"
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 261
    invoke-static {p0, p1, p2}, Lcom/android/deskclock/Alarms;->enableAlarmInternal(Landroid/content/Context;IZ)V

    .line 262
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 263
    return-void
.end method

.method private static enableAlarmInternal(Landroid/content/Context;IZ)V
    .locals 1
    .parameter "context"
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/deskclock/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/deskclock/Alarm;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/deskclock/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/android/deskclock/Alarm;Z)V

    .line 269
    return-void
.end method

.method private static enableAlarmInternal(Landroid/content/Context;Lcom/android/deskclock/Alarm;Z)V
    .locals 8
    .parameter "context"
    .parameter "alarm"
    .parameter "enabled"

    .prologue
    const/4 v7, 0x0

    .line 273
    if-nez p1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 278
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 279
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "enabled"

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    if-eqz p2, :cond_3

    .line 284
    const-wide/16 v1, 0x0

    .line 285
    .local v1, time:J
    iget-object v4, p1, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v4}, Lcom/android/deskclock/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v4

    if-nez v4, :cond_1

    .line 286
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->calculateAlarm(Lcom/android/deskclock/Alarm;)J

    move-result-wide v1

    .line 288
    :cond_1
    const-string v4, "alarmtime"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 294
    .end local v1           #time:J
    :goto_2
    sget-object v4, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v5, p1, Lcom/android/deskclock/Alarm;->id:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 291
    :cond_3
    iget v4, p1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v4}, Lcom/android/deskclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method private static enableAlert(Landroid/content/Context;Lcom/android/deskclock/Alarm;J)V
    .locals 9
    .parameter "context"
    .parameter "alarm"
    .parameter "atTimeInMillis"

    .prologue
    const/4 v8, 0x0

    .line 408
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 415
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 427
    .local v3, out:Landroid/os/Parcel;
    invoke-virtual {p1, v3, v8}, Lcom/android/deskclock/Alarm;->writeToParcel(Landroid/os/Parcel;I)V

    .line 428
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 429
    const-string v6, "intent.extra.alarm_raw"

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 431
    const/high16 v6, 0x1000

    invoke-static {p0, v8, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 434
    .local v4, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v8, p2, p3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 436
    const/4 v6, 0x1

    invoke-static {p0, v6}, Lcom/android/deskclock/Alarms;->setStatusBarIcon(Landroid/content/Context;Z)V

    .line 438
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 439
    .local v1, c:Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 440
    invoke-static {p0, v1}, Lcom/android/deskclock/Alarms;->formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    .line 441
    .local v5, timeString:Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/android/deskclock/Alarms;->saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method private static formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    .line 623
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "E kk:mm"

    .line 624
    .local v0, format:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .line 623
    .end local v0           #format:Ljava/lang/String;
    :cond_0
    const-string v0, "E h:mm aa"

    goto :goto_0

    .line 624
    .restart local v0       #format:Ljava/lang/String;
    :cond_1
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method

.method static formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    .line 615
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "kk:mm"

    .line 616
    .local v0, format:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .line 615
    .end local v0           #format:Ljava/lang/String;
    :cond_0
    const-string v0, "h:mm aa"

    goto :goto_0

    .line 616
    .restart local v0       #format:Ljava/lang/String;
    :cond_1
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method

.method static get24HourMode(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 641
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getAlarm(Landroid/content/ContentResolver;I)Lcom/android/deskclock/Alarm;
    .locals 8
    .parameter "contentResolver"
    .parameter "alarmId"

    .prologue
    const/4 v3, 0x0

    .line 205
    sget-object v0, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/deskclock/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 209
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 210
    .local v6, alarm:Lcom/android/deskclock/Alarm;
    if-eqz v7, :cond_1

    .line 211
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v6, Lcom/android/deskclock/Alarm;

    .end local v6           #alarm:Lcom/android/deskclock/Alarm;
    invoke-direct {v6, v7}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 214
    .restart local v6       #alarm:Lcom/android/deskclock/Alarm;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_1
    return-object v6
.end method

.method private static getAlarmPrefSnoozeTimeKey(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 480
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Alarms;->getAlarmPrefSnoozeTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAlarmPrefSnoozeTimeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "snooze_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .parameter "contentResolver"

    .prologue
    const/4 v5, 0x0

    .line 147
    sget-object v1, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/deskclock/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v3, "type=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v5, "hour, minutes ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .parameter "contentResolver"

    .prologue
    const/4 v4, 0x0

    .line 155
    sget-object v1, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/deskclock/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v3, "enabled=1"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static hasAlarmBeenSnoozed(Landroid/content/SharedPreferences;I)Z
    .locals 3
    .parameter "prefs"
    .parameter "alarmId"

    .prologue
    .line 537
    const-string v1, "snooze_ids"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 540
    .local v0, snoozedIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "timeString"

    .prologue
    .line 632
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 635
    return-void
.end method

.method static saveSnoozeAlert(Landroid/content/Context;IJ)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "time"

    .prologue
    .line 462
    const-string v3, "AlarmClock"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 464
    .local v1, prefs:Landroid/content/SharedPreferences;
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 465
    invoke-static {p0, v1}, Lcom/android/deskclock/Alarms;->clearAllSnoozePreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 476
    :goto_0
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 477
    return-void

    .line 467
    :cond_0
    const-string v3, "snooze_ids"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 469
    .local v2, snoozedIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 471
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "snooze_ids"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 472
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->getAlarmPrefSnoozeTimeKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 473
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static setAlarm(Landroid/content/Context;Lcom/android/deskclock/Alarm;)J
    .locals 8
    .parameter "context"
    .parameter "alarm"

    .prologue
    const/4 v7, 0x0

    .line 226
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->createContentValues(Lcom/android/deskclock/Alarm;)Landroid/content/ContentValues;

    move-result-object v3

    .line 227
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 228
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v5, p1, Lcom/android/deskclock/Alarm;->id:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 232
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->calculateAlarm(Lcom/android/deskclock/Alarm;)J

    move-result-wide v1

    .line 234
    .local v1, timeInMillis:J
    iget-boolean v4, p1, Lcom/android/deskclock/Alarm;->enabled:Z

    if-eqz v4, :cond_0

    .line 239
    iget v4, p1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v4}, Lcom/android/deskclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)V

    .line 244
    invoke-static {p0, v1, v2}, Lcom/android/deskclock/Alarms;->clearSnoozeIfNeeded(Landroid/content/Context;J)V

    .line 247
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 249
    return-wide v1
.end method

.method public static setNextAlert(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 391
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->calculateNextAlert(Landroid/content/Context;)Lcom/android/deskclock/Alarm;

    move-result-object v0

    .line 392
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    if-eqz v0, :cond_0

    .line 393
    iget-wide v1, v0, Lcom/android/deskclock/Alarm;->time:J

    invoke-static {p0, v0, v1, v2}, Lcom/android/deskclock/Alarms;->enableAlert(Landroid/content/Context;Lcom/android/deskclock/Alarm;J)V

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/Alarms;->disableAlert(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static setStatusBarIcon(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 567
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v0, alarmChanged:Landroid/content/Intent;
    const-string v1, "alarmSet"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 569
    const-string v1, "alarmSystem"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 570
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 571
    return-void
.end method

.method private static updateAlarmTimeForSnooze(Landroid/content/SharedPreferences;Lcom/android/deskclock/Alarm;)Z
    .locals 5
    .parameter "prefs"
    .parameter "alarm"

    .prologue
    .line 549
    iget v2, p1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v2}, Lcom/android/deskclock/Alarms;->hasAlarmBeenSnoozed(Landroid/content/SharedPreferences;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 551
    const/4 v2, 0x0

    .line 560
    :goto_0
    return v2

    .line 554
    :cond_0
    iget v2, p1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v2}, Lcom/android/deskclock/Alarms;->getAlarmPrefSnoozeTimeKey(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 558
    .local v0, time:J
    iput-wide v0, p1, Lcom/android/deskclock/Alarm;->time:J

    .line 560
    const/4 v2, 0x1

    goto :goto_0
.end method
