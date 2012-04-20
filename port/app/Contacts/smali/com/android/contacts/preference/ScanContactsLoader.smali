.class public Lcom/android/contacts/preference/ScanContactsLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ScanContactsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;,
        Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;,
        Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;,
        Lcom/android/contacts/preference/ScanContactsLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/contacts/preference/ScanContactsLoader$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/contacts/preference/ScanContactsLoader;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object p1, p0, Lcom/android/contacts/preference/ScanContactsLoader;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/preference/ScanContactsLoader;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/contacts/preference/ScanContactsLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDeletedContactIds()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/ScanContactsLoader;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 97
    .local v14, resolver:Landroid/content/ContentResolver;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v15, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/ScanContactsLoader;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    .line 103
    .local v3, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountWithDataSet;

    .line 104
    .local v2, account:Lcom/android/contacts/model/AccountWithDataSet;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget-object v0, v2, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x1

    iget-object v0, v2, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    .line 108
    .local v16, selectionArgs:[Ljava/lang/String;
    const-string v17, "REMOVE_DUPLICATE_CONTACTS"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "start scan raw_contact of account "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/android/contacts/preference/ScanContactsLoader;->getNameWithRawContactIds(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v11

    .line 113
    .local v11, nameWithRawContactIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 115
    .local v4, count:I
    if-eqz v4, :cond_0

    .line 119
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 120
    .local v10, name:Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 123
    .local v12, rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const-string v17, "REMOVE_DUPLICATE_CONTACTS"

    const-string v18, "----------------------"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v17, "REMOVE_DUPLICATE_CONTACTS"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "display name is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " raw_contact_id is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/contacts/preference/ScanContactsLoader;->idsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 132
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12, v10}, Lcom/android/contacts/preference/ScanContactsLoader;->getNeedDeletedRawContactIds(Landroid/content/ContentResolver;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 136
    .local v13, rawContactsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v17, "REMOVE_DUPLICATE_CONTACTS"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "need to be deleted id is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/contacts/preference/ScanContactsLoader;->idsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 140
    .local v8, id:Ljava/lang/Long;
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v17, "com.android.contacts.default"

    iget-object v0, v2, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v9, 0x0

    .line 145
    .local v9, markDelete:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/ScanContactsLoader;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mIsMarkDelete:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    .end local v9           #markDelete:I
    :cond_2
    const/4 v9, 0x1

    goto :goto_1

    .line 151
    .end local v2           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v4           #count:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #id:Ljava/lang/Long;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #nameWithRawContactIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v12           #rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v13           #rawContactsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v16           #selectionArgs:[Ljava/lang/String;
    :cond_3
    return-object v15
.end method

.method private getEntityByIds(Landroid/content/ContentResolver;Ljava/util/List;)Landroid/content/EntityIterator;
    .locals 10
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/content/EntityIterator;"
        }
    .end annotation

    .prologue
    .local p2, rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v6, builder:Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 394
    .local v9, rawContactId:Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const-string v0, " OR "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 401
    .end local v9           #rawContactId:Ljava/lang/Long;
    :cond_1
    sget-object v1, Lcom/android/contacts/preference/ScanContactsLoader;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 403
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 407
    :goto_1
    return-object v2

    :cond_2
    invoke-static {v7}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v2

    goto :goto_1
.end method

.method private getMergeRawContacts()Ljava/util/ArrayList;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/preference/ScanContactsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 210
    .local v27, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/preference/ScanContactsLoader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v13

    .line 213
    .local v13, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v28, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/AccountWithDataSet;

    .line 216
    .local v12, account:Lcom/android/contacts/model/AccountWithDataSet;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/4 v3, 0x0

    iget-object v4, v12, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    aput-object v4, v29, v3

    const/4 v3, 0x1

    iget-object v4, v12, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    aput-object v4, v29, v3

    .line 220
    .local v29, selectionArgs:[Ljava/lang/String;
    const-string v3, "REMOVE_DUPLICATE_CONTACTS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "start scan raw_contact of account "

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v12, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/preference/ScanContactsLoader;->getNameWithRawContactIds(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v23

    .line 225
    .local v23, nameWithRawContactIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v14

    .line 227
    .local v14, count:I
    if-eqz v14, :cond_0

    .line 231
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 232
    .local v7, name:Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/List;

    .line 234
    .local v25, rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 238
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/preference/ScanContactsLoader;->getEntityByIds(Landroid/content/ContentResolver;Ljava/util/List;)Landroid/content/EntityIterator;

    move-result-object v16

    .line 240
    .local v16, entities:Landroid/content/EntityIterator;
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v26, rawContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;>;"
    :goto_1
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 244
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Entity;

    .line 245
    .local v17, entity:Landroid/content/Entity;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v18

    .line 247
    .local v18, entityValues:Landroid/content/ContentValues;
    const-string v3, "_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 248
    .local v10, id:J
    const-wide/16 v5, 0x0

    .line 249
    .local v5, photoId:J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v8, phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v9, emials:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/Entity$NamedContentValues;

    .line 252
    .local v24, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v24

    iget-object v15, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 253
    .local v15, cv:Landroid/content/ContentValues;
    const-string v3, "mimetype"

    invoke-virtual {v15, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 254
    .local v22, mimeType:Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 255
    const-string v3, "_id"

    invoke-virtual {v15, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_2

    .line 256
    :cond_3
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 257
    const-string v3, "data1"

    invoke-virtual {v15, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 266
    .end local v5           #photoId:J
    .end local v8           #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #emials:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #id:J
    .end local v15           #cv:Landroid/content/ContentValues;
    .end local v17           #entity:Landroid/content/Entity;
    .end local v18           #entityValues:Landroid/content/ContentValues;
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v22           #mimeType:Ljava/lang/String;
    .end local v24           #ncv:Landroid/content/Entity$NamedContentValues;
    :catchall_0
    move-exception v3

    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    throw v3

    .line 258
    .restart local v5       #photoId:J
    .restart local v8       #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9       #emials:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #id:J
    .restart local v15       #cv:Landroid/content/ContentValues;
    .restart local v17       #entity:Landroid/content/Entity;
    .restart local v18       #entityValues:Landroid/content/ContentValues;
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v22       #mimeType:Ljava/lang/String;
    .restart local v24       #ncv:Landroid/content/Entity$NamedContentValues;
    :cond_4
    :try_start_1
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    const-string v3, "data1"

    invoke-virtual {v15, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 263
    .end local v15           #cv:Landroid/content/ContentValues;
    .end local v22           #mimeType:Ljava/lang/String;
    .end local v24           #ncv:Landroid/content/Entity$NamedContentValues;
    :cond_5
    new-instance v3, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;-><init>(Lcom/android/contacts/preference/ScanContactsLoader;JLjava/lang/String;Ljava/util/List;Ljava/util/List;J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 266
    .end local v5           #photoId:J
    .end local v8           #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #emials:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #id:J
    .end local v17           #entity:Landroid/content/Entity;
    .end local v18           #entityValues:Landroid/content/ContentValues;
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    .line 269
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 270
    new-instance v3, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v3, v0, v1, v7}, Lcom/android/contacts/preference/ScanContactsLoader$MergeContacts;-><init>(Lcom/android/contacts/preference/ScanContactsLoader;Ljava/util/ArrayList;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 275
    .end local v7           #name:Ljava/lang/String;
    .end local v12           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v14           #count:I
    .end local v16           #entities:Landroid/content/EntityIterator;
    .end local v23           #nameWithRawContactIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v25           #rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v26           #rawContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;>;"
    .end local v29           #selectionArgs:[Ljava/lang/String;
    :cond_7
    return-object v28
.end method

.method private getNameWithRawContactIds(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .parameter "resolver"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v8, nameWithRawContactIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v3

    const-string v0, "_id"

    aput-object v0, v2, v4

    const-string v3, "deleted=0 AND account_name=? AND account_type=? AND data_set IS NULL "

    move-object v0, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 179
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 203
    :goto_0
    return-object v5

    .line 184
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, name:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 188
    .local v9, rawContactId:J
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 190
    .local v11, rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v11, :cond_1

    .line 191
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .restart local v11       #rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v8, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 200
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #rawContactId:J
    .end local v11           #rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 196
    .restart local v7       #name:Ljava/lang/String;
    .restart local v9       #rawContactId:J
    .restart local v11       #rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 200
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #rawContactId:J
    .end local v11           #rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v5, v8

    .line 203
    goto :goto_0
.end method

.method private getNeedDeletedRawContactIds(Landroid/content/ContentResolver;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 31
    .parameter "resolver"
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    .local p2, rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v27

    if-nez v27, :cond_2

    .line 282
    :cond_0
    const/16 v24, 0x0

    .line 385
    :cond_1
    :goto_0
    return-object v24

    .line 285
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 287
    .local v25, start:J
    invoke-direct/range {p0 .. p2}, Lcom/android/contacts/preference/ScanContactsLoader;->getEntityByIds(Landroid/content/ContentResolver;Ljava/util/List;)Landroid/content/EntityIterator;

    move-result-object v11

    .line 289
    .local v11, entities:Landroid/content/EntityIterator;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v23, rawContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;>;"
    :goto_1
    :try_start_0
    invoke-interface {v11}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_9

    .line 293
    invoke-interface {v11}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Entity;

    .line 295
    .local v12, entity:Landroid/content/Entity;
    new-instance v20, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;-><init>(Lcom/android/contacts/preference/ScanContactsLoader;)V

    .line 296
    .local v20, rawContact:Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;
    invoke-virtual {v12}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v13

    .line 298
    .local v13, entityValues:Landroid/content/ContentValues;
    const-string v27, "_id"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    move-object/from16 v0, v20

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->setRawContactId(J)V

    .line 299
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mName:Ljava/lang/String;

    .line 300
    const-string v27, "custom_ringtone"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, customRingtone:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 302
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mN:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0xa

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mN:I

    .line 305
    :cond_3
    invoke-virtual {v12}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Entity$NamedContentValues;

    .line 306
    .local v19, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 307
    .local v4, cv:Landroid/content/ContentValues;
    const-string v27, "mimetype"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 310
    .local v17, mimeType:Ljava/lang/String;
    const-string v27, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 311
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mN:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x64

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mN:I

    .line 312
    const-string v27, "_id"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mPhotoId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 328
    .end local v3           #customRingtone:Ljava/lang/String;
    .end local v4           #cv:Landroid/content/ContentValues;
    .end local v12           #entity:Landroid/content/Entity;
    .end local v13           #entityValues:Landroid/content/ContentValues;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #mimeType:Ljava/lang/String;
    .end local v19           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v20           #rawContact:Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;
    :catchall_0
    move-exception v27

    invoke-interface {v11}, Landroid/content/EntityIterator;->close()V

    throw v27

    .line 313
    .restart local v3       #customRingtone:Ljava/lang/String;
    .restart local v4       #cv:Landroid/content/ContentValues;
    .restart local v12       #entity:Landroid/content/Entity;
    .restart local v13       #entityValues:Landroid/content/ContentValues;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v17       #mimeType:Ljava/lang/String;
    .restart local v19       #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v20       #rawContact:Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;
    :cond_5
    :try_start_1
    const-string v27, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 314
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mN:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mN:I

    goto :goto_2

    .line 315
    :cond_6
    const-string v27, "vnd.android.cursor.item/im"

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 316
    const-string v27, "data1"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, data:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 318
    .end local v5           #data:Ljava/lang/String;
    :cond_7
    const-string v27, "vnd.android.cursor.item/name"

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 320
    const-string v27, "data1"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 321
    .restart local v5       #data:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 325
    .end local v4           #cv:Landroid/content/ContentValues;
    .end local v5           #data:Ljava/lang/String;
    .end local v17           #mimeType:Ljava/lang/String;
    .end local v19           #ncv:Landroid/content/Entity$NamedContentValues;
    :cond_8
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 328
    .end local v3           #customRingtone:Ljava/lang/String;
    .end local v12           #entity:Landroid/content/Entity;
    .end local v13           #entityValues:Landroid/content/ContentValues;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #rawContact:Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;
    :cond_9
    invoke-interface {v11}, Landroid/content/EntityIterator;->close()V

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 334
    .local v7, end:J
    const-string v27, "REMOVE_DUPLICATE_CONTACTS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "*** query coast time "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sub-long v29, v7, v25

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ***"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 338
    .local v18, n:I
    const/16 v27, 0x2

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 339
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 342
    :cond_a
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v24, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    add-int/lit8 v27, v18, -0x1

    move/from16 v0, v27

    if-ge v14, v0, :cond_10

    .line 346
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;

    .line 348
    .local v21, rawContactA:Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->isDeleted()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 345
    :cond_b
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 352
    :cond_c
    add-int/lit8 v16, v14, 0x1

    .local v16, j:I
    :goto_5
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 353
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;

    .line 355
    .local v22, rawContactB:Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;
    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->isDeleted()Z

    move-result v27

    if-eqz v27, :cond_e

    .line 352
    :cond_d
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 360
    :cond_e
    invoke-virtual/range {v21 .. v22}, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->compare(Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 361
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mN:I

    move/from16 v27, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->mN:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_f

    .line 362
    const/16 v27, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->setDeleted(Z)V

    .line 363
    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->getRawContactId()J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 365
    :cond_f
    const/16 v27, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->setDeleted(Z)V

    .line 366
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;->getRawContactId()J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 374
    .end local v16           #j:I
    .end local v21           #rawContactA:Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;
    .end local v22           #rawContactB:Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 376
    .local v9, end1:J
    const-string v27, "REMOVE_DUPLICATE_CONTACTS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "*** diff coast time "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sub-long v29, v9, v7

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ***"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_1

    .line 380
    new-instance v6, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;

    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v6, v0, v1, v2}, Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;-><init>(Lcom/android/contacts/preference/ScanContactsLoader;Lcom/android/contacts/preference/ScanContactsLoader$RawContactData;I)V

    .line 382
    .local v6, deletedRawContact:Lcom/android/contacts/preference/ScanContactsLoader$ContactsInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/preference/ScanContactsLoader;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mDeletedContacts:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private idsToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    .line 156
    const-string v3, ""

    .line 166
    :goto_0
    return-object v3

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 162
    .local v2, id:Ljava/lang/Long;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 165
    .end local v2           #id:Ljava/lang/Long;
    :cond_1
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public loadInBackground()Lcom/android/contacts/preference/ScanContactsLoader$Result;
    .locals 6

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 71
    .local v0, time:J
    new-instance v2, Lcom/android/contacts/preference/ScanContactsLoader$Result;

    invoke-direct {v2, p0}, Lcom/android/contacts/preference/ScanContactsLoader$Result;-><init>(Lcom/android/contacts/preference/ScanContactsLoader;)V

    iput-object v2, p0, Lcom/android/contacts/preference/ScanContactsLoader;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;

    .line 73
    invoke-virtual {p0}, Lcom/android/contacts/preference/ScanContactsLoader;->getId()I

    move-result v2

    if-nez v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/android/contacts/preference/ScanContactsLoader;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;

    invoke-direct {p0}, Lcom/android/contacts/preference/ScanContactsLoader;->getDeletedContactIds()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mDeletedRawContactIds:Ljava/util/List;

    .line 75
    const-string v2, "REMOVE_DUPLICATE_CONTACTS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*****get deleted contacts time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/preference/ScanContactsLoader;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;

    return-object v2

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/preference/ScanContactsLoader;->getId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 77
    iget-object v2, p0, Lcom/android/contacts/preference/ScanContactsLoader;->mResult:Lcom/android/contacts/preference/ScanContactsLoader$Result;

    invoke-direct {p0}, Lcom/android/contacts/preference/ScanContactsLoader;->getMergeRawContacts()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/android/contacts/preference/ScanContactsLoader$Result;->mMergeContacts:Ljava/util/ArrayList;

    .line 78
    const-string v2, "REMOVE_DUPLICATE_CONTACTS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*****get merge contacts time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/contacts/preference/ScanContactsLoader;->loadInBackground()Lcom/android/contacts/preference/ScanContactsLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/contacts/preference/ScanContactsLoader;->stopLoading()V

    .line 92
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/contacts/preference/ScanContactsLoader;->forceLoad()V

    .line 87
    return-void
.end method
