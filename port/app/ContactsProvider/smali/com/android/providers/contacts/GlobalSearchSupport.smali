.class public Lcom/android/providers/contacts/GlobalSearchSupport;
.super Ljava/lang/Object;
.source "GlobalSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    }
.end annotation


# static fields
.field private static final SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

.field private static final SEARCH_SUGGESTIONS_BASED_ON_PHONE_NUMBER_COLUMNS:[Ljava/lang/String;

.field private static final sCallsProjectionMap:Ljava/util/HashMap;
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


# instance fields
.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private final mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

.field private mShowingSPInT9Search:Z

.field private mUpdatingEssentialInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v5

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v6

    const-string v1, "suggest_intent_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_PHONE_NUMBER_COLUMNS:[Ljava/lang/String;

    .line 69
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v5

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v6

    const-string v1, "suggest_icon_2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_last_access_hint"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    .line 93
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "normalized_number"

    const-string v2, "normalized_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_id"

    const-string v2, "CASE  WHEN cid IS NULL THEN -1 ELSE cid  END AS contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "country_iso"

    const-string v2, "countryiso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "voicemail_uri"

    const-string v2, "voicemail_uri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "call_count"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "missed_count"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "is_new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "call_type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "call_date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "call_duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "firewall_type"

    const-string v2, "firewalltype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "forwarded_call"

    const-string v2, "forwarded_call"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "key_type"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "match_detail"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "display_string"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "data_id"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 1
    .parameter "contactsProvider"

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 264
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mUpdatingEssentialInfo:Z

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/GlobalSearchSupport;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/providers/contacts/GlobalSearchSupport;->updateServiceProviderVisibility()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/providers/contacts/GlobalSearchSupport;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mUpdatingEssentialInfo:Z

    return p1
.end method

.method private buildCursorForNumberSearch(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "searchClause"
    .parameter "projection"

    .prologue
    .line 390
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 391
    .local v1, r:Landroid/content/res/Resources;
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v2, 0x3

    invoke-direct {v0, p2, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 393
    .local v0, cursor:Landroid/database/MatrixCursor;
    const/4 v2, -0x7

    const v3, 0x7f04000d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3, p2}, Lcom/android/providers/contacts/GlobalSearchSupport;->mapProjectionForNumberSearch(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 395
    const/4 v2, -0x6

    const v3, 0x7f04000f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3, p2}, Lcom/android/providers/contacts/GlobalSearchSupport;->mapProjectionForNumberSearch(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 397
    const/16 v2, -0x9

    const v3, 0x7f04000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3, p2}, Lcom/android/providers/contacts/GlobalSearchSupport;->mapProjectionForNumberSearch(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 399
    return-object v0
.end method

.method private buildCursorForSearchSuggestionsBasedOnFilter(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "db"
    .parameter "projection"
    .parameter "selection"
    .parameter "filter"
    .parameter "limit"

    .prologue
    .line 539
    new-instance v11, Landroid/database/MatrixCursor;

    if-eqz p2, :cond_5

    move-object/from16 v1, p2

    :goto_0
    invoke-direct {v11, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 541
    .local v11, cursor:Landroid/database/MatrixCursor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v12, 0x1

    .line 543
    .local v12, haveFilter:Z
    :goto_1
    const-string v1, "SELECT _id, lookup, photo_thumb_uri, display_name, (SELECT mode FROM agg_presence WHERE presence_contact_id=contacts._id) AS contact_presence, last_time_contacted"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    if-eqz v12, :cond_0

    .line 551
    const-string v1, ", snippet"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :cond_0
    const-string v1, " FROM "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const-string v1, "view_contacts"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    const-string v1, " AS contacts"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    if-eqz v12, :cond_1

    .line 557
    iget-object v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v4, 0x1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u2026"

    const/4 v8, 0x5

    const/4 v9, 0x0

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/providers/contacts/ContactsProvider2;->appendSearchIndexJoin(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 561
    :cond_1
    if-eqz p3, :cond_2

    .line 562
    const-string v1, " WHERE "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    :cond_2
    const-string v1, " ORDER BY (CASE WHEN contacts.starred=1 THEN 0 ELSE 1 END), (CASE WHEN (strftime(\'%s\', \'now\') - contacts.last_time_contacted/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - contacts.last_time_contacted/1000) < 2592000 THEN 1  ELSE 2 END),contacts.times_contacted DESC, contacts.display_name, contacts._id"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    if-eqz p5, :cond_3

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " LIMIT "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 569
    .local v10, c:Landroid/database/Cursor;
    new-instance v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;

    const/4 v1, 0x0

    invoke-direct {v13, v1}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;-><init>(Lcom/android/providers/contacts/GlobalSearchSupport$1;)V

    .line 570
    .local v13, suggestion:Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->filter:Ljava/lang/String;

    .line 572
    :goto_2
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 573
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->contactId:J

    .line 574
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    .line 575
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->photoUri:Ljava/lang/String;

    .line 576
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    .line 577
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, -0x1

    :goto_3
    iput v1, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    .line 578
    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lastAccessTime:Ljava/lang/String;

    .line 579
    if-eqz v12, :cond_4

    .line 580
    const/4 v1, 0x6

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/GlobalSearchSupport;->shortenSnippet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    .line 582
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->asList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 585
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 539
    .end local v2           #sb:Ljava/lang/StringBuilder;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #cursor:Landroid/database/MatrixCursor;
    .end local v12           #haveFilter:Z
    .end local v13           #suggestion:Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    :cond_5
    sget-object v1, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

    goto/16 :goto_0

    .line 542
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    .restart local v11       #cursor:Landroid/database/MatrixCursor;
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 577
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v12       #haveFilter:Z
    .restart local v13       #suggestion:Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    :cond_7
    const/4 v1, 0x4

    :try_start_1
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_3

    .line 585
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 587
    return-object v11
.end method

.method private buildCursorForSearchSuggestionsBasedOnPhoneNumber(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "searchClause"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 501
    iget-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 505
    .local v4, r:Landroid/content/res/Resources;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v2, dialNumber:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    const v6, 0x30c01a0

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 508
    .local v5, s:Ljava/lang/String;
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 509
    .local v3, i:I
    if-gez v3, :cond_0

    .line 510
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    :goto_0
    const v6, 0x302016c

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    const-string v6, "android.provider.Contacts.SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v0, createContact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    const v6, 0x7f04000d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    const v6, 0x302016d

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    const-string v6, "android.provider.Contacts.SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    const-string v6, "_-1"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_PHONE_NUMBER_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x2

    invoke-direct {v1, v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 531
    .local v1, cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 532
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 534
    return-object v1

    .line 513
    .end local v0           #createContact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1           #cursor:Landroid/database/MatrixCursor;
    :cond_0
    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private closeCursorIfNotNull(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 455
    if-eqz p1, :cond_0

    .line 456
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_0
    return-void
.end method

.method private getCallLog(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "db"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "limit"

    .prologue
    .line 444
    const-string v2, " (SELECT _id, number, normalized_number, countryiso, voicemail_uri, new, type, date, duration, firewalltype, forwarded_call, substr(number, -7, 7) AS calls_min_match FROM calls GROUP BY normalized_number ORDER BY date DESC) LEFT OUTER JOIN (SELECT contact_id AS cid, photo_id, display_name AS name, normalized_number AS t9_normalized_number, normalized_data, substr(normalized_data, -7, 7) AS t9_min_match FROM t9_lookup) ON ( calls_min_match = t9_min_match AND (normalized_number = t9_normalized_number OR PHONE_NUMBERS_EQUAL(number, normalized_data, 0)))"

    sget-object v3, Lcom/android/providers/contacts/GlobalSearchSupport;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v7, "normalized_number"

    const-string v8, "date DESC"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/providers/contacts/GlobalSearchSupport;->queryT9(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 447
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v10, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 451
    :cond_0
    return-object v10
.end method

.method private isPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "query"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private mapProjectionForNumberSearch(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5
    .parameter "id"
    .parameter "number"
    .parameter "name"
    .parameter "projection"

    .prologue
    const/4 v4, 0x0

    .line 403
    array-length v2, p4

    new-array v1, v2, [Ljava/lang/Object;

    .line 404
    .local v1, list:[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 406
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_4

    .line 407
    aget-object v2, p4, v0

    const-string v3, "contact_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 406
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_0
    aget-object v2, p4, v0

    const-string v3, "number"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    aput-object p2, v1, v0

    goto :goto_1

    .line 411
    :cond_1
    aget-object v2, p4, v0

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 412
    aput-object p3, v1, v0

    goto :goto_1

    .line 413
    :cond_2
    aget-object v2, p4, v0

    const-string v3, "call_count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 414
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 416
    :cond_3
    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_1

    .line 420
    :cond_4
    return-object v1
.end method

.method private queryT9(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "db"
    .parameter "tables"
    .parameter
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "sortOrder"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 425
    .local p3, projectionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 426
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 428
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 430
    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private queryT9Name(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "db"
    .parameter "projection"
    .parameter "key"
    .parameter "limit"

    .prologue
    .line 438
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/providers/contacts/T9SearchSupport;->queryT9Name(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryT9Number(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "db"
    .parameter "projection"
    .parameter "key"
    .parameter "limit"

    .prologue
    .line 434
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/providers/contacts/T9SearchSupport;->queryT9Number(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private shortenSnippet(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "snippet"

    .prologue
    const/4 v9, 0x0

    const/16 v12, 0xa

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 591
    if-nez p1, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-object v9

    .line 595
    :cond_1
    const/4 v3, 0x0

    .line 596
    .local v3, from:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 597
    .local v8, to:I
    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 598
    .local v7, start:I
    if-eq v7, v10, :cond_0

    .line 602
    invoke-virtual {p1, v12, v7}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 603
    .local v2, firstNl:I
    if-eq v2, v10, :cond_2

    .line 604
    add-int/lit8 v3, v2, 0x1

    .line 606
    :cond_2
    invoke-virtual {p1, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 607
    .local v1, end:I
    if-eq v1, v10, :cond_3

    .line 608
    invoke-virtual {p1, v12, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 609
    .local v5, lastNl:I
    if-eq v5, v10, :cond_3

    .line 610
    move v8, v5

    .line 614
    .end local v5           #lastNl:I
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    .local v6, sb:Ljava/lang/StringBuilder;
    move v4, v3

    .local v4, i:I
    :goto_1
    if-ge v4, v8, :cond_5

    .line 616
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 617
    .local v0, c:C
    if-eq v0, v11, :cond_4

    if-eq v0, v11, :cond_4

    .line 618
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 615
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 621
    .end local v0           #c:C
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method private updateEssentialInfo(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mUpdatingEssentialInfo:Z

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mUpdatingEssentialInfo:Z

    .line 327
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/providers/contacts/GlobalSearchSupport$1;

    invoke-direct {v1, p0}, Lcom/android/providers/contacts/GlobalSearchSupport$1;-><init>(Lcom/android/providers/contacts/GlobalSearchSupport;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 336
    :cond_0
    return-void
.end method

.method private updateServiceProviderVisibility()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 300
    iget-boolean v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mShowingSPInT9Search:Z

    .line 301
    .local v2, showSp:Z
    iget-object v3, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 302
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 303
    const-string v3, "persist.radio.countrycode"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, countryCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_0
    const-string v3, "86"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 308
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mShowingSPInT9Search:Z

    .line 316
    .end local v0           #countryCode:Ljava/lang/String;
    :goto_0
    iget-boolean v3, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mShowingSPInT9Search:Z

    if-eq v2, v3, :cond_1

    .line 317
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mShowingSPInT9Search:Z

    invoke-virtual {v3, v4}, Lcom/android/providers/contacts/T9SearchSupport;->onShowSpChanged(Z)V

    .line 319
    :cond_1
    return-void

    .line 310
    .restart local v0       #countryCode:Ljava/lang/String;
    :cond_2
    iput-boolean v5, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mShowingSPInT9Search:Z

    goto :goto_0

    .line 313
    .end local v0           #countryCode:Ljava/lang/String;
    :cond_3
    iput-boolean v5, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mShowingSPInT9Search:Z

    goto :goto_0
.end method


# virtual methods
.method public handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "db"
    .parameter "projection"
    .parameter "lookupKey"
    .parameter "filter"

    .prologue
    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 482
    .local v6, contactId:J
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contacts._id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForSearchSuggestionsBasedOnFilter(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 479
    .end local v6           #contactId:J
    :catch_0
    move-exception v8

    .line 480
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-wide/16 v6, -0x1

    .restart local v6       #contactId:J
    goto :goto_0
.end method

.method public handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "db"
    .parameter "uri"
    .parameter "projection"
    .parameter "limit"

    .prologue
    .line 279
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 280
    const/4 v4, 0x0

    .line 281
    .local v4, searchClause:Ljava/lang/String;
    const-string v3, "(strftime(\'%s\', \'now\') - contacts.last_time_contacted/1000) < 2592000"

    .line 287
    .local v3, selection:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v4}, Lcom/android/providers/contacts/GlobalSearchSupport;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    invoke-direct {p0, v4}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForSearchSuggestionsBasedOnPhoneNumber(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 290
    :goto_1
    return-object v0

    .line 283
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #searchClause:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 284
    .restart local v4       #searchClause:Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3       #selection:Ljava/lang/String;
    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p4

    .line 290
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForSearchSuggestionsBasedOnFilter(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1
.end method

.method public handleT9SearchQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "db"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "limit"

    .prologue
    .line 341
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 342
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/GlobalSearchSupport;->updateEssentialInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 343
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/contacts/GlobalSearchSupport;->getCallLog(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 386
    :cond_0
    :goto_0
    return-object v7

    .line 346
    :cond_1
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/contacts/T9SearchSupport;->load()V

    .line 347
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 348
    .local v10, searchClause:Ljava/lang/String;
    const/4 v7, 0x0

    .line 349
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    aget-char v1, v1, v2

    const/16 v2, 0x23

    if-ne v1, v2, :cond_2

    .line 350
    new-instance v8, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    invoke-direct {v8, p3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 351
    .local v8, matrixCursor:Landroid/database/MatrixCursor;
    const/4 v1, -0x8

    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v10, v2, p3}, Lcom/android/providers/contacts/GlobalSearchSupport;->mapProjectionForNumberSearch(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 355
    move-object v7, v8

    .line 356
    goto :goto_0

    .end local v8           #matrixCursor:Landroid/database/MatrixCursor;
    :cond_2
    if-eqz v10, :cond_4

    const-string v1, "#"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 358
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 359
    .local v11, searchForNumber:Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-direct {p0, p1, p3, v11, v0}, Lcom/android/providers/contacts/GlobalSearchSupport;->queryT9Number(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 362
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 364
    invoke-direct {p0, v7}, Lcom/android/providers/contacts/GlobalSearchSupport;->closeCursorIfNotNull(Landroid/database/Cursor;)V

    .line 365
    invoke-direct {p0, v11, p3}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForNumberSearch(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0

    .line 368
    .end local v11           #searchForNumber:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p6

    invoke-direct {p0, p1, p3, v10, v0}, Lcom/android/providers/contacts/GlobalSearchSupport;->queryT9Name(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 370
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_7

    .line 371
    :cond_5
    invoke-direct {p0, v7}, Lcom/android/providers/contacts/GlobalSearchSupport;->closeCursorIfNotNull(Landroid/database/Cursor;)V

    .line 372
    move-object/from16 v0, p6

    invoke-direct {p0, p1, p3, v10, v0}, Lcom/android/providers/contacts/GlobalSearchSupport;->queryT9Number(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 375
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    :cond_6
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 377
    invoke-direct {p0, v7}, Lcom/android/providers/contacts/GlobalSearchSupport;->closeCursorIfNotNull(Landroid/database/Cursor;)V

    .line 378
    invoke-direct {p0, v10, p3}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForNumberSearch(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto/16 :goto_0

    .line 380
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 382
    move-object/from16 v0, p6

    invoke-direct {p0, p1, p3, v10, v0}, Lcom/android/providers/contacts/GlobalSearchSupport;->queryT9Number(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 383
    .local v9, numberCusor:Landroid/database/Cursor;
    invoke-static {v7, v9}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->merge(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v7

    goto/16 :goto_0
.end method
