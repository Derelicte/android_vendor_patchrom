.class public final Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MmsProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/MmsProtos$Pdu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/MmsProtos$Pdu;",
        "Lcom/miui/milk/model/MmsProtos$Pdu$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private addrs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/MmsProtos$PduAddr;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private bitField1_:I

.field private contentClass_:I

.field private contentLocation_:Ljava/lang/Object;

.field private contentType_:Ljava/lang/Object;

.field private date_:J

.field private deliveryReport_:I

.field private deliveryTime_:J

.field private expiry_:J

.field private guid_:Ljava/lang/Object;

.field private locked_:Z

.field private luid_:Ljava/lang/Object;

.field private mId_:Ljava/lang/Object;

.field private mmsVersion_:I

.field private msgBox_:I

.field private msgClass_:Ljava/lang/Object;

.field private msgSize_:I

.field private msgType_:I

.field private pduParts_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/MmsProtos$PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private priority_:I

.field private readReport_:I

.field private readStatus_:I

.field private read_:Z

.field private reportAllowed_:Z

.field private responseStatus_:I

.field private responseText_:Ljava/lang/Object;

.field private retrieveStatus_:I

.field private retrieveTextCharset_:I

.field private retrieveText_:Ljava/lang/Object;

.field private seen_:Z

.field private serverDate_:J

.field private status_:I

.field private subjectCharset_:I

.field private subject_:Ljava/lang/Object;

.field private transactionId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1139
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1717
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->guid_:Ljava/lang/Object;

    .line 1753
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->luid_:Ljava/lang/Object;

    .line 1873
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->mId_:Ljava/lang/Object;

    .line 1909
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->subject_:Ljava/lang/Object;

    .line 1966
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->contentType_:Ljava/lang/Object;

    .line 2002
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->contentLocation_:Ljava/lang/Object;

    .line 2059
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->msgClass_:Ljava/lang/Object;

    .line 2263
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->transactionId_:Ljava/lang/Object;

    .line 2320
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->retrieveText_:Ljava/lang/Object;

    .line 2419
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->responseText_:Ljava/lang/Object;

    .line 2539
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->addrs_:Ljava/util/List;

    .line 2628
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->pduParts_:Ljava/util/List;

    .line 1140
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->maybeForceBuilderInitialization()V

    .line 1141
    return-void
.end method

.method static synthetic access$100()Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1

    .prologue
    .line 1134
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->create()Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1

    .prologue
    .line 1146
    new-instance v0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAddrsIsMutable()V
    .locals 2

    .prologue
    .line 2542
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2543
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->addrs_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->addrs_:Ljava/util/List;

    .line 2544
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField1_:I

    .line 2546
    :cond_0
    return-void
.end method

.method private ensurePduPartsIsMutable()V
    .locals 2

    .prologue
    .line 2631
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2632
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->pduParts_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->pduParts_:Ljava/util/List;

    .line 2633
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField1_:I

    .line 2635
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1144
    return-void
.end method


# virtual methods
.method public addAddrs(Lcom/miui/milk/model/MmsProtos$PduAddr;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2575
    if-nez p1, :cond_0

    .line 2576
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2578
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->ensureAddrsIsMutable()V

    .line 2579
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->addrs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2581
    return-object p0
.end method

.method public addPduParts(Lcom/miui/milk/model/MmsProtos$PduPart;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2664
    if-nez p1, :cond_0

    .line 2665
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2667
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->ensurePduPartsIsMutable()V

    .line 2668
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->pduParts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2670
    return-object p0
.end method

.method public build()Lcom/miui/milk/model/MmsProtos$Pdu;
    .locals 2

    .prologue
    .line 1231
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->buildPartial()Lcom/miui/milk/model/MmsProtos$Pdu;

    move-result-object v0

    .line 1232
    .local v0, result:Lcom/miui/milk/model/MmsProtos$Pdu;
    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$Pdu;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1233
    invoke-static {v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1235
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->buildPartial()Lcom/miui/milk/model/MmsProtos$Pdu;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/MmsProtos$Pdu;
    .locals 11

    .prologue
    const/high16 v10, 0x4

    const/high16 v9, 0x2

    const/high16 v8, 0x1

    const v7, 0x8000

    const/high16 v6, -0x8000

    .line 1249
    new-instance v2, Lcom/miui/milk/model/MmsProtos$Pdu;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;-><init>(Lcom/miui/milk/model/MmsProtos$Pdu$Builder;Lcom/miui/milk/model/MmsProtos$1;)V

    .line 1250
    .local v2, result:Lcom/miui/milk/model/MmsProtos$Pdu;
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1251
    .local v0, from_bitField0_:I
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField1_:I

    .line 1252
    .local v1, from_bitField1_:I
    const/4 v3, 0x0

    .line 1253
    .local v3, to_bitField0_:I
    and-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1254
    or-int/lit8 v3, v3, 0x1

    .line 1256
    :cond_0
    iget-object v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->guid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->guid_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$302(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    and-int/lit8 v4, v0, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1258
    or-int/lit8 v3, v3, 0x2

    .line 1260
    :cond_1
    iget-object v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->luid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->luid_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$402(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 1262
    or-int/lit8 v3, v3, 0x4

    .line 1264
    :cond_2
    iget-wide v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->date_:J

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->date_:J
    invoke-static {v2, v4, v5}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$502(Lcom/miui/milk/model/MmsProtos$Pdu;J)J

    .line 1265
    and-int/lit8 v4, v0, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 1266
    or-int/lit8 v3, v3, 0x8

    .line 1268
    :cond_3
    iget-wide v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->serverDate_:J

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->serverDate_:J
    invoke-static {v2, v4, v5}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$602(Lcom/miui/milk/model/MmsProtos$Pdu;J)J

    .line 1269
    and-int/lit8 v4, v0, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    .line 1270
    or-int/lit8 v3, v3, 0x10

    .line 1272
    :cond_4
    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->msgBox_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->msgBox_:I
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$702(Lcom/miui/milk/model/MmsProtos$Pdu;I)I

    .line 1273
    and-int/lit8 v4, v0, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_5

    .line 1274
    or-int/lit8 v3, v3, 0x20

    .line 1276
    :cond_5
    iget-boolean v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->read_:Z

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->read_:Z
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$802(Lcom/miui/milk/model/MmsProtos$Pdu;Z)Z

    .line 1277
    and-int/lit8 v4, v0, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_6

    .line 1278
    or-int/lit8 v3, v3, 0x40

    .line 1280
    :cond_6
    iget-object v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->mId_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->mId_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$902(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    and-int/lit16 v4, v0, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_7

    .line 1282
    or-int/lit16 v3, v3, 0x80

    .line 1284
    :cond_7
    iget-object v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->subject_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->subject_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$1002(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    and-int/lit16 v4, v0, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_8

    .line 1286
    or-int/lit16 v3, v3, 0x100

    .line 1288
    :cond_8
    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->subjectCharset_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->subjectCharset_:I
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$1102(Lcom/miui/milk/model/MmsProtos$Pdu;I)I

    .line 1289
    and-int/lit16 v4, v0, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_9

    .line 1290
    or-int/lit16 v3, v3, 0x200

    .line 1292
    :cond_9
    iget-object v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->contentType_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->contentType_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$1202(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    and-int/lit16 v4, v0, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_a

    .line 1294
    or-int/lit16 v3, v3, 0x400

    .line 1296
    :cond_a
    iget-object v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->contentLocation_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->contentLocation_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$1302(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    and-int/lit16 v4, v0, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_b

    .line 1298
    or-int/lit16 v3, v3, 0x800

    .line 1300
    :cond_b
    iget-wide v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->expiry_:J

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->expiry_:J
    invoke-static {v2, v4, v5}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$1402(Lcom/miui/milk/model/MmsProtos$Pdu;J)J

    .line 1301
    and-int/lit16 v4, v0, 0x1000

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_c

    .line 1302
    or-int/lit16 v3, v3, 0x1000

    .line 1304
    :cond_c
    iget-object v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->msgClass_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->msgClass_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$1502(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    and-int/lit16 v4, v0, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_d

    .line 1306
    or-int/lit16 v3, v3, 0x2000

    .line 1308
    :cond_d
    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->msgType_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->msgType_:I
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$1602(Lcom/miui/milk/model/MmsProtos$Pdu;I)I

    .line 1309
    and-int/lit16 v4, v0, 0x4000

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_e

    .line 1310
    or-int/lit16 v3, v3, 0x4000

    .line 1312
    :cond_e
    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->mmsVersion_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->mmsVersion_:I
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$1702(Lcom/miui/milk/model/MmsProtos$Pdu;I)I

    .line 1313
    and-int v4, v0, v7

    if-ne v4, v7, :cond_f

    .line 1314
    or-int/2addr v3, v7

    .line 1316
    :cond_f
    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->msgSize_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->msgSize_:I
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$1802(Lcom/miui/milk/model/MmsProtos$Pdu;I)I

    .line 1317
    and-int v4, v0, v8

    if-ne v4, v8, :cond_10

    .line 1318
    or-int/2addr v3, v8

    .line 1320
    :cond_10
    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->priority_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->priority_:I
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$1902(Lcom/miui/milk/model/MmsProtos$Pdu;I)I

    .line 1321
    and-int v4, v0, v9

    if-ne v4, v9, :cond_11

    .line 1322
    or-int/2addr v3, v9

    .line 1324
    :cond_11
    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->readReport_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->readReport_:I
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$2002(Lcom/miui/milk/model/MmsProtos$Pdu;I)I

    .line 1325
    and-int v4, v0, v10

    if-ne v4, v10, :cond_12

    .line 1326
    or-int/2addr v3, v10

    .line 1328
    :cond_12
    iget-boolean v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->reportAllowed_:Z

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->reportAllowed_:Z
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$2102(Lcom/miui/milk/model/MmsProtos$Pdu;Z)Z

    .line 1329
    const/high16 v4, 0x8

    and-int/2addr v4, v0

    const/high16 v5, 0x8

    if-ne v4, v5, :cond_13

    .line 1330
    const/high16 v4, 0x8

    or-int/2addr v3, v4

    .line 1332
    :cond_13
    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->responseStatus_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->responseStatus_:I
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$2202(Lcom/miui/milk/model/MmsProtos$Pdu;I)I

    .line 1333
    const/high16 v4, 0x10

    and-int/2addr v4, v0

    const/high16 v5, 0x10

    if-ne v4, v5, :cond_14

    .line 1334
    const/high16 v4, 0x10

    or-int/2addr v3, v4

    .line 1336
    :cond_14
    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->status_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->status_:I
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$2302(Lcom/miui/milk/model/MmsProtos$Pdu;I)I

    .line 1337
    const/high16 v4, 0x20

    and-int/2addr v4, v0

    const/high16 v5, 0x20

    if-ne v4, v5, :cond_15

    .line 1338
    const/high16 v4, 0x20

    or-int/2addr v3, v4

    .line 1340
    :cond_15
    iget-object v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->transactionId_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->transactionId_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$2402(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    const/high16 v4, 0x40

    and-int/2addr v4, v0

    const/high16 v5, 0x40

    if-ne v4, v5, :cond_16

    .line 1342
    const/high16 v4, 0x40

    or-int/2addr v3, v4

    .line 1344
    :cond_16
    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->retrieveStatus_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveStatus_:I
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$2502(Lcom/miui/milk/model/MmsProtos$Pdu;I)I

    .line 1345
    const/high16 v4, 0x80

    and-int/2addr v4, v0

    const/high16 v5, 0x80

    if-ne v4, v5, :cond_17

    .line 1346
    const/high16 v4, 0x80

    or-int/2addr v3, v4

    .line 1348
    :cond_17
    iget-object v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->retrieveText_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveText_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$2602(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    const/high16 v4, 0x100

    and-int/2addr v4, v0

    const/high16 v5, 0x100

    if-ne v4, v5, :cond_18

    .line 1350
    const/high16 v4, 0x100

    or-int/2addr v3, v4

    .line 1352
    :cond_18
    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->retrieveTextCharset_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->retrieveTextCharset_:I
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$2702(Lcom/miui/milk/model/MmsProtos$Pdu;I)I

    .line 1353
    const/high16 v4, 0x200

    and-int/2addr v4, v0

    const/high16 v5, 0x200

    if-ne v4, v5, :cond_19

    .line 1354
    const/high16 v4, 0x200

    or-int/2addr v3, v4

    .line 1356
    :cond_19
    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->readStatus_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->readStatus_:I
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$2802(Lcom/miui/milk/model/MmsProtos$Pdu;I)I

    .line 1357
    const/high16 v4, 0x400

    and-int/2addr v4, v0

    const/high16 v5, 0x400

    if-ne v4, v5, :cond_1a

    .line 1358
    const/high16 v4, 0x400

    or-int/2addr v3, v4

    .line 1360
    :cond_1a
    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->contentClass_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->contentClass_:I
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$2902(Lcom/miui/milk/model/MmsProtos$Pdu;I)I

    .line 1361
    const/high16 v4, 0x800

    and-int/2addr v4, v0

    const/high16 v5, 0x800

    if-ne v4, v5, :cond_1b

    .line 1362
    const/high16 v4, 0x800

    or-int/2addr v3, v4

    .line 1364
    :cond_1b
    iget-object v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->responseText_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->responseText_:Ljava/lang/Object;
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$3002(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    const/high16 v4, 0x1000

    and-int/2addr v4, v0

    const/high16 v5, 0x1000

    if-ne v4, v5, :cond_1c

    .line 1366
    const/high16 v4, 0x1000

    or-int/2addr v3, v4

    .line 1368
    :cond_1c
    iget-wide v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->deliveryTime_:J

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->deliveryTime_:J
    invoke-static {v2, v4, v5}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$3102(Lcom/miui/milk/model/MmsProtos$Pdu;J)J

    .line 1369
    const/high16 v4, 0x2000

    and-int/2addr v4, v0

    const/high16 v5, 0x2000

    if-ne v4, v5, :cond_1d

    .line 1370
    const/high16 v4, 0x2000

    or-int/2addr v3, v4

    .line 1372
    :cond_1d
    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->deliveryReport_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->deliveryReport_:I
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$3202(Lcom/miui/milk/model/MmsProtos$Pdu;I)I

    .line 1373
    const/high16 v4, 0x4000

    and-int/2addr v4, v0

    const/high16 v5, 0x4000

    if-ne v4, v5, :cond_1e

    .line 1374
    const/high16 v4, 0x4000

    or-int/2addr v3, v4

    .line 1376
    :cond_1e
    iget-boolean v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->locked_:Z

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->locked_:Z
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$3302(Lcom/miui/milk/model/MmsProtos$Pdu;Z)Z

    .line 1377
    and-int v4, v0, v6

    if-ne v4, v6, :cond_1f

    .line 1378
    or-int/2addr v3, v6

    .line 1380
    :cond_1f
    iget-boolean v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->seen_:Z

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->seen_:Z
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$3402(Lcom/miui/milk/model/MmsProtos$Pdu;Z)Z

    .line 1381
    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField1_:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    .line 1382
    iget-object v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->addrs_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->addrs_:Ljava/util/List;

    .line 1383
    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField1_:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField1_:I

    .line 1385
    :cond_20
    iget-object v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->addrs_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->addrs_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$3502(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/util/List;)Ljava/util/List;

    .line 1386
    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField1_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_21

    .line 1387
    iget-object v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->pduParts_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->pduParts_:Ljava/util/List;

    .line 1388
    iget v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField1_:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField1_:I

    .line 1390
    :cond_21
    iget-object v4, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->pduParts_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->pduParts_:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$3602(Lcom/miui/milk/model/MmsProtos$Pdu;Ljava/util/List;)Ljava/util/List;

    .line 1391
    #setter for: Lcom/miui/milk/model/MmsProtos$Pdu;->bitField0_:I
    invoke-static {v2, v3}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$3702(Lcom/miui/milk/model/MmsProtos$Pdu;I)I

    .line 1392
    return-object v2
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->clone()Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->clone()Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2

    .prologue
    .line 1223
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->create()Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->buildPartial()Lcom/miui/milk/model/MmsProtos$Pdu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->mergeFrom(Lcom/miui/milk/model/MmsProtos$Pdu;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->clone()Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1134
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1134
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1525
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1526
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 1531
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1533
    :sswitch_0
    return-object p0

    .line 1538
    :sswitch_1
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1539
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 1543
    :sswitch_2
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1544
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 1548
    :sswitch_3
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1549
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->date_:J

    goto :goto_0

    .line 1553
    :sswitch_4
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1554
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->serverDate_:J

    goto :goto_0

    .line 1558
    :sswitch_5
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1559
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->msgBox_:I

    goto :goto_0

    .line 1563
    :sswitch_6
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1564
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->read_:Z

    goto :goto_0

    .line 1568
    :sswitch_7
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1569
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->mId_:Ljava/lang/Object;

    goto :goto_0

    .line 1573
    :sswitch_8
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1574
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->subject_:Ljava/lang/Object;

    goto :goto_0

    .line 1578
    :sswitch_9
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1579
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->subjectCharset_:I

    goto/16 :goto_0

    .line 1583
    :sswitch_a
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1584
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->contentType_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1588
    :sswitch_b
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1589
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->contentLocation_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1593
    :sswitch_c
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1594
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->expiry_:J

    goto/16 :goto_0

    .line 1598
    :sswitch_d
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1599
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->msgClass_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1603
    :sswitch_e
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1604
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->msgType_:I

    goto/16 :goto_0

    .line 1608
    :sswitch_f
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1609
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->mmsVersion_:I

    goto/16 :goto_0

    .line 1613
    :sswitch_10
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1614
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->msgSize_:I

    goto/16 :goto_0

    .line 1618
    :sswitch_11
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1619
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->priority_:I

    goto/16 :goto_0

    .line 1623
    :sswitch_12
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v3, 0x2

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1624
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->readReport_:I

    goto/16 :goto_0

    .line 1628
    :sswitch_13
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v3, 0x4

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1629
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->reportAllowed_:Z

    goto/16 :goto_0

    .line 1633
    :sswitch_14
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1634
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->responseStatus_:I

    goto/16 :goto_0

    .line 1638
    :sswitch_15
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1639
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->status_:I

    goto/16 :goto_0

    .line 1643
    :sswitch_16
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v3, 0x20

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1644
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->transactionId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1648
    :sswitch_17
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v3, 0x40

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1649
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->retrieveStatus_:I

    goto/16 :goto_0

    .line 1653
    :sswitch_18
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v3, 0x80

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1654
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->retrieveText_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1658
    :sswitch_19
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v3, 0x100

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1659
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->retrieveTextCharset_:I

    goto/16 :goto_0

    .line 1663
    :sswitch_1a
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v3, 0x200

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1664
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->readStatus_:I

    goto/16 :goto_0

    .line 1668
    :sswitch_1b
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v3, 0x400

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1669
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->contentClass_:I

    goto/16 :goto_0

    .line 1673
    :sswitch_1c
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v3, 0x800

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1674
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->responseText_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1678
    :sswitch_1d
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1679
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->deliveryTime_:J

    goto/16 :goto_0

    .line 1683
    :sswitch_1e
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v3, 0x2000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1684
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->deliveryReport_:I

    goto/16 :goto_0

    .line 1688
    :sswitch_1f
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v3, 0x4000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1689
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->locked_:Z

    goto/16 :goto_0

    .line 1693
    :sswitch_20
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v3, -0x8000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1694
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->seen_:Z

    goto/16 :goto_0

    .line 1698
    :sswitch_21
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$PduAddr;->newBuilder()Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    move-result-object v0

    .line 1699
    .local v0, subBuilder:Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1700
    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->buildPartial()Lcom/miui/milk/model/MmsProtos$PduAddr;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->addAddrs(Lcom/miui/milk/model/MmsProtos$PduAddr;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    goto/16 :goto_0

    .line 1704
    .end local v0           #subBuilder:Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;
    :sswitch_22
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$PduPart;->newBuilder()Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    move-result-object v0

    .line 1705
    .local v0, subBuilder:Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1706
    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->buildPartial()Lcom/miui/milk/model/MmsProtos$PduPart;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->addPduParts(Lcom/miui/milk/model/MmsProtos$PduPart;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    goto/16 :goto_0

    .line 1526
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
        0x88 -> :sswitch_11
        0x90 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xb2 -> :sswitch_16
        0xb8 -> :sswitch_17
        0xc2 -> :sswitch_18
        0xc8 -> :sswitch_19
        0xd0 -> :sswitch_1a
        0xd8 -> :sswitch_1b
        0xe2 -> :sswitch_1c
        0xe8 -> :sswitch_1d
        0xf0 -> :sswitch_1e
        0xf8 -> :sswitch_1f
        0x100 -> :sswitch_20
        0x10a -> :sswitch_21
        0x112 -> :sswitch_22
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/MmsProtos$Pdu;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1396
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$Pdu;->getDefaultInstance()Lcom/miui/milk/model/MmsProtos$Pdu;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1513
    :cond_0
    :goto_0
    return-object p0

    .line 1397
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1398
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1400
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1401
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1403
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasDate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1404
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setDate(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1406
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasServerDate()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1407
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getServerDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setServerDate(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1409
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMsgBox()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1410
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgBox()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMsgBox(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1412
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasRead()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1413
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getRead()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setRead(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1415
    :cond_7
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1416
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMId(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1418
    :cond_8
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1419
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setSubject(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1421
    :cond_9
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasSubjectCharset()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1422
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getSubjectCharset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setSubjectCharset(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1424
    :cond_a
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1425
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setContentType(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1427
    :cond_b
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasContentLocation()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1428
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getContentLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setContentLocation(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1430
    :cond_c
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasExpiry()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1431
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getExpiry()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setExpiry(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1433
    :cond_d
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMsgClass()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1434
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMsgClass(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1436
    :cond_e
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMsgType()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1437
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMsgType(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1439
    :cond_f
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMmsVersion()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1440
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMmsVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMmsVersion(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1442
    :cond_10
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMsgSize()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1443
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMsgSize(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1445
    :cond_11
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1446
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setPriority(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1448
    :cond_12
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasReadReport()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1449
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getReadReport()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setReadReport(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1451
    :cond_13
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasReportAllowed()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1452
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getReportAllowed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setReportAllowed(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1454
    :cond_14
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasResponseStatus()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1455
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getResponseStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setResponseStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1457
    :cond_15
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1458
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1460
    :cond_16
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasTransactionId()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1461
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setTransactionId(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1463
    :cond_17
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasRetrieveStatus()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1464
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getRetrieveStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setRetrieveStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1466
    :cond_18
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasRetrieveText()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1467
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getRetrieveText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setRetrieveText(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1469
    :cond_19
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasRetrieveTextCharset()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1470
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getRetrieveTextCharset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setRetrieveTextCharset(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1472
    :cond_1a
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasReadStatus()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1473
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getReadStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setReadStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1475
    :cond_1b
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasContentClass()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1476
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getContentClass()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setContentClass(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1478
    :cond_1c
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasResponseText()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1479
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getResponseText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setResponseText(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1481
    :cond_1d
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasDeliveryTime()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1482
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getDeliveryTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setDeliveryTime(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1484
    :cond_1e
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasDeliveryReport()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1485
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getDeliveryReport()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setDeliveryReport(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1487
    :cond_1f
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasLocked()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1488
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getLocked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setLocked(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1490
    :cond_20
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasSeen()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1491
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getSeen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setSeen(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 1493
    :cond_21
    #getter for: Lcom/miui/milk/model/MmsProtos$Pdu;->addrs_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$3500(Lcom/miui/milk/model/MmsProtos$Pdu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1494
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->addrs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1495
    #getter for: Lcom/miui/milk/model/MmsProtos$Pdu;->addrs_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$3500(Lcom/miui/milk/model/MmsProtos$Pdu;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->addrs_:Ljava/util/List;

    .line 1496
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField1_:I

    .line 1503
    :cond_22
    :goto_1
    #getter for: Lcom/miui/milk/model/MmsProtos$Pdu;->pduParts_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$3600(Lcom/miui/milk/model/MmsProtos$Pdu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->pduParts_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1505
    #getter for: Lcom/miui/milk/model/MmsProtos$Pdu;->pduParts_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$3600(Lcom/miui/milk/model/MmsProtos$Pdu;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->pduParts_:Ljava/util/List;

    .line 1506
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField1_:I

    goto/16 :goto_0

    .line 1498
    :cond_23
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->ensureAddrsIsMutable()V

    .line 1499
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->addrs_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/MmsProtos$Pdu;->addrs_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$3500(Lcom/miui/milk/model/MmsProtos$Pdu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1508
    :cond_24
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->ensurePduPartsIsMutable()V

    .line 1509
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->pduParts_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/MmsProtos$Pdu;->pduParts_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->access$3600(Lcom/miui/milk/model/MmsProtos$Pdu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method public setContentClass(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2406
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2407
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->contentClass_:I

    .line 2409
    return-object p0
.end method

.method public setContentLocation(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2017
    if-nez p1, :cond_0

    .line 2018
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2020
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2021
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->contentLocation_:Ljava/lang/Object;

    .line 2023
    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1981
    if-nez p1, :cond_0

    .line 1982
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1984
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1985
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->contentType_:Ljava/lang/Object;

    .line 1987
    return-object p0
.end method

.method public setDate(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1797
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1798
    iput-wide p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->date_:J

    .line 1800
    return-object p0
.end method

.method public setDeliveryReport(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2484
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2485
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->deliveryReport_:I

    .line 2487
    return-object p0
.end method

.method public setDeliveryTime(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2463
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2464
    iput-wide p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->deliveryTime_:J

    .line 2466
    return-object p0
.end method

.method public setExpiry(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2046
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2047
    iput-wide p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->expiry_:J

    .line 2049
    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1732
    if-nez p1, :cond_0

    .line 1733
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1735
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1736
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->guid_:Ljava/lang/Object;

    .line 1738
    return-object p0
.end method

.method public setLocked(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2505
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2506
    iput-boolean p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->locked_:Z

    .line 2508
    return-object p0
.end method

.method public setLuid(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1768
    if-nez p1, :cond_0

    .line 1769
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1771
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1772
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->luid_:Ljava/lang/Object;

    .line 1774
    return-object p0
.end method

.method public setMId(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1888
    if-nez p1, :cond_0

    .line 1889
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1891
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1892
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->mId_:Ljava/lang/Object;

    .line 1894
    return-object p0
.end method

.method public setMmsVersion(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2124
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2125
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->mmsVersion_:I

    .line 2127
    return-object p0
.end method

.method public setMsgBox(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1839
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1840
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->msgBox_:I

    .line 1842
    return-object p0
.end method

.method public setMsgClass(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2074
    if-nez p1, :cond_0

    .line 2075
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2077
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2078
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->msgClass_:Ljava/lang/Object;

    .line 2080
    return-object p0
.end method

.method public setMsgSize(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2145
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2146
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->msgSize_:I

    .line 2148
    return-object p0
.end method

.method public setMsgType(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2103
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2104
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->msgType_:I

    .line 2106
    return-object p0
.end method

.method public setPriority(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2166
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2167
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->priority_:I

    .line 2169
    return-object p0
.end method

.method public setRead(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1860
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1861
    iput-boolean p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->read_:Z

    .line 1863
    return-object p0
.end method

.method public setReadReport(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2187
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2188
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->readReport_:I

    .line 2190
    return-object p0
.end method

.method public setReadStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2385
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2386
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->readStatus_:I

    .line 2388
    return-object p0
.end method

.method public setReportAllowed(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2208
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2209
    iput-boolean p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->reportAllowed_:Z

    .line 2211
    return-object p0
.end method

.method public setResponseStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2229
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2230
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->responseStatus_:I

    .line 2232
    return-object p0
.end method

.method public setResponseText(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2434
    if-nez p1, :cond_0

    .line 2435
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2437
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2438
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->responseText_:Ljava/lang/Object;

    .line 2440
    return-object p0
.end method

.method public setRetrieveStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2307
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2308
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->retrieveStatus_:I

    .line 2310
    return-object p0
.end method

.method public setRetrieveText(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2335
    if-nez p1, :cond_0

    .line 2336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2338
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2339
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->retrieveText_:Ljava/lang/Object;

    .line 2341
    return-object p0
.end method

.method public setRetrieveTextCharset(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2364
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2365
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->retrieveTextCharset_:I

    .line 2367
    return-object p0
.end method

.method public setSeen(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2526
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2527
    iput-boolean p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->seen_:Z

    .line 2529
    return-object p0
.end method

.method public setServerDate(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1818
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1819
    iput-wide p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->serverDate_:J

    .line 1821
    return-object p0
.end method

.method public setStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2250
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2251
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->status_:I

    .line 2253
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1924
    if-nez p1, :cond_0

    .line 1925
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1927
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1928
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->subject_:Ljava/lang/Object;

    .line 1930
    return-object p0
.end method

.method public setSubjectCharset(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1953
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 1954
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->subjectCharset_:I

    .line 1956
    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2278
    if-nez p1, :cond_0

    .line 2279
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2281
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->bitField0_:I

    .line 2282
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->transactionId_:Ljava/lang/Object;

    .line 2284
    return-object p0
.end method
