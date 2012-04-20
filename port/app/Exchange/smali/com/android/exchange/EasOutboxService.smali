.class public Lcom/android/exchange/EasOutboxService;
.super Lcom/android/exchange/EasSyncService;
.source "EasOutboxService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;,
        Lcom/android/exchange/EasOutboxService$SendMailParser;,
        Lcom/android/exchange/EasOutboxService$SendMailEntity;
    }
.end annotation


# static fields
.field public static final BODY_SOURCE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sourceMessageKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/EasOutboxService;->BODY_SOURCE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 0
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;J)Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lcom/android/exchange/EasOutboxService;->getOriginalMessageInfo(Landroid/content/Context;J)Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getOriginalMessageInfo(Landroid/content/Context;J)Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    .locals 14
    .parameter "context"
    .parameter "msgId"

    .prologue
    .line 276
    const/4 v4, 0x0

    .line 277
    .local v4, itemId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 278
    .local v2, collectionId:Ljava/lang/String;
    const/4 v5, 0x0

    .line 281
    .local v5, longId:Ljava/lang/String;
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/android/exchange/EasOutboxService;->BODY_SOURCE_PROJECTION:[Ljava/lang/String;

    const-string v10, "messageKey=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {p0, v8, v9, v10, v11}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, cols:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 285
    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 287
    .local v6, refId:J
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "syncServerId"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "mailboxKey"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "protocolSearchInfo"

    aput-object v11, v9, v10

    invoke-static {p0, v8, v6, v7, v9}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 290
    if-eqz v3, :cond_0

    .line 291
    const/4 v8, 0x0

    aget-object v4, v3, v8

    .line 292
    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 294
    .local v0, boxId:J
    sget-object v8, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "serverId"

    aput-object v11, v9, v10

    invoke-static {p0, v8, v0, v1, v9}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 296
    if-eqz v3, :cond_0

    .line 297
    const/4 v8, 0x0

    aget-object v2, v3, v8

    .line 303
    .end local v0           #boxId:J
    .end local v6           #refId:J
    :cond_0
    if-nez v5, :cond_1

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 304
    :cond_1
    new-instance v8, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;

    invoke-direct {v8, v4, v2, v5}, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_0
    return-object v8

    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private sendCallback(JLjava/lang/String;I)V
    .locals 6
    .parameter "msgId"
    .parameter "subject"
    .parameter "status"

    .prologue
    .line 243
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v5, 0x0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->sendMessageStatus(JLjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendFailed(JI)V
    .locals 3
    .parameter "msgId"
    .parameter "result"

    .prologue
    .line 310
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 311
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "syncServerId"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    iget-object v1, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 313
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 314
    return-void
.end method

.method public static sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 3
    .parameter "context"
    .parameter "accountId"
    .parameter "msg"

    .prologue
    .line 536
    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 537
    .local v0, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_0

    .line 538
    iget-wide v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iput-wide v1, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 539
    iput-wide p1, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 540
    invoke-virtual {p3, p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 542
    :cond_0
    return-void
.end method


# virtual methods
.method generateSmartSendCmd(ZLcom/android/exchange/EasOutboxService$OriginalMessageInfo;)Ljava/lang/String;
    .locals 3
    .parameter "reply"
    .parameter "info"

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    const-string v1, "SmartReply"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-object v1, p2, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mLongId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    const-string v1, "&LongId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-object v1, p2, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mLongId:Ljava/lang/String;

    const-string v2, ":"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 251
    :cond_0
    const-string v1, "SmartForward"

    goto :goto_0

    .line 256
    :cond_1
    const-string v1, "&ItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v1, p2, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mItemId:Ljava/lang/String;

    const-string v2, ":"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v1, "&CollectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v1, p2, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mCollectionId:Ljava/lang/String;

    const-string v2, ":"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public run()V
    .locals 14

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/exchange/EasOutboxService;->setupService()Z

    .line 481
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasOutboxService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v1}, Lcom/android/emailcommon/TrafficFlags;->getSmtpFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 482
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    .line 484
    .local v7, cacheDir:Ljava/io/File;
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasOutboxService;->mDeviceId:Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v12, v12, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 491
    .local v6, c:Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 492
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 493
    .local v9, msgId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-static {v0, v9, v10}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    invoke-virtual {p0, v7, v9, v10}, Lcom/android/exchange/EasOutboxService;->sendMessage(Ljava/io/File;J)I

    move-result v11

    .line 501
    .local v11, result:I
    const/16 v0, 0x16

    if-ne v11, v0, :cond_1

    .line 502
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 523
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 524
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    .line 525
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #msgId:J
    .end local v11           #result:I
    :goto_0
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 527
    return-void

    .line 504
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #msgId:J
    .restart local v11       #result:I
    :cond_1
    const/16 v0, 0x17

    if-ne v11, v0, :cond_2

    .line 505
    const/4 v0, 0x4

    :try_start_3
    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 514
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 523
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 524
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    goto :goto_0

    .line 507
    :cond_2
    const/16 v0, 0x15

    if-ne v11, v0, :cond_0

    .line 508
    const/4 v0, 0x3

    :try_start_5
    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 514
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 523
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 524
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    goto :goto_0

    .line 514
    .end local v9           #msgId:J
    .end local v11           #result:I
    :catchall_0
    move-exception v0

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 517
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 518
    .local v8, e:Ljava/io/IOException;
    const/4 v0, 0x1

    :try_start_8
    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 523
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 524
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    goto :goto_0

    .line 514
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_3
    :try_start_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 516
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 523
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 524
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 519
    .end local v6           #c:Landroid/database/Cursor;
    :catch_1
    move-exception v8

    .line 520
    .local v8, e:Ljava/lang/Exception;
    :try_start_a
    const-string v0, "Exception caught in EasOutboxService"

    invoke-virtual {p0, v0, v8}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 521
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 523
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 524
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 523
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ": sync finished"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 524
    const-string v1, "Outbox exited with status "

    iget v2, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    .line 525
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 523
    throw v0
.end method

.method sendMessage(Ljava/io/File;J)I
    .locals 33
    .parameter "cacheDir"
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 329
    const/16 v28, 0x0

    .line 331
    .local v28, result:I
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 333
    const-string v4, "eas_"

    const-string v5, "tmp"

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v30

    .line 336
    .local v30, tmpFile:Ljava/io/File;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 337
    .local v15, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v15, :cond_1

    const/16 v4, 0x10

    .line 470
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 471
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    .line 474
    :cond_0
    :goto_0
    return v4

    .line 340
    :cond_1
    :try_start_1
    iget v0, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v19, v0

    .line 341
    .local v19, flags:I
    and-int/lit8 v4, v19, 0x1

    if-eqz v4, :cond_9

    const/16 v26, 0x1

    .line 342
    .local v26, reply:Z
    :goto_1
    and-int/lit8 v4, v19, 0x2

    if-eqz v4, :cond_a

    const/16 v20, 0x1

    .line 343
    .local v20, forward:Z
    :goto_2
    const/high16 v4, 0x2

    and-int v4, v4, v19

    if-nez v4, :cond_b

    const/16 v21, 0x1

    .line 346
    .local v21, includeQuotedText:Z
    :goto_3
    const/16 v25, 0x0

    .line 348
    .local v25, referenceInfo:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    if-eqz v21, :cond_3

    if-nez v26, :cond_2

    if-eqz v20, :cond_3

    .line 349
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1}, Lcom/android/exchange/EasOutboxService;->getOriginalMessageInfo(Landroid/content/Context;J)Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;

    move-result-object v25

    .line 352
    :cond_3
    if-eqz v25, :cond_c

    const/4 v8, 0x1

    .line 356
    .local v8, smartSend:Z
    :goto_4
    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasOutboxService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v4, v4, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4

    .line 357
    const/4 v8, 0x0

    .line 361
    :cond_4
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, v30

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 362
    .local v7, fileOutputStream:Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    move-wide/from16 v5, p2

    invoke-static/range {v4 .. v9}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V

    .line 363
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasOutboxService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v31, 0x402c

    cmpl-double v4, v4, v31

    if-ltz v4, :cond_d

    const/16 v22, 0x1

    .line 371
    .local v22, isEas14:Z
    :goto_5
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, v30

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 372
    .local v11, fileStream:Ljava/io/FileInputStream;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 377
    .local v12, fileLength:J
    const/4 v14, 0x0

    .line 378
    .local v14, modeTag:I
    if-eqz v22, :cond_10

    .line 379
    if-nez v8, :cond_e

    const/16 v23, 0x0

    .line 381
    .local v23, mode:I
    :goto_6
    invoke-static {}, Lcom/android/exchange/EasOutboxService$SendMailEntity;->access$100()[I

    move-result-object v4

    aget v14, v4, v23

    .line 382
    new-instance v9, Lcom/android/exchange/EasOutboxService$SendMailEntity;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-direct/range {v9 .. v15}, Lcom/android/exchange/EasOutboxService$SendMailEntity;-><init>(Landroid/content/Context;Ljava/io/FileInputStream;JILcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 388
    .end local v23           #mode:I
    .local v9, inputEntity:Lorg/apache/http/HttpEntity;
    :goto_7
    const-string v16, "SendMail"

    .line 389
    .local v16, cmd:Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 391
    if-eqz v22, :cond_12

    .line 392
    if-eqz v26, :cond_11

    const-string v16, "SmartReply"

    .line 399
    :cond_5
    :goto_8
    if-nez v22, :cond_6

    .line 400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&SaveInSent=T"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 402
    :cond_6
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Send cmd: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 405
    const v4, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9, v4}, Lcom/android/exchange/EasOutboxService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v27

    .line 407
    .local v27, resp:Lcom/android/exchange/EasResponse;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 408
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->getStatus()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v17

    .line 409
    .local v17, code:I
    const/16 v4, 0xc8

    move/from16 v0, v17

    if-ne v0, v4, :cond_17

    .line 412
    if-eqz v22, :cond_15

    .line 415
    :try_start_3
    new-instance v24, Lcom/android/exchange/EasOutboxService$SendMailParser;

    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v14}, Lcom/android/exchange/EasOutboxService$SendMailParser;-><init>(Ljava/io/InputStream;I)V

    .line 418
    .local v24, p:Lcom/android/exchange/EasOutboxService$SendMailParser;
    invoke-virtual/range {v24 .. v24}, Lcom/android/exchange/EasOutboxService$SendMailParser;->parse()Z

    .line 420
    invoke-virtual/range {v24 .. v24}, Lcom/android/exchange/EasOutboxService$SendMailParser;->getStatus()I

    move-result v29

    .line 421
    .local v29, status:I
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SendMail error, status: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 422
    invoke-static/range {v29 .. v29}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 423
    const/16 v28, 0x17

    .line 431
    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasOutboxService;->sendFailed(JI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/android/exchange/adapter/Parser$EmptyStreamException; {:try_start_3 .. :try_end_3} :catch_1

    .line 461
    :try_start_4
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 470
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 471
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    :cond_8
    move/from16 v4, v28

    .line 432
    goto/16 :goto_0

    .line 341
    .end local v7           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v8           #smartSend:Z
    .end local v9           #inputEntity:Lorg/apache/http/HttpEntity;
    .end local v11           #fileStream:Ljava/io/FileInputStream;
    .end local v12           #fileLength:J
    .end local v14           #modeTag:I
    .end local v16           #cmd:Ljava/lang/String;
    .end local v17           #code:I
    .end local v20           #forward:Z
    .end local v21           #includeQuotedText:Z
    .end local v22           #isEas14:Z
    .end local v24           #p:Lcom/android/exchange/EasOutboxService$SendMailParser;
    .end local v25           #referenceInfo:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    .end local v26           #reply:Z
    .end local v27           #resp:Lcom/android/exchange/EasResponse;
    .end local v29           #status:I
    :cond_9
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 342
    .restart local v26       #reply:Z
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 343
    .restart local v20       #forward:Z
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 352
    .restart local v21       #includeQuotedText:Z
    .restart local v25       #referenceInfo:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 366
    .restart local v7       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v8       #smartSend:Z
    :cond_d
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 379
    .restart local v11       #fileStream:Ljava/io/FileInputStream;
    .restart local v12       #fileLength:J
    .restart local v14       #modeTag:I
    .restart local v22       #isEas14:Z
    :cond_e
    if-eqz v26, :cond_f

    const/16 v23, 0x1

    goto/16 :goto_6

    :cond_f
    const/16 v23, 0x2

    goto/16 :goto_6

    .line 385
    :cond_10
    :try_start_5
    new-instance v9, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v9, v11, v12, v13}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .restart local v9       #inputEntity:Lorg/apache/http/HttpEntity;
    goto/16 :goto_7

    .line 392
    .restart local v16       #cmd:Ljava/lang/String;
    :cond_11
    const-string v16, "SmartForward"

    goto/16 :goto_8

    .line 394
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasOutboxService;->generateSmartSendCmd(ZLcom/android/exchange/EasOutboxService$OriginalMessageInfo;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v16

    goto/16 :goto_8

    .line 424
    .restart local v17       #code:I
    .restart local v24       #p:Lcom/android/exchange/EasOutboxService$SendMailParser;
    .restart local v27       #resp:Lcom/android/exchange/EasResponse;
    .restart local v29       #status:I
    :cond_13
    const/16 v4, 0x96

    move/from16 v0, v29

    if-ne v0, v4, :cond_7

    if-eqz v8, :cond_7

    .line 427
    :try_start_6
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/android/exchange/adapter/Parser$EmptyStreamException; {:try_start_6 .. :try_end_6} :catch_1

    .line 428
    const/4 v8, 0x0

    .line 461
    :try_start_7
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_5

    .line 464
    .end local v7           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v8           #smartSend:Z
    .end local v9           #inputEntity:Lorg/apache/http/HttpEntity;
    .end local v11           #fileStream:Ljava/io/FileInputStream;
    .end local v12           #fileLength:J
    .end local v14           #modeTag:I
    .end local v15           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v16           #cmd:Ljava/lang/String;
    .end local v17           #code:I
    .end local v19           #flags:I
    .end local v20           #forward:Z
    .end local v21           #includeQuotedText:Z
    .end local v22           #isEas14:Z
    .end local v24           #p:Lcom/android/exchange/EasOutboxService$SendMailParser;
    .end local v25           #referenceInfo:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    .end local v26           #reply:Z
    .end local v27           #resp:Lcom/android/exchange/EasResponse;
    .end local v29           #status:I
    :catch_0
    move-exception v18

    .line 466
    .local v18, e:Ljava/io/IOException;
    const/4 v4, 0x0

    const/16 v5, 0x20

    :try_start_8
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 467
    throw v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 470
    .end local v18           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 471
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    .line 470
    :cond_14
    throw v4

    .line 433
    .restart local v7       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v8       #smartSend:Z
    .restart local v9       #inputEntity:Lorg/apache/http/HttpEntity;
    .restart local v11       #fileStream:Ljava/io/FileInputStream;
    .restart local v12       #fileLength:J
    .restart local v14       #modeTag:I
    .restart local v15       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v16       #cmd:Ljava/lang/String;
    .restart local v17       #code:I
    .restart local v19       #flags:I
    .restart local v20       #forward:Z
    .restart local v21       #includeQuotedText:Z
    .restart local v22       #isEas14:Z
    .restart local v25       #referenceInfo:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    .restart local v26       #reply:Z
    .restart local v27       #resp:Lcom/android/exchange/EasResponse;
    :catch_1
    move-exception v4

    .line 439
    :cond_15
    const/4 v4, 0x1

    :try_start_9
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Deleting message..."

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasOutboxService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v6, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 443
    const-wide/16 v4, -0x1

    iget-object v6, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v10}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 461
    :try_start_a
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 470
    :goto_9
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 471
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    :cond_16
    move/from16 v4, v28

    .line 474
    goto/16 :goto_0

    .line 445
    :cond_17
    const/16 v4, 0x1f4

    move/from16 v0, v17

    if-ne v0, v4, :cond_18

    if-eqz v8, :cond_18

    .line 448
    :try_start_b
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 449
    const/4 v8, 0x0

    .line 461
    :try_start_c
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_5

    .line 451
    :cond_18
    const/4 v4, 0x1

    :try_start_d
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Message sending failed, code: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 452
    invoke-static/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 453
    const/16 v28, 0x16

    .line 457
    :cond_19
    :goto_a
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasOutboxService;->sendFailed(JI)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 461
    :try_start_e
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_9

    .line 454
    :cond_1a
    :try_start_f
    invoke-static/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->isProvisionError(I)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result v4

    if-eqz v4, :cond_19

    .line 455
    const/16 v28, 0x17

    goto :goto_a

    .line 461
    .end local v17           #code:I
    :catchall_1
    move-exception v4

    :try_start_10
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->close()V

    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
.end method
