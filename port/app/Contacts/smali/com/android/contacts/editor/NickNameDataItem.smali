.class public Lcom/android/contacts/editor/NickNameDataItem;
.super Ljava/lang/Object;
.source "NickNameDataItem.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContactId:J

.field private final mContext:Landroid/content/Context;

.field private mDisplayName:Ljava/lang/String;

.field private mEditingNickname:Ljava/lang/String;

.field private mLoaded:Z

.field private mNickname:Ljava/lang/String;

.field private final mNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "nickname"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/editor/NickNameDataItem;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "number"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mLoaded:Z

    .line 53
    iput-object p1, p0, Lcom/android/contacts/editor/NickNameDataItem;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/contacts/editor/NickNameDataItem;->mNumber:Ljava/lang/String;

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mContactId:J

    .line 56
    return-void
.end method

.method private hasNicknameByRawId(J)Z
    .locals 9
    .parameter "raw_contact_id"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraContacts$Nickname;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v2, v8

    const-string v3, "raw_contact_id=?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 139
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 140
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    .line 145
    :goto_0
    return v0

    .line 143
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 145
    goto :goto_0
.end method


# virtual methods
.method public getDisplayname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEditingNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mEditingNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isContact()Z
    .locals 4

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mContactId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 151
    iget-boolean v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mLoaded:Z

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, formattedNumber:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/editor/NickNameDataItem;->PROJECTION:[Ljava/lang/String;

    const-string v3, "PHONE_NUMBERS_EQUAL(data1,?) AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    new-array v4, v8, [Ljava/lang/String;

    aput-object v7, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 162
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 167
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mContactId:J

    .line 169
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mDisplayName:Ljava/lang/String;

    .line 170
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mNickname:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mNickname:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mDisplayName:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mEditingNickname:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 180
    iput-boolean v8, p0, Lcom/android/contacts/editor/NickNameDataItem;->mLoaded:Z

    goto :goto_0

    .line 171
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mNickname:Ljava/lang/String;

    goto :goto_1

    .line 173
    :cond_3
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mContactId:J

    .line 174
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mDisplayName:Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mNickname:Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mEditingNickname:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 179
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 180
    iput-boolean v8, p0, Lcom/android/contacts/editor/NickNameDataItem;->mLoaded:Z

    throw v0
.end method

.method public save()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v14, 0x0

    .line 67
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v10, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mEditingNickname:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/editor/NickNameDataItem;->mDisplayName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mNickname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mNickname:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/editor/NickNameDataItem;->mEditingNickname:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/editor/NickNameDataItem;->isContact()Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    :cond_1
    return-object v10

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v14

    const-string v3, "contact_id=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v12, p0, Lcom/android/contacts/editor/NickNameDataItem;->mContactId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v14

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 84
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 86
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v9, rawIdArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 94
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mEditingNickname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mNickname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mNickname:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/editor/NickNameDataItem;->mEditingNickname:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 100
    :cond_4
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 101
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/editor/NickNameDataItem;->hasNicknameByRawId(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 102
    sget-object v1, Lmiui/provider/ExtraContacts$Nickname;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 104
    .local v6, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "data1"

    iget-object v1, p0, Lcom/android/contacts/editor/NickNameDataItem;->mEditingNickname:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v6, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 107
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 109
    .end local v6           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_5
    sget-object v0, Lmiui/provider/ExtraContacts$Nickname;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 110
    .restart local v6       #builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 111
    .restart local v11       #values:Landroid/content/ContentValues;
    const-string v1, "raw_contact_id"

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    const-string v0, "data1"

    iget-object v1, p0, Lcom/android/contacts/editor/NickNameDataItem;->mEditingNickname:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v6, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 114
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 117
    .end local v6           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v8           #i:I
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mEditingNickname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mNickname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 120
    sget-object v1, Lmiui/provider/ExtraContacts$Nickname;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 122
    .restart local v6       #builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 123
    .restart local v11       #values:Landroid/content/ContentValues;
    const-string v0, "data1"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v6, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 125
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method public setEditingNickname(Landroid/text/Editable;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 185
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 187
    .local v0, newNick:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/NickNameDataItem;->mEditingNickname:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    const/4 v1, 0x0

    .line 191
    :goto_1
    return v1

    .line 185
    .end local v0           #newNick:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    .restart local v0       #newNick:Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Lcom/android/contacts/editor/NickNameDataItem;->mEditingNickname:Ljava/lang/String;

    .line 191
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nick"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/contacts/editor/NickNameDataItem;->mNickname:Ljava/lang/String;

    .line 205
    return-void
.end method
