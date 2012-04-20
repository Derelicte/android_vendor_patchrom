.class public Lcom/android/providers/contacts/LegacyApiSupport;
.super Ljava/lang/Object;
.source "LegacyApiSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/LegacyApiSupport$SettingsMatchQuery;,
        Lcom/android/providers/contacts/LegacyApiSupport$LegacyPhotoData;,
        Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;,
        Lcom/android/providers/contacts/LegacyApiSupport$LegacyTables;
    }
.end annotation


# static fields
.field private static CONTACT_METHOD_DATA_SQL:Ljava/lang/String;

.field private static final CONTACT_METHOD_MIME_TYPES:[Ljava/lang/String;

.field private static final EXTENSION_MIME_TYPES:[Ljava/lang/String;

.field private static final GROUP_MEMBERSHIP_MIME_TYPES:[Ljava/lang/String;

.field private static final LIVE_FOLDERS_CONTACTS_FAVORITES_URI:Landroid/net/Uri;

.field private static final LIVE_FOLDERS_CONTACTS_URI:Landroid/net/Uri;

.field private static final LIVE_FOLDERS_CONTACTS_WITH_PHONES_URI:Landroid/net/Uri;

.field private static final ORGANIZATION_MIME_TYPES:[Ljava/lang/String;

.field private static final PHONE_MIME_TYPES:[Ljava/lang/String;

.field private static final PHOTO_MIME_TYPES:[Ljava/lang/String;

.field private static final sContactMethodProjectionMap:Ljava/util/HashMap;
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

.field private static final sExtensionProjectionMap:Ljava/util/HashMap;
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

.field private static final sGroupMembershipProjectionMap:Ljava/util/HashMap;
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

.field private static final sGroupProjectionMap:Ljava/util/HashMap;
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

.field private static final sOrganizationProjectionMap:Ljava/util/HashMap;
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

.field private static final sPeopleProjectionMap:Ljava/util/HashMap;
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

.field private static final sPhoneProjectionMap:Ljava/util/HashMap;
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

.field private static final sPhotoProjectionMap:Ljava/util/HashMap;
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

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private final mContext:Landroid/content/Context;

.field private final mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

.field private final mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

.field private final mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDefaultAccountKnown:Z

.field private final mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

.field private mMimetypeEmail:J

.field private mMimetypeIm:J

.field private mMimetypePostal:J

.field private final mPhoneticNameSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mSelectionArgs2:[Ljava/lang/String;

.field private final mValues:Landroid/content/ContentValues;

.field private final mValues2:Landroid/content/ContentValues;

.field private final mValues3:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 75
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    .line 176
    const-string v0, "(CASE WHEN mimetype=\'vnd.android.cursor.item/im\' THEN (CASE WHEN data.data5=-1 THEN \'custom:\'||data.data6 ELSE \'pre:\'||data.data5 END) ELSE data.data1 END)"

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_DATA_SQL:Ljava/lang/String;

    .line 185
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "live_folders/contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_URI:Landroid/net/Uri;

    .line 188
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "live_folders/contacts_with_phones"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_WITH_PHONES_URI:Landroid/net/Uri;

    .line 191
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "live_folders/favorites"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_FAVORITES_URI:Landroid/net/Uri;

    .line 219
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/organization"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->ORGANIZATION_MIME_TYPES:[Ljava/lang/String;

    .line 223
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v0, v2

    const-string v1, "vnd.android.cursor.item/im"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_MIME_TYPES:[Ljava/lang/String;

    .line 229
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->PHONE_MIME_TYPES:[Ljava/lang/String;

    .line 233
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/photo"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->PHOTO_MIME_TYPES:[Ljava/lang/String;

    .line 237
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/group_membership"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->GROUP_MEMBERSHIP_MIME_TYPES:[Ljava/lang/String;

    .line 241
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/contact_extensions"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->EXTENSION_MIME_TYPES:[Ljava/lang/String;

    .line 284
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    .line 286
    const-string v1, "contacts"

    .line 287
    const-string v2, "extensions"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    const-string v2, "extensions/#"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 289
    const-string v2, "groups"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    const-string v2, "groups/#"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 291
    const-string v2, "groups/name/*/members"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 294
    const-string v2, "groups/system_id/*/members"

    const/16 v3, 0x29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 297
    const-string v2, "groupmembership"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 298
    const-string v2, "groupmembership/#"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 300
    const-string v2, "people"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 303
    const-string v2, "people/filter/*"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 308
    const-string v2, "people/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 309
    const-string v2, "people/#/extensions"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 310
    const-string v2, "people/#/extensions/#"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 311
    const-string v2, "people/#/phones"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    const-string v2, "people/#/phones/#"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 315
    const-string v2, "people/#/photo"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 317
    const-string v2, "people/#/contact_methods"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 320
    const-string v2, "people/#/contact_methods/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 321
    const-string v2, "people/#/organizations"

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 322
    const-string v2, "people/#/organizations/#"

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 323
    const-string v2, "people/#/groupmembership"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 324
    const-string v2, "people/#/groupmembership/#"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 327
    const-string v2, "people/#/update_contact_time"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 329
    const-string v2, "deleted_people"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 330
    const-string v2, "deleted_groups"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 331
    const-string v2, "phones"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 333
    const-string v2, "phones/filter/*"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 337
    const-string v2, "phones/#"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 338
    const-string v2, "photos"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    const-string v2, "photos/#"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 340
    const-string v2, "contact_methods"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 341
    const-string v2, "contact_methods/email"

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 343
    const-string v2, "contact_methods/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 346
    const-string v2, "organizations"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 347
    const-string v2, "organizations/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 349
    const-string v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 351
    const-string v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 353
    const-string v2, "search_suggest_shortcut/*"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 355
    const-string v2, "settings"

    const/16 v3, 0x2c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 357
    const-string v2, "live_folders/people"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 358
    const-string v2, "live_folders/people/*"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 360
    const-string v2, "live_folders/people_with_phones"

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 362
    const-string v2, "live_folders/favorites"

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 367
    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v1, "display_name"

    const-string v2, "display_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v1, "phonetic_name"

    const-string v2, "phonetic_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v1, "notes"

    const-string v2, "notes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v1, "times_contacted"

    const-string v2, "times_contacted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v1, "last_time_contacted"

    const-string v2, "last_time_contacted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v1, "custom_ringtone"

    const-string v2, "custom_ringtone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v1, "send_to_voicemail"

    const-string v2, "send_to_voicemail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v1, "starred"

    const-string v2, "starred"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v1, "primary_organization"

    const-string v2, "primary_organization"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v1, "primary_email"

    const-string v2, "primary_email"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v1, "primary_phone"

    const-string v2, "primary_phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    .line 381
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "_id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "number"

    const-string v3, "number"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "type"

    const-string v3, "type"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "label"

    const-string v3, "label"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "number_key"

    const-string v3, "number_key"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "im_protocol"

    const-string v3, "(CASE WHEN protocol=-1 THEN \'custom:\'||custom_protocol ELSE \'pre:\'||protocol END) AS im_protocol"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "im_handle"

    const-string v3, "im_handle"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "im_account"

    const-string v3, "im_account"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "mode"

    const-string v3, "mode"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    const-string v2, "status"

    const-string v3, "(SELECT status FROM status_updates JOIN data   ON(status_update_data_id=data._id) WHERE data.raw_contact_id=people._id ORDER BY status_ts DESC  LIMIT 1) AS status"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    .line 401
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "_id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v2, "person"

    const-string v3, "person"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v2, "isprimary"

    const-string v3, "isprimary"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v2, "company"

    const-string v3, "company"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v2, "type"

    const-string v3, "type"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v2, "label"

    const-string v3, "label"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    const-string v2, "title"

    const-string v3, "title"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    .line 417
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "_id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v2, "person"

    const-string v3, "person"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v2, "kind"

    const-string v3, "kind"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v2, "isprimary"

    const-string v3, "isprimary"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v2, "type"

    const-string v3, "type"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v2, "data"

    const-string v3, "data"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v2, "label"

    const-string v3, "label"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    const-string v2, "aux_data"

    const-string v3, "aux_data"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    .line 427
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v1, "person"

    const-string v2, "person"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v1, "isprimary"

    const-string v2, "isprimary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v1, "label"

    const-string v2, "label"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    const-string v1, "number_key"

    const-string v2, "number_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    .line 443
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    const-string v1, "person"

    const-string v2, "person"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    .line 453
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    const-string v1, "notes"

    const-string v2, "notes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    const-string v1, "system_id"

    const-string v2, "system_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    .line 463
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v1, "person"

    const-string v2, "person"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v1, "group_id"

    const-string v2, "group_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v1, "group_sync_id"

    const-string v2, "group_sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v1, "group_sync_account"

    const-string v2, "group_sync_account"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    const-string v1, "group_sync_account_type"

    const-string v2, "group_sync_account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    .line 480
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "person"

    const-string v2, "person"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "data"

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "local_version"

    const-string v2, "local_version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "download_required"

    const-string v2, "download_required"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "exists_on_server"

    const-string v2, "exists_on_server"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    const-string v1, "sync_error"

    const-string v2, "sync_error"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/GlobalSearchSupport;)V
    .locals 7
    .parameter "context"
    .parameter "contactsDatabaseHelper"
    .parameter "contactsProvider"
    .parameter "globalSearchSupport"

    .prologue
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    .line 204
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    .line 505
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    .line 506
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    .line 507
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    .line 518
    iput-object p1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    .line 519
    iput-object p3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 520
    iput-object p2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 521
    iput-object p4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    .line 523
    new-instance v0, Lcom/android/providers/contacts/NameSplitter;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const v4, 0x30c019f

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/NameSplitter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mPhoneticNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 527
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 528
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v0, "SELECT mimetype_id FROM data WHERE _id=?"

    invoke-virtual {v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 533
    const-string v0, "SELECT raw_contact_id FROM data WHERE _id=?"

    invoke-virtual {v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 538
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeEmail:J

    .line 539
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeIm:J

    .line 540
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypePostal:J

    .line 541
    return-void
.end method

.method private appendGroupAccount(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 1952
    const-string v0, "account_name="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1954
    const-string v0, " AND account_type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1960
    :goto_0
    return-void

    .line 1957
    :cond_0
    const-string v0, "account_name IS NULL AND account_type IS NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendRawContactsAccount(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 1934
    const-string v0, "account_name="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1936
    const-string v0, " AND account_type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1942
    :goto_0
    return-void

    .line 1939
    :cond_0
    const-string v0, "account_name IS NULL AND account_type IS NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private applyGroupAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .locals 2
    .parameter "qb"

    .prologue
    .line 1945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1946
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->appendGroupAccount(Ljava/lang/StringBuilder;)V

    .line 1947
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1948
    return-void
.end method

.method private applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .locals 2
    .parameter "qb"

    .prologue
    .line 1927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1928
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->appendRawContactsAccount(Ljava/lang/StringBuilder;)V

    .line 1929
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1930
    return-void
.end method

.method private buildGroupNameMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "people._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=(SELECT groups._id FROM groups WHERE title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildGroupSystemIdMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "people._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=(SELECT groups._id FROM groups WHERE system_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "type"

    invoke-static {v0, p3, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1475
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "label"

    invoke-static {v0, p4, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1477
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "aux_data"

    invoke-static {v0, p5, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1479
    return-void
.end method

.method public static createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 551
    const-string v0, "ContactsProviderV1"

    const-string v1, "Bootstrapping database legacy support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-static {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->createViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 553
    invoke-static {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->createSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 554
    return-void
.end method

.method public static createSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 766
    const-string v0, "DROP TABLE IF EXISTS v1_settings;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 767
    const-string v0, "CREATE TABLE v1_settings (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,key STRING NOT NULL,value STRING );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method public static createViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 558
    const-string v0, "name.data1 AS name, raw_contacts.display_name AS display_name, trim(trim(ifnull(name.data7,\' \')||\' \'||ifnull(name.data8,\' \'))||\' \'||ifnull(name.data9,\' \'))  AS phonetic_name , note.data1 AS notes, account_name, account_type, raw_contacts.times_contacted AS times_contacted, raw_contacts.last_time_contacted AS last_time_contacted, raw_contacts.custom_ringtone AS custom_ringtone, raw_contacts.send_to_voicemail AS send_to_voicemail, raw_contacts.starred AS starred, organization._id AS primary_organization, email._id AS primary_email, phone._id AS primary_phone, phone.data1 AS number, phone.data2 AS type, phone.data3 AS label, _PHONE_NUMBER_STRIPPED_REVERSED(phone.data1) AS number_key"

    .line 593
    .local v0, peopleColumns:Ljava/lang/String;
    const-string v1, "DROP VIEW IF EXISTS view_v1_people;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_v1_people AS SELECT raw_contacts._id AS _id, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raw_contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raw_contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 601
    const-string v1, "DROP VIEW IF EXISTS view_v1_organizations;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 602
    const-string v1, "CREATE VIEW view_v1_organizations AS SELECT data._id AS _id, raw_contact_id AS person, is_primary AS isprimary, account_name, account_type, data1 AS company, data2 AS type, data3 AS label, data4 AS title FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/organization\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 625
    const-string v1, "DROP VIEW IF EXISTS view_v1_contact_methods;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_v1_contact_methods AS SELECT data._id AS _id, data.raw_contact_id AS person, CAST ((CASE WHEN mimetype=\'vnd.android.cursor.item/email_v2\' THEN 1 ELSE (CASE WHEN mimetype=\'vnd.android.cursor.item/im\' THEN 3 ELSE (CASE WHEN mimetype=\'vnd.android.cursor.item/postal-address_v2\' THEN 2 ELSE NULL END) END) END) AS INTEGER) AS kind, data.is_primary AS isprimary, data.data2 AS type, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_DATA_SQL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data.data14"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aux_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " JOIN mimetypes ON (mimetypes._id = data.mimetype_id) JOIN raw_contacts ON (raw_contacts._id = data.raw_contact_id) LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IS NOT NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raw_contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 650
    const-string v1, "DROP VIEW IF EXISTS view_v1_phones;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_v1_phones AS SELECT DISTINCT data._id AS _id, data.raw_contact_id AS person, data.is_primary AS isprimary, data.data1 AS number, data.data2 AS type, data.data3 AS label, _PHONE_NUMBER_STRIPPED_REVERSED(data.data1) AS number_key, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " JOIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "phone_lookup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ON ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "._id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "phone_lookup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " JOIN mimetypes ON (mimetypes._id = data.mimetype_id) JOIN raw_contacts ON (raw_contacts._id = data.raw_contact_id) LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mimetypes.mimetype"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raw_contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 677
    const-string v1, "DROP VIEW IF EXISTS view_v1_extensions;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 678
    const-string v1, "CREATE VIEW view_v1_extensions AS SELECT data._id AS _id, data.raw_contact_id AS person, account_name, account_type, data1 AS name, data2 AS value FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/contact_extensions\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 695
    const-string v1, "DROP VIEW IF EXISTS view_v1_groups;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 696
    const-string v1, "CREATE VIEW view_v1_groups AS SELECT groups._id AS _id, account_name, account_type, title AS name, notes AS notes , system_id AS system_id FROM groups;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 706
    const-string v1, "DROP VIEW IF EXISTS view_v1_group_membership;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 707
    const-string v1, "CREATE VIEW view_v1_group_membership AS SELECT data._id AS _id, data.raw_contact_id AS person, raw_contacts.account_name AS account_name, raw_contacts.account_type AS account_type, data1 AS group_id, title AS name, notes AS notes, system_id AS system_id, groups.sourceid AS group_sync_id, groups.account_name AS group_sync_account, groups.account_type AS group_sync_account_type FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN packages ON (data.package_id = packages._id) LEFT OUTER JOIN groups   ON (mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\'       AND groups._id = data.data1)  WHERE mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 739
    const-string v1, "DROP VIEW IF EXISTS view_v1_photos;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 740
    const-string v1, "CREATE VIEW view_v1_photos AS SELECT data._id AS _id, data.raw_contact_id AS person, account_name, account_type, data.data15 AS data, legacy_photo.data4 AS exists_on_server, legacy_photo.data3 AS download_required, legacy_photo.data2 AS local_version, legacy_photo.data5 AS sync_error FROM data JOIN mimetypes ON (mimetypes._id = data.mimetype_id) JOIN raw_contacts ON (raw_contacts._id = data.raw_contact_id) LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary) LEFT OUTER JOIN data legacy_photo ON (raw_contacts._id = legacy_photo.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = legacy_photo.mimetype_id)=\'vnd.android.cursor.item/photo_v1_extras\' AND data._id = legacy_photo.data1) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/photo\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 763
    return-void
.end method

.method private ensureDefaultAccount()V
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDefaultAccountKnown:Z

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDefaultAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDefaultAccountKnown:Z

    .line 548
    :cond_0
    return-void
.end method

.method private findFirstDataId(JLjava/lang/String;)J
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1509
    const-wide/16 v6, -0x1

    .line 1510
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1515
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1516
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1519
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1521
    return-wide v0

    .line 1519
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    move-wide v0, v6

    goto :goto_0
.end method

.method private findFirstDataRow(JLjava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "rawContactId"
    .parameter "contentItemType"

    .prologue
    .line 1500
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataId(JLjava/lang/String;)J

    move-result-wide v0

    .line 1501
    .local v0, dataId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1502
    const/4 v2, 0x0

    .line 1505
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private getContactMethodType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2088
    .line 2090
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "kind"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/LegacyApiSupport;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2091
    if-eqz v1, :cond_1

    .line 2093
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2094
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2095
    packed-switch v0, :pswitch_data_0

    .line 2110
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2113
    :cond_1
    return-object v3

    .line 2097
    :pswitch_0
    :try_start_1
    const-string v3, "vnd.android.cursor.item/email"

    goto :goto_0

    .line 2101
    :pswitch_1
    const-string v3, "vnd.android.cursor.item/jabber-im"

    goto :goto_0

    .line 2105
    :pswitch_2
    const-string v3, "vnd.android.cursor.item/postal-address"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2110
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2095
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getRawContactsByFilterAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 2003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2004
    invoke-static {p1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2005
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2007
    const-string v1, "(0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2009
    :cond_0
    const-string v2, "(SELECT raw_contact_id FROM name_lookup WHERE normalized_name GLOB \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    const-string v1, "*\' AND name_type IN (2,3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    const-string v1, ",4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 3
    .parameter "values"
    .parameter "column"

    .prologue
    .line 848
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 852
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private insertContactMethod(JLandroid/content/ContentValues;)J
    .locals 5
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 893
    const-string v2, "kind"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 894
    .local v0, kind:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 895
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Required value: kind"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 898
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseContactMethodValues(ILandroid/content/ContentValues;)V

    .line 900
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 901
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 902
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    return-wide v2
.end method

.method private insertExtension(JLandroid/content/ContentValues;)J
    .locals 4
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 906
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 908
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 909
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/contact_extensions"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseExtensionValues(Landroid/content/ContentValues;)V

    .line 913
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 914
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private insertGroup(Landroid/content/ContentValues;)J
    .locals 4
    .parameter "values"

    .prologue
    .line 918
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->parseGroupValues(Landroid/content/ContentValues;)V

    .line 920
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    .line 921
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "account_name"

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "account_type"

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 926
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private insertGroupMembership(JJ)J
    .locals 4
    .parameter "rawContactId"
    .parameter "groupId"

    .prologue
    .line 930
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 932
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 934
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data1"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 936
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 937
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private insertOrganization(Landroid/content/ContentValues;)J
    .locals 4
    .parameter "values"

    .prologue
    .line 874
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->parseOrganizationValues(Landroid/content/ContentValues;)V

    .line 875
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    const-string v3, "person"

    invoke-static {v1, v2, p1, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 878
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 880
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private insertPeople(Landroid/content/ContentValues;)J
    .locals 6
    .parameter "values"

    .prologue
    .line 856
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePeopleValues(Landroid/content/ContentValues;)V

    .line 858
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 859
    .local v0, contactUri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 861
    .local v1, rawContactId:J
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 862
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v4, "raw_contact_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 863
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 865
    :cond_0
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 866
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string v4, "raw_contact_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 867
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 870
    :cond_1
    return-wide v1
.end method

.method private insertPhone(JLandroid/content/ContentValues;)J
    .locals 4
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 884
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePhoneValues(Landroid/content/ContentValues;)V

    .line 885
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 887
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 889
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    return-wide v1
.end method

.method private onChange(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2035
    return-void
.end method

.method private parseContactMethodValues(ILandroid/content/ContentValues;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1435
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "is_primary"

    const-string v2, "isprimary"

    invoke-static {v0, v1, p2, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1438
    packed-switch p1, :pswitch_data_0

    .line 1468
    :goto_0
    return-void

    .line 1440
    :pswitch_0
    const-string v2, "vnd.android.cursor.item/email_v2"

    const-string v3, "data2"

    const-string v4, "data3"

    const-string v5, "data14"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "data"

    invoke-static {v0, v1, p2, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 1448
    :pswitch_1
    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1449
    const-string v1, "pre:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1450
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data5"

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1456
    :cond_0
    :goto_1
    const-string v2, "vnd.android.cursor.item/im"

    const-string v3, "data2"

    const-string v4, "data3"

    const-string v5, "data14"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1451
    :cond_1
    const-string v1, "custom:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1452
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data5"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1453
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data6"

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1461
    :pswitch_2
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    const-string v3, "data2"

    const-string v4, "data3"

    const-string v5, "data14"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "data"

    invoke-static {v0, v1, p2, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 1438
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseExtensionValues(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "name"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1495
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const-string v2, "value"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1497
    return-void
.end method

.method private parseGroupValues(Landroid/content/ContentValues;)V
    .locals 3
    .parameter

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1484
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "title"

    const-string v2, "name"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "notes"

    const-string v2, "notes"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1488
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "system_id"

    const-string v2, "system_id"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1490
    return-void
.end method

.method private parseOrganizationValues(Landroid/content/ContentValues;)V
    .locals 3
    .parameter

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1395
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "is_primary"

    const-string v2, "isprimary"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "company"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1404
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const-string v2, "type"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data3"

    const-string v2, "label"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1409
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data4"

    const-string v2, "title"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1411
    return-void
.end method

.method private parsePeopleValues(Landroid/content/ContentValues;)V
    .locals 5
    .parameter "values"

    .prologue
    .line 1353
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1354
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1355
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1357
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "custom_ringtone"

    const-string v4, "custom_ringtone"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1359
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "send_to_voicemail"

    const-string v4, "send_to_voicemail"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1361
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "last_time_contacted"

    const-string v4, "last_time_contacted"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1363
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "times_contacted"

    const-string v4, "times_contacted"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1365
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "starred"

    const-string v4, "starred"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1367
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_0

    .line 1368
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "account_name"

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "account_type"

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    :cond_0
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "phonetic_name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1373
    :cond_1
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "data1"

    const-string v4, "name"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1376
    const-string v2, "phonetic_name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1377
    const-string v2, "phonetic_name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1378
    .local v1, phoneticName:Ljava/lang/String;
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v0}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 1379
    .local v0, parsedName:Lcom/android/providers/contacts/NameSplitter$Name;
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mPhoneticNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    .line 1380
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "data7"

    invoke-virtual {v0}, Lcom/android/providers/contacts/NameSplitter$Name;->getGivenNames()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "data8"

    invoke-virtual {v0}, Lcom/android/providers/contacts/NameSplitter$Name;->getMiddleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "data9"

    invoke-virtual {v0}, Lcom/android/providers/contacts/NameSplitter$Name;->getFamilyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    .end local v0           #parsedName:Lcom/android/providers/contacts/NameSplitter$Name;
    .end local v1           #phoneticName:Ljava/lang/String;
    :cond_2
    const-string v2, "notes"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1387
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/note"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string v3, "data1"

    const-string v4, "notes"

    invoke-static {v2, v3, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1390
    :cond_3
    return-void
.end method

.method private parsePhoneValues(Landroid/content/ContentValues;)V
    .locals 3
    .parameter

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1416
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "is_primary"

    const-string v2, "isprimary"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "number"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1425
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const-string v2, "type"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1428
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data3"

    const-string v2, "label"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1430
    return-void
.end method

.method private updateAll(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter "uri"
    .parameter "match"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 980
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/LegacyApiSupport;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 981
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 982
    const/4 v8, 0x0

    .line 995
    :goto_0
    return v8

    .line 985
    :cond_0
    const/4 v8, 0x0

    .line 987
    .local v8, count:I
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 988
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 989
    .local v9, id:J
    invoke-virtual {p0, p2, v9, v10, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->update(IJLandroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v8, v0

    .line 990
    goto :goto_1

    .line 992
    .end local v9           #id:J
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private updateContactMethods(JLandroid/content/ContentValues;)I
    .locals 9
    .parameter "dataId"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 1101
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1104
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1110
    .local v2, mimetype_id:J
    iget-wide v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeEmail:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_1

    .line 1111
    const/4 v1, 0x1

    .line 1122
    .local v1, kind:I
    :goto_0
    invoke-direct {p0, v1, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseContactMethodValues(ILandroid/content/ContentValues;)V

    .line 1124
    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .end local v1           #kind:I
    .end local v2           #mimetype_id:J
    :cond_0
    :goto_1
    return v4

    .line 1105
    :catch_0
    move-exception v0

    .line 1107
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    goto :goto_1

    .line 1112
    .end local v0           #e:Landroid/database/sqlite/SQLiteDoneException;
    .restart local v2       #mimetype_id:J
    :cond_1
    iget-wide v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeIm:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_2

    .line 1113
    const/4 v1, 0x3

    .restart local v1       #kind:I
    goto :goto_0

    .line 1114
    .end local v1           #kind:I
    :cond_2
    iget-wide v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypePostal:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_0

    .line 1115
    const/4 v1, 0x2

    .restart local v1       #kind:I
    goto :goto_0
.end method

.method private updateContactTime(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 4
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    .line 1143
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1144
    .local v0, rawContactId:J
    invoke-direct {p0, v0, v1, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->updateContactTime(JLandroid/content/ContentValues;)V

    .line 1145
    return v3
.end method

.method private updateContactTime(JLandroid/content/ContentValues;)V
    .locals 9
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1150
    const-string v5, "last_time_contacted"

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1151
    const-string v5, "last_time_contacted"

    invoke-virtual {p3, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1157
    .local v2, lastTimeContacted:J
    :goto_0
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1158
    .local v0, contactId:J
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1159
    .local v4, mDb:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1160
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    .line 1161
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 1162
    const-string v5, "UPDATE contacts SET last_time_contacted=? WHERE _id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1164
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1165
    const-string v5, "UPDATE contacts SET times_contacted= CASE WHEN times_contacted IS NULL THEN 1 ELSE  (times_contacted + 1) END WHERE _id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1167
    :cond_0
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 1168
    const-string v5, "UPDATE raw_contacts SET last_time_contacted=? WHERE _id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1170
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1171
    const-string v5, "UPDATE raw_contacts SET times_contacted= CASE WHEN times_contacted IS NULL THEN 1 ELSE  (times_contacted + 1) END WHERE contact_id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1172
    return-void

    .line 1153
    .end local v0           #contactId:J
    .end local v2           #lastTimeContacted:J
    .end local v4           #mDb:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .restart local v2       #lastTimeContacted:J
    goto :goto_0
.end method

.method private updateExtensions(JLandroid/content/ContentValues;)I
    .locals 5
    .parameter "dataId"
    .parameter "values"

    .prologue
    .line 1129
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseExtensionValues(Landroid/content/ContentValues;)V

    .line 1131
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updateGroups(JLandroid/content/ContentValues;)I
    .locals 5
    .parameter "groupId"
    .parameter "values"

    .prologue
    .line 1136
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseGroupValues(Landroid/content/ContentValues;)V

    .line 1138
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updateLegacyPhotoData(JJLandroid/content/ContentValues;)V
    .locals 6
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "values"

    .prologue
    .line 1228
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1229
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data2"

    const-string v3, "local_version"

    invoke-static {v1, v2, p5, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1231
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data3"

    const-string v3, "download_required"

    invoke-static {v1, v2, p5, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1233
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data4"

    const-string v3, "exists_on_server"

    invoke-static {v1, v2, p5, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1235
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data5"

    const-string v3, "sync_error"

    invoke-static {v1, v2, p5, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1238
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype=\'vnd.android.cursor.item/photo_v1_extras\' AND raw_contact_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1242
    .local v0, updated:I
    if-nez v0, :cond_0

    .line 1243
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1244
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo_v1_extras"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v2, "data1"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1246
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1248
    :cond_0
    return-void
.end method

.method private updateOrganizations(JLandroid/content/ContentValues;)I
    .locals 5
    .parameter "dataId"
    .parameter "values"

    .prologue
    .line 1085
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseOrganizationValues(Landroid/content/ContentValues;)V

    .line 1087
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updatePeople(JLandroid/content/ContentValues;)I
    .locals 8
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    const/4 v7, 0x0

    .line 1047
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePeopleValues(Landroid/content/ContentValues;)V

    .line 1049
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1052
    .local v0, count:I
    if-nez v0, :cond_1

    .line 1053
    const/4 v0, 0x0

    .line 1081
    .end local v0           #count:I
    :cond_0
    :goto_0
    return v0

    .line 1056
    .restart local v0       #count:I
    :cond_1
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1057
    const-string v2, "vnd.android.cursor.item/name"

    invoke-direct {p0, p1, p2, v2}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataRow(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1058
    .local v1, dataUri:Landroid/net/Uri;
    if-eqz v1, :cond_4

    .line 1059
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, v3, v7, v7}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1066
    .end local v1           #dataUri:Landroid/net/Uri;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1067
    const-string v2, "vnd.android.cursor.item/note"

    invoke-direct {p0, p1, p2, v2}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataRow(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1068
    .restart local v1       #dataUri:Landroid/net/Uri;
    if-eqz v1, :cond_5

    .line 1069
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, v3, v7, v7}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1076
    .end local v1           #dataUri:Landroid/net/Uri;
    :cond_3
    :goto_2
    const-string v2, "last_time_contacted"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "times_contacted"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1078
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->updateContactTime(JLandroid/content/ContentValues;)V

    goto :goto_0

    .line 1061
    .restart local v1       #dataUri:Landroid/net/Uri;
    :cond_4
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string v3, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1062
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    .line 1071
    :cond_5
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string v3, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1072
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2
.end method

.method private updatePhones(JLandroid/content/ContentValues;)I
    .locals 5
    .parameter "dataId"
    .parameter "values"

    .prologue
    .line 1092
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePhoneValues(Landroid/content/ContentValues;)V

    .line 1094
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updatePhoto(JLandroid/content/ContentValues;)I
    .locals 9
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 1180
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataId(JLjava/lang/String;)J

    move-result-wide v3

    .line 1182
    .local v3, dataId:J
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1183
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 1184
    .local v6, bytes:[B
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data15"

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1186
    const-wide/16 v0, -0x1

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1189
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 1190
    .local v8, dataUri:Landroid/net/Uri;
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 1191
    const/4 v7, 0x1

    .local v7, count:I
    :goto_0
    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    .line 1197
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->updateLegacyPhotoData(JJLandroid/content/ContentValues;)V

    .line 1199
    return v7

    .line 1193
    .end local v7           #count:I
    .end local v8           #dataUri:Landroid/net/Uri;
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1194
    .restart local v8       #dataUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v8, v1, v2, v2}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .restart local v7       #count:I
    goto :goto_0
.end method

.method private updatePhotoByDataId(JLandroid/content/ContentValues;)I
    .locals 10
    .parameter "dataId"
    .parameter "values"

    .prologue
    const/4 v8, 0x1

    .line 1204
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v8, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1208
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1214
    .local v1, rawContactId:J
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1215
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 1216
    .local v6, bytes:[B
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1217
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v3, "data15"

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1218
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v4, v5, v9}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v6           #bytes:[B
    :cond_0
    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    .line 1222
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->updateLegacyPhotoData(JJLandroid/content/ContentValues;)V

    move v0, v8

    .line 1224
    .end local v1           #rawContactId:J
    :goto_0
    return v0

    .line 1209
    :catch_0
    move-exception v7

    .line 1211
    .local v7, e:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 8
    .parameter "db"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "values"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1291
    const-string v3, "key"

    invoke-virtual {p4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1292
    .local v0, key:Ljava/lang/String;
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1293
    :cond_0
    const-string v3, "v1_settings"

    const-string v4, "_sync_account IS NULL AND key=?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1298
    :goto_0
    const-string v3, "v1_settings"

    const-string v4, "key"

    invoke-virtual {p1, v3, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1300
    .local v1, rowId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    .line 1301
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error updating settings with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1295
    .end local v1           #rowId:J
    :cond_1
    const-string v3, "v1_settings"

    const-string v4, "_sync_account=? AND _sync_account_type=? AND key=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v6

    aput-object p3, v5, v7

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1303
    .restart local v1       #rowId:J
    :cond_2
    return-void
.end method

.method private updateSettings(Landroid/content/ContentValues;)I
    .locals 11
    .parameter "values"

    .prologue
    const/4 v10, 0x1

    .line 1251
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1252
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "_sync_account"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1253
    .local v0, accountName:Ljava/lang/String;
    const-string v7, "_sync_account_type"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1255
    .local v1, accountType:Ljava/lang/String;
    const-string v7, "key"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1256
    .local v4, key:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 1257
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "you must specify the key when updating settings"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1259
    :cond_0
    invoke-direct {p0, v3, v0, v1, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->updateSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1260
    const-string v7, "syncEverything"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1261
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 1262
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v8, "should_sync"

    const-string v9, "value"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1266
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1268
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    aput-object v1, v6, v10

    .line 1269
    .local v6, selectionArgs:[Ljava/lang/String;
    const-string v5, "account_name=? AND account_type=? AND data_set IS NULL"

    .line 1278
    .local v5, selection:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v8, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v8, v9, v5, v6}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1280
    .local v2, count:I
    if-nez v2, :cond_1

    .line 1281
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v8, "account_name"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v8, "account_type"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v8, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v8, v9}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1286
    .end local v2           #count:I
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_1
    return v10

    .line 1273
    :cond_2
    const/4 v6, 0x0

    .line 1274
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    const-string v5, "account_name IS NULL AND account_type IS NULL AND data_set IS NULL"

    .restart local v5       #selection:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public copySettingsToLegacySettings()V
    .locals 8

    .prologue
    .line 1332
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1333
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "SELECT account_name,account_type,should_sync FROM settings LEFT OUTER JOIN v1_settings ON (account_name=_sync_account AND account_type=_sync_account_type AND data_set IS NULL AND key=\'syncEverything\') WHERE should_sync<>value"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1335
    .local v2, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1336
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1337
    .local v0, accountName:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1338
    .local v1, accountType:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1339
    .local v4, value:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 1340
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v6, "_sync_account"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v6, "_sync_account_type"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v6, "key"

    const-string v7, "syncEverything"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v6, "value"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, v3, v0, v1, v5}, Lcom/android/providers/contacts/LegacyApiSupport;->updateSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1348
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1350
    return-void
.end method

.method public delete(Landroid/net/Uri;IJ)I
    .locals 7
    .parameter "uri"
    .parameter "match"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 1550
    const/4 v6, 0x0

    .line 1551
    .local v6, count:I
    packed-switch p2, :pswitch_data_0

    .line 1599
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1554
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v3

    move-wide v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->deleteRawContact(JJZ)I

    move-result v6

    .line 1602
    :goto_0
    return v6

    .line 1558
    :pswitch_2
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1559
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1560
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, p3, p4, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhoto(JLandroid/content/ContentValues;)I

    goto :goto_0

    .line 1565
    :pswitch_3
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->ORGANIZATION_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1566
    goto :goto_0

    .line 1570
    :pswitch_4
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1571
    goto :goto_0

    .line 1575
    :pswitch_5
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->PHONE_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1576
    goto :goto_0

    .line 1580
    :pswitch_6
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->EXTENSION_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1581
    goto :goto_0

    .line 1585
    :pswitch_7
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->PHOTO_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1586
    goto :goto_0

    .line 1590
    :pswitch_8
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->GROUP_MEMBERSHIP_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    .line 1591
    goto :goto_0

    .line 1595
    :pswitch_9
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p3, p4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->deleteGroup(Landroid/net/Uri;JZ)I

    move-result v6

    .line 1596
    goto :goto_0

    .line 1551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1526
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 1527
    .local v11, match:I
    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    const/16 v0, 0x2c

    if-ne v11, v0, :cond_1

    .line 1528
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1531
    :cond_1
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;->COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/LegacyApiSupport;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1532
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 1546
    :goto_0
    return v8

    .line 1536
    :cond_2
    const/4 v8, 0x0

    .line 1538
    .local v8, count:I
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1539
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1540
    .local v9, id:J
    invoke-virtual {p0, p1, v11, v9, v10}, Lcom/android/providers/contacts/LegacyApiSupport;->delete(Landroid/net/Uri;IJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v8, v0

    .line 1541
    goto :goto_1

    .line 1543
    .end local v9           #id:J
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 2038
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2039
    packed-switch v0, :pswitch_data_0

    .line 2083
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2042
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/contact_extensions"

    .line 2081
    :goto_0
    return-object v0

    .line 2045
    :pswitch_2
    const-string v0, "vnd.android.cursor.item/contact_extensions"

    goto :goto_0

    .line 2047
    :pswitch_3
    const-string v0, "vnd.android.cursor.dir/person"

    goto :goto_0

    .line 2049
    :pswitch_4
    const-string v0, "vnd.android.cursor.item/person"

    goto :goto_0

    .line 2051
    :pswitch_5
    const-string v0, "vnd.android.cursor.dir/phone"

    goto :goto_0

    .line 2053
    :pswitch_6
    const-string v0, "vnd.android.cursor.item/phone"

    goto :goto_0

    .line 2055
    :pswitch_7
    const-string v0, "vnd.android.cursor.dir/contact-methods"

    goto :goto_0

    .line 2057
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->getContactMethodType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2059
    :pswitch_9
    const-string v0, "vnd.android.cursor.dir/phone"

    goto :goto_0

    .line 2061
    :pswitch_a
    const-string v0, "vnd.android.cursor.item/phone"

    goto :goto_0

    .line 2063
    :pswitch_b
    const-string v0, "vnd.android.cursor.dir/phone"

    goto :goto_0

    .line 2065
    :pswitch_c
    const-string v0, "vnd.android.cursor.item/photo"

    goto :goto_0

    .line 2067
    :pswitch_d
    const-string v0, "vnd.android.cursor.dir/photo"

    goto :goto_0

    .line 2069
    :pswitch_e
    const-string v0, "vnd.android.cursor.item/photo"

    goto :goto_0

    .line 2071
    :pswitch_f
    const-string v0, "vnd.android.cursor.dir/contact-methods"

    goto :goto_0

    .line 2073
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->getContactMethodType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2075
    :pswitch_11
    const-string v0, "vnd.android.cursor.dir/organizations"

    goto :goto_0

    .line 2077
    :pswitch_12
    const-string v0, "vnd.android.cursor.item/organization"

    goto :goto_0

    .line 2079
    :pswitch_13
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_0

    .line 2081
    :pswitch_14
    const-string v0, "vnd.android.cursor.item/vnd.android.search.suggest"

    goto :goto_0

    .line 2039
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_7
        :pswitch_8
        :pswitch_f
        :pswitch_10
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_b
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v9, 0x1

    .line 777
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->ensureDefaultAccount()V

    .line 778
    sget-object v8, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 779
    .local v4, match:I
    const-wide/16 v2, 0x0

    .line 780
    .local v2, id:J
    packed-switch v4, :pswitch_data_0

    .line 835
    :pswitch_0
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    iget-object v9, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v9, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 782
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertPeople(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 838
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gez v8, :cond_0

    .line 839
    const/4 v7, 0x0

    .line 844
    :goto_1
    return-object v7

    .line 786
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertOrganization(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 787
    goto :goto_0

    .line 790
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 791
    .local v5, rawContactId:J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertContactMethod(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 792
    goto :goto_0

    .line 796
    .end local v5           #rawContactId:J
    :pswitch_4
    const-string v8, "person"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v5

    .line 797
    .restart local v5       #rawContactId:J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertContactMethod(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 798
    goto :goto_0

    .line 802
    .end local v5           #rawContactId:J
    :pswitch_5
    const-string v8, "person"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v5

    .line 804
    .restart local v5       #rawContactId:J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertPhone(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 805
    goto :goto_0

    .line 809
    .end local v5           #rawContactId:J
    :pswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 810
    .restart local v5       #rawContactId:J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertPhone(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 811
    goto :goto_0

    .line 815
    .end local v5           #rawContactId:J
    :pswitch_7
    const-string v8, "person"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v5

    .line 817
    .restart local v5       #rawContactId:J
    invoke-direct {p0, v5, v6, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertExtension(JLandroid/content/ContentValues;)J

    move-result-wide v2

    .line 818
    goto :goto_0

    .line 822
    .end local v5           #rawContactId:J
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertGroup(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 823
    goto :goto_0

    .line 826
    :pswitch_9
    const-string v8, "person"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v5

    .line 828
    .restart local v5       #rawContactId:J
    const-string v8, "group_id"

    invoke-direct {p0, p2, v8}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    .line 830
    .local v0, groupId:J
    invoke-direct {p0, v5, v6, v0, v1}, Lcom/android/providers/contacts/LegacyApiSupport;->insertGroupMembership(JJ)J

    move-result-wide v2

    .line 831
    goto :goto_0

    .line 842
    .end local v0           #groupId:J
    .end local v5           #rawContactId:J
    :cond_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 843
    .local v7, result:Landroid/net/Uri;
    invoke-direct {p0, v7}, Lcom/android/providers/contacts/LegacyApiSupport;->onChange(Landroid/net/Uri;)V

    goto :goto_1

    .line 780
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 1607
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->ensureDefaultAccount()V

    .line 1609
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1610
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1613
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 1614
    packed-switch v2, :pswitch_data_0

    .line 1913
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1616
    :pswitch_1
    const-string v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1617
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1618
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    :goto_0
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 1917
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1919
    if-eqz v0, :cond_0

    .line 1920
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1923
    :cond_0
    :goto_1
    return-object v0

    .line 1623
    :pswitch_2
    const-string v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1624
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1625
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1626
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1627
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1628
    goto :goto_0

    .line 1631
    :pswitch_3
    const-string v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1632
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1633
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1634
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND _id IN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/LegacyApiSupport;->getRawContactsByFilterAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1637
    goto :goto_0

    .line 1641
    :pswitch_4
    const-string v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1642
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1643
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1644
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1645
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/LegacyApiSupport;->buildGroupNameMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1646
    goto/16 :goto_0

    .line 1649
    :pswitch_5
    const-string v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1650
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1651
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1652
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/LegacyApiSupport;->buildGroupSystemIdMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1654
    goto/16 :goto_0

    .line 1657
    :pswitch_6
    const-string v2, "view_v1_organizations organizations"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1658
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1659
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1660
    goto/16 :goto_0

    .line 1663
    :pswitch_7
    const-string v2, "view_v1_organizations organizations"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1664
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1665
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1666
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1667
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1668
    goto/16 :goto_0

    .line 1671
    :pswitch_8
    const-string v2, "view_v1_organizations organizations"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1672
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1673
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1674
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1675
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1676
    goto/16 :goto_0

    .line 1679
    :pswitch_9
    const-string v2, "view_v1_organizations organizations"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1680
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1681
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1682
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1683
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1684
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1685
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1686
    goto/16 :goto_0

    .line 1689
    :pswitch_a
    const-string v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1690
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1691
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1692
    goto/16 :goto_0

    .line 1695
    :pswitch_b
    const-string v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1696
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1697
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1698
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1699
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1700
    goto/16 :goto_0

    .line 1703
    :pswitch_c
    const-string v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1704
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1705
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1706
    const-string v2, " AND kind=1"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1708
    goto/16 :goto_0

    .line 1711
    :pswitch_d
    const-string v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1712
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1713
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1714
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1715
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1716
    const-string v2, " AND kind IS NOT NULL"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1717
    goto/16 :goto_0

    .line 1720
    :pswitch_e
    const-string v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1721
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1722
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1723
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1724
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1725
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1726
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1727
    const-string v2, " AND kind IS NOT NULL"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1728
    goto/16 :goto_0

    .line 1731
    :pswitch_f
    const-string v2, "view_v1_phones phones"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1732
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1733
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1734
    goto/16 :goto_0

    .line 1737
    :pswitch_10
    const-string v2, "view_v1_phones phones"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1738
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1739
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1740
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1741
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1742
    goto/16 :goto_0

    .line 1745
    :pswitch_11
    const-string v2, "view_v1_phones phones"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1746
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1747
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1748
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v6, :cond_1

    .line 1749
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 1750
    const-string v3, " AND person ="

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1751
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildPhoneLookupAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1752
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    move-object v8, p6

    .line 1753
    goto/16 :goto_0

    .line 1757
    :pswitch_12
    const-string v2, "view_v1_phones phones"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1758
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1759
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1760
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1761
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1762
    goto/16 :goto_0

    .line 1765
    :pswitch_13
    const-string v2, "view_v1_phones phones"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1766
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1767
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1768
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1769
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1770
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1771
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1772
    goto/16 :goto_0

    .line 1775
    :pswitch_14
    const-string v2, "view_v1_extensions extensions"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1776
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1777
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1778
    goto/16 :goto_0

    .line 1781
    :pswitch_15
    const-string v2, "view_v1_extensions extensions"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1782
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1783
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1784
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1785
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1786
    goto/16 :goto_0

    .line 1789
    :pswitch_16
    const-string v2, "view_v1_extensions extensions"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1790
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1791
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1792
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1793
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1794
    goto/16 :goto_0

    .line 1797
    :pswitch_17
    const-string v2, "view_v1_extensions extensions"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1798
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1799
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1800
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1801
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1802
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1803
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1804
    goto/16 :goto_0

    .line 1807
    :pswitch_18
    const-string v2, "view_v1_groups groups"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1808
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1809
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyGroupAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1810
    goto/16 :goto_0

    .line 1813
    :pswitch_19
    const-string v2, "view_v1_groups groups"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1814
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1815
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyGroupAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1816
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1817
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1818
    goto/16 :goto_0

    .line 1821
    :pswitch_1a
    const-string v2, "view_v1_group_membership groupmembership"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1822
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1823
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1824
    goto/16 :goto_0

    .line 1827
    :pswitch_1b
    const-string v2, "view_v1_group_membership groupmembership"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1828
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1829
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1830
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1831
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1832
    goto/16 :goto_0

    .line 1835
    :pswitch_1c
    const-string v2, "view_v1_group_membership groupmembership"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1836
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1837
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1838
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1839
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1840
    goto/16 :goto_0

    .line 1843
    :pswitch_1d
    const-string v2, "view_v1_group_membership groupmembership"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1844
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1845
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1846
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1847
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1848
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1849
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1850
    goto/16 :goto_0

    .line 1853
    :pswitch_1e
    const-string v2, "view_v1_photos photos"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1854
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1855
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1856
    const-string v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1857
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1858
    const-string p6, "1"

    move-object v8, p6

    .line 1859
    goto/16 :goto_0

    .line 1862
    :pswitch_1f
    const-string v2, "view_v1_photos photos"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1863
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1864
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1865
    goto/16 :goto_0

    .line 1868
    :pswitch_20
    const-string v2, "view_v1_photos photos"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1869
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1870
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1871
    const-string v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1872
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1873
    goto/16 :goto_0

    .line 1876
    :pswitch_21
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    invoke-virtual {v0, v1, p1, p2, p6}, Lcom/android/providers/contacts/GlobalSearchSupport;->handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    .line 1880
    :pswitch_22
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 1881
    const-string v2, "filter"

    invoke-static {p1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1882
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    invoke-virtual {v3, v1, p2, v0, v2}, Lcom/android/providers/contacts/GlobalSearchSupport;->handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    .line 1887
    :pswitch_23
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_URI:Landroid/net/Uri;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    .line 1891
    :pswitch_24
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_WITH_PHONES_URI:Landroid/net/Uri;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    .line 1895
    :pswitch_25
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_FAVORITES_URI:Landroid/net/Uri;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    .line 1899
    :pswitch_26
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->LIVE_FOLDERS_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    .line 1905
    :pswitch_27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1908
    :pswitch_28
    invoke-virtual {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->copySettingsToLegacySettings()V

    .line 1909
    const-string v2, "v1_settings"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v8, p6

    .line 1910
    goto/16 :goto_0

    :cond_1
    move-object v8, p6

    goto/16 :goto_0

    .line 1614
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_d
        :pswitch_e
        :pswitch_a
        :pswitch_b
        :pswitch_12
        :pswitch_13
        :pswitch_f
        :pswitch_10
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_27
        :pswitch_27
        :pswitch_21
        :pswitch_22
        :pswitch_11
        :pswitch_23
        :pswitch_26
        :pswitch_24
        :pswitch_25
        :pswitch_c
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_28
    .end packed-switch
.end method

.method public update(IJLandroid/content/ContentValues;)I
    .locals 1
    .parameter "match"
    .parameter "id"
    .parameter "values"

    .prologue
    .line 999
    const/4 v0, 0x0

    .line 1000
    .local v0, count:I
    packed-switch p1, :pswitch_data_0

    .line 1043
    :goto_0
    :pswitch_0
    return v0

    .line 1003
    :pswitch_1
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePeople(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1004
    goto :goto_0

    .line 1009
    :pswitch_2
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateOrganizations(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1010
    goto :goto_0

    .line 1015
    :pswitch_3
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhones(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1016
    goto :goto_0

    .line 1021
    :pswitch_4
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateContactMethods(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1022
    goto :goto_0

    .line 1027
    :pswitch_5
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateExtensions(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1028
    goto :goto_0

    .line 1033
    :pswitch_6
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateGroups(JLandroid/content/ContentValues;)I

    move-result v0

    .line 1034
    goto :goto_0

    .line 1039
    :pswitch_7
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhotoByDataId(JLandroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 1000
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 941
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->ensureDefaultAccount()V

    .line 943
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 944
    .local v2, match:I
    const/4 v6, 0x0

    .line 945
    .local v6, count:I
    sparse-switch v2, :sswitch_data_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 967
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->updateAll(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 971
    :goto_0
    if-lez v6, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    move v0, v6

    .line 975
    :goto_1
    return v0

    .line 947
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->updateContactTime(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v6

    .line 948
    goto :goto_0

    .line 952
    :sswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 953
    .local v7, rawContactId:J
    invoke-direct {p0, v7, v8, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhoto(JLandroid/content/ContentValues;)I

    move-result v0

    goto :goto_1

    .line 957
    .end local v7           #rawContactId:J
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->updateSettings(Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_1

    .line 963
    :sswitch_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x3 -> :sswitch_0
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
        0x18 -> :sswitch_1
        0x2c -> :sswitch_2
    .end sparse-switch
.end method
