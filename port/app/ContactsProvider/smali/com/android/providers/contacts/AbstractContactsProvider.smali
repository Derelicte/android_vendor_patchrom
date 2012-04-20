.class public abstract Lcom/android/providers/contacts/AbstractContactsProvider;
.super Landroid/content/ContentProvider;
.source "AbstractContactsProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# instance fields
.field private mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mSerializeDbTag:Ljava/lang/String;

.field private mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mTransactionHolder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/contacts/ContactsTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private endTransaction(Z)V
    .locals 4
    .parameter "callerIsBatch"

    .prologue
    const/4 v3, 0x0

    .line 246
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    .line 247
    .local v0, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->isBatch()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    .line 249
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->notifyChange()V

    .line 252
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactsTransaction;->finish(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 258
    :cond_2
    return-void

    .line 255
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v1
.end method

.method private startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;
    .locals 3
    .parameter "callerIsBatch"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    .line 229
    .local v0, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    if-nez v0, :cond_1

    .line 230
    new-instance v0, Lcom/android/providers/contacts/ContactsTransaction;

    .end local v0           #transaction:Lcom/android/providers/contacts/ContactsTransaction;
    invoke-direct {v0, p1}, Lcom/android/providers/contacts/ContactsTransaction;-><init>(Z)V

    .line 231
    .restart local v0       #transaction:Lcom/android/providers/contacts/ContactsTransaction;
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeDbTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/providers/contacts/ContactsTransaction;->startTransactionForDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 237
    :cond_1
    return-object v0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v10, 0x1

    .line 182
    const/4 v7, 0x0

    .line 183
    .local v7, ypCount:I
    const/4 v2, 0x0

    .line 184
    .local v2, opCount:I
    invoke-direct {p0, v10}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v6

    .line 186
    .local v6, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 187
    .local v1, numOperations:I
    new-array v5, v1, [Landroid/content/ContentProviderResult;

    .line 188
    .local v5, results:[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 189
    add-int/lit8 v2, v2, 0x1

    const/16 v8, 0x1f4

    if-lt v2, v8, :cond_0

    .line 190
    new-instance v8, Landroid/content/OperationApplicationException;

    const-string v9, "Too many content provider operations between yield points. The maximum number of operations per yield point is 500"

    invoke-direct {v8, v9, v7}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .end local v0           #i:I
    .end local v1           #numOperations:I
    .end local v5           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v8

    invoke-direct {p0, v10}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->onEndTransaction()V

    throw v8

    .line 195
    .restart local v0       #i:I
    .restart local v1       #numOperations:I
    .restart local v5       #results:[Landroid/content/ContentProviderResult;
    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    .line 196
    .local v3, operation:Landroid/content/ContentProviderOperation;
    if-lez v0, :cond_1

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 197
    const/4 v2, 0x0

    .line 199
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->yield(Lcom/android/providers/contacts/ContactsTransaction;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 200
    add-int/lit8 v7, v7, 0x1

    .line 208
    :cond_1
    :try_start_3
    invoke-virtual {v3, p0, v5, v0}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v8

    aput-object v8, v5, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :catch_0
    move-exception v4

    .line 203
    .local v4, re:Ljava/lang/RuntimeException;
    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactsTransaction;->markYieldFailed()V

    .line 204
    throw v4

    .line 210
    .end local v3           #operation:Landroid/content/ContentProviderOperation;
    .end local v4           #re:Ljava/lang/RuntimeException;
    :cond_2
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    invoke-direct {p0, v10}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->onEndTransaction()V

    return-object v5
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 7
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v6, 0x1

    .line 154
    invoke-direct {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v4

    .line 155
    .local v4, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    array-length v1, p2

    .line 156
    .local v1, numValues:I
    const/4 v2, 0x0

    .line 158
    .local v2, opCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 159
    :try_start_0
    aget-object v5, p2, v0

    invoke-virtual {p0, p1, v5}, Lcom/android/providers/contacts/AbstractContactsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x32

    if-lt v2, v5, :cond_0

    .line 161
    const/4 v2, 0x0

    .line 163
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/AbstractContactsProvider;->yield(Lcom/android/providers/contacts/ContactsTransaction;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :catch_0
    move-exception v3

    .line 165
    .local v3, re:Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsTransaction;->markYieldFailed()V

    .line 166
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    .end local v3           #re:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    invoke-direct {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->onEndTransaction()V

    throw v5

    .line 170
    :cond_1
    const/4 v5, 0x1

    :try_start_3
    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    invoke-direct {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->onEndTransaction()V

    .line 176
    return v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v1

    .line 124
    .local v1, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/AbstractContactsProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, deleted:I
    if-lez v0, :cond_0

    .line 126
    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsTransaction;->markDirty()V

    .line 128
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->onEndTransaction()V

    return v0

    .line 131
    .end local v0           #deleted:I
    :catchall_0
    move-exception v2

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->onEndTransaction()V

    throw v2
.end method

.method protected abstract deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public getCurrentTransaction()Lcom/android/providers/contacts/ContactsTransaction;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    return-object v0
.end method

.method public getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method protected abstract getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method protected abstract getTransactionHolder()Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/contacts/ContactsTransaction;",
            ">;"
        }
    .end annotation
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v1

    .line 108
    .local v1, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/AbstractContactsProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 109
    .local v0, result:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsTransaction;->markDirty()V

    .line 112
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->onEndTransaction()V

    return-object v0

    .line 115
    .end local v0           #result:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->onEndTransaction()V

    throw v2
.end method

.method protected abstract insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected abstract notifyChange()V
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 82
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->getTransactionHolder()Ljava/lang/ThreadLocal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    .line 83
    const/4 v1, 0x1

    return v1
.end method

.method protected onEndTransaction()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public setDbHelperToSerializeOn(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;)V
    .locals 0
    .parameter "serializeOnDbHelper"
    .parameter "tag"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 97
    iput-object p2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeDbTag:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v0

    .line 140
    .local v0, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/AbstractContactsProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 141
    .local v1, updated:I
    if-lez v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->markDirty()V

    .line 144
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->onEndTransaction()V

    return v1

    .line 147
    .end local v1           #updated:I
    :catchall_0
    move-exception v2

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->onEndTransaction()V

    throw v2
.end method

.method protected abstract updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract yield(Lcom/android/providers/contacts/ContactsTransaction;)Z
.end method
