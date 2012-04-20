.class public abstract Lcom/android/exchange/adapter/AbstractSyncAdapter;
.super Ljava/lang/Object;
.source "AbstractSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
    }
.end annotation


# instance fields
.field public mAccount:Lcom/android/emailcommon/provider/Account;

.field public final mAccountManagerAccount:Landroid/accounts/Account;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mContext:Landroid/content/Context;

.field public mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field public mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    .line 86
    iget-object v0, p1, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 87
    iget-object v0, p1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    .line 88
    iget-object v0, p1, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 89
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    .line 91
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 92
    return-void
.end method

.method private applyAndCopyResults(Ljava/lang/String;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;I)V
    .locals 3
    .parameter "authority"
    .parameter
    .parameter "result"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 270
    .local p2, mini:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 272
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;I)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 274
    .local v0, miniResult:[Landroid/content/ContentProviderResult;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    .end local v0           #miniResult:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private applyBatch(Ljava/lang/String;Ljava/util/ArrayList;I)[Landroid/content/ContentProviderResult;
    .locals 4
    .parameter "authority"
    .parameter
    .parameter "offset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;I)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 254
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/ContentProviderResult;

    .line 261
    :goto_0
    return-object v3

    .line 257
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v0, cpos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    .line 259
    .local v2, op:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
    invoke-static {v2, p3}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->operationToContentProviderOperation(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;I)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 261
    .end local v2           #op:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->execute(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    goto :goto_0
.end method

.method private execute(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 7
    .parameter "authority"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, 0x0

    .line 218
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 222
    .local v0, result:[Landroid/content/ContentProviderResult;
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Results: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 223
    monitor-exit v2

    .line 227
    .end local v0           #result:[Landroid/content/ContentProviderResult;
    :goto_0
    return-object v0

    .line 226
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    new-array v0, v3, [Landroid/content/ContentProviderResult;

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static operationToContentProviderOperation(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;I)Landroid/content/ContentProviderOperation;
    .locals 3
    .parameter "op"
    .parameter "offset"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOp:Landroid/content/ContentProviderOperation;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOp:Landroid/content/ContentProviderOperation;

    .line 245
    :goto_0
    return-object v1

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    if-nez v1, :cond_1

    .line 239
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Operation must have CPO.Builder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 242
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mColumnName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 243
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mColumnName:Ljava/lang/String;

    iget v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOffset:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 245
    :cond_2
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected addSeparatorOperation(Ljava/util/ArrayList;Landroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 343
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {p2, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    .line 345
    .local v0, op:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mSeparator:Z

    .line 346
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    return-void
.end method

.method public abstract cleanup()V
.end method

.method public abstract getCollectionName()Ljava/lang/String;
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Reset SyncKey to 0"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    const-string v1, "0"

    iput-object v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    return-object v0
.end method

.method public incrementChangeCount()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget v1, v0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    .line 100
    return-void
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSyncable()Z
.end method

.method public abstract parse(Ljava/io/InputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation
.end method

.method protected safeExecute(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 17
    .parameter "authority"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 294
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const-string v13, "Try to execute "

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " CPO\'s for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    const/4 v11, 0x0

    .line 298
    .local v11, result:[Landroid/content/ContentProviderResult;
    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;I)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v12

    .line 336
    :goto_0
    return-object v12

    .line 299
    :catch_0
    move-exception v4

    .line 301
    .local v4, e:Landroid/os/TransactionTooLargeException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "Transaction too large; spliting!"

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 302
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v7, mini:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v11, v12, [Landroid/content/ContentProviderResult;

    .line 305
    const/4 v3, 0x0

    .line 306
    .local v3, count:I
    const/4 v9, 0x0

    .line 307
    .local v9, offset:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    .line 308
    .local v10, op:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
    iget-boolean v12, v10, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mSeparator:Z

    if-eqz v12, :cond_0

    .line 310
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const-string v13, "Try mini-batch of "

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    const-string v15, " CPO\'s"

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 311
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v11, v9}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->applyAndCopyResults(Ljava/lang/String;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;I)V

    .line 312
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 315
    add-int/lit8 v9, v3, 0x1

    .line 324
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 316
    :catch_1
    move-exception v5

    .line 317
    .local v5, e1:Landroid/os/TransactionTooLargeException;
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "Can\'t send transaction; sync stopped."

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 318
    .end local v5           #e1:Landroid/os/TransactionTooLargeException;
    :catch_2
    move-exception v5

    .line 319
    .local v5, e1:Landroid/os/RemoteException;
    throw v5

    .line 322
    .end local v5           #e1:Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 327
    .end local v10           #op:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 328
    .local v8, miniSize:I
    if-lez v8, :cond_3

    const/4 v12, 0x1

    if-ne v8, v12, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-boolean v12, v12, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mSeparator:Z

    if-nez v12, :cond_3

    .line 329
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v11, v9}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->applyAndCopyResults(Ljava/lang/String;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;I)V

    .end local v3           #count:I
    .end local v4           #e:Landroid/os/TransactionTooLargeException;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #mini:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    .end local v8           #miniSize:I
    .end local v9           #offset:I
    :cond_3
    :goto_3
    move-object v12, v11

    .line 336
    goto :goto_0

    .line 331
    :catch_3
    move-exception v4

    .line 332
    .local v4, e:Landroid/os/RemoteException;
    throw v4

    .line 333
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_4
    move-exception v12

    goto :goto_3
.end method

.method public abstract sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendSyncOptions(Ljava/lang/Double;Lcom/android/exchange/adapter/Serializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected setPimSyncOptions(Ljava/lang/Double;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V
    .locals 4
    .parameter "protocolVersion"
    .parameter "filter"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const/16 v0, 0x1e

    invoke-virtual {p3, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 112
    const/16 v0, 0x13

    invoke-virtual {p3, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 113
    const/16 v0, 0x15

    const-string v1, "4"

    invoke-virtual {p3, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 114
    const/16 v0, 0x17

    invoke-virtual {p3, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 116
    if-eqz p2, :cond_0

    .line 117
    const/16 v0, 0x18

    invoke-virtual {p3, v0, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 121
    const/16 v0, 0x445

    invoke-virtual {p3, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 123
    const/16 v0, 0x446

    const-string v1, "1"

    invoke-virtual {p3, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 124
    const/16 v0, 0x447

    const-string v1, "200000"

    invoke-virtual {p3, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 125
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 129
    :goto_0
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 130
    return-void

    .line 127
    :cond_1
    const/16 v0, 0x19

    const-string v1, "7"

    invoke-virtual {p3, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0
.end method

.method public setSyncKey(Ljava/lang/String;Z)V
    .locals 1
    .parameter "syncKey"
    .parameter "inCommands"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-object p1, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public varargs userLog([Ljava/lang/String;)V
    .locals 1
    .parameter "strings"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0, p1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public abstract wipe()V
.end method
