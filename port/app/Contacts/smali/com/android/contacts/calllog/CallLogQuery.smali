.class public final Lcom/android/contacts/calllog/CallLogQuery;
.super Ljava/lang/Object;
.source "CallLogQuery.java"


# static fields
.field public static final EXTENDED_PROJECTION:[Ljava/lang/String;

.field public static final _PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "voicemail_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lookup_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "matched_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "formatted_number"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "is_read"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/android/contacts/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/calllog/CallLogQuery;->EXTENDED_PROJECTION:[Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/android/contacts/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/android/contacts/calllog/CallLogQuery;->EXTENDED_PROJECTION:[Ljava/lang/String;

    sget-object v2, Lcom/android/contacts/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    sget-object v0, Lcom/android/contacts/calllog/CallLogQuery;->EXTENDED_PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/android/contacts/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    const-string v2, "section"

    aput-object v2, v0, v1

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSectionHeader(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 93
    const/16 v1, 0x11

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 94
    .local v0, section:I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
