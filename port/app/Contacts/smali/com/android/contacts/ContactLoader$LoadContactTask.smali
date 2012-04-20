.class final Lcom/android/contacts/ContactLoader$LoadContactTask;
.super Landroid/os/AsyncTask;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadContactTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/ContactLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactLoader;


# direct methods
.method private constructor <init>(Lcom/android/contacts/ContactLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ContactLoader;Lcom/android/contacts/ContactLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 714
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$LoadContactTask;-><init>(Lcom/android/contacts/ContactLoader;)V

    return-void
.end method

.method private cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V
    .locals 3
    .parameter "cursor"
    .parameter "values"
    .parameter "index"

    .prologue
    .line 1034
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1048
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :pswitch_1
    sget-object v0, Lcom/android/contacts/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1050
    :goto_0
    :pswitch_2
    return-void

    .line 1042
    :pswitch_3
    sget-object v0, Lcom/android/contacts/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1045
    :pswitch_4
    sget-object v0, Lcom/android/contacts/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 1034
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private ensureIsContactUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 754
    if-nez p2, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "uri must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 756
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, authority:Ljava/lang/String;
    const-string v5, "com.android.contacts"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 760
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 762
    .local v4, type:Ljava/lang/String;
    const-string v5, "vnd.android.cursor.item/contact"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 782
    .end local v4           #type:Ljava/lang/String;
    .end local p2
    :goto_0
    return-object p2

    .line 767
    .restart local v4       #type:Ljava/lang/String;
    .restart local p2
    :cond_1
    const-string v5, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 768
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 769
    .local v2, rawContactId:J
    iget-object v5, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 774
    .end local v2           #rawContactId:J
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "uri format is unknown"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 778
    .end local v4           #type:Ljava/lang/String;
    :cond_3
    const-string v0, "contacts"

    .line 779
    .local v0, OBSOLETE_AUTHORITY:Ljava/lang/String;
    const-string v5, "contacts"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 781
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 782
    .restart local v2       #rawContactId:J
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 786
    .end local v2           #rawContactId:J
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "uri authority is unknown"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private loadCalllogItems(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 18
    .parameter "result"

    .prologue
    .line 1093
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getPhoneNumbers()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1131
    :cond_0
    :goto_0
    return-void

    .line 1097
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1098
    .local v16, selection:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getPhoneNumbers()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1099
    .local v17, string:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1100
    const-string v1, " OR "

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    :cond_2
    const-string v1, "PHONE_NUMBERS_EQUAL(number,"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    invoke-static/range {v17 .. v17}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    const-string v1, ",0)"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1109
    .end local v17           #string:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/CalllogLoader$CalllogQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1112
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_0

    .line 1114
    :goto_2
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1115
    const/4 v1, 0x6

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1116
    .local v2, id:J
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1117
    .local v4, date:J
    const/4 v1, 0x1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1118
    .local v6, duration:J
    const/4 v1, 0x2

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1119
    .local v8, number:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1120
    .local v9, type:I
    const/4 v1, 0x4

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1121
    .local v10, countryIso:Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1122
    .local v11, geocodedLocation:Ljava/lang/String;
    const/4 v1, 0x7

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1123
    .local v12, voicemailUri:Ljava/lang/String;
    const/16 v1, 0x8

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1124
    .local v13, forwardedCall:I
    new-instance v1, Lcom/android/contacts/CalllogMetaData;

    invoke-direct/range {v1 .. v13}, Lcom/android/contacts/CalllogMetaData;-><init>(JJJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p1

    #calls: Lcom/android/contacts/ContactLoader$Result;->addCalllogMetaData(Lcom/android/contacts/CalllogMetaData;)V
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader$Result;->access$1300(Lcom/android/contacts/ContactLoader$Result;Lcom/android/contacts/CalllogMetaData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1128
    .end local v2           #id:J
    .end local v4           #date:J
    .end local v6           #duration:J
    .end local v8           #number:Ljava/lang/String;
    .end local v9           #type:I
    .end local v10           #countryIso:Ljava/lang/String;
    .end local v11           #geocodedLocation:Ljava/lang/String;
    .end local v12           #voicemailUri:Ljava/lang/String;
    .end local v13           #forwardedCall:I
    :catchall_0
    move-exception v1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    .locals 22
    .parameter "resolver"
    .parameter "contactUri"

    .prologue
    .line 790
    const-string v2, "entities"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 791
    .local v3, entityUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/contacts/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "raw_contact_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 793
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 794
    const-string v2, "ContactLoader"

    const-string v4, "No cursor returned in loadContactEntity"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mRequestedUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/ContactLoader;->access$500(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v2

    #calls: Lcom/android/contacts/ContactLoader$Result;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v2}, Lcom/android/contacts/ContactLoader$Result;->access$700(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v19

    .line 843
    :goto_0
    return-object v19

    .line 799
    :cond_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 800
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mRequestedUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/ContactLoader;->access$500(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v2

    #calls: Lcom/android/contacts/ContactLoader$Result;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v2}, Lcom/android/contacts/ContactLoader$Result;->access$700(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v19

    .line 843
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 804
    :cond_1
    const-wide/16 v9, -0x1

    .line 805
    .local v9, currentRawContactId:J
    const/16 v16, 0x0

    .line 806
    .local v16, entity:Landroid/content/Entity;
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v19

    .line 807
    .local v19, result:Lcom/android/contacts/ContactLoader$Result;
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v15

    .line 808
    .local v15, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Ljava/util/HashMap;

    move-result-object v21

    .line 809
    .local v21, statuses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_7

    .line 810
    const/16 v2, 0xe

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 811
    .local v17, rawContactId:J
    cmp-long v2, v17, v9

    if-eqz v2, :cond_2

    .line 812
    move-wide/from16 v9, v17

    .line 813
    new-instance v16, Landroid/content/Entity;

    .end local v16           #entity:Landroid/content/Entity;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadRawContact(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 814
    .restart local v16       #entity:Landroid/content/Entity;
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    :cond_2
    const/16 v2, 0x1c

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 818
    const-string v2, "vnd.android.cursor.item/phone_v2"

    const/16 v4, 0x33

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 819
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/ContactLoader$Result;->getPhoneNumbers()Ljava/util/HashMap;

    move-result-object v2

    const/16 v4, 0x1d

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadData(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v12

    .line 824
    .local v12, data:Landroid/content/ContentValues;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v12}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 826
    const/16 v2, 0x36

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x38

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 828
    :cond_4
    new-instance v20, Lcom/android/contacts/util/DataStatus;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Lcom/android/contacts/util/DataStatus;-><init>(Landroid/database/Cursor;)V

    .line 829
    .local v20, status:Lcom/android/contacts/util/DataStatus;
    const/16 v2, 0x1c

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 830
    .local v13, dataId:J
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    .end local v12           #data:Landroid/content/ContentValues;
    .end local v13           #dataId:J
    .end local v20           #status:Lcom/android/contacts/util/DataStatus;
    :cond_5
    const/16 v2, 0x10

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 835
    .local v8, accountType:Ljava/lang/String;
    const-string v2, "com.android.contacts.sim"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 836
    const/4 v2, 0x0

    move-object/from16 v0, v19

    #setter for: Lcom/android/contacts/ContactLoader$Result;->mIsSimContact:Z
    invoke-static {v0, v2}, Lcom/android/contacts/ContactLoader$Result;->access$802(Lcom/android/contacts/ContactLoader$Result;Z)Z

    .line 809
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 843
    .end local v8           #accountType:Ljava/lang/String;
    .end local v9           #currentRawContactId:J
    .end local v15           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v16           #entity:Landroid/content/Entity;
    .end local v17           #rawContactId:J
    .end local v19           #result:Lcom/android/contacts/ContactLoader$Result;
    .end local v21           #statuses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v9       #currentRawContactId:J
    .restart local v15       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v16       #entity:Landroid/content/Entity;
    .restart local v19       #result:Lcom/android/contacts/ContactLoader$Result;
    .restart local v21       #statuses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    .locals 26
    .parameter "cursor"
    .parameter "contactUri"

    .prologue
    .line 931
    const-string v1, "directory"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 933
    .local v25, directoryParameter:Ljava/lang/String;
    if-nez v25, :cond_1

    const-wide/16 v5, 0x0

    .line 936
    .local v5, directoryId:J
    :goto_0
    const/16 v1, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 937
    .local v8, contactId:J
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 938
    .local v7, lookupKey:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 939
    .local v10, nameRawContactId:J
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 940
    .local v12, displayNameSource:I
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 941
    .local v16, displayName:Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 942
    .local v17, altDisplayName:Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 943
    .local v18, phoneticName:Ljava/lang/String;
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 944
    .local v13, photoId:J
    const/16 v1, 0x3d

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 945
    .local v15, photoUri:Ljava/lang/String;
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v19, 0x1

    .line 946
    .local v19, starred:Z
    :goto_1
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v20, 0x0

    .line 949
    .local v20, presence:Ljava/lang/Integer;
    :goto_2
    const/16 v1, 0x3e

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/16 v21, 0x1

    .line 950
    .local v21, sendToVoicemail:Z
    :goto_3
    const/16 v1, 0x3f

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 951
    .local v22, customRingtone:Ljava/lang/String;
    const/16 v1, 0x40

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const/16 v23, 0x1

    .line 954
    .local v23, isUserProfile:Z
    :goto_4
    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    cmp-long v1, v5, v1

    if-nez v1, :cond_6

    .line 955
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v1, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 961
    .local v4, lookupUri:Landroid/net/Uri;
    :goto_5
    new-instance v1, Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mRequestedUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/ContactLoader;->access$500(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v2

    const/16 v24, 0x0

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v24}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZLcom/android/contacts/ContactLoader$1;)V

    return-object v1

    .line 933
    .end local v4           #lookupUri:Landroid/net/Uri;
    .end local v5           #directoryId:J
    .end local v7           #lookupKey:Ljava/lang/String;
    .end local v8           #contactId:J
    .end local v10           #nameRawContactId:J
    .end local v12           #displayNameSource:I
    .end local v13           #photoId:J
    .end local v15           #photoUri:Ljava/lang/String;
    .end local v16           #displayName:Ljava/lang/String;
    .end local v17           #altDisplayName:Ljava/lang/String;
    .end local v18           #phoneticName:Ljava/lang/String;
    .end local v19           #starred:Z
    .end local v20           #presence:Ljava/lang/Integer;
    .end local v21           #sendToVoicemail:Z
    .end local v22           #customRingtone:Ljava/lang/String;
    .end local v23           #isUserProfile:Z
    :cond_1
    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto/16 :goto_0

    .line 945
    .restart local v5       #directoryId:J
    .restart local v7       #lookupKey:Ljava/lang/String;
    .restart local v8       #contactId:J
    .restart local v10       #nameRawContactId:J
    .restart local v12       #displayNameSource:I
    .restart local v13       #photoId:J
    .restart local v15       #photoUri:Ljava/lang/String;
    .restart local v16       #displayName:Ljava/lang/String;
    .restart local v17       #altDisplayName:Ljava/lang/String;
    .restart local v18       #phoneticName:Ljava/lang/String;
    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    .line 946
    .restart local v19       #starred:Z
    :cond_3
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    goto :goto_2

    .line 949
    .restart local v20       #presence:Ljava/lang/Integer;
    :cond_4
    const/16 v21, 0x0

    goto :goto_3

    .line 951
    .restart local v21       #sendToVoicemail:Z
    .restart local v22       #customRingtone:Ljava/lang/String;
    :cond_5
    const/16 v23, 0x0

    goto :goto_4

    .line 958
    .restart local v23       #isUserProfile:Z
    :cond_6
    move-object/from16 v4, p2

    .restart local v4       #lookupUri:Landroid/net/Uri;
    goto :goto_5
.end method

.method private loadData(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 998
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1000
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0x1c

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1002
    const/16 v1, 0x1d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1003
    const/16 v1, 0x1e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1004
    const/16 v1, 0x1f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1005
    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1006
    const/16 v1, 0x21

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1007
    const/16 v1, 0x22

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1008
    const/16 v1, 0x23

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1009
    const/16 v1, 0x24

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1010
    const/16 v1, 0x25

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1011
    const/16 v1, 0x26

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1012
    const/16 v1, 0x27

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1013
    const/16 v1, 0x28

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1014
    const/16 v1, 0x29

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1015
    const/16 v1, 0x2a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1016
    const/16 v1, 0x2b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1017
    const/16 v1, 0x2c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1018
    const/16 v1, 0x2d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1019
    const/16 v1, 0x2e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1020
    const/16 v1, 0x2f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1021
    const/16 v1, 0x30

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1022
    const/16 v1, 0x31

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1023
    const/16 v1, 0x32

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1024
    const/16 v1, 0x33

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1025
    const/16 v1, 0x34

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1026
    const/16 v1, 0x35

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1027
    const/16 v1, 0x37

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1029
    return-object v0
.end method

.method private loadDirectoryMetaData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 17
    .parameter "result"

    .prologue
    .line 1053
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryId()J

    move-result-wide v8

    .line 1055
    .local v8, directoryId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v15, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/ContactLoader$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1058
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 1087
    :goto_0
    return-void

    .line 1062
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1063
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1064
    .local v2, displayName:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1065
    .local v11, packageName:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1066
    .local v14, typeResourceId:I
    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1067
    .local v4, accountType:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1068
    .local v5, accountName:Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1069
    .local v6, exportSupport:I
    const/4 v3, 0x0

    .line 1070
    .local v3, directoryType:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1071
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 1073
    .local v12, pm:Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    .line 1074
    .local v13, resources:Landroid/content/res/Resources;
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .end local v12           #pm:Landroid/content/pm/PackageManager;
    .end local v13           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    move-object/from16 v1, p1

    .line 1081
    :try_start_2
    #calls: Lcom/android/contacts/ContactLoader$Result;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v1 .. v6}, Lcom/android/contacts/ContactLoader$Result;->access$1200(Lcom/android/contacts/ContactLoader$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1085
    .end local v2           #displayName:Ljava/lang/String;
    .end local v3           #directoryType:Ljava/lang/String;
    .end local v4           #accountType:Ljava/lang/String;
    .end local v5           #accountName:Ljava/lang/String;
    .end local v6           #exportSupport:I
    .end local v11           #packageName:Ljava/lang/String;
    .end local v14           #typeResourceId:I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1075
    .restart local v2       #displayName:Ljava/lang/String;
    .restart local v3       #directoryType:Ljava/lang/String;
    .restart local v4       #accountType:Ljava/lang/String;
    .restart local v5       #accountName:Ljava/lang/String;
    .restart local v6       #exportSupport:I
    .restart local v11       #packageName:Ljava/lang/String;
    .restart local v12       #pm:Landroid/content/pm/PackageManager;
    .restart local v14       #typeResourceId:I
    :catch_0
    move-exception v10

    .line 1076
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v1, "ContactLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Contact directory resource not found: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1085
    .end local v2           #displayName:Ljava/lang/String;
    .end local v3           #directoryType:Ljava/lang/String;
    .end local v4           #accountType:Ljava/lang/String;
    .end local v5           #accountName:Ljava/lang/String;
    .end local v6           #exportSupport:I
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11           #packageName:Ljava/lang/String;
    .end local v12           #pm:Landroid/content/pm/PackageManager;
    .end local v14           #typeResourceId:I
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private loadGroupMetaData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 18
    .parameter "result"

    .prologue
    .line 1138
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1139
    .local v14, selection:Ljava/lang/StringBuilder;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1140
    .local v15, selectionArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #getter for: Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->access$1400(Lcom/android/contacts/ContactLoader$Result;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Entity;

    .line 1141
    .local v12, entity:Landroid/content/Entity;
    invoke-virtual {v12}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v16

    .line 1142
    .local v16, values:Landroid/content/ContentValues;
    const-string v1, "account_name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1143
    .local v2, accountName:Ljava/lang/String;
    const-string v1, "account_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1144
    .local v3, accountType:Ljava/lang/String;
    const-string v1, "data_set"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1145
    .local v4, dataSet:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 1146
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1147
    const-string v1, " OR "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    :cond_1
    const-string v1, "(account_name=? AND account_type=?"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    if-eqz v4, :cond_2

    .line 1155
    const-string v1, " AND data_set=?"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    :goto_1
    const-string v1, ")"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1158
    :cond_2
    const-string v1, " AND data_set IS NULL"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1163
    .end local v2           #accountName:Ljava/lang/String;
    .end local v3           #accountType:Ljava/lang/String;
    .end local v4           #dataSet:Ljava/lang/String;
    .end local v12           #entity:Landroid/content/Entity;
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/ContactLoader$GroupQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1167
    .local v11, cursor:Landroid/database/Cursor;
    :goto_2
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1168
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1169
    .restart local v2       #accountName:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1170
    .restart local v3       #accountType:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1171
    .restart local v4       #dataSet:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1172
    .local v5, groupId:J
    const/4 v1, 0x5

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1173
    .local v7, title:Ljava/lang/String;
    const/4 v1, 0x6

    invoke-interface {v11, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v8, 0x0

    .line 1176
    .local v8, defaultGroup:Z
    :goto_3
    const/4 v1, 0x7

    invoke-interface {v11, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v9, 0x0

    .line 1179
    .local v9, favorites:Z
    :goto_4
    const/16 v1, 0x8

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1181
    .local v10, systemId:Ljava/lang/String;
    new-instance v1, Lcom/android/contacts/GroupMetaData;

    invoke-direct/range {v1 .. v10}, Lcom/android/contacts/GroupMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZLjava/lang/String;)V

    move-object/from16 v0, p1

    #calls: Lcom/android/contacts/ContactLoader$Result;->addGroupMetaData(Lcom/android/contacts/GroupMetaData;)V
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader$Result;->access$1500(Lcom/android/contacts/ContactLoader$Result;Lcom/android/contacts/GroupMetaData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1186
    .end local v2           #accountName:Ljava/lang/String;
    .end local v3           #accountType:Ljava/lang/String;
    .end local v4           #dataSet:Ljava/lang/String;
    .end local v5           #groupId:J
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #defaultGroup:Z
    .end local v9           #favorites:Z
    .end local v10           #systemId:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1173
    .restart local v2       #accountName:Ljava/lang/String;
    .restart local v3       #accountType:Ljava/lang/String;
    .restart local v4       #dataSet:Ljava/lang/String;
    .restart local v5       #groupId:J
    .restart local v7       #title:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x6

    :try_start_1
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 1176
    .restart local v8       #defaultGroup:Z
    :cond_6
    const/4 v1, 0x7

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    .line 1186
    .end local v2           #accountName:Ljava/lang/String;
    .end local v3           #accountType:Ljava/lang/String;
    .end local v4           #dataSet:Ljava/lang/String;
    .end local v5           #groupId:J
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #defaultGroup:Z
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1188
    return-void
.end method

.method private loadInvitableAccountTypes(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 8
    .parameter "contactData"

    .prologue
    .line 906
    iget-object v6, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v6}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/model/AccountTypeManager;->getUsableInvitableAccountTypes()Ljava/util/Map;

    move-result-object v2

    .line 908
    .local v2, invitables:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/contacts/model/AccountTypeWithDataSet;Lcom/android/contacts/model/AccountType;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 925
    :goto_0
    return-void

    .line 912
    :cond_0
    invoke-static {v2}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v3

    .line 915
    .local v3, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/contacts/model/AccountTypeWithDataSet;Lcom/android/contacts/model/AccountType;>;"
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 916
    .local v0, entity:Landroid/content/Entity;
    invoke-virtual {v0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    .line 917
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "data_set"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/contacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v4

    .line 920
    .local v4, type:Lcom/android/contacts/model/AccountTypeWithDataSet;
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 924
    .end local v0           #entity:Landroid/content/Entity;
    .end local v4           #type:Lcom/android/contacts/model/AccountTypeWithDataSet;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_1
    #getter for: Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/contacts/ContactLoader$Result;->access$1000(Lcom/android/contacts/ContactLoader$Result;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private loadPhotoBinaryData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 21
    .parameter "contactData"

    .prologue
    .line 854
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getPhotoUri()Ljava/lang/String;

    move-result-object v15

    .line 855
    .local v15, photoUri:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 857
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const-string v20, "r"

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 859
    .local v8, fd:Landroid/content/res/AssetFileDescriptor;
    const/16 v18, 0x4000

    move/from16 v0, v18

    new-array v3, v0, [B

    .line 860
    .local v3, buffer:[B
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v9

    .line 861
    .local v9, fis:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v9, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v16

    .local v16, size:I
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 865
    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 869
    .end local v16           #size:I
    :catchall_0
    move-exception v18

    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 870
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v18
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 873
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #buffer:[B
    .end local v8           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v9           #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v18

    .line 879
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getPhotoId()J

    move-result-wide v13

    .line 880
    .local v13, photoId:J
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-gtz v18, :cond_3

    .line 900
    .end local v13           #photoId:J
    :cond_1
    :goto_1
    return-void

    .line 867
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #buffer:[B
    .restart local v8       #fd:Landroid/content/res/AssetFileDescriptor;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v16       #size:I
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    #calls: Lcom/android/contacts/ContactLoader$Result;->setPhotoBinaryData([B)V
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader$Result;->access$900(Lcom/android/contacts/ContactLoader$Result;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 869
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 870
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 885
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #buffer:[B
    .end local v8           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v16           #size:I
    .restart local v13       #photoId:J
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Entity;

    .line 886
    .local v6, entity:Landroid/content/Entity;
    invoke-virtual {v6}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Entity$NamedContentValues;

    .line 887
    .local v17, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 888
    .local v7, entryValues:Landroid/content/ContentValues;
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 889
    .local v4, dataId:J
    cmp-long v18, v4, v13

    if-nez v18, :cond_5

    .line 890
    const-string v18, "mimetype"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 892
    .local v12, mimeType:Ljava/lang/String;
    const-string v18, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 895
    const-string v18, "data15"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    #calls: Lcom/android/contacts/ContactLoader$Result;->setPhotoBinaryData([B)V
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader$Result;->access$900(Lcom/android/contacts/ContactLoader$Result;[B)V

    goto :goto_2
.end method

.method private loadRawContact(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 971
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 973
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 975
    const/16 v1, 0xf

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 976
    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 977
    const/16 v1, 0x11

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 978
    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 979
    const/16 v1, 0x13

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 980
    const/16 v1, 0x14

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 981
    const/16 v1, 0x15

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 982
    const/16 v1, 0x16

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 983
    const/16 v1, 0x17

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 984
    const/16 v1, 0x18

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 985
    const/16 v1, 0x19

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 986
    const/16 v1, 0x1a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 987
    const/16 v1, 0xd

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 988
    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 989
    const/16 v1, 0x1b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 991
    return-object v0
.end method

.method private loadStreamItems(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 19
    .parameter "result"

    .prologue
    .line 1194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getLookupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "stream_items"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1199
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1200
    .local v18, streamItemsById:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/contacts/util/StreamItemEntry;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1202
    .local v17, streamItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/util/StreamItemEntry;>;"
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1203
    new-instance v13, Lcom/android/contacts/util/StreamItemEntry;

    invoke-direct {v13, v7}, Lcom/android/contacts/util/StreamItemEntry;-><init>(Landroid/database/Cursor;)V

    .line 1204
    .local v13, streamItem:Lcom/android/contacts/util/StreamItemEntry;
    invoke-virtual {v13}, Lcom/android/contacts/util/StreamItemEntry;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1208
    .end local v13           #streamItem:Lcom/android/contacts/util/StreamItemEntry;
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1212
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1213
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1216
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/util/StreamItemEntry;

    .line 1217
    .local v8, entry:Lcom/android/contacts/util/StreamItemEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$StreamItems;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "photo"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1224
    .local v11, siCursor:Landroid/database/Cursor;
    :goto_2
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1225
    new-instance v1, Lcom/android/contacts/util/StreamItemPhotoEntry;

    invoke-direct {v1, v11}, Lcom/android/contacts/util/StreamItemPhotoEntry;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v8, v1}, Lcom/android/contacts/util/StreamItemEntry;->addPhoto(Lcom/android/contacts/util/StreamItemPhotoEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 1228
    :catchall_1
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1232
    .end local v8           #entry:Lcom/android/contacts/util/StreamItemEntry;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #siCursor:Landroid/database/Cursor;
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 1233
    .local v5, streamItemIdArr:[Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1234
    .local v16, streamItemPhotoSelection:Ljava/lang/StringBuilder;
    const-string v1, "stream_item_id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_4

    .line 1236
    if-lez v9, :cond_3

    .line 1237
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    :cond_3
    const-string v1, "?"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/util/StreamItemEntry;

    invoke-virtual {v1}, Lcom/android/contacts/util/StreamItemEntry;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v9

    .line 1235
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1242
    :cond_4
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$StreamItems;->CONTENT_PHOTO_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "stream_item_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1248
    .local v12, sipCursor:Landroid/database/Cursor;
    :goto_4
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1249
    const-string v1, "stream_item_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1251
    .local v14, streamItemId:J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/util/StreamItemEntry;

    .line 1252
    .restart local v13       #streamItem:Lcom/android/contacts/util/StreamItemEntry;
    new-instance v1, Lcom/android/contacts/util/StreamItemPhotoEntry;

    invoke-direct {v1, v12}, Lcom/android/contacts/util/StreamItemPhotoEntry;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v13, v1}, Lcom/android/contacts/util/StreamItemEntry;->addPhoto(Lcom/android/contacts/util/StreamItemPhotoEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    .line 1255
    .end local v13           #streamItem:Lcom/android/contacts/util/StreamItemEntry;
    .end local v14           #streamItemId:J
    :catchall_2
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1261
    .end local v5           #streamItemIdArr:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #sipCursor:Landroid/database/Cursor;
    .end local v16           #streamItemPhotoSelection:Ljava/lang/StringBuilder;
    :cond_6
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1262
    #getter for: Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->access$1600(Lcom/android/contacts/ContactLoader$Result;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1263
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/contacts/ContactLoader$Result;
    .locals 7
    .parameter "args"

    .prologue
    .line 719
    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 720
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/contacts/ContactLoader;->access$000(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/contacts/ContactLoader$LoadContactTask;->ensureIsContactUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 721
    .local v3, uriCurrentFormat:Landroid/net/Uri;
    invoke-direct {p0, v1, v3}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v2

    .line 722
    .local v2, result:Lcom/android/contacts/ContactLoader$Result;
    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isNotFound()Z

    move-result v4

    if-nez v4, :cond_3

    .line 723
    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 724
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadDirectoryMetaData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 728
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mLoadStreamItems:Z
    invoke-static {v4}, Lcom/android/contacts/ContactLoader;->access$200(Lcom/android/contacts/ContactLoader;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 729
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadStreamItems(Lcom/android/contacts/ContactLoader$Result;)V

    .line 731
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mLoadCalllog:Z
    invoke-static {v4}, Lcom/android/contacts/ContactLoader;->access$300(Lcom/android/contacts/ContactLoader;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 732
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadCalllogItems(Lcom/android/contacts/ContactLoader$Result;)V

    .line 734
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadPhotoBinaryData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 737
    iget-object v4, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mLoadInvitableAccountTypes:Z
    invoke-static {v4}, Lcom/android/contacts/ContactLoader;->access$400(Lcom/android/contacts/ContactLoader;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v4

    if-nez v4, :cond_3

    .line 738
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadInvitableAccountTypes(Lcom/android/contacts/ContactLoader$Result;)V

    .line 744
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #result:Lcom/android/contacts/ContactLoader$Result;
    .end local v3           #uriCurrentFormat:Landroid/net/Uri;
    :cond_3
    :goto_1
    return-object v2

    .line 725
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #result:Lcom/android/contacts/ContactLoader$Result;
    .restart local v3       #uriCurrentFormat:Landroid/net/Uri;
    :cond_4
    iget-object v4, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mLoadGroupMetaData:Z
    invoke-static {v4}, Lcom/android/contacts/ContactLoader;->access$100(Lcom/android/contacts/ContactLoader;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 726
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadGroupMetaData(Lcom/android/contacts/ContactLoader$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 742
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #result:Lcom/android/contacts/ContactLoader$Result;
    .end local v3           #uriCurrentFormat:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 743
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ContactLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading the contact: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/android/contacts/ContactLoader;->access$000(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    iget-object v4, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mRequestedUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/contacts/ContactLoader;->access$500(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v4

    #calls: Lcom/android/contacts/ContactLoader$Result;->forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v4, v0}, Lcom/android/contacts/ContactLoader$Result;->access$600(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v2

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 714
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->doInBackground([Ljava/lang/Void;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 1267
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #calls: Lcom/android/contacts/ContactLoader;->unregisterObserver()V
    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$1700(Lcom/android/contacts/ContactLoader;)V

    .line 1270
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mDestroyed:Z
    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$1800(Lcom/android/contacts/ContactLoader;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1298
    :cond_0
    :goto_0
    return-void

    .line 1274
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #setter for: Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0, p1}, Lcom/android/contacts/ContactLoader;->access$1902(Lcom/android/contacts/ContactLoader;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    .line 1276
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1277
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader;->access$002(Lcom/android/contacts/ContactLoader;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1279
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1280
    const-string v0, "ContactLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering content observer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/ContactLoader;->access$000(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$2000(Lcom/android/contacts/ContactLoader;)Landroid/content/Loader$ForceLoadContentObserver;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1282
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    new-instance v1, Landroid/content/Loader$ForceLoadContentObserver;

    iget-object v2, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-direct {v1, v2}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    #setter for: Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader;->access$2002(Lcom/android/contacts/ContactLoader;Landroid/content/Loader$ForceLoadContentObserver;)Landroid/content/Loader$ForceLoadContentObserver;

    .line 1284
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/contacts/ContactLoader;->access$000(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    invoke-static {v2}, Lcom/android/contacts/ContactLoader;->access$2000(Lcom/android/contacts/ContactLoader;)Landroid/content/Loader$ForceLoadContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1288
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$1900(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getPhotoBinaryData()[B

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$1900(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1289
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$1900(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    #calls: Lcom/android/contacts/ContactLoader$Result;->setLoadingPhoto(Z)V
    invoke-static {v0, v3}, Lcom/android/contacts/ContactLoader$Result;->access$2100(Lcom/android/contacts/ContactLoader$Result;Z)V

    .line 1290
    new-instance v0, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;

    iget-object v1, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;-><init>(Lcom/android/contacts/ContactLoader;Lcom/android/contacts/ContactLoader$1;)V

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v3}, Lcom/android/contacts/ContactLoader;->access$1900(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getPhotoUri()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1294
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #calls: Lcom/android/contacts/ContactLoader;->postViewNotificationToSyncAdapter()V
    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$2300(Lcom/android/contacts/ContactLoader;)V

    .line 1297
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    iget-object v1, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/ContactLoader;->access$1900(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactLoader;->deliverResult(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 714
    check-cast p1, Lcom/android/contacts/ContactLoader$Result;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->onPostExecute(Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method
