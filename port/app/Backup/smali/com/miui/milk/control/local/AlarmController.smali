.class public Lcom/miui/milk/control/local/AlarmController;
.super Lcom/miui/milk/control/local/BaseController;
.source "AlarmController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/miui/milk/control/local/BaseController;-><init>(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method private addAlarm(Lcom/miui/milk/control/local/Alarm;)V
    .locals 4
    .parameter "alarm"

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/miui/milk/control/local/AlarmController;->createContentValues(Lcom/miui/milk/control/local/Alarm;)Landroid/content/ContentValues;

    move-result-object v1

    .line 229
    .local v1, values:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/miui/milk/control/local/AlarmController;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/miui/milk/control/local/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 230
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p1, Lcom/miui/milk/control/local/Alarm;->id:I

    .line 231
    return-void
.end method

.method private createContentValues(Lcom/miui/milk/control/local/Alarm;)Landroid/content/ContentValues;
    .locals 4
    .parameter "alarm"

    .prologue
    .line 234
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 235
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "enabled"

    iget-boolean v1, p1, Lcom/miui/milk/control/local/Alarm;->enabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v1, "hour"

    iget v2, p1, Lcom/miui/milk/control/local/Alarm;->hour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v1, "minutes"

    iget v2, p1, Lcom/miui/milk/control/local/Alarm;->minutes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string v1, "alarmtime"

    iget-wide v2, p1, Lcom/miui/milk/control/local/Alarm;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 239
    const-string v1, "daysofweek"

    iget v2, p1, Lcom/miui/milk/control/local/Alarm;->daysOfWeek:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    const-string v1, "vibrate"

    iget-boolean v2, p1, Lcom/miui/milk/control/local/Alarm;->vibrate:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 241
    const-string v1, "message"

    iget-object v2, p1, Lcom/miui/milk/control/local/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v2, "alert"

    iget-object v1, p1, Lcom/miui/milk/control/local/Alarm;->alert:Landroid/net/Uri;

    if-nez v1, :cond_1

    const-string v1, "silent"

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-object v0

    .line 235
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 242
    :cond_1
    iget-object v1, p1, Lcom/miui/milk/control/local/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private deleteAlarms()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/miui/milk/control/local/AlarmController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/milk/control/local/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method private getAlarmsCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 223
    iget-object v0, p0, Lcom/miui/milk/control/local/AlarmController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/milk/control/local/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/milk/control/local/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v5, "hour, minutes ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private readAlarmFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/milk/control/local/AlarmController;->mTotalImportSize:J

    .line 216
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/miui/milk/control/local/AlarmController;->mCurrImportIndex:J

    :goto_0
    iget-wide v1, p0, Lcom/miui/milk/control/local/AlarmController;->mCurrImportIndex:J

    iget-wide v3, p0, Lcom/miui/milk/control/local/AlarmController;->mTotalImportSize:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 217
    new-instance v0, Lcom/miui/milk/control/local/Alarm;

    invoke-direct {v0, p1}, Lcom/miui/milk/control/local/Alarm;-><init>(Landroid/os/Parcel;)V

    .line 218
    .local v0, alarm:Lcom/miui/milk/control/local/Alarm;
    invoke-direct {p0, v0}, Lcom/miui/milk/control/local/AlarmController;->addAlarm(Lcom/miui/milk/control/local/Alarm;)V

    .line 216
    iget-wide v1, p0, Lcom/miui/milk/control/local/AlarmController;->mCurrImportIndex:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/miui/milk/control/local/AlarmController;->mCurrImportIndex:J

    goto :goto_0

    .line 220
    .end local v0           #alarm:Lcom/miui/milk/control/local/Alarm;
    :cond_0
    return-void
.end method

.method private readFully(Ljava/io/FileInputStream;)[B
    .locals 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 196
    const/4 v4, 0x0

    .line 197
    .local v4, pos:I
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 198
    .local v1, avail:I
    new-array v2, v1, [B

    .line 200
    .local v2, data:[B
    :cond_0
    :goto_0
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {p1, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 201
    .local v0, amt:I
    if-gtz v0, :cond_1

    .line 202
    return-object v2

    .line 204
    :cond_1
    add-int/2addr v4, v0

    .line 205
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 206
    array-length v5, v2

    sub-int/2addr v5, v4

    if-le v1, v5, :cond_0

    .line 207
    add-int v5, v4, v1

    new-array v3, v5, [B

    .line 208
    .local v3, newData:[B
    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    move-object v2, v3

    goto :goto_0
.end method


# virtual methods
.method public export(Ljava/io/File;)V
    .locals 9
    .parameter "exportFile"

    .prologue
    const-wide/16 v7, 0x0

    .line 133
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 137
    :cond_0
    const/4 v1, 0x0

    .line 138
    .local v1, cursor:Landroid/database/Cursor;
    iput-wide v7, p0, Lcom/miui/milk/control/local/AlarmController;->mTotalExportSize:J

    .line 139
    invoke-direct {p0}, Lcom/miui/milk/control/local/AlarmController;->getAlarmsCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 140
    if-nez v1, :cond_2

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/miui/milk/control/local/AlarmController;->mTotalExportSize:J

    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 147
    .local v3, out:Landroid/os/Parcel;
    iget-wide v5, p0, Lcom/miui/milk/control/local/AlarmController;->mTotalExportSize:J

    invoke-virtual {v3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 148
    iput-wide v7, p0, Lcom/miui/milk/control/local/AlarmController;->mCurrExportIndex:J

    .line 150
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_5

    .line 151
    iget-boolean v5, p0, Lcom/miui/milk/control/local/AlarmController;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    .line 158
    if-eqz v1, :cond_1

    .line 159
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 152
    :cond_3
    :try_start_1
    new-instance v0, Lcom/miui/milk/control/local/Alarm;

    invoke-direct {v0, v1}, Lcom/miui/milk/control/local/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 153
    .local v0, alarm:Lcom/miui/milk/control/local/Alarm;
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/miui/milk/control/local/Alarm;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 155
    iget-wide v5, p0, Lcom/miui/milk/control/local/AlarmController;->mCurrExportIndex:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/miui/milk/control/local/AlarmController;->mCurrExportIndex:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 158
    .end local v0           #alarm:Lcom/miui/milk/control/local/Alarm;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_4

    .line 159
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v5

    .line 158
    :cond_5
    if-eqz v1, :cond_6

    .line 159
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_6
    iget-boolean v5, p0, Lcom/miui/milk/control/local/AlarmController;->mCanceled:Z

    if-nez v5, :cond_1

    .line 166
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 167
    .local v4, stream:Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 168
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 169
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 170
    .end local v4           #stream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 171
    .local v2, e:Ljava/io/IOException;
    const-string v5, "AlarmController"

    const-string v6, "Cannot export alarms "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public importData(Ljava/io/File;)V
    .locals 7
    .parameter "importFile"

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/miui/milk/control/local/AlarmController;->deleteAlarms()V

    .line 179
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 180
    .local v4, stream:Ljava/io/FileInputStream;
    invoke-direct {p0, v4}, Lcom/miui/milk/control/local/AlarmController;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v3

    .line 181
    .local v3, raw:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 182
    .local v1, in:Landroid/os/Parcel;
    const/4 v5, 0x0

    array-length v6, v3

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 183
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 184
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 185
    invoke-direct {p0, v1}, Lcom/miui/milk/control/local/AlarmController;->readAlarmFromParcel(Landroid/os/Parcel;)V

    .line 187
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.TIME_SET"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v2, initIntent:Landroid/content/Intent;
    const-string v5, "com.android.deskclock"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    iget-object v5, p0, Lcom/miui/milk/control/local/AlarmController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v1           #in:Landroid/os/Parcel;
    .end local v2           #initIntent:Landroid/content/Intent;
    .end local v3           #raw:[B
    .end local v4           #stream:Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/io/IOException;
    const-string v5, "AlarmController"

    const-string v6, "Cannot import alarms "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
