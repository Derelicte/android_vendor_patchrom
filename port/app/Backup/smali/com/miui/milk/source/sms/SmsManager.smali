.class public Lcom/miui/milk/source/sms/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# instance fields
.field private COLUMN_ADDRESS:Ljava/lang/String;

.field private COLUMN_DATE:Ljava/lang/String;

.field private COLUMN_ID:Ljava/lang/String;

.field private CONTENT_URI:Landroid/net/Uri;

.field private INSERT_URI:Landroid/net/Uri;

.field private mBatchOpertions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDate2Address:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mThreadIdCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->CONTENT_URI:Landroid/net/Uri;

    .line 32
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "need_full_insert_uri"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "check_duplication"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->INSERT_URI:Landroid/net/Uri;

    .line 35
    const-string v0, "_id"

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ID:Ljava/lang/String;

    .line 36
    const-string v0, "date"

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_DATE:Ljava/lang/String;

    .line 37
    const-string v0, "address"

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ADDRESS:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mBatchOpertions:Ljava/util/ArrayList;

    .line 44
    iput-object p1, p0, Lcom/miui/milk/source/sms/SmsManager;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mDate2Address:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mThreadIdCache:Ljava/util/HashMap;

    .line 48
    return-void
.end method

.method private prepareContentValues(Lcom/miui/milk/model/SmsProtos$Sms;)Landroid/content/ContentValues;
    .locals 6
    .parameter "sms"

    .prologue
    .line 207
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 209
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getType()I

    move-result v1

    .line 210
    .local v1, type:I
    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    .line 211
    :cond_0
    const/4 v1, 0x5

    .line 214
    :cond_1
    const-string v3, "type"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 217
    const-string v3, "address"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getSubject()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 220
    const-string v3, "subject"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getBody()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 223
    const-string v3, "body"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_4
    const-string v3, "date"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 226
    const-string v3, "read"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getRead()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 227
    const-string v3, "seen"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getSeen()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 228
    const-string v3, "status"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const-string v3, "date_sent"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getServerDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 231
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getServiceCenter()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 232
    const-string v3, "service_center"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getServiceCenter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_5
    const-string v3, "protocol"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getProtocol()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string v3, "reply_path_present"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getReplyPathPresent()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 236
    const-string v3, "locked"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getLocked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 237
    return-object v2
.end method

.method private setSmsField(Lcom/miui/milk/model/SmsProtos$Sms$Builder;Landroid/database/Cursor;I)V
    .locals 5
    .parameter "sms"
    .parameter "cursor"
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, columnName:Ljava/lang/String;
    const-string v4, "_id"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const-string v4, "type"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 161
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 162
    .local v1, type:I
    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 163
    :cond_2
    const/4 v1, 0x5

    .line 165
    :cond_3
    invoke-virtual {p1, v1}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setType(I)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto :goto_0

    .line 167
    .end local v1           #type:I
    :cond_4
    const-string v4, "address"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 168
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setAddress(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto :goto_0

    .line 170
    :cond_5
    const-string v4, "subject"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 171
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setSubject(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto :goto_0

    .line 173
    :cond_6
    const-string v4, "body"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 174
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setBody(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto :goto_0

    .line 176
    :cond_7
    const-string v4, "date"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 177
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setDate(J)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto :goto_0

    .line 179
    :cond_8
    const-string v4, "read"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 180
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_9

    :goto_1
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setRead(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto :goto_0

    :cond_9
    move v2, v3

    goto :goto_1

    .line 182
    :cond_a
    const-string v4, "seen"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 183
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_b

    :goto_2
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setSeen(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    :cond_b
    move v2, v3

    goto :goto_2

    .line 185
    :cond_c
    const-string v4, "status"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 186
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setStatus(I)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    .line 188
    :cond_d
    const-string v4, "date_sent"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 190
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setServerDate(J)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    .line 192
    :cond_e
    const-string v4, "service_center"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 193
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setServiceCenter(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    .line 195
    :cond_f
    const-string v4, "protocol"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 196
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setProtocol(I)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    .line 198
    :cond_10
    const-string v4, "reply_path_present"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 199
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_11

    :goto_3
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setReplyPathPresent(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    :cond_11
    move v2, v3

    goto :goto_3

    .line 201
    :cond_12
    const-string v4, "locked"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 202
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_13

    :goto_4
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setLocked(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    :cond_13
    move v2, v3

    goto :goto_4
.end method


# virtual methods
.method public add(Lcom/miui/milk/model/SmsProtos$Sms;)J
    .locals 7
    .parameter "sms"

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getDate()J

    move-result-wide v1

    .line 104
    .local v1, date:J
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, address:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/miui/milk/source/sms/SmsManager;->prepareContentValues(Lcom/miui/milk/model/SmsProtos$Sms;)Landroid/content/ContentValues;

    move-result-object v4

    .line 108
    .local v4, values:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/miui/milk/source/sms/SmsManager;->INSERT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 110
    .local v3, op:Landroid/content/ContentProviderOperation;
    iget-object v5, p0, Lcom/miui/milk/source/sms/SmsManager;->mBatchOpertions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v5, p0, Lcom/miui/milk/source/sms/SmsManager;->mDate2Address:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-wide/16 v5, 0x0

    return-wide v5
.end method

.method public apply()[Landroid/content/ContentProviderResult;
    .locals 5

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 119
    .local v1, result:[Landroid/content/ContentProviderResult;
    :try_start_0
    iget-object v2, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "sms"

    iget-object v4, p0, Lcom/miui/milk/source/sms/SmsManager;->mBatchOpertions:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/miui/milk/source/sms/SmsManager;->mBatchOpertions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 126
    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SmsManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 123
    .local v0, e:Landroid/content/OperationApplicationException;
    const-string v2, "SmsManager"

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 241
    new-array v2, v7, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ID:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 244
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/sms/SmsManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 245
    .local v6, cur:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 256
    :goto_0
    return v7

    .line 249
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    const/4 v7, 0x0

    .line 255
    .local v7, empty:Z
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 252
    .end local v7           #empty:Z
    :cond_1
    const/4 v7, 0x1

    .restart local v7       #empty:Z
    goto :goto_1
.end method

.method public load(J)Lcom/miui/milk/model/SmsProtos$Sms;
    .locals 10
    .parameter "id"

    .prologue
    .line 51
    const-string v0, "SmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading sms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$Sms;->newBuilder()Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v8

    .line 55
    .local v8, sms:Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    const/4 v6, 0x0

    .line 57
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/sms/SmsManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ID:Ljava/lang/String;

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

    move-result-object v9

    aput-object v9, v4, v5

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 62
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, index:I
    :goto_0
    if-ltz v7, :cond_0

    .line 64
    invoke-direct {p0, v8, v6, v7}, Lcom/miui/milk/source/sms/SmsManager;->setSmsField(Lcom/miui/milk/model/SmsProtos$Sms$Builder;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 68
    .end local v7           #index:I
    :cond_0
    if-eqz v6, :cond_1

    .line 69
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_1
    invoke-virtual {v8}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->build()Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v0

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 69
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public prepareAllSmsIds()Ljava/util/Vector;
    .locals 10
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
    .line 260
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 261
    .local v9, smsIds:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 263
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "type!=3"

    const/4 v4, 0x0

    const-string v5, "date ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 269
    if-nez v6, :cond_1

    .line 283
    if-eqz v6, :cond_0

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_0
    :goto_0
    return-object v9

    .line 272
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 274
    .local v8, idColumnIndex:I
    const/4 v7, 0x0

    .line 276
    .local v7, cursorId:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 277
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 278
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 279
    invoke-virtual {v9, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 283
    .end local v7           #cursorId:Ljava/lang/String;
    .end local v8           #idColumnIndex:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 283
    .restart local v7       #cursorId:Ljava/lang/String;
    .restart local v8       #idColumnIndex:I
    :cond_3
    if-eqz v6, :cond_0

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public prepareSms()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mDate2Address:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 131
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_DATE:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ADDRESS:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 132
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/sms/SmsManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 133
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_DATE:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 138
    .local v11, dateColumnIndex:I
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ADDRESS:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 142
    .local v7, addressColumnIndex:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 143
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 145
    .local v9, date:J
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, address:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mDate2Address:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 149
    .end local v6           #address:Ljava/lang/String;
    .end local v9           #date:J
    :cond_2
    if-eqz v8, :cond_0

    .line 150
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
