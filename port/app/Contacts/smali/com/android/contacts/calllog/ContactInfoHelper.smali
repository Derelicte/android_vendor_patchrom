.class public Lcom/android/contacts/calllog/ContactInfoHelper;
.super Ljava/lang/Object;
.source "ContactInfoHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "currentCountryIso"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"
    .parameter "normalizedNumber"
    .parameter "countryIso"

    .prologue
    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const-string p1, ""

    .line 258
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 252
    .restart local p1
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    iget-object p3, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 258
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 13
    .parameter "number"
    .parameter "countryIso"

    .prologue
    .line 190
    move-object v8, p1

    .line 191
    .local v8, contactNumber:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v12

    .line 195
    .local v12, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v12, :cond_0

    .line 196
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v8

    .line 202
    .end local v12           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 208
    .local v11, phonesCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 209
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    new-instance v9, Lcom/android/contacts/calllog/ContactInfo;

    invoke-direct {v9}, Lcom/android/contacts/calllog/ContactInfo;-><init>()V

    .line 211
    .local v9, info:Lcom/android/contacts/calllog/ContactInfo;
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 212
    .local v6, contactId:J
    const/4 v0, 0x7

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 213
    .local v10, lookupKey:Ljava/lang/String;
    invoke-static {v6, v7, v10}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 214
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 215
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/contacts/calllog/ContactInfo;->type:I

    .line 216
    const/4 v0, 0x3

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 217
    const/4 v0, 0x4

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 218
    const/4 v0, 0x5

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 219
    const/4 v0, 0x6

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    .line 220
    const/16 v0, 0x8

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/contacts/calllog/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 227
    .end local v6           #contactId:J
    .end local v10           #lookupKey:Ljava/lang/String;
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 232
    :goto_1
    return-object v9

    .line 225
    .end local v9           #info:Lcom/android/contacts/calllog/ContactInfo;
    :cond_1
    sget-object v9, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    .restart local v9       #info:Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_0

    .line 230
    .end local v9           #info:Lcom/android/contacts/calllog/ContactInfo;
    :cond_2
    const/4 v9, 0x0

    .restart local v9       #info:Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_1
.end method

.method private queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 13
    .parameter "sipAddress"

    .prologue
    const/4 v2, 0x0

    .line 111
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 122
    .local v1, contactRef:Landroid/net/Uri;
    const-string v3, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 125
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 127
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 135
    .local v8, dataTableCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 136
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v9, Lcom/android/contacts/calllog/ContactInfo;

    invoke-direct {v9}, Lcom/android/contacts/calllog/ContactInfo;-><init>()V

    .line 147
    .local v9, info:Lcom/android/contacts/calllog/ContactInfo;
    const-string v0, "contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 149
    .local v6, contactId:J
    const-string v0, "lookup"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 151
    .local v10, lookupKey:Ljava/lang/String;
    invoke-static {v6, v7, v10}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 152
    const-string v0, "display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 155
    const/4 v0, 0x3

    iput v0, v9, Lcom/android/contacts/calllog/ContactInfo;->type:I

    .line 156
    iput-object v2, v9, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 160
    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 161
    iput-object v2, v9, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 162
    const-string v0, "photo_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v9, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    .line 164
    const-string v0, "photo_uri"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 166
    iput-object v2, v9, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 170
    .end local v6           #contactId:J
    .end local v10           #lookupKey:Ljava/lang/String;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 175
    :goto_1
    return-object v9

    .line 168
    .end local v9           #info:Lcom/android/contacts/calllog/ContactInfo;
    :cond_0
    sget-object v9, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    .restart local v9       #info:Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_0

    .line 173
    .end local v9           #info:Lcom/android/contacts/calllog/ContactInfo;
    :cond_1
    const/4 v9, 0x0

    .restart local v9       #info:Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_1
.end method


# virtual methods
.method public lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 6
    .parameter "number"
    .parameter "countryIso"

    .prologue
    .line 60
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/ContactInfoHelper;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v1

    .line 63
    .local v1, sipInfo:Lcom/android/contacts/calllog/ContactInfo;
    if-eqz v1, :cond_0

    sget-object v4, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-ne v1, v4, :cond_1

    .line 65
    :cond_0
    const/4 v4, 0x0

    const/16 v5, 0x40

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, username:Ljava/lang/String;
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    invoke-direct {p0, v3, p2}, Lcom/android/contacts/calllog/ContactInfoHelper;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v1

    .line 70
    .end local v3           #username:Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 76
    .end local v1           #sipInfo:Lcom/android/contacts/calllog/ContactInfo;
    .local v0, info:Lcom/android/contacts/calllog/ContactInfo;
    :goto_0
    if-nez v0, :cond_3

    .line 78
    const/4 v2, 0x0

    .line 90
    .local v2, updatedInfo:Lcom/android/contacts/calllog/ContactInfo;
    :goto_1
    return-object v2

    .line 72
    .end local v0           #info:Lcom/android/contacts/calllog/ContactInfo;
    .end local v2           #updatedInfo:Lcom/android/contacts/calllog/ContactInfo;
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/calllog/ContactInfoHelper;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v0

    .restart local v0       #info:Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_0

    .line 81
    :cond_3
    sget-object v4, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-ne v0, v4, :cond_4

    .line 83
    new-instance v2, Lcom/android/contacts/calllog/ContactInfo;

    invoke-direct {v2}, Lcom/android/contacts/calllog/ContactInfo;-><init>()V

    .line 84
    .restart local v2       #updatedInfo:Lcom/android/contacts/calllog/ContactInfo;
    iput-object p1, v2, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 85
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, p2}, Lcom/android/contacts/calllog/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    goto :goto_1

    .line 87
    .end local v2           #updatedInfo:Lcom/android/contacts/calllog/ContactInfo;
    :cond_4
    move-object v2, v0

    .restart local v2       #updatedInfo:Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_1
.end method
