.class public Lcom/android/mms/util/Recycler$SmsRecycler;
.super Lcom/android/mms/util/Recycler;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsRecycler"
.end annotation


# static fields
.field private static final ALL_SMS_THREADS_PROJECTION:[Ljava/lang/String;

.field private static final SMS_MESSAGE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final MAX_SMS_MESSAGES_PER_THREAD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    const-string v1, "msg_count"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/util/Recycler$SmsRecycler;->ALL_SMS_THREADS_PROJECTION:[Ljava/lang/String;

    .line 142
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/Recycler$SmsRecycler;->SMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/mms/util/Recycler;-><init>()V

    .line 164
    const-string v0, "MaxSmsMessagesPerThread"

    iput-object v0, p0, Lcom/android/mms/util/Recycler$SmsRecycler;->MAX_SMS_MESSAGES_PER_THREAD:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected anyThreadOverLimit(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    .line 251
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$SmsRecycler;->getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v7

    .line 252
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move v0, v12

    .line 279
    :goto_0
    return v0

    .line 255
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$SmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v8

    .line 257
    .local v8, limit:I
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    invoke-virtual {p0, v7}, Lcom/android/mms/util/Recycler$SmsRecycler;->getThreadId(Landroid/database/Cursor;)J

    move-result-wide v10

    .line 259
    .local v10, threadId:J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 260
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mms/util/Recycler$SmsRecycler;->SMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v4, "locked=0"

    const/4 v5, 0x0

    const-string v6, "date DESC"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 265
    .local v9, msgs:Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 277
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v12

    goto :goto_0

    .line 269
    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lt v0, v8, :cond_2

    .line 270
    const/4 v0, 0x1

    .line 273
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 273
    :cond_2
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 277
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v9           #msgs:Landroid/database/Cursor;
    .end local v10           #threadId:J
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 273
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v9       #msgs:Landroid/database/Cursor;
    .restart local v10       #threadId:J
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 277
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v9           #msgs:Landroid/database/Cursor;
    .end local v10           #threadId:J
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 279
    goto :goto_0
.end method

.method protected deleteMessagesForThread(Landroid/content/Context;JI)V
    .locals 14
    .parameter "context"
    .parameter "threadId"
    .parameter "keep"

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 197
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 199
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/mms/util/Recycler$SmsRecycler;->SMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v6, "locked=0"

    const/4 v7, 0x0

    const-string v8, "date DESC"

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 204
    if-nez v10, :cond_1

    .line 205
    const-string v2, "Recycler"

    const-string v4, "SMS: deleteMessagesForThread got back null cursor"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    if-eqz v10, :cond_0

    .line 231
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 209
    .local v9, count:I
    sub-int v13, v9, p4

    .line 215
    .local v13, numberToDelete:I
    if-gtz v13, :cond_2

    .line 230
    if-eqz v10, :cond_0

    .line 231
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 219
    :cond_2
    :try_start_2
    move/from16 v0, p4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->move(I)Z

    .line 220
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 222
    .local v11, latestDate:J
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "locked=0 AND date<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p1, v3, v2, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    int-to-long v4, v2

    .line 230
    if-eqz v10, :cond_0

    .line 231
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 230
    .end local v9           #count:I
    .end local v11           #latestDate:J
    .end local v13           #numberToDelete:I
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_3

    .line 231
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method protected getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 185
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/util/Recycler$SmsRecycler;->ALL_SMS_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v6, "date DESC"

    move-object v0, p1

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 189
    .local v7, cursor:Landroid/database/Cursor;
    return-object v7
.end method

.method public getMessageLimit(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 167
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "MaxSmsMessagesPerThread"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDefaultSMSMessagesPerThread()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected getThreadId(Landroid/database/Cursor;)J
    .locals 2
    .parameter "cursor"

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public setMessageLimit(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "limit"

    .prologue
    .line 173
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "MaxSmsMessagesPerThread"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    return-void
.end method
