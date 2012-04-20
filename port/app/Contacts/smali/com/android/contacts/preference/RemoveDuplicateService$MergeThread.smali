.class Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;
.super Ljava/lang/Thread;
.source "RemoveDuplicateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/preference/RemoveDuplicateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MergeThread"
.end annotation


# instance fields
.field private account:Landroid/accounts/Account;

.field private final mIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/preference/RemoveDuplicateService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/preference/RemoveDuplicateService;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 175
    iput-object p2, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->mIds:Ljava/util/ArrayList;

    .line 176
    return-void
.end method

.method private addData(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "mimeType"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p3, :cond_0

    .line 389
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 382
    .local v0, dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .restart local v0       #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 387
    :cond_1
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private buildDataInsertOperation(JLandroid/content/ContentValues;)Landroid/content/ContentProviderOperation;
    .locals 2
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 339
    const-string v0, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method private diffEntity(Landroid/content/Entity;JLmiui/provider/BatchOperation;)V
    .locals 7
    .parameter "entity"
    .parameter "rawContactId"
    .parameter "batchOperation"

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity$NamedContentValues;

    .line 269
    .local v4, ncv:Landroid/content/Entity$NamedContentValues;
    iget-object v0, v4, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 270
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "mimetype"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, mimeType:Ljava/lang/String;
    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 272
    iget-object v5, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->mSourceData:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 273
    invoke-direct {p0, v0, v3}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->getNewContentValues(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-direct {p0, p2, p3, v5}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->buildDataInsertOperation(JLandroid/content/ContentValues;)Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p4, v5}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 275
    iget-object v5, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->mSourceData:Ljava/util/HashMap;

    const-string v6, "_id"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v3, v6}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->addData(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_1
    const-string v5, "vnd.android.cursor.item/im"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    const-string v5, "data1"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, data:Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->ensureContainData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 281
    invoke-direct {p0, v0, v3}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->getNewContentValues(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-direct {p0, p2, p3, v5}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->buildDataInsertOperation(JLandroid/content/ContentValues;)Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p4, v5}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    goto :goto_0

    .line 285
    .end local v1           #data:Ljava/lang/String;
    :cond_2
    const-string v5, "data1"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .restart local v1       #data:Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->ensureContainData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 288
    invoke-direct {p0, v0, v3}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->getNewContentValues(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-direct {p0, p2, p3, v5}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->buildDataInsertOperation(JLandroid/content/ContentValues;)Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p4, v5}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    goto :goto_0

    .line 293
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #data:Ljava/lang/String;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v4           #ncv:Landroid/content/Entity$NamedContentValues;
    :cond_3
    return-void
.end method

.method private ensureContainData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "mimeType"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 313
    iget-object v3, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->mSourceData:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 315
    .local v0, datalist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 316
    iget-object v2, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->mSourceData:Ljava/util/HashMap;

    invoke-direct {p0, v2, p1, p2}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->addData(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_0
    return v1

    .line 321
    :cond_0
    const-string v3, "vnd.android.cursor.item/name"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "vnd.android.cursor.item/organization"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "vnd.android.cursor.item/note"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "vnd.android.cursor.item/nickname"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    .line 326
    goto :goto_0

    .line 329
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 330
    iget-object v2, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->mSourceData:Ljava/util/HashMap;

    invoke-direct {p0, v2, p1, p2}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->addData(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 334
    goto :goto_0
.end method

.method private getEntityById(J)Landroid/content/Entity;
    .locals 10
    .parameter "rawContactId"

    .prologue
    const/4 v2, 0x0

    .line 392
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-object v2

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    invoke-virtual {v0}, Lcom/android/contacts/preference/RemoveDuplicateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 401
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 405
    invoke-static {v6}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v7

    .line 408
    .local v7, entities:Landroid/content/EntityIterator;
    :try_start_0
    invoke-interface {v7}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    invoke-interface {v7}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Entity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    .local v8, entity:Landroid/content/Entity;
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    move-object v2, v8

    goto :goto_0

    .end local v8           #entity:Landroid/content/Entity;
    :cond_2
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    throw v0
.end method

.method private getNewContentValues(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .parameter "cv"
    .parameter "mimeType"

    .prologue
    .line 296
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 297
    const-string v0, "data_version"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 298
    const-string v0, "is_read_only"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 299
    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 300
    const-string v0, "data_sync1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 301
    const-string v0, "data_sync2"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 302
    const-string v0, "data_sync3"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 303
    const-string v0, "data_sync4"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 305
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "group_sourceid"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 309
    :cond_0
    return-object p1
.end method

.method private getSourceRawContactsData(Landroid/content/Entity;)Ljava/util/HashMap;
    .locals 10
    .parameter "entity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Entity;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 349
    .local v8, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 351
    .local v4, entityValues:Landroid/content/ContentValues;
    const-string v9, "account_name"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, accountName:Ljava/lang/String;
    const-string v9, "account_type"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, accountType:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 355
    new-instance v9, Landroid/accounts/Account;

    invoke-direct {v9, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->account:Landroid/accounts/Account;

    .line 358
    :cond_0
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Entity$NamedContentValues;

    .line 359
    .local v7, ncv:Landroid/content/Entity$NamedContentValues;
    iget-object v2, v7, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 360
    .local v2, cv:Landroid/content/ContentValues;
    const-string v9, "mimetype"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, mimeType:Ljava/lang/String;
    const-string v9, "vnd.android.cursor.item/photo"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 363
    const-string v9, "_id"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v6, v9}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->addData(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_1
    const-string v9, "vnd.android.cursor.item/im"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 365
    const-string v9, "data1"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, data:Ljava/lang/String;
    invoke-direct {p0, v8, v6, v3}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->addData(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    .end local v3           #data:Ljava/lang/String;
    :cond_2
    const-string v9, "data1"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 369
    .restart local v3       #data:Ljava/lang/String;
    invoke-direct {p0, v8, v6, v3}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->addData(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v3           #data:Ljava/lang/String;
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #ncv:Landroid/content/Entity$NamedContentValues;
    :cond_3
    return-object v8
.end method

.method private mergeContacts(Lmiui/provider/BatchOperation;[J)V
    .locals 10
    .parameter "mBatchOperation"
    .parameter "rawContactIds"

    .prologue
    .line 231
    if-eqz p2, :cond_0

    array-length v6, p2

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 264
    :cond_0
    return-void

    .line 235
    :cond_1
    const/4 v6, 0x0

    aget-wide v4, p2, v6

    .line 237
    .local v4, sourceRawContactId:J
    invoke-direct {p0, v4, v5}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->getEntityById(J)Landroid/content/Entity;

    move-result-object v2

    .line 239
    .local v2, entitySource:Landroid/content/Entity;
    if-eqz v2, :cond_0

    .line 243
    invoke-direct {p0, v2}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->getSourceRawContactsData(Landroid/content/Entity;)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->mSourceData:Ljava/util/HashMap;

    .line 245
    iget-object v6, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->mSourceData:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    .line 249
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    array-length v6, p2

    if-ge v3, v6, :cond_0

    .line 250
    aget-wide v6, p2, v3

    invoke-direct {p0, v6, v7}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->getEntityById(J)Landroid/content/Entity;

    move-result-object v1

    .line 251
    .local v1, entity:Landroid/content/Entity;
    invoke-direct {p0, v1, v4, v5, p1}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->diffEntity(Landroid/content/Entity;JLmiui/provider/BatchOperation;)V

    .line 253
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 255
    .local v0, URI:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->account:Landroid/accounts/Account;

    if-eqz v6, :cond_2

    const-string v6, "com.android.contacts.default"

    iget-object v7, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->account:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 256
    :cond_2
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "caller_is_syncadapter"

    const-string v8, "true"

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 261
    :cond_3
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-wide v8, p2, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p1, v6}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 249
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 187
    :try_start_0
    iget-object v8, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateService;->mAutoSync:Z
    invoke-static {v8}, Lcom/android/contacts/preference/RemoveDuplicateService;->access$000(Lcom/android/contacts/preference/RemoveDuplicateService;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 188
    const/4 v8, 0x0

    invoke-static {v8}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 191
    :cond_0
    const/4 v6, 0x0

    .line 192
    .local v6, progress:I
    new-instance v5, Lmiui/provider/BatchOperation;

    iget-object v8, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    invoke-virtual {v8}, Lcom/android/contacts/preference/RemoveDuplicateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {v5, v8}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;)V

    .line 193
    .local v5, mBatchOperation:Lmiui/provider/BatchOperation;
    iget-object v8, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .local v4, ids:Ljava/lang/String;
    :try_start_1
    const-string v8, ";"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, contactIds:[Ljava/lang/String;
    array-length v8, v0

    new-array v7, v8, [J

    .line 197
    .local v7, rawContactIds:[J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v0

    if-ge v2, v8, :cond_2

    .line 198
    aget-object v8, v0, v2

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v7, v2

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 200
    :cond_2
    invoke-direct {p0, v5, v7}, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->mergeContacts(Lmiui/provider/BatchOperation;[J)V

    .line 202
    iget-object v8, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateService;->mListener:Lcom/android/contacts/preference/RemoveDuplicateService$Listener;
    invoke-static {v8}, Lcom/android/contacts/preference/RemoveDuplicateService;->access$100(Lcom/android/contacts/preference/RemoveDuplicateService;)Lcom/android/contacts/preference/RemoveDuplicateService$Listener;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 203
    iget-object v8, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateService;->mListener:Lcom/android/contacts/preference/RemoveDuplicateService$Listener;
    invoke-static {v8}, Lcom/android/contacts/preference/RemoveDuplicateService;->access$100(Lcom/android/contacts/preference/RemoveDuplicateService;)Lcom/android/contacts/preference/RemoveDuplicateService$Listener;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v8, v6}, Lcom/android/contacts/preference/RemoveDuplicateService$Listener;->onProgress(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    .end local v0           #contactIds:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v7           #rawContactIds:[J
    :cond_3
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Lmiui/provider/BatchOperation;->size()I

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_1

    .line 210
    invoke-virtual {v5}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 223
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #ids:Ljava/lang/String;
    .end local v5           #mBatchOperation:Lmiui/provider/BatchOperation;
    .end local v6           #progress:I
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateService;->mAutoSync:Z
    invoke-static {v9}, Lcom/android/contacts/preference/RemoveDuplicateService;->access$000(Lcom/android/contacts/preference/RemoveDuplicateService;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 224
    invoke-static {v11}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 226
    :cond_4
    iget-object v9, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    invoke-virtual {v9}, Lcom/android/contacts/preference/RemoveDuplicateService;->stopSelf()V

    throw v8

    .line 205
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #ids:Ljava/lang/String;
    .restart local v5       #mBatchOperation:Lmiui/provider/BatchOperation;
    .restart local v6       #progress:I
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v8, "RemoveDuplicateService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parse raw_contact_id error :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 214
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #ids:Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Lmiui/provider/BatchOperation;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 215
    invoke-virtual {v5}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    .line 218
    :cond_6
    iget-object v8, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateService;->mListener:Lcom/android/contacts/preference/RemoveDuplicateService$Listener;
    invoke-static {v8}, Lcom/android/contacts/preference/RemoveDuplicateService;->access$100(Lcom/android/contacts/preference/RemoveDuplicateService;)Lcom/android/contacts/preference/RemoveDuplicateService$Listener;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 219
    iget-object v8, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateService;->mListener:Lcom/android/contacts/preference/RemoveDuplicateService$Listener;
    invoke-static {v8}, Lcom/android/contacts/preference/RemoveDuplicateService;->access$100(Lcom/android/contacts/preference/RemoveDuplicateService;)Lcom/android/contacts/preference/RemoveDuplicateService$Listener;

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/android/contacts/preference/RemoveDuplicateService$Listener;->onProgress(I)V

    .line 220
    iget-object v8, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateService;->mListener:Lcom/android/contacts/preference/RemoveDuplicateService$Listener;
    invoke-static {v8}, Lcom/android/contacts/preference/RemoveDuplicateService;->access$100(Lcom/android/contacts/preference/RemoveDuplicateService;)Lcom/android/contacts/preference/RemoveDuplicateService$Listener;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/android/contacts/preference/RemoveDuplicateService$Listener;->onFinished(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    :cond_7
    iget-object v8, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    #getter for: Lcom/android/contacts/preference/RemoveDuplicateService;->mAutoSync:Z
    invoke-static {v8}, Lcom/android/contacts/preference/RemoveDuplicateService;->access$000(Lcom/android/contacts/preference/RemoveDuplicateService;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 224
    invoke-static {v11}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 226
    :cond_8
    iget-object v8, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MergeThread;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    invoke-virtual {v8}, Lcom/android/contacts/preference/RemoveDuplicateService;->stopSelf()V

    .line 228
    return-void
.end method
