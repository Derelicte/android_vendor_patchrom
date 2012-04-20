.class public Lcom/miui/milk/source/contact2/ContactManager;
.super Ljava/lang/Object;
.source "ContactManager.java"


# instance fields
.field protected COLUMN_ACCOUNT_NAME:Ljava/lang/String;

.field protected COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

.field protected COLUMN_DELETED:Ljava/lang/String;

.field protected COLUMN_ID:Ljava/lang/String;

.field protected COLUMN_SOURCE_ID:Ljava/lang/String;

.field protected COLUMN_STARRED:Ljava/lang/String;

.field protected COLUMN_VERSION:Ljava/lang/String;

.field protected CONTENT_URI:Landroid/net/Uri;

.field protected mContext:Landroid/content/Context;

.field private mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

.field private mIsSync:Z

.field private mName2Id:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/miui/milk/source/contact2/GroupManager;)V
    .locals 1
    .parameter "context"
    .parameter "isSync"
    .parameter "groupManager"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->CONTENT_URI:Landroid/net/Uri;

    .line 52
    const-string v0, "_id"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ID:Ljava/lang/String;

    .line 53
    const-string v0, "account_type"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    .line 54
    const-string v0, "account_name"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    .line 55
    const-string v0, "sourceid"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_SOURCE_ID:Ljava/lang/String;

    .line 56
    const-string v0, "deleted"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_DELETED:Ljava/lang/String;

    .line 57
    const-string v0, "version"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_VERSION:Ljava/lang/String;

    .line 58
    const-string v0, "starred"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_STARRED:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mIsSync:Z

    .line 65
    iput-object p1, p0, Lcom/miui/milk/source/contact2/ContactManager;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    .line 67
    iput-boolean p2, p0, Lcom/miui/milk/source/contact2/ContactManager;->mIsSync:Z

    .line 68
    iput-object p3, p0, Lcom/miui/milk/source/contact2/ContactManager;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    .line 69
    return-void
.end method

.method private loadDataFields(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;J)V
    .locals 10
    .parameter "contact"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v6, 0x0

    .line 132
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "raw_contact_id= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 134
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    const-string v0, "mimetype"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 138
    .local v8, mimeType:Ljava/lang/String;
    const-string v0, "ContactManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found a raw of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v0, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadNameField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    .line 167
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 173
    .end local v8           #mimeType:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_2
    return-void

    .line 142
    .restart local v8       #mimeType:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadNickNameField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 169
    .end local v8           #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 170
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "ContactManager"

    const-string v1, "Cannot load contact "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot load contact"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 144
    .restart local v8       #mimeType:Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 145
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadPhoneField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto :goto_0

    .line 146
    :cond_6
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 147
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadEmailField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto :goto_0

    .line 148
    :cond_7
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 149
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadPhotoField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto :goto_0

    .line 150
    :cond_8
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 151
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadOrganizationField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto :goto_0

    .line 152
    :cond_9
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 153
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadPostalAddressField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto :goto_0

    .line 154
    :cond_a
    const-string v0, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 155
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadEventField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto :goto_0

    .line 156
    :cond_b
    const-string v0, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 157
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadImField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 158
    :cond_c
    const-string v0, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 159
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadNoteField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 160
    :cond_d
    const-string v0, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 161
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadWebsiteField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 162
    :cond_e
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 163
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadGroupMembershipField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 165
    :cond_f
    const-string v0, "ContactManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring unknown row of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private loadEmailField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 5
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 245
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Email;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Email$Builder;

    move-result-object v0

    .line 247
    .local v0, email:Lcom/miui/milk/model/ContactProtos2$Email$Builder;
    const-string v4, "data1"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, emailValue:Ljava/lang/String;
    const-string v4, "data2"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 249
    .local v2, emailType:I
    const-string v4, "data3"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, emailLabel:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 252
    invoke-virtual {v0, v3}, Lcom/miui/milk/model/ContactProtos2$Email$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Email$Builder;

    .line 256
    invoke-virtual {v0, v2}, Lcom/miui/milk/model/ContactProtos2$Email$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Email$Builder;

    .line 257
    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Email$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Email$Builder;

    .line 261
    :cond_0
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addEmail(Lcom/miui/milk/model/ContactProtos2$Email$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 262
    :cond_1
    return-void
.end method

.method private loadEventField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 5
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 369
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Event;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    move-result-object v0

    .line 371
    .local v0, event:Lcom/miui/milk/model/ContactProtos2$Event$Builder;
    const-string v4, "data1"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, eventDate:Ljava/lang/String;
    const-string v4, "data2"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 373
    .local v3, eventType:I
    const-string v4, "data3"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, eventLabel:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 376
    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    .line 380
    invoke-virtual {v0, v3}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    .line 381
    if-eqz v2, :cond_0

    .line 382
    invoke-virtual {v0, v2}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    .line 385
    :cond_0
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addEvent(Lcom/miui/milk/model/ContactProtos2$Event$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 386
    :cond_1
    return-void
.end method

.method private loadGroupMembershipField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 7
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 455
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->newBuilder()Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    move-result-object v4

    .line 457
    .local v4, groupMembership:Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;
    const-string v5, "data1"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, groupId:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 460
    new-instance v3, Lcom/miui/milk/source/contact2/GroupManager;

    iget-object v5, p0, Lcom/miui/milk/source/contact2/ContactManager;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/miui/milk/source/contact2/ContactManager;->mIsSync:Z

    invoke-direct {v3, v5, v6}, Lcom/miui/milk/source/contact2/GroupManager;-><init>(Landroid/content/Context;Z)V

    .line 462
    .local v3, groupManager:Lcom/miui/milk/source/contact2/GroupManager;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/miui/milk/source/contact2/GroupManager;->load(J)Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v1

    .line 463
    .local v1, group:Lcom/miui/milk/model/ContactProtos2$Group;
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Group;->getGuid()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 464
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Group;->getGuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->setGroupGUID(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    .line 466
    :cond_0
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Group;->getLuid()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 467
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Group;->getLuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->setGroupLUID(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    .line 469
    :cond_1
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Group;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 470
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Group;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->setGroupTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    .line 472
    :cond_2
    invoke-virtual {p1, v4}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addGroupMembership(Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .end local v1           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v3           #groupManager:Lcom/miui/milk/source/contact2/GroupManager;
    :cond_3
    :goto_0
    return-void

    .line 473
    .restart local v3       #groupManager:Lcom/miui/milk/source/contact2/GroupManager;
    :catch_0
    move-exception v0

    .line 474
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadImField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 7
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 390
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Im;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    move-result-object v1

    .line 392
    .local v1, im:Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    const-string v6, "data1"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 393
    .local v5, imValue:Ljava/lang/String;
    const-string v6, "data2"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 394
    .local v4, imType:I
    const-string v6, "data3"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, imLabel:Ljava/lang/String;
    const-string v6, "data5"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 397
    .local v3, imProtocol:I
    const-string v6, "data6"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, customPro:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 400
    invoke-virtual {v1, v5}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 404
    invoke-virtual {v1, v4}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 405
    if-eqz v2, :cond_0

    .line 406
    invoke-virtual {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 409
    :cond_0
    invoke-virtual {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setProtocol(I)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 410
    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {v1, v0}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setCustomProtocol(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 414
    :cond_1
    invoke-virtual {p1, v1}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addIm(Lcom/miui/milk/model/ContactProtos2$Im$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 415
    :cond_2
    return-void
.end method

.method private loadNameField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 6
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 181
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Name;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    move-result-object v4

    .line 182
    .local v4, name:Lcom/miui/milk/model/ContactProtos2$Name$Builder;
    const-string v5, "data1"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, dn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v4, v0}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->setDisplayName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    .line 186
    :cond_0
    const-string v5, "data2"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, givenName:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {v4, v2}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->setGivenName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    .line 190
    :cond_1
    const-string v5, "data5"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, middleName:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 192
    invoke-virtual {v4, v3}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->setMiddleName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    .line 194
    :cond_2
    const-string v5, "data3"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, familyName:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 196
    invoke-virtual {v4, v1}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->setFamilyName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    .line 198
    :cond_3
    invoke-virtual {p1, v4}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addName(Lcom/miui/milk/model/ContactProtos2$Name$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 199
    return-void
.end method

.method private loadNickNameField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 5
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 203
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Nickname;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    move-result-object v0

    .line 205
    .local v0, nickName:Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;
    const-string v4, "data1"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, nickNameValue:Ljava/lang/String;
    const-string v4, "data2"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 207
    .local v2, nickNameType:I
    const-string v4, "data3"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, nickNameLabel:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 210
    invoke-virtual {v0, v3}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    .line 214
    invoke-virtual {v0, v2}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    .line 215
    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    .line 219
    :cond_0
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addNickname(Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 220
    :cond_1
    return-void
.end method

.method private loadNoteField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 3
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 419
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Note;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Note$Builder;

    move-result-object v0

    .line 421
    .local v0, note:Lcom/miui/milk/model/ContactProtos2$Note$Builder;
    const-string v2, "data1"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, noteValue:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 424
    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Note$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Note$Builder;

    .line 429
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addNote(Lcom/miui/milk/model/ContactProtos2$Note$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 430
    :cond_0
    return-void
.end method

.method private loadOrganizationField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 10
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 281
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Organization;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    move-result-object v6

    .line 283
    .local v6, organization:Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    const-string v9, "data1"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, orgValue:Ljava/lang/String;
    const-string v9, "data2"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 285
    .local v4, orgType:I
    const-string v9, "data3"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, orgLabel:Ljava/lang/String;
    const-string v9, "data4"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 288
    .local v8, title:Ljava/lang/String;
    const-string v9, "data5"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, department:Ljava/lang/String;
    const-string v9, "data6"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, jobDes:Ljava/lang/String;
    const-string v9, "data7"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 291
    .local v7, symbol:Ljava/lang/String;
    const-string v9, "data9"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, officeLoc:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 294
    invoke-virtual {v6, v5}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 296
    :cond_0
    invoke-virtual {v6, v4}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 297
    if-eqz v3, :cond_1

    .line 298
    invoke-virtual {v6, v3}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 300
    :cond_1
    if-eqz v8, :cond_2

    .line 301
    invoke-virtual {v6, v8}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 303
    :cond_2
    if-eqz v0, :cond_3

    .line 304
    invoke-virtual {v6, v0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setDepartment(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 306
    :cond_3
    if-eqz v1, :cond_4

    .line 307
    invoke-virtual {v6, v1}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setJobDescription(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 309
    :cond_4
    if-eqz v7, :cond_5

    .line 310
    invoke-virtual {v6, v7}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setSymbol(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 312
    :cond_5
    if-eqz v2, :cond_6

    .line 313
    invoke-virtual {v6, v2}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setOfficeLocation(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 316
    :cond_6
    invoke-virtual {p1, v6}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addOrganization(Lcom/miui/milk/model/ContactProtos2$Organization$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 317
    return-void
.end method

.method private loadPhoneField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 5
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 224
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Phone;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    move-result-object v1

    .line 226
    .local v1, phone:Lcom/miui/milk/model/ContactProtos2$Phone$Builder;
    const-string v4, "data1"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, number:Ljava/lang/String;
    const-string v4, "data2"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 228
    .local v3, phoneType:I
    const-string v4, "data3"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, phoneLabel:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v1, v0}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    .line 235
    invoke-virtual {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    .line 236
    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    .line 240
    :cond_0
    invoke-virtual {p1, v1}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addPhone(Lcom/miui/milk/model/ContactProtos2$Phone$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 241
    :cond_1
    return-void
.end method

.method private loadPhotoField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 4
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 266
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Photo;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Photo$Builder;

    move-result-object v1

    .line 268
    .local v1, photo:Lcom/miui/milk/model/ContactProtos2$Photo$Builder;
    const-string v2, "data15"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 270
    .local v0, data:[B
    if-eqz v0, :cond_0

    array-length v2, v0

    const/high16 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 271
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Photo$Builder;->setImage(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/ContactProtos2$Photo$Builder;

    .line 276
    invoke-virtual {p1, v1}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addPhoto(Lcom/miui/milk/model/ContactProtos2$Photo$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 277
    :cond_0
    return-void
.end method

.method private loadPostalAddressField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 12
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 321
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Postal;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    move-result-object v6

    .line 323
    .local v6, postal:Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    const-string v11, "data1"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 324
    .local v10, value:Ljava/lang/String;
    const-string v11, "data2"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 325
    .local v9, type:I
    const-string v11, "data3"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, label:Ljava/lang/String;
    const-string v11, "data4"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 328
    .local v8, street:Ljava/lang/String;
    const-string v11, "data5"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, pobox:Ljava/lang/String;
    const-string v11, "data6"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, neighborhood:Ljava/lang/String;
    const-string v11, "data7"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, city:Ljava/lang/String;
    const-string v11, "data8"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 332
    .local v7, region:Ljava/lang/String;
    const-string v11, "data9"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 333
    .local v5, postCode:Ljava/lang/String;
    const-string v11, "data10"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, country:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 336
    invoke-virtual {v6, v10}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 338
    :cond_0
    invoke-virtual {v6, v9}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 339
    if-eqz v2, :cond_1

    .line 340
    invoke-virtual {v6, v2}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 342
    :cond_1
    if-eqz v8, :cond_2

    .line 343
    invoke-virtual {v6, v8}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setStreet(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 345
    :cond_2
    if-eqz v4, :cond_3

    .line 346
    invoke-virtual {v6, v4}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setPobox(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 348
    :cond_3
    if-eqz v3, :cond_4

    .line 349
    invoke-virtual {v6, v3}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setNeighborhood(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 351
    :cond_4
    if-eqz v0, :cond_5

    .line 352
    invoke-virtual {v6, v0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setCity(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 354
    :cond_5
    if-eqz v7, :cond_6

    .line 355
    invoke-virtual {v6, v7}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setRegion(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 357
    :cond_6
    if-eqz v5, :cond_7

    .line 358
    invoke-virtual {v6, v5}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setPostcode(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 360
    :cond_7
    if-eqz v1, :cond_8

    .line 361
    invoke-virtual {v6, v1}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setCountry(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 364
    :cond_8
    invoke-virtual {p1, v6}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addPostal(Lcom/miui/milk/model/ContactProtos2$Postal$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 365
    return-void
.end method

.method private loadRawContact(J)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    .line 85
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Contact;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v6

    .line 87
    .local v6, contact:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    const/4 v7, 0x0

    .line 89
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x4

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ID:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_DELETED:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_VERSION:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_STARRED:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 90
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 96
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, index:I
    :goto_0
    if-ltz v8, :cond_3

    .line 98
    invoke-direct {p0, v6, v7, v8}, Lcom/miui/milk/source/contact2/ContactManager;->setRawContactField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 104
    .end local v8           #index:I
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v6, v9

    .line 106
    .end local v6           #contact:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    :cond_2
    :goto_1
    return-object v6

    .line 104
    .restart local v6       #contact:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .restart local v8       #index:I
    :cond_3
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v2           #cols:[Ljava/lang/String;
    .end local v8           #index:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private loadWebsiteField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 5
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 434
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Website;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    move-result-object v2

    .line 436
    .local v2, website:Lcom/miui/milk/model/ContactProtos2$Website$Builder;
    const-string v4, "data1"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, url:Ljava/lang/String;
    const-string v4, "data2"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 438
    .local v3, websiteType:I
    const-string v4, "data3"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, label:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 441
    invoke-virtual {v2, v1}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    .line 445
    invoke-virtual {v2, v3}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    .line 446
    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v2, v0}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    .line 450
    :cond_0
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addWebsite(Lcom/miui/milk/model/ContactProtos2$Website$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 451
    :cond_1
    return-void
.end method

.method private prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;
    .locals 5
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"

    .prologue
    .line 647
    const/4 v1, 0x0

    .line 648
    .local v1, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 649
    .local v0, b:Landroid/net/Uri$Builder;
    const-string v2, "caller_is_syncadapter"

    iget-boolean v3, p0, Lcom/miui/milk/source/contact2/ContactManager;->mIsSync:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 650
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 652
    if-nez p1, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 653
    :cond_0
    const-string v2, "ContactManager"

    const-string v3, "Inserting new contact data"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string v2, "raw_contact_id"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 659
    :goto_0
    return-object v1

    .line 656
    :cond_1
    const-string v2, "ContactManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating contact data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string v2, "raw_contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    goto :goto_0
.end method

.method private prepareDataFieldsOps(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZLandroid/accounts/Account;I)V
    .locals 8
    .parameter "luid"
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "account"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z",
            "Landroid/accounts/Account;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 632
    .local p4, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareNameOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 633
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareNicknameOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 634
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->preparePhoneOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 635
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareEmailOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 636
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareImOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 637
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->preparePhotoOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 638
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareOrganizationOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 639
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->preparePostalOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 640
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareEventOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 641
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareNoteOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 642
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareWebsiteOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move-object v6, p6

    move v7, p7

    .line 643
    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareGroupMembershipOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJLandroid/accounts/Account;I)V

    .line 644
    return-void
.end method

.method private prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter "oldLuid"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 664
    .local p1, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 665
    .local v1, deleteBuilder:Landroid/content/ContentProviderOperation$Builder;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 666
    .local v0, b:Landroid/net/Uri$Builder;
    const-string v2, "caller_is_syncadapter"

    iget-boolean v3, p0, Lcom/miui/milk/source/contact2/ContactManager;->mIsSync:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 667
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 669
    const-string v2, "raw_contact_id= ? and mimetype= ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 671
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    return-void
.end method

.method private prepareEmailOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 9
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 774
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v7, -0x1

    cmp-long v7, p4, v7

    if-eqz v7, :cond_0

    .line 775
    const-string v7, "ContactManager"

    const-string v8, "Updating contact data: remove old fields firstly"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const-string v7, "vnd.android.cursor.item/email_v2"

    invoke-direct {p0, p2, p4, p5, v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 780
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getEmailList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/ContactProtos2$Email;

    .line 781
    .local v0, email:Lcom/miui/milk/model/ContactProtos2$Email;
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 782
    .local v2, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Email;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 783
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Email;->getType()I

    move-result v5

    .line 784
    .local v5, type:I
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Email;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 785
    .local v3, label:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 788
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 790
    const-string v7, "data1"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 791
    const-string v7, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 792
    if-eqz v3, :cond_2

    .line 793
    const-string v7, "data3"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 795
    :cond_2
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 796
    .local v4, operation:Landroid/content/ContentProviderOperation;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 799
    .end local v0           #email:Lcom/miui/milk/model/ContactProtos2$Email;
    .end local v2           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #label:Ljava/lang/String;
    .end local v4           #operation:Landroid/content/ContentProviderOperation;
    .end local v5           #type:I
    .end local v6           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private prepareEventOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 9
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 976
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v7, -0x1

    cmp-long v7, p4, v7

    if-eqz v7, :cond_0

    .line 977
    const-string v7, "ContactManager"

    const-string v8, "Updating contact data: remove old fields firstly"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const-string v7, "vnd.android.cursor.item/contact_event"

    invoke-direct {p0, p2, p4, p5, v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 982
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getEventList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/ContactProtos2$Event;

    .line 983
    .local v0, event:Lcom/miui/milk/model/ContactProtos2$Event;
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 984
    .local v2, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Event;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 985
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Event;->getType()I

    move-result v5

    .line 986
    .local v5, type:I
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Event;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 987
    .local v3, label:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 990
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 992
    const-string v7, "data1"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 993
    const-string v7, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 994
    if-eqz v3, :cond_2

    .line 995
    const-string v7, "data3"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 997
    :cond_2
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 998
    .local v4, operation:Landroid/content/ContentProviderOperation;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1001
    .end local v0           #event:Lcom/miui/milk/model/ContactProtos2$Event;
    .end local v2           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #label:Ljava/lang/String;
    .end local v4           #operation:Landroid/content/ContentProviderOperation;
    .end local v5           #type:I
    .end local v6           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private prepareGroupMembershipOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJLandroid/accounts/Account;I)V
    .locals 10
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "account"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJ",
            "Landroid/accounts/Account;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1059
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v8, -0x1

    cmp-long v8, p4, v8

    if-eqz v8, :cond_0

    .line 1060
    const-string v8, "ContactManager"

    const-string v9, "Updating contact data: remove old fields firstly"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const-string v8, "vnd.android.cursor.item/group_membership"

    invoke-direct {p0, p2, p4, p5, v8}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 1065
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getGroupMembershipList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/ContactProtos2$GroupMembership;

    .line 1068
    .local v3, groupMembership:Lcom/miui/milk/model/ContactProtos2$GroupMembership;
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->getGroupTitle()Ljava/lang/String;

    move-result-object v4

    .line 1069
    .local v4, groupTitle:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1070
    .local v2, groupId:Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/milk/source/contact2/ContactManager;->mName2Id:Ljava/util/HashMap;

    if-eqz v8, :cond_2

    .line 1071
    iget-object v8, p0, Lcom/miui/milk/source/contact2/ContactManager;->mName2Id:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #groupId:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1074
    .restart local v2       #groupId:Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1075
    iget-object v8, p0, Lcom/miui/milk/source/contact2/ContactManager;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    move-object/from16 v0, p6

    invoke-virtual {v8, v4, v0}, Lcom/miui/milk/source/contact2/GroupManager;->loadByTitle(Ljava/lang/String;Landroid/accounts/Account;)Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v1

    .line 1076
    .local v1, group:Lcom/miui/milk/model/ContactProtos2$Group;
    if-eqz v1, :cond_3

    .line 1077
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Group;->getLuid()Ljava/lang/String;

    move-result-object v2

    .line 1081
    .end local v1           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1085
    move/from16 v0, p7

    invoke-direct {p0, p3, p4, p5, v0}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 1086
    .local v6, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    const-string v8, "mimetype"

    const-string v9, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 1088
    const-string v8, "data1"

    invoke-virtual {v6, v8, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 1089
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    .line 1090
    .local v7, operation:Landroid/content/ContentProviderOperation;
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1092
    .end local v2           #groupId:Ljava/lang/String;
    .end local v3           #groupMembership:Lcom/miui/milk/model/ContactProtos2$GroupMembership;
    .end local v4           #groupTitle:Ljava/lang/String;
    .end local v6           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v7           #operation:Landroid/content/ContentProviderOperation;
    :cond_4
    return-void
.end method

.method private prepareImOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 15
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 802
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v13, -0x1

    cmp-long v13, p4, v13

    if-eqz v13, :cond_0

    .line 803
    const-string v13, "ContactManager"

    const-string v14, "Updating contact data: remove old fields firstly"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const-string v13, "vnd.android.cursor.item/im"

    move-object/from16 v0, p2

    move-wide/from16 v1, p4

    invoke-direct {p0, v0, v1, v2, v13}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 808
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getImList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/milk/model/ContactProtos2$Im;

    .line 809
    .local v6, im:Lcom/miui/milk/model/ContactProtos2$Im;
    move/from16 v0, p3

    move-wide/from16 v1, p4

    move/from16 v3, p6

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 810
    .local v7, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Im;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 811
    .local v12, value:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Im;->getType()I

    move-result v11

    .line 812
    .local v11, type:I
    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Im;->getLabel()Ljava/lang/String;

    move-result-object v8

    .line 813
    .local v8, label:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Im;->getProtocol()I

    move-result v10

    .line 814
    .local v10, protocolType:I
    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Im;->getCustomProtocol()Ljava/lang/String;

    move-result-object v4

    .line 816
    .local v4, customProtocol:Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 819
    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/im"

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 821
    const-string v13, "data1"

    invoke-virtual {v7, v13, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 822
    const-string v13, "data2"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 823
    if-eqz v8, :cond_2

    .line 824
    const-string v13, "data3"

    invoke-virtual {v7, v13, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 826
    :cond_2
    const-string v13, "data5"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 827
    if-eqz v4, :cond_3

    .line 828
    const-string v13, "data6"

    invoke-virtual {v7, v13, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 831
    :cond_3
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    .line 832
    .local v9, operation:Landroid/content/ContentProviderOperation;
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 835
    .end local v4           #customProtocol:Ljava/lang/String;
    .end local v6           #im:Lcom/miui/milk/model/ContactProtos2$Im;
    .end local v7           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v8           #label:Ljava/lang/String;
    .end local v9           #operation:Landroid/content/ContentProviderOperation;
    .end local v10           #protocolType:I
    .end local v11           #type:I
    .end local v12           #value:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private prepareNameOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 15
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 675
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v13, -0x1

    cmp-long v13, p4, v13

    if-eqz v13, :cond_0

    .line 676
    const-string v13, "ContactManager"

    const-string v14, "Updating contact data: remove old fields firstly"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const-string v13, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    move-wide/from16 v1, p4

    invoke-direct {p0, v0, v1, v2, v13}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 681
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getNameList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/milk/model/ContactProtos2$Name;

    .line 682
    .local v10, name:Lcom/miui/milk/model/ContactProtos2$Name;
    move/from16 v0, p3

    move-wide/from16 v1, p4

    move/from16 v3, p6

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 684
    .local v8, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v10}, Lcom/miui/milk/model/ContactProtos2$Name;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 685
    .local v4, displayName:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/miui/milk/model/ContactProtos2$Name;->getGivenName()Ljava/lang/String;

    move-result-object v6

    .line 686
    .local v6, givenName:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/miui/milk/model/ContactProtos2$Name;->getMiddleName()Ljava/lang/String;

    move-result-object v9

    .line 687
    .local v9, middleName:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/miui/milk/model/ContactProtos2$Name;->getFamilyName()Ljava/lang/String;

    move-result-object v5

    .line 689
    .local v5, familyName:Ljava/lang/String;
    const/4 v13, 0x4

    new-array v12, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    const/4 v13, 0x2

    aput-object v9, v12, v13

    const/4 v13, 0x3

    aput-object v5, v12, v13

    .line 690
    .local v12, propValues:[Ljava/lang/String;
    invoke-static {v12}, Lcom/miui/milk/util/SysHelpers;->isFieldEmpty([Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 694
    const-string v13, "mimetype"

    const-string v14, "vnd.android.cursor.item/name"

    invoke-virtual {v8, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 696
    if-eqz v4, :cond_2

    .line 697
    const-string v13, "data1"

    invoke-virtual {v8, v13, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 699
    :cond_2
    if-eqz v6, :cond_3

    .line 700
    const-string v13, "data2"

    invoke-virtual {v8, v13, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 703
    :cond_3
    if-eqz v9, :cond_4

    .line 704
    const-string v13, "data5"

    invoke-virtual {v8, v13, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 706
    :cond_4
    if-eqz v5, :cond_5

    .line 707
    const-string v13, "data3"

    invoke-virtual {v8, v13, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 710
    :cond_5
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    .line 711
    .local v11, operation:Landroid/content/ContentProviderOperation;
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 715
    .end local v4           #displayName:Ljava/lang/String;
    .end local v5           #familyName:Ljava/lang/String;
    .end local v6           #givenName:Ljava/lang/String;
    .end local v8           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v9           #middleName:Ljava/lang/String;
    .end local v10           #name:Lcom/miui/milk/model/ContactProtos2$Name;
    .end local v11           #operation:Landroid/content/ContentProviderOperation;
    .end local v12           #propValues:[Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private prepareNicknameOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 9
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 718
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v7, -0x1

    cmp-long v7, p4, v7

    if-eqz v7, :cond_0

    .line 719
    const-string v7, "ContactManager"

    const-string v8, "Updating contact data: remove old fields firstly"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v7, "vnd.android.cursor.item/nickname"

    invoke-direct {p0, p2, p4, p5, v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 724
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getNicknameList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/ContactProtos2$Nickname;

    .line 725
    .local v3, nickname:Lcom/miui/milk/model/ContactProtos2$Nickname;
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 726
    .local v1, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos2$Nickname;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 727
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos2$Nickname;->getType()I

    move-result v5

    .line 728
    .local v5, type:I
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos2$Nickname;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, label:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 732
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/nickname"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 734
    const-string v7, "data1"

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 735
    const-string v7, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 736
    if-eqz v2, :cond_2

    .line 737
    const-string v7, "data3"

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 739
    :cond_2
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 740
    .local v4, operation:Landroid/content/ContentProviderOperation;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 743
    .end local v1           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #nickname:Lcom/miui/milk/model/ContactProtos2$Nickname;
    .end local v4           #operation:Landroid/content/ContentProviderOperation;
    .end local v5           #type:I
    .end local v6           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private prepareNoteOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 7
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 1004
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v5, -0x1

    cmp-long v5, p4, v5

    if-eqz v5, :cond_0

    .line 1005
    const-string v5, "ContactManager"

    const-string v6, "Updating contact data: remove old fields firstly"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const-string v5, "vnd.android.cursor.item/note"

    invoke-direct {p0, p2, p4, p5, v5}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 1010
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getNoteList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/milk/model/ContactProtos2$Note;

    .line 1011
    .local v2, note:Lcom/miui/milk/model/ContactProtos2$Note;
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1012
    .local v1, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos2$Note;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 1013
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1016
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1018
    const-string v5, "data1"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1020
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 1021
    .local v3, operation:Landroid/content/ContentProviderOperation;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1024
    .end local v1           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #note:Lcom/miui/milk/model/ContactProtos2$Note;
    .end local v3           #operation:Landroid/content/ContentProviderOperation;
    .end local v4           #value:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private prepareOrganizationOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 20
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 860
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v18, -0x1

    cmp-long v18, p4, v18

    if-eqz v18, :cond_0

    .line 861
    const-string v18, "ContactManager"

    const-string v19, "Updating contact data: remove old fields firstly"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const-string v18, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p4

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 866
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getOrganizationList()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/milk/model/ContactProtos2$Organization;

    .line 867
    .local v12, org:Lcom/miui/milk/model/ContactProtos2$Organization;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p4

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 868
    .local v7, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v12}, Lcom/miui/milk/model/ContactProtos2$Organization;->getValue()Ljava/lang/String;

    move-result-object v17

    .line 869
    .local v17, value:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/miui/milk/model/ContactProtos2$Organization;->getType()I

    move-result v16

    .line 870
    .local v16, type:I
    invoke-virtual {v12}, Lcom/miui/milk/model/ContactProtos2$Organization;->getLabel()Ljava/lang/String;

    move-result-object v9

    .line 872
    .local v9, label:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/miui/milk/model/ContactProtos2$Organization;->getTitle()Ljava/lang/String;

    move-result-object v15

    .line 873
    .local v15, title:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/miui/milk/model/ContactProtos2$Organization;->getDepartment()Ljava/lang/String;

    move-result-object v5

    .line 874
    .local v5, dept:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/miui/milk/model/ContactProtos2$Organization;->getJobDescription()Ljava/lang/String;

    move-result-object v8

    .line 875
    .local v8, jobDes:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/miui/milk/model/ContactProtos2$Organization;->getSymbol()Ljava/lang/String;

    move-result-object v14

    .line 876
    .local v14, symbol:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/miui/milk/model/ContactProtos2$Organization;->getOfficeLocation()Ljava/lang/String;

    move-result-object v10

    .line 878
    .local v10, officeLoc:Ljava/lang/String;
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v17, v13, v18

    const/16 v18, 0x1

    aput-object v15, v13, v18

    const/16 v18, 0x2

    aput-object v5, v13, v18

    const/16 v18, 0x3

    aput-object v10, v13, v18

    .line 879
    .local v13, propValues:[Ljava/lang/String;
    invoke-static {v13}, Lcom/miui/milk/util/SysHelpers;->isFieldEmpty([Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 884
    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 886
    const-string v18, "data1"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 887
    const-string v18, "data2"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 888
    if-eqz v9, :cond_2

    .line 889
    const-string v18, "data3"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 891
    :cond_2
    if-eqz v15, :cond_3

    .line 892
    const-string v18, "data4"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 894
    :cond_3
    if-eqz v5, :cond_4

    .line 895
    const-string v18, "data5"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 897
    :cond_4
    if-eqz v8, :cond_5

    .line 898
    const-string v18, "data6"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 900
    :cond_5
    if-eqz v14, :cond_6

    .line 901
    const-string v18, "data7"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 903
    :cond_6
    if-eqz v10, :cond_7

    .line 904
    const-string v18, "data9"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 907
    :cond_7
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    .line 908
    .local v11, operation:Landroid/content/ContentProviderOperation;
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 911
    .end local v5           #dept:Ljava/lang/String;
    .end local v7           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v8           #jobDes:Ljava/lang/String;
    .end local v9           #label:Ljava/lang/String;
    .end local v10           #officeLoc:Ljava/lang/String;
    .end local v11           #operation:Landroid/content/ContentProviderOperation;
    .end local v12           #org:Lcom/miui/milk/model/ContactProtos2$Organization;
    .end local v13           #propValues:[Ljava/lang/String;
    .end local v14           #symbol:Ljava/lang/String;
    .end local v15           #title:Ljava/lang/String;
    .end local v16           #type:I
    .end local v17           #value:Ljava/lang/String;
    :cond_8
    return-void
.end method

.method private preparePhoneOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 9
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 746
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v7, -0x1

    cmp-long v7, p4, v7

    if-eqz v7, :cond_0

    .line 747
    const-string v7, "ContactManager"

    const-string v8, "Updating contact data: remove old fields firstly"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-direct {p0, p2, p4, p5, v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 752
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getPhoneList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/milk/model/ContactProtos2$Phone;

    .line 753
    .local v4, phone:Lcom/miui/milk/model/ContactProtos2$Phone;
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 754
    .local v1, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v4}, Lcom/miui/milk/model/ContactProtos2$Phone;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 755
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/miui/milk/model/ContactProtos2$Phone;->getType()I

    move-result v5

    .line 756
    .local v5, type:I
    invoke-virtual {v4}, Lcom/miui/milk/model/ContactProtos2$Phone;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, label:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 760
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 762
    const-string v7, "data1"

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 763
    const-string v7, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 764
    if-eqz v2, :cond_2

    .line 765
    const-string v7, "data3"

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 767
    :cond_2
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 768
    .local v3, operation:Landroid/content/ContentProviderOperation;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 771
    .end local v1           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #operation:Landroid/content/ContentProviderOperation;
    .end local v4           #phone:Lcom/miui/milk/model/ContactProtos2$Phone;
    .end local v5           #type:I
    .end local v6           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private preparePhotoOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 7
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 838
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v5, -0x1

    cmp-long v5, p4, v5

    if-eqz v5, :cond_0

    .line 839
    const-string v5, "ContactManager"

    const-string v6, "Updating contact data: remove old fields firstly"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const-string v5, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p2, p4, p5, v5}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 844
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getPhotoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/milk/model/ContactProtos2$Photo;

    .line 845
    .local v4, photo:Lcom/miui/milk/model/ContactProtos2$Photo;
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 846
    .local v2, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v4}, Lcom/miui/milk/model/ContactProtos2$Photo;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 847
    .local v1, image:Lcom/google/protobuf/ByteString;
    if-eqz v1, :cond_1

    .line 850
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 852
    const-string v5, "data15"

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 853
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 854
    .local v3, operation:Landroid/content/ContentProviderOperation;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 857
    .end local v1           #image:Lcom/google/protobuf/ByteString;
    .end local v2           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #operation:Landroid/content/ContentProviderOperation;
    .end local v4           #photo:Lcom/miui/milk/model/ContactProtos2$Photo;
    :cond_2
    return-void
.end method

.method private preparePostalOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 22
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 914
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v20, -0x1

    cmp-long v20, p4, v20

    if-eqz v20, :cond_0

    .line 915
    const-string v20, "ContactManager"

    const-string v21, "Updating contact data: remove old fields firstly"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const-string v20, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p4

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 920
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getPostalList()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/milk/model/ContactProtos2$Postal;

    .line 921
    .local v13, postal:Lcom/miui/milk/model/ContactProtos2$Postal;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p4

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 922
    .local v8, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 923
    .local v19, value:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getType()I

    move-result v18

    .line 924
    .local v18, type:I
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getLabel()Ljava/lang/String;

    move-result-object v9

    .line 926
    .local v9, label:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getStreet()Ljava/lang/String;

    move-result-object v17

    .line 927
    .local v17, street:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getPobox()Ljava/lang/String;

    move-result-object v12

    .line 928
    .local v12, pobox:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getNeighborhood()Ljava/lang/String;

    move-result-object v10

    .line 929
    .local v10, neighborhood:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getCity()Ljava/lang/String;

    move-result-object v5

    .line 930
    .local v5, city:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getRegion()Ljava/lang/String;

    move-result-object v16

    .line 931
    .local v16, region:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getPostcode()Ljava/lang/String;

    move-result-object v14

    .line 932
    .local v14, postcode:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 934
    .local v6, country:Ljava/lang/String;
    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v15, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    aput-object v19, v15, v20

    const/16 v20, 0x1

    aput-object v17, v15, v20

    const/16 v20, 0x2

    aput-object v5, v15, v20

    const/16 v20, 0x3

    aput-object v16, v15, v20

    const/16 v20, 0x4

    aput-object v6, v15, v20

    .line 935
    .local v15, propValues:[Ljava/lang/String;
    invoke-static {v15}, Lcom/miui/milk/util/SysHelpers;->isFieldEmpty([Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 940
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 942
    const-string v20, "data1"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 943
    const-string v20, "data2"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 944
    if-eqz v9, :cond_2

    .line 945
    const-string v20, "data3"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 947
    :cond_2
    if-eqz v17, :cond_3

    .line 948
    const-string v20, "data4"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 950
    :cond_3
    if-eqz v12, :cond_4

    .line 951
    const-string v20, "data5"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 953
    :cond_4
    if-eqz v10, :cond_5

    .line 954
    const-string v20, "data6"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 956
    :cond_5
    if-eqz v5, :cond_6

    .line 957
    const-string v20, "data7"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 959
    :cond_6
    if-eqz v16, :cond_7

    .line 960
    const-string v20, "data8"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 962
    :cond_7
    if-eqz v14, :cond_8

    .line 963
    const-string v20, "data9"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 965
    :cond_8
    if-eqz v6, :cond_9

    .line 966
    const-string v20, "data10"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 969
    :cond_9
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    .line 970
    .local v11, operation:Landroid/content/ContentProviderOperation;
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 973
    .end local v5           #city:Ljava/lang/String;
    .end local v6           #country:Ljava/lang/String;
    .end local v8           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v9           #label:Ljava/lang/String;
    .end local v10           #neighborhood:Ljava/lang/String;
    .end local v11           #operation:Landroid/content/ContentProviderOperation;
    .end local v12           #pobox:Ljava/lang/String;
    .end local v13           #postal:Lcom/miui/milk/model/ContactProtos2$Postal;
    .end local v14           #postcode:Ljava/lang/String;
    .end local v15           #propValues:[Ljava/lang/String;
    .end local v16           #region:Ljava/lang/String;
    .end local v17           #street:Ljava/lang/String;
    .end local v18           #type:I
    .end local v19           #value:Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private prepareUpdateRawContact(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/ArrayList;I)V
    .locals 10
    .parameter "luid"
    .parameter "contact"
    .parameter
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 585
    iget-object v7, p0, Lcom/miui/milk/source/contact2/ContactManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 586
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v7, "caller_is_syncadapter"

    iget-boolean v8, p0, Lcom/miui/milk/source/contact2/ContactManager;->mIsSync:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 587
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 588
    .local v4, rawContactBuilder:Landroid/content/ContentProviderOperation$Builder;
    const-wide/16 v7, -0x1

    cmp-long v7, p1, v7

    if-nez v7, :cond_3

    .line 589
    const-string v7, "_id = ? "

    new-array v8, v5, [Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 590
    invoke-virtual {v4, v6, p5}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 594
    :goto_0
    const/4 v2, 0x0

    .line 595
    .local v2, needUpdate:Z
    invoke-virtual {p3}, Lcom/miui/milk/model/ContactProtos2$Contact;->hasStarred()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 596
    const-string v7, "starred"

    invoke-virtual {p3}, Lcom/miui/milk/model/ContactProtos2$Contact;->getStarred()Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 597
    const/4 v2, 0x1

    .line 599
    :cond_0
    invoke-virtual {p3}, Lcom/miui/milk/model/ContactProtos2$Contact;->hasCallIncomingPhoto()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 600
    invoke-virtual {p3}, Lcom/miui/milk/model/ContactProtos2$Contact;->getCallIncomingPhoto()Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, callIncomingPhoto:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 608
    .end local v1           #callIncomingPhoto:Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 609
    const-string v5, "ContactManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating raw contact data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 611
    .local v3, operation:Landroid/content/ContentProviderOperation;
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    .end local v3           #operation:Landroid/content/ContentProviderOperation;
    :cond_2
    return-void

    .line 592
    .end local v2           #needUpdate:Z
    :cond_3
    const-string v7, "_id = ? "

    new-array v8, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    goto :goto_0

    .restart local v2       #needUpdate:Z
    :cond_4
    move v5, v6

    .line 596
    goto :goto_1
.end method

.method private prepareWebsiteOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 9
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 1027
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v7, -0x1

    cmp-long v7, p4, v7

    if-eqz v7, :cond_0

    .line 1028
    const-string v7, "ContactManager"

    const-string v8, "Updating contact data: remove old fields firstly"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const-string v7, "vnd.android.cursor.item/website"

    invoke-direct {p0, p2, p4, p5, v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 1033
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getWebsiteList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/milk/model/ContactProtos2$Website;

    .line 1034
    .local v6, website:Lcom/miui/milk/model/ContactProtos2$Website;
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1035
    .local v1, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Website;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 1036
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Website;->getType()I

    move-result v4

    .line 1037
    .local v4, type:I
    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Website;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 1038
    .local v2, label:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1041
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1043
    const-string v7, "data1"

    invoke-virtual {v1, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1044
    const-string v7, "data2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1045
    if-eqz v2, :cond_2

    .line 1046
    const-string v7, "data3"

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1048
    :cond_2
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 1049
    .local v3, operation:Landroid/content/ContentProviderOperation;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1052
    .end local v1           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #operation:Landroid/content/ContentProviderOperation;
    .end local v4           #type:I
    .end local v5           #value:Ljava/lang/String;
    .end local v6           #website:Lcom/miui/milk/model/ContactProtos2$Website;
    :cond_3
    return-void
.end method

.method private setRawContactField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;I)V
    .locals 3
    .parameter "contact"
    .parameter "cursor"
    .parameter "index"

    .prologue
    .line 110
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, columnName:Ljava/lang/String;
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v1, "version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setVersion(I)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_0

    .line 115
    :cond_2
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setDeleted(I)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_0

    .line 117
    :cond_3
    const-string v1, "starred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setStarred(Z)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;)J
    .locals 16
    .parameter "contact"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    const-string v1, "ContactManager"

    const-string v2, "Saving contact"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/source/contact2/ContactManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 487
    .local v9, builder:Landroid/net/Uri$Builder;
    const-string v1, "caller_is_syncadapter"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/milk/source/contact2/ContactManager;->mIsSync:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 491
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 492
    .local v13, rawContactBuilder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p2, :cond_0

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 500
    :goto_0
    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    .line 501
    .local v14, rawContactOps:Landroid/content/ContentProviderOperation;
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    .line 504
    .local v8, backRefIndex:I
    const-wide/16 v2, -0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDataFieldsOps(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZLandroid/accounts/Account;I)V

    .line 505
    const-wide/16 v2, -0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareUpdateRawContact(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/ArrayList;I)V

    .line 509
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v15

    .line 511
    .local v15, res:[Landroid/content/ContentProviderResult;
    const/4 v1, 0x0

    aget-object v1, v15, v1

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    .line 512
    .local v11, id:J
    const-string v1, "ContactManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The new contact has id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    return-wide v11

    .line 496
    .end local v8           #backRefIndex:I
    .end local v11           #id:J
    .end local v14           #rawContactOps:Landroid/content/ContentProviderOperation;
    .end local v15           #res:[Landroid/content/ContentProviderResult;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    goto :goto_0

    .line 515
    .restart local v8       #backRefIndex:I
    .restart local v14       #rawContactOps:Landroid/content/ContentProviderOperation;
    :catch_0
    move-exception v10

    .line 516
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "ContactManager"

    const-string v2, "Cannot create contact "

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot create contact in db"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
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
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 616
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 618
    .local v1, res:[Landroid/content/ContentProviderResult;
    :try_start_0
    iget-object v2, p0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 626
    return-object v1

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ContactManager"

    const-string v3, "Cannot apply contact batch "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 621
    throw v0

    .line 622
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 623
    .local v0, e:Landroid/content/OperationApplicationException;
    const-string v2, "ContactManager"

    const-string v3, "Cannot apply contact batch "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    throw v0
.end method

.method public exists(J)Z
    .locals 10
    .parameter "id"

    .prologue
    .line 1184
    const/4 v6, 0x0

    .line 1187
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 1188
    .local v9, whereClause:Ljava/lang/StringBuffer;
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ID:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "= ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1190
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    .local v8, selectArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1193
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ID:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1199
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1200
    const/4 v7, 0x1

    .line 1206
    .local v7, found:Z
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1209
    :cond_0
    return v7

    .line 1202
    .end local v7           #found:Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7       #found:Z
    goto :goto_0

    .line 1206
    .end local v7           #found:Z
    .end local v8           #selectArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #whereClause:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public exists(JLandroid/accounts/Account;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1135
    .line 1138
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1140
    if-nez p3, :cond_2

    .line 1141
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1142
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1143
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1144
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1151
    :goto_0
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_DELETED:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1152
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1153
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ID:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "= ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1155
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    if-eqz p3, :cond_0

    .line 1157
    iget-object v0, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    iget-object v0, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ID:Ljava/lang/String;

    aput-object v9, v2, v5

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1168
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_4

    move v0, v7

    .line 1175
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1178
    :cond_1
    return v0

    .line 1146
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "= ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1147
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1148
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "= ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1149
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1175
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move v0, v8

    .line 1171
    goto :goto_1

    .line 1175
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public getContactMD5(Lcom/miui/milk/model/ContactProtos2$Contact;)Ljava/lang/String;
    .locals 16
    .parameter "contact"

    .prologue
    .line 1231
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Contact;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v0

    .line 1232
    .local v0, cb:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getNameList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/milk/model/ContactProtos2$Name;

    .line 1233
    .local v6, name:Lcom/miui/milk/model/ContactProtos2$Name;
    invoke-virtual {v0, v6}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addName(Lcom/miui/milk/model/ContactProtos2$Name;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 1234
    const-string v14, "ContactManager"

    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Name;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1236
    .end local v6           #name:Lcom/miui/milk/model/ContactProtos2$Name;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getNicknameList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/milk/model/ContactProtos2$Nickname;

    .line 1237
    .local v7, nickname:Lcom/miui/milk/model/ContactProtos2$Nickname;
    invoke-virtual {v0, v7}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addNickname(Lcom/miui/milk/model/ContactProtos2$Nickname;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_1

    .line 1239
    .end local v7           #nickname:Lcom/miui/milk/model/ContactProtos2$Nickname;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getPhoneList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/milk/model/ContactProtos2$Phone;

    .line 1240
    .local v10, phone:Lcom/miui/milk/model/ContactProtos2$Phone;
    invoke-virtual {v0, v10}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addPhone(Lcom/miui/milk/model/ContactProtos2$Phone;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_2

    .line 1242
    .end local v10           #phone:Lcom/miui/milk/model/ContactProtos2$Phone;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getEmailList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/milk/model/ContactProtos2$Email;

    .line 1243
    .local v2, email:Lcom/miui/milk/model/ContactProtos2$Email;
    invoke-virtual {v0, v2}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addEmail(Lcom/miui/milk/model/ContactProtos2$Email;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_3

    .line 1245
    .end local v2           #email:Lcom/miui/milk/model/ContactProtos2$Email;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getImList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/milk/model/ContactProtos2$Im;

    .line 1246
    .local v5, im:Lcom/miui/milk/model/ContactProtos2$Im;
    invoke-virtual {v0, v5}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addIm(Lcom/miui/milk/model/ContactProtos2$Im;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_4

    .line 1248
    .end local v5           #im:Lcom/miui/milk/model/ContactProtos2$Im;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getPhotoList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/milk/model/ContactProtos2$Photo;

    .line 1249
    .local v11, photo:Lcom/miui/milk/model/ContactProtos2$Photo;
    invoke-virtual {v0, v11}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addPhoto(Lcom/miui/milk/model/ContactProtos2$Photo;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_5

    .line 1251
    .end local v11           #photo:Lcom/miui/milk/model/ContactProtos2$Photo;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getOrganizationList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/milk/model/ContactProtos2$Organization;

    .line 1252
    .local v9, org:Lcom/miui/milk/model/ContactProtos2$Organization;
    invoke-virtual {v0, v9}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addOrganization(Lcom/miui/milk/model/ContactProtos2$Organization;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_6

    .line 1254
    .end local v9           #org:Lcom/miui/milk/model/ContactProtos2$Organization;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getPostalList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/milk/model/ContactProtos2$Postal;

    .line 1255
    .local v12, postal:Lcom/miui/milk/model/ContactProtos2$Postal;
    invoke-virtual {v0, v12}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addPostal(Lcom/miui/milk/model/ContactProtos2$Postal;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_7

    .line 1257
    .end local v12           #postal:Lcom/miui/milk/model/ContactProtos2$Postal;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getEventList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/ContactProtos2$Event;

    .line 1258
    .local v3, event:Lcom/miui/milk/model/ContactProtos2$Event;
    invoke-virtual {v0, v3}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addEvent(Lcom/miui/milk/model/ContactProtos2$Event;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_8

    .line 1260
    .end local v3           #event:Lcom/miui/milk/model/ContactProtos2$Event;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getNoteList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/milk/model/ContactProtos2$Note;

    .line 1261
    .local v8, note:Lcom/miui/milk/model/ContactProtos2$Note;
    invoke-virtual {v0, v8}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addNote(Lcom/miui/milk/model/ContactProtos2$Note;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_9

    .line 1263
    .end local v8           #note:Lcom/miui/milk/model/ContactProtos2$Note;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getWebsiteList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/milk/model/ContactProtos2$Website;

    .line 1264
    .local v13, website:Lcom/miui/milk/model/ContactProtos2$Website;
    invoke-virtual {v0, v13}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addWebsite(Lcom/miui/milk/model/ContactProtos2$Website;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_a

    .line 1266
    .end local v13           #website:Lcom/miui/milk/model/ContactProtos2$Website;
    :cond_a
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v14

    invoke-virtual {v14}, Lcom/miui/milk/model/ContactProtos2$Contact;->toByteArray()[B

    move-result-object v1

    .line 1267
    .local v1, data:[B
    invoke-static {v1}, Lcom/miui/milk/util/MD5;->MD5_32([B)Ljava/lang/String;

    move-result-object v14

    return-object v14
.end method

.method public isEmpty()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1213
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ID:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 1216
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1219
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    const/4 v7, 0x0

    .line 1225
    .local v7, empty:Z
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1226
    return v7

    .line 1222
    .end local v7           #empty:Z
    :cond_0
    const/4 v7, 0x1

    .restart local v7       #empty:Z
    goto :goto_0
.end method

.method public load(J)Lcom/miui/milk/model/ContactProtos2$Contact;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const-string v1, "ContactManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading contact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/miui/milk/source/contact2/ContactManager;->loadRawContact(J)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v0

    .line 75
    .local v0, contact:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    if-nez v0, :cond_0

    .line 77
    const/4 v1, 0x0

    .line 80
    :goto_0
    return-object v1

    .line 79
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/milk/source/contact2/ContactManager;->loadDataFields(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;J)V

    .line 80
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v1

    goto :goto_0
.end method

.method public prepareAdd(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    .locals 11
    .parameter "contact"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v1, -0x1

    const/4 v4, 0x0

    .line 549
    const-string v0, "ContactManager"

    const-string v3, "prepare Saving contact"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 553
    .local v8, builder:Landroid/net/Uri$Builder;
    const-string v0, "caller_is_syncadapter"

    iget-boolean v3, p0, Lcom/miui/milk/source/contact2/ContactManager;->mIsSync:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 557
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 558
    .local v9, rawContactBuilder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p2, :cond_0

    .line 559
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 566
    :goto_0
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    .line 567
    .local v10, rawContactOps:Landroid/content/ContentProviderOperation;
    invoke-virtual {p3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 570
    .local v7, backRefIndex:I
    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDataFieldsOps(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZLandroid/accounts/Account;I)V

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move v5, v7

    .line 571
    invoke-direct/range {v0 .. v5}, Lcom/miui/milk/source/contact2/ContactManager;->prepareUpdateRawContact(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/ArrayList;I)V

    .line 572
    return-void

    .line 562
    .end local v7           #backRefIndex:I
    .end local v10           #rawContactOps:Landroid/content/ContentProviderOperation;
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v9, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    goto :goto_0
.end method

.method public prepareAllContactIds()Ljava/util/Vector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1271
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1274
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "deleted= 0 "

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1280
    if-nez v1, :cond_1

    .line 1296
    if-eqz v1, :cond_0

    .line 1297
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v6

    .line 1300
    :goto_0
    return-object v0

    .line 1283
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1287
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1288
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1291
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1292
    invoke-virtual {v6, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1293
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1296
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 1297
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1296
    :cond_3
    if-eqz v1, :cond_4

    .line 1297
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    .line 1300
    goto :goto_0

    .line 1296
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method public prepareGroup()V
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mGroupManager:Lcom/miui/milk/source/contact2/GroupManager;

    invoke-virtual {v0}, Lcom/miui/milk/source/contact2/GroupManager;->prepareAllGroup()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mName2Id:Ljava/util/HashMap;

    .line 1056
    return-void
.end method

.method public prepareUpdate(JLcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "luid"
    .parameter "contact"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, -0x1

    .line 576
    const-string v0, "ContactManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare Updating contact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/miui/milk/model/ContactProtos2$Contact;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDataFieldsOps(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZLandroid/accounts/Account;I)V

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p5

    .line 580
    invoke-direct/range {v2 .. v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareUpdateRawContact(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/ArrayList;I)V

    .line 582
    return-void
.end method

.method public update(JLcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;)V
    .locals 9
    .parameter "luid"
    .parameter "contact"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 523
    const-string v0, "ContactManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating contact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/miui/milk/model/ContactProtos2$Contact;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {p0, p1, p2, p4}, Lcom/miui/milk/source/contact2/ContactManager;->exists(JLandroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    const-string v0, "ContactManager"

    const-string v1, "Tried to update a non existing contact. Creating a new one "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {p0, p3, p4}, Lcom/miui/milk/source/contact2/ContactManager;->add(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;)J

    .line 546
    :goto_0
    return-void

    .line 533
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDataFieldsOps(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZLandroid/accounts/Account;I)V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, v7

    .line 536
    invoke-direct/range {v0 .. v5}, Lcom/miui/milk/source/contact2/ContactManager;->prepareUpdateRawContact(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/ArrayList;I)V

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 542
    :catch_0
    move-exception v8

    .line 543
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "ContactManager"

    const-string v1, "Cannot update contact "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 544
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot update contact in db"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
