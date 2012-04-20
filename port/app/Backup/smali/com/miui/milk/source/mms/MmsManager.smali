.class public Lcom/miui/milk/source/mms/MmsManager;
.super Ljava/lang/Object;
.source "MmsManager.java"


# static fields
.field private static final PDU_ADDR_COLUMNS:[Ljava/lang/String;

.field private static final PDU_COLUMNS:[Ljava/lang/String;

.field private static final PDU_PART_COLUMNS:[Ljava/lang/String;


# instance fields
.field private CONTENT_URI:Landroid/net/Uri;

.field private INSERT_URI:Landroid/net/Uri;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "date_sent"

    aput-object v1, v0, v5

    const-string v1, "msg_box"

    aput-object v1, v0, v6

    const-string v1, "read"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "m_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "m_cls"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "rpt_a"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "resp_st"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "tr_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "retr_st"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "retr_txt"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "retr_txt_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "read_status"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ct_cls"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "resp_txt"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "d_tm"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "seen"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/milk/source/mms/MmsManager;->PDU_COLUMNS:[Ljava/lang/String;

    .line 65
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "charset"

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/milk/source/mms/MmsManager;->PDU_ADDR_COLUMNS:[Ljava/lang/String;

    .line 71
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "seq"

    aput-object v1, v0, v4

    const-string v1, "ct"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v6

    const-string v1, "chset"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cd"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cl"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ctt_s"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ctt_t"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "text"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/milk/source/mms/MmsManager;->PDU_PART_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->CONTENT_URI:Landroid/net/Uri;

    .line 25
    iget-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->CONTENT_URI:Landroid/net/Uri;

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

    iput-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->INSERT_URI:Landroid/net/Uri;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    .line 89
    return-void
.end method

.method private buildPduAddr(Landroid/database/Cursor;)Lcom/miui/milk/model/MmsProtos$PduAddr;
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$PduAddr;->newBuilder()Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    move-result-object v0

    .line 262
    .local v0, addr:Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->setAddress(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    .line 265
    :cond_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->setType(I)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    .line 268
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 269
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->setCharset(I)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    .line 271
    :cond_2
    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->build()Lcom/miui/milk/model/MmsProtos$PduAddr;

    move-result-object v1

    return-object v1
.end method

.method private buildPduPart(Landroid/database/Cursor;)Lcom/miui/milk/model/MmsProtos$PduPart;
    .locals 16
    .parameter "cursor"

    .prologue
    .line 275
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$PduPart;->newBuilder()Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    move-result-object v7

    .line 276
    .local v7, part:Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 278
    .local v8, partId:J
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 279
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setSequence(I)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 281
    :cond_0
    const/4 v12, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 282
    const/4 v12, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentType(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 284
    :cond_1
    const/4 v12, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 285
    const/4 v12, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setName(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 287
    :cond_2
    const/4 v12, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_3

    .line 288
    const/4 v12, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setCharset(I)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 290
    :cond_3
    const/4 v12, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_4

    .line 291
    const/4 v12, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentDisposition(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 293
    :cond_4
    const/4 v12, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_5

    .line 294
    const/4 v12, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setFileName(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 296
    :cond_5
    const/4 v12, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_6

    .line 297
    const/4 v12, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentId(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 299
    :cond_6
    const/16 v12, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_7

    .line 300
    const/16 v12, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentLocation(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 302
    :cond_7
    const/16 v12, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_8

    .line 303
    const/16 v12, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentTypeStart(I)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 305
    :cond_8
    const/16 v12, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_9

    .line 306
    const/16 v12, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentTypeType(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 308
    :cond_9
    const/16 v12, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_a

    .line 309
    const/16 v12, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setText(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 312
    :cond_a
    sget-object v12, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "part/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 313
    .local v11, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 314
    .local v3, input:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 316
    .local v5, output:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v12, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 317
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 318
    .end local v5           #output:Ljava/io/ByteArrayOutputStream;
    .local v6, output:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 319
    .local v4, len:I
    const/16 v12, 0x1000

    :try_start_1
    new-array v1, v12, [B

    .line 320
    .local v1, buffer:[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_d

    .line 321
    const/4 v12, 0x0

    invoke-virtual {v6, v1, v12, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    goto :goto_0

    .line 326
    .end local v1           #buffer:[B
    :catch_0
    move-exception v12

    move-object v5, v6

    .line 331
    .end local v4           #len:I
    .end local v6           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #output:Ljava/io/ByteArrayOutputStream;
    :goto_1
    if-eqz v3, :cond_b

    .line 333
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 338
    :cond_b
    :goto_2
    if-eqz v5, :cond_c

    .line 340
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 346
    :cond_c
    :goto_3
    invoke-virtual {v7}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->build()Lcom/miui/milk/model/MmsProtos$PduPart;

    move-result-object v12

    return-object v12

    .line 323
    .end local v5           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buffer:[B
    .restart local v4       #len:I
    .restart local v6       #output:Ljava/io/ByteArrayOutputStream;
    :cond_d
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-static {v12}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v10

    .line 325
    .local v10, string:Lcom/google/protobuf/ByteString;
    invoke-virtual {v7, v10}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 331
    if-eqz v3, :cond_e

    .line 333
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 338
    :cond_e
    :goto_4
    if-eqz v6, :cond_12

    .line 340
    :try_start_6
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v5, v6

    .line 343
    .end local v6           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #output:Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 334
    .end local v5           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #output:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    .line 335
    .local v2, e:Ljava/io/IOException;
    const-string v12, "MmsManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error closing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 341
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 342
    .restart local v2       #e:Ljava/io/IOException;
    const-string v12, "MmsManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error closing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 343
    .end local v6           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #output:Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 334
    .end local v1           #buffer:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #len:I
    .end local v10           #string:Lcom/google/protobuf/ByteString;
    :catch_3
    move-exception v2

    .line 335
    .restart local v2       #e:Ljava/io/IOException;
    const-string v12, "MmsManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error closing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 341
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 342
    .restart local v2       #e:Ljava/io/IOException;
    const-string v12, "MmsManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error closing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 328
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 329
    .restart local v2       #e:Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v12, "MmsManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IO exception on "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " for reading pdu part."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 331
    if-eqz v3, :cond_f

    .line 333
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 338
    :cond_f
    :goto_6
    if-eqz v5, :cond_c

    .line 340
    :try_start_9
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_3

    .line 341
    :catch_6
    move-exception v2

    .line 342
    const-string v12, "MmsManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error closing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 334
    :catch_7
    move-exception v2

    .line 335
    const-string v12, "MmsManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error closing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 331
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_7
    if-eqz v3, :cond_10

    .line 333
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 338
    :cond_10
    :goto_8
    if-eqz v5, :cond_11

    .line 340
    :try_start_b
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 343
    :cond_11
    :goto_9
    throw v12

    .line 334
    :catch_8
    move-exception v2

    .line 335
    .restart local v2       #e:Ljava/io/IOException;
    const-string v13, "MmsManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error closing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 341
    .end local v2           #e:Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 342
    .restart local v2       #e:Ljava/io/IOException;
    const-string v13, "MmsManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error closing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 331
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #len:I
    .restart local v6       #output:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #output:Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 328
    .end local v5           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #output:Ljava/io/ByteArrayOutputStream;
    :catch_a
    move-exception v2

    move-object v5, v6

    .end local v6           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #output:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .line 326
    .end local v4           #len:I
    :catch_b
    move-exception v12

    goto/16 :goto_1

    .end local v5           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buffer:[B
    .restart local v4       #len:I
    .restart local v6       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #string:Lcom/google/protobuf/ByteString;
    :cond_12
    move-object v5, v6

    .end local v6           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #output:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_3
.end method

.method private getAddresses(Lcom/miui/milk/model/MmsProtos$Pdu;)Ljava/lang/String;
    .locals 5
    .parameter "pdu"

    .prologue
    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, addressType:I
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 363
    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v2, addresses:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getAddrsCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 365
    invoke-virtual {p1, v3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getAddrs(I)Lcom/miui/milk/model/MmsProtos$PduAddr;

    move-result-object v0

    .line 366
    .local v0, addr:Lcom/miui/milk/model/MmsProtos$PduAddr;
    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr;->hasAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr;->hasType()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getType()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 367
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 368
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    :cond_0
    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 354
    .end local v0           #addr:Lcom/miui/milk/model/MmsProtos$PduAddr;
    .end local v2           #addresses:Ljava/lang/StringBuilder;
    .end local v3           #i:I
    :pswitch_1
    const/16 v1, 0x89

    .line 355
    goto :goto_0

    .line 357
    :pswitch_2
    const/16 v1, 0x97

    .line 358
    goto :goto_0

    .line 373
    .restart local v2       #addresses:Ljava/lang/StringBuilder;
    .restart local v3       #i:I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 351
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setBasicPduFields(Lcom/miui/milk/model/MmsProtos$Pdu$Builder;Landroid/database/Cursor;)V
    .locals 8
    .parameter "pdu"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    invoke-interface {p2, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 168
    :cond_0
    invoke-interface {p2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setDate(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 171
    :cond_1
    invoke-interface {p2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setServerDate(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 174
    :cond_2
    invoke-interface {p2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 175
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMsgBox(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 177
    :cond_3
    invoke-interface {p2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 178
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1f

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setRead(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 180
    :cond_4
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 181
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMId(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 183
    :cond_5
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 184
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setSubject(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 186
    :cond_6
    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 187
    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setSubjectCharset(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 189
    :cond_7
    const/16 v0, 0x8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 190
    const/16 v0, 0x8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setContentType(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 192
    :cond_8
    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 193
    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setContentLocation(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 195
    :cond_9
    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 196
    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setExpiry(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 198
    :cond_a
    const/16 v0, 0xb

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 199
    const/16 v0, 0xb

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMsgClass(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 201
    :cond_b
    const/16 v0, 0xc

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 202
    const/16 v0, 0xc

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMsgType(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 204
    :cond_c
    const/16 v0, 0xd

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 205
    const/16 v0, 0xd

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMmsVersion(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 207
    :cond_d
    const/16 v0, 0xe

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 208
    const/16 v0, 0xe

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMsgSize(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 210
    :cond_e
    const/16 v0, 0xf

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 211
    const/16 v0, 0xf

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setPriority(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 213
    :cond_f
    const/16 v0, 0x10

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 214
    const/16 v0, 0x10

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setReadReport(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 216
    :cond_10
    const/16 v0, 0x11

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 217
    const/16 v0, 0x11

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_20

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setReportAllowed(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 219
    :cond_11
    const/16 v0, 0x12

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 220
    const/16 v0, 0x12

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setResponseStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 222
    :cond_12
    const/16 v0, 0x13

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 223
    const/16 v0, 0x13

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 225
    :cond_13
    const/16 v0, 0x14

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 226
    const/16 v0, 0x14

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setTransactionId(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 228
    :cond_14
    const/16 v0, 0x15

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 229
    const/16 v0, 0x15

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setRetrieveStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 231
    :cond_15
    const/16 v0, 0x16

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 232
    const/16 v0, 0x16

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setRetrieveText(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 234
    :cond_16
    const/16 v0, 0x17

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 235
    const/16 v0, 0x17

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setRetrieveTextCharset(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 237
    :cond_17
    const/16 v0, 0x18

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 238
    const/16 v0, 0x18

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setReadStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 240
    :cond_18
    const/16 v0, 0x19

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 241
    const/16 v0, 0x19

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setContentClass(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 243
    :cond_19
    const/16 v0, 0x1a

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 244
    const/16 v0, 0x1a

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setResponseText(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 246
    :cond_1a
    const/16 v0, 0x1b

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 247
    const/16 v0, 0x1b

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setDeliveryTime(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 249
    :cond_1b
    const/16 v0, 0x1c

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 250
    const/16 v0, 0x1c

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setDeliveryReport(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 252
    :cond_1c
    const/16 v0, 0x1d

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 253
    const/16 v0, 0x1d

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_21

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setLocked(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 255
    :cond_1d
    const/16 v0, 0x1e

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 256
    const/16 v0, 0x1e

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_22

    :goto_3
    invoke-virtual {p1, v1}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setSeen(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 258
    :cond_1e
    return-void

    :cond_1f
    move v0, v2

    .line 178
    goto/16 :goto_0

    :cond_20
    move v0, v2

    .line 217
    goto/16 :goto_1

    :cond_21
    move v0, v2

    .line 253
    goto :goto_2

    :cond_22
    move v1, v2

    .line 256
    goto :goto_3
.end method


# virtual methods
.method public backupToProtocolBuffer(J)Lcom/miui/milk/model/MmsProtos$Pdu;
    .locals 10
    .parameter "id"

    .prologue
    .line 92
    const-string v0, "MmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading mms: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$Pdu;->newBuilder()Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    move-result-object v9

    .line 96
    .local v9, pdu:Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    const/4 v7, 0x0

    .line 98
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 99
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/milk/source/mms/MmsManager;->PDU_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 100
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0, v9, v7}, Lcom/miui/milk/source/mms/MmsManager;->setBasicPduFields(Lcom/miui/milk/model/MmsProtos$Pdu$Builder;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_1
    :try_start_1
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 109
    iget-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/milk/source/mms/MmsManager;->PDU_ADDR_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 110
    if-eqz v7, :cond_4

    .line 111
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 112
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    invoke-direct {p0, v7}, Lcom/miui/milk/source/mms/MmsManager;->buildPduAddr(Landroid/database/Cursor;)Lcom/miui/milk/model/MmsProtos$PduAddr;

    move-result-object v6

    .line 114
    .local v6, addr:Lcom/miui/milk/model/MmsProtos$PduAddr;
    invoke-virtual {v9, v6}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->addAddrs(Lcom/miui/milk/model/MmsProtos$PduAddr;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    .end local v6           #addr:Lcom/miui/milk/model/MmsProtos$PduAddr;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 104
    .end local v1           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 118
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_5
    :try_start_2
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/part"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    iget-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/milk/source/mms/MmsManager;->PDU_PART_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 124
    if-eqz v7, :cond_7

    .line 125
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 126
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 127
    invoke-direct {p0, v7}, Lcom/miui/milk/source/mms/MmsManager;->buildPduPart(Landroid/database/Cursor;)Lcom/miui/milk/model/MmsProtos$PduPart;

    move-result-object v8

    .line 128
    .local v8, part:Lcom/miui/milk/model/MmsProtos$PduPart;
    invoke-virtual {v9, v8}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->addPduParts(Lcom/miui/milk/model/MmsProtos$PduPart;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 132
    .end local v8           #part:Lcom/miui/milk/model/MmsProtos$PduPart;
    :catchall_2
    move-exception v0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_8
    invoke-virtual {v9}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->build()Lcom/miui/milk/model/MmsProtos$Pdu;

    move-result-object v0

    return-object v0
.end method

.method public prepareAllMmsIds()Ljava/util/Vector;
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

    .line 580
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "msg_box!=3"

    const/4 v4, 0x0

    const-string v5, "date ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 590
    if-nez v1, :cond_1

    .line 604
    if-eqz v1, :cond_0

    .line 605
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v6

    .line 608
    :goto_0
    return-object v0

    .line 593
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 597
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 598
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 599
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 600
    invoke-virtual {v6, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 604
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 605
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 604
    :cond_3
    if-eqz v1, :cond_4

    .line 605
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    .line 608
    goto :goto_0

    .line 604
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method public restorePdu(Lcom/miui/milk/model/MmsProtos$Pdu;)Landroid/content/ContentProviderOperation;
    .locals 7
    .parameter "pdu"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 377
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 379
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasDate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    const-string v2, "date"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 383
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasServerDate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    const-string v2, "date_sent"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getServerDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 387
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMsgBox()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 388
    const-string v2, "msg_box"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgBox()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasRead()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 392
    const-string v5, "read"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getRead()Z

    move-result v2

    if-eqz v2, :cond_1f

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 396
    const-string v2, "m_id"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasSubject()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 400
    const-string v2, "sub"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasSubjectCharset()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 404
    const-string v2, "sub_cs"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getSubjectCharset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasContentType()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 408
    const-string v2, "ct_t"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_7
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasContentLocation()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 412
    const-string v2, "ct_l"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getContentLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_8
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasExpiry()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 416
    const-string v2, "exp"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getExpiry()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 419
    :cond_9
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMsgClass()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 420
    const-string v2, "m_cls"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgClass()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_a
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMsgType()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 424
    const-string v2, "m_type"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    :cond_b
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMmsVersion()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 428
    const-string v2, "v"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMmsVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    :cond_c
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMsgSize()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 432
    const-string v2, "m_size"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 435
    :cond_d
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasPriority()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 436
    const-string v2, "pri"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getPriority()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    :cond_e
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasReadReport()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 440
    const-string v2, "rr"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getReadReport()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    :cond_f
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasReportAllowed()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 444
    const-string v5, "rpt_a"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getReportAllowed()Z

    move-result v2

    if-eqz v2, :cond_20

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    :cond_10
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasResponseStatus()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 448
    const-string v2, "resp_st"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getResponseStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    :cond_11
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 452
    const-string v2, "st"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 455
    :cond_12
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasTransactionId()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 456
    const-string v2, "tr_id"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_13
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasRetrieveStatus()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 460
    const-string v2, "retr_st"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getRetrieveStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 463
    :cond_14
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasRetrieveText()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 464
    const-string v2, "retr_txt"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getRetrieveText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_15
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasRetrieveTextCharset()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 468
    const-string v2, "retr_txt_cs"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getRetrieveTextCharset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 471
    :cond_16
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasReadStatus()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 472
    const-string v2, "read_status"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getReadStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    :cond_17
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasContentClass()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 476
    const-string v2, "ct_cls"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getContentClass()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 479
    :cond_18
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasResponseText()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 480
    const-string v2, "resp_txt"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getResponseText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_19
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasDeliveryTime()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 484
    const-string v2, "d_tm"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getDeliveryTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 487
    :cond_1a
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasDeliveryReport()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 488
    const-string v2, "d_rpt"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getDeliveryReport()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 491
    :cond_1b
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasLocked()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 492
    const-string v5, "locked"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getLocked()Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 495
    :cond_1c
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasSeen()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 496
    const-string v2, "seen"

    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getSeen()Z

    move-result v5

    if-eqz v5, :cond_22

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    :cond_1d
    invoke-direct {p0, p1}, Lcom/miui/milk/source/mms/MmsManager;->getAddresses(Lcom/miui/milk/model/MmsProtos$Pdu;)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, addresses:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1e

    .line 501
    const-string v2, "addresses"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_1e
    iget-object v2, p0, Lcom/miui/milk/source/mms/MmsManager;->INSERT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    return-object v2

    .end local v0           #addresses:Ljava/lang/String;
    :cond_1f
    move v2, v4

    .line 392
    goto/16 :goto_0

    :cond_20
    move v2, v4

    .line 444
    goto/16 :goto_1

    :cond_21
    move v2, v4

    .line 492
    goto :goto_2

    :cond_22
    move v3, v4

    .line 496
    goto :goto_3
.end method

.method public restorePduPart(JLcom/miui/milk/model/MmsProtos$PduPart;)Landroid/content/ContentProviderOperation;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 508
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 509
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasSequence()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    const-string v1, "seq"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getSequence()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 513
    :cond_0
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    const-string v1, "ct"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_1
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasName()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 518
    const-string v1, "name"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_2
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasCharset()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 522
    const-string v1, "chset"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getCharset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 525
    :cond_3
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentDisposition()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 526
    const-string v1, "cd"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentDisposition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_4
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasFileName()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 530
    const-string v1, "fn"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_5
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentId()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 534
    const-string v1, "cid"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_6
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentLocation()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 538
    const-string v1, "cl"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_7
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentTypeStart()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 542
    const-string v1, "ctt_s"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentTypeStart()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    :cond_8
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentTypeType()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 546
    const-string v1, "ctt_t"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentTypeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_9
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasText()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 550
    const-string v1, "text"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_a
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/part"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 554
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method public restorePduPartFile(Landroid/net/Uri;Lcom/miui/milk/model/MmsProtos$PduPart;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 558
    invoke-virtual {p2}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p2}, Lcom/miui/milk/model/MmsProtos$PduPart;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    .line 561
    const/4 v0, 0x0

    .line 563
    :try_start_0
    iget-object v2, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 564
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 568
    if-eqz v0, :cond_0

    .line 570
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 571
    :catch_0
    move-exception v0

    .line 572
    const-string v0, "MmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error closing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    :catch_1
    move-exception v1

    .line 566
    :try_start_3
    const-string v1, "MmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO exception for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 568
    if-eqz v0, :cond_0

    .line 570
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 571
    :catch_2
    move-exception v0

    .line 572
    const-string v0, "MmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error closing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 568
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_1

    .line 570
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 573
    :cond_1
    :goto_2
    throw v0

    .line 571
    :catch_3
    move-exception v1

    .line 572
    const-string v1, "MmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 568
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method
