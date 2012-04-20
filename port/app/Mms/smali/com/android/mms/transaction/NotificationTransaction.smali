.class public Lcom/android/mms/transaction/NotificationTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "NotificationTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mContentLocation:Ljava/lang/String;

.field private mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

.field private mShouldDownload:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V
    .locals 5
    .parameter "context"
    .parameter "connectionSettings"
    .parameter "ind"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;)V

    .line 114
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p3, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    iput-object p3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    .line 122
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mId:Ljava/lang/String;

    .line 123
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Failed to save NotificationInd in constructor.\nStack:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "connectionSettings"
    .parameter "uriString"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;)V

    .line 89
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 90
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 93
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mId:Ljava/lang/String;

    .line 102
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    .line 103
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Failed to load NotificationInd from: %s\nStack:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private sendNotifyRespInd(I)V
    .locals 3
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Lcom/google/android/mms/pdu/NotifyRespInd;

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    .line 263
    .local v0, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->sendPdu([BLjava/lang/String;)[B

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendPdu([B)[B

    goto :goto_0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public onDequeue()V
    .locals 4

    .prologue
    .line 140
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    .line 141
    .local v0, downloadManager:Lcom/android/mms/util/DownloadManager;
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 143
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 144
    return-void
.end method

.method public onEnqueue()V
    .locals 4

    .prologue
    .line 127
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    .line 128
    .local v0, downloadManager:Lcom/android/mms/util/DownloadManager;
    invoke-virtual {v0}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mShouldDownload:Z

    .line 131
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    iget-boolean v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mShouldDownload:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x81

    :goto_1
    invoke-virtual {v0, v2, v1}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 135
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 136
    return-void

    .line 128
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 131
    :cond_1
    const/16 v1, 0x80

    goto :goto_1
.end method

.method public process()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    .line 159
    :try_start_0
    const-string v0, "Notification transaction launched: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v1, v4

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    const/16 v10, 0x83

    .line 167
    .local v10, status:I
    iget-boolean v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mShouldDownload:Z

    if-nez v0, :cond_2

    .line 168
    invoke-direct {p0, v10}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 242
    iget-boolean v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mShouldDownload:Z

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 249
    const-string v0, "Transaction failed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    .line 253
    .end local v10           #status:I
    :goto_0
    return-void

    .line 173
    .restart local v10       #status:I
    :cond_2
    :try_start_1
    const-string v0, "Content-Location: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    const/4 v9, 0x0

    .line 180
    .local v9, retrieveConfData:[B
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/NotificationTransaction;->getPdu(Ljava/lang/String;)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    .line 185
    :goto_1
    if-eqz v9, :cond_4

    .line 186
    :try_start_3
    new-instance v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v0, v9}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v8

    check-cast v8, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 187
    .local v8, pdu:Lcom/google/android/mms/pdu/RetrieveConf;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageType()I

    move-result v0

    const/16 v1, 0x84

    if-eq v0, v1, :cond_a

    .line 188
    :cond_3
    const-string v0, "Invalid M-RETRIEVE.CONF PDU."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 190
    const/16 v10, 0x84

    .line 218
    .end local v8           #pdu:Lcom/google/android/mms/pdu/RetrieveConf;
    :cond_4
    :goto_2
    const-string v0, "status=%x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    packed-switch v10, :pswitch_data_0

    .line 234
    :cond_5
    :goto_3
    :pswitch_0
    invoke-direct {p0, v10}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V

    .line 237
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 241
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 242
    iget-boolean v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mShouldDownload:Z

    if-nez v0, :cond_6

    .line 245
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 247
    :cond_6
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 248
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 249
    const-string v0, "Transaction failed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    goto/16 :goto_0

    .line 181
    :catch_0
    move-exception v6

    .line 182
    .local v6, e:Ljava/io/IOException;
    :try_start_4
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 238
    .end local v6           #e:Ljava/io/IOException;
    .end local v9           #retrieveConfData:[B
    .end local v10           #status:I
    :catch_1
    move-exception v11

    .line 239
    .local v11, t:Ljava/lang/Throwable;
    :try_start_5
    const-string v0, "Exception: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 241
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 242
    iget-boolean v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mShouldDownload:Z

    if-nez v0, :cond_8

    .line 245
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 247
    :cond_8
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    .line 248
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 249
    const-string v0, "Transaction failed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_9
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    goto/16 :goto_0

    .line 194
    .end local v11           #t:Ljava/lang/Throwable;
    .restart local v8       #pdu:Lcom/google/android/mms/pdu/RetrieveConf;
    .restart local v9       #retrieveConfData:[B
    .restart local v10       #status:I
    :cond_a
    :try_start_6
    const-string v0, "From: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/util/AddressUtils;->cutPhoneNumberTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v7

    .line 199
    .local v7, p:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v0, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v0}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 202
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 203
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "date_full"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v12, 0x0

    invoke-static {v0, v1, v4, v5, v12}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 212
    iput-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 213
    const/16 v10, 0x81

    goto/16 :goto_2

    .line 224
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v7           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v8           #pdu:Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 241
    .end local v9           #retrieveConfData:[B
    .end local v10           #status:I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 242
    iget-boolean v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mShouldDownload:Z

    if-nez v1, :cond_b

    .line 245
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 247
    :cond_b
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_c

    .line 248
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 249
    const-string v1, "Transaction failed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_c
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    throw v0

    .line 228
    .restart local v9       #retrieveConfData:[B
    .restart local v10       #status:I
    :pswitch_2
    :try_start_7
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v0

    if-nez v0, :cond_5

    .line 229
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 222
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
