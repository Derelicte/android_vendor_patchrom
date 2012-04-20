.class public final Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "WifiProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/WifiProtos$WifiConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/WifiProtos$WifiConfig;",
        "Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private anonymousIdentity_:Ljava/lang/Object;

.field private authAlg_:Ljava/lang/Object;

.field private bitField0_:I

.field private bssid_:Ljava/lang/Object;

.field private caCertFile_:Lcom/google/protobuf/ByteString;

.field private caCert_:Ljava/lang/Object;

.field private clientCertFile_:Lcom/google/protobuf/ByteString;

.field private clientCert_:Ljava/lang/Object;

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private eap_:Ljava/lang/Object;

.field private group_:Ljava/lang/Object;

.field private guid_:Ljava/lang/Object;

.field private identity_:Ljava/lang/Object;

.field private keyMgmt_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private mode_:I

.field private pairwise_:Ljava/lang/Object;

.field private password_:Ljava/lang/Object;

.field private phase2_:Ljava/lang/Object;

.field private priority_:I

.field private privateKeyFile_:Lcom/google/protobuf/ByteString;

.field private privateKey_:Ljava/lang/Object;

.field private proto_:Ljava/lang/Object;

.field private psk_:Ljava/lang/Object;

.field private scanSsid_:I

.field private ssid_:Ljava/lang/Object;

.field private wepKey0_:Ljava/lang/Object;

.field private wepKey1_:Ljava/lang/Object;

.field private wepKey2_:Ljava/lang/Object;

.field private wepKey3_:Ljava/lang/Object;

.field private wepTxKeyIndex_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1309
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1833
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->guid_:Ljava/lang/Object;

    .line 1869
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->luid_:Ljava/lang/Object;

    .line 1905
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->ssid_:Ljava/lang/Object;

    .line 1941
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bssid_:Ljava/lang/Object;

    .line 1977
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->psk_:Ljava/lang/Object;

    .line 2013
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey0_:Ljava/lang/Object;

    .line 2049
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey1_:Ljava/lang/Object;

    .line 2085
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey2_:Ljava/lang/Object;

    .line 2121
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey3_:Ljava/lang/Object;

    .line 2241
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->keyMgmt_:Ljava/lang/Object;

    .line 2277
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->proto_:Ljava/lang/Object;

    .line 2313
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->authAlg_:Ljava/lang/Object;

    .line 2349
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->pairwise_:Ljava/lang/Object;

    .line 2385
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->group_:Ljava/lang/Object;

    .line 2421
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->eap_:Ljava/lang/Object;

    .line 2457
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->phase2_:Ljava/lang/Object;

    .line 2493
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->identity_:Ljava/lang/Object;

    .line 2529
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->anonymousIdentity_:Ljava/lang/Object;

    .line 2565
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->password_:Ljava/lang/Object;

    .line 2601
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->clientCert_:Ljava/lang/Object;

    .line 2637
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->privateKey_:Ljava/lang/Object;

    .line 2673
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->caCert_:Ljava/lang/Object;

    .line 2709
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->clientCertFile_:Lcom/google/protobuf/ByteString;

    .line 2733
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->privateKeyFile_:Lcom/google/protobuf/ByteString;

    .line 2757
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->caCertFile_:Lcom/google/protobuf/ByteString;

    .line 2781
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 2805
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 1310
    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->maybeForceBuilderInitialization()V

    .line 1311
    return-void
.end method

.method static synthetic access$100()Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1

    .prologue
    .line 1304
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->create()Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1

    .prologue
    .line 1316
    new-instance v0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1314
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/WifiProtos$WifiConfig;
    .locals 2

    .prologue
    .line 1395
    invoke-virtual {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->buildPartial()Lcom/miui/milk/model/WifiProtos$WifiConfig;

    move-result-object v0

    .line 1396
    .local v0, result:Lcom/miui/milk/model/WifiProtos$WifiConfig;
    invoke-virtual {v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1397
    invoke-static {v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1399
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1304
    invoke-virtual {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->buildPartial()Lcom/miui/milk/model/WifiProtos$WifiConfig;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/WifiProtos$WifiConfig;
    .locals 10

    .prologue
    const/high16 v9, 0x8

    const/high16 v8, 0x4

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 1413
    new-instance v1, Lcom/miui/milk/model/WifiProtos$WifiConfig;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;-><init>(Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;Lcom/miui/milk/model/WifiProtos$1;)V

    .line 1414
    .local v1, result:Lcom/miui/milk/model/WifiProtos$WifiConfig;
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1415
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1416
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1417
    or-int/lit8 v2, v2, 0x1

    .line 1419
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->guid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->guid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$302(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1421
    or-int/lit8 v2, v2, 0x2

    .line 1423
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->luid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->luid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$402(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1425
    or-int/lit8 v2, v2, 0x4

    .line 1427
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->ssid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->ssid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$502(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1429
    or-int/lit8 v2, v2, 0x8

    .line 1431
    :cond_3
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bssid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->bssid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$602(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1433
    or-int/lit8 v2, v2, 0x10

    .line 1435
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->psk_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->psk_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$702(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1437
    or-int/lit8 v2, v2, 0x20

    .line 1439
    :cond_5
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey0_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey0_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$802(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1441
    or-int/lit8 v2, v2, 0x40

    .line 1443
    :cond_6
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey1_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey1_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$902(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1445
    or-int/lit16 v2, v2, 0x80

    .line 1447
    :cond_7
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey2_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey2_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$1002(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1449
    or-int/lit16 v2, v2, 0x100

    .line 1451
    :cond_8
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey3_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepKey3_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$1102(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1453
    or-int/lit16 v2, v2, 0x200

    .line 1455
    :cond_9
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepTxKeyIndex_:I

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->wepTxKeyIndex_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$1202(Lcom/miui/milk/model/WifiProtos$WifiConfig;I)I

    .line 1456
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1457
    or-int/lit16 v2, v2, 0x400

    .line 1459
    :cond_a
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->priority_:I

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->priority_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$1302(Lcom/miui/milk/model/WifiProtos$WifiConfig;I)I

    .line 1460
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 1461
    or-int/lit16 v2, v2, 0x800

    .line 1463
    :cond_b
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->scanSsid_:I

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->scanSsid_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$1402(Lcom/miui/milk/model/WifiProtos$WifiConfig;I)I

    .line 1464
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 1465
    or-int/lit16 v2, v2, 0x1000

    .line 1467
    :cond_c
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->mode_:I

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->mode_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$1502(Lcom/miui/milk/model/WifiProtos$WifiConfig;I)I

    .line 1468
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 1469
    or-int/lit16 v2, v2, 0x2000

    .line 1471
    :cond_d
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->keyMgmt_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->keyMgmt_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$1602(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 1473
    or-int/lit16 v2, v2, 0x4000

    .line 1475
    :cond_e
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->proto_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->proto_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$1702(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    and-int v3, v0, v5

    if-ne v3, v5, :cond_f

    .line 1477
    or-int/2addr v2, v5

    .line 1479
    :cond_f
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->authAlg_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->authAlg_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$1802(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    and-int v3, v0, v6

    if-ne v3, v6, :cond_10

    .line 1481
    or-int/2addr v2, v6

    .line 1483
    :cond_10
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->pairwise_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->pairwise_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$1902(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    and-int v3, v0, v7

    if-ne v3, v7, :cond_11

    .line 1485
    or-int/2addr v2, v7

    .line 1487
    :cond_11
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->group_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->group_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$2002(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    and-int v3, v0, v8

    if-ne v3, v8, :cond_12

    .line 1489
    or-int/2addr v2, v8

    .line 1491
    :cond_12
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->eap_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->eap_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$2102(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    and-int v3, v0, v9

    if-ne v3, v9, :cond_13

    .line 1493
    or-int/2addr v2, v9

    .line 1495
    :cond_13
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->phase2_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->phase2_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$2202(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    const/high16 v3, 0x10

    and-int/2addr v3, v0

    const/high16 v4, 0x10

    if-ne v3, v4, :cond_14

    .line 1497
    const/high16 v3, 0x10

    or-int/2addr v2, v3

    .line 1499
    :cond_14
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->identity_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->identity_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$2302(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    const/high16 v3, 0x20

    and-int/2addr v3, v0

    const/high16 v4, 0x20

    if-ne v3, v4, :cond_15

    .line 1501
    const/high16 v3, 0x20

    or-int/2addr v2, v3

    .line 1503
    :cond_15
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->anonymousIdentity_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->anonymousIdentity_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$2402(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    const/high16 v3, 0x40

    and-int/2addr v3, v0

    const/high16 v4, 0x40

    if-ne v3, v4, :cond_16

    .line 1505
    const/high16 v3, 0x40

    or-int/2addr v2, v3

    .line 1507
    :cond_16
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->password_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->password_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$2502(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    const/high16 v3, 0x80

    and-int/2addr v3, v0

    const/high16 v4, 0x80

    if-ne v3, v4, :cond_17

    .line 1509
    const/high16 v3, 0x80

    or-int/2addr v2, v3

    .line 1511
    :cond_17
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->clientCert_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->clientCert_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$2602(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    const/high16 v3, 0x100

    and-int/2addr v3, v0

    const/high16 v4, 0x100

    if-ne v3, v4, :cond_18

    .line 1513
    const/high16 v3, 0x100

    or-int/2addr v2, v3

    .line 1515
    :cond_18
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->privateKey_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->privateKey_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$2702(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    const/high16 v3, 0x200

    and-int/2addr v3, v0

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_19

    .line 1517
    const/high16 v3, 0x200

    or-int/2addr v2, v3

    .line 1519
    :cond_19
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->caCert_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->caCert_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$2802(Lcom/miui/milk/model/WifiProtos$WifiConfig;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    const/high16 v3, 0x400

    and-int/2addr v3, v0

    const/high16 v4, 0x400

    if-ne v3, v4, :cond_1a

    .line 1521
    const/high16 v3, 0x400

    or-int/2addr v2, v3

    .line 1523
    :cond_1a
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->clientCertFile_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->clientCertFile_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$2902(Lcom/miui/milk/model/WifiProtos$WifiConfig;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1524
    const/high16 v3, 0x800

    and-int/2addr v3, v0

    const/high16 v4, 0x800

    if-ne v3, v4, :cond_1b

    .line 1525
    const/high16 v3, 0x800

    or-int/2addr v2, v3

    .line 1527
    :cond_1b
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->privateKeyFile_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->privateKeyFile_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$3002(Lcom/miui/milk/model/WifiProtos$WifiConfig;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1528
    const/high16 v3, 0x1000

    and-int/2addr v3, v0

    const/high16 v4, 0x1000

    if-ne v3, v4, :cond_1c

    .line 1529
    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    .line 1531
    :cond_1c
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->caCertFile_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->caCertFile_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$3102(Lcom/miui/milk/model/WifiProtos$WifiConfig;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1532
    const/high16 v3, 0x2000

    and-int/2addr v3, v0

    const/high16 v4, 0x2000

    if-ne v3, v4, :cond_1d

    .line 1533
    const/high16 v3, 0x2000

    or-int/2addr v2, v3

    .line 1535
    :cond_1d
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$3202(Lcom/miui/milk/model/WifiProtos$WifiConfig;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 1536
    const/high16 v3, 0x4000

    and-int/2addr v3, v0

    const/high16 v4, 0x4000

    if-ne v3, v4, :cond_1e

    .line 1537
    const/high16 v3, 0x4000

    or-int/2addr v2, v3

    .line 1539
    :cond_1e
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$3302(Lcom/miui/milk/model/WifiProtos$WifiConfig;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 1540
    #setter for: Lcom/miui/milk/model/WifiProtos$WifiConfig;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->access$3402(Lcom/miui/milk/model/WifiProtos$WifiConfig;I)I

    .line 1541
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1304
    invoke-virtual {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->clone()Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1304
    invoke-virtual {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->clone()Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 2

    .prologue
    .line 1387
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->create()Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->buildPartial()Lcom/miui/milk/model/WifiProtos$WifiConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->mergeFrom(Lcom/miui/milk/model/WifiProtos$WifiConfig;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

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
    .line 1304
    invoke-virtual {p0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->clone()Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getKeyMgmt()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->keyMgmt_:Ljava/lang/Object;

    .line 2247
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2248
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2249
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->keyMgmt_:Ljava/lang/Object;

    .line 2252
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getPsk()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->psk_:Ljava/lang/Object;

    .line 1983
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1984
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1985
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->psk_:Ljava/lang/Object;

    .line 1988
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->ssid_:Ljava/lang/Object;

    .line 1911
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1912
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1913
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->ssid_:Ljava/lang/Object;

    .line 1916
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getWepKey0()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey0_:Ljava/lang/Object;

    .line 2019
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2020
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2021
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey0_:Ljava/lang/Object;

    .line 2024
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getWepKey1()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey1_:Ljava/lang/Object;

    .line 2055
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2056
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2057
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey1_:Ljava/lang/Object;

    .line 2060
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getWepKey2()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey2_:Ljava/lang/Object;

    .line 2091
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2092
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2093
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey2_:Ljava/lang/Object;

    .line 2096
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getWepKey3()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2126
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey3_:Ljava/lang/Object;

    .line 2127
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2128
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2129
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey3_:Ljava/lang/Object;

    .line 2132
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
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
    .line 1304
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

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
    .line 1304
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1651
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1652
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 1657
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1659
    :sswitch_0
    return-object p0

    .line 1664
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1665
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 1669
    :sswitch_2
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1670
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 1674
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1675
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->ssid_:Ljava/lang/Object;

    goto :goto_0

    .line 1679
    :sswitch_4
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1680
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bssid_:Ljava/lang/Object;

    goto :goto_0

    .line 1684
    :sswitch_5
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1685
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->psk_:Ljava/lang/Object;

    goto :goto_0

    .line 1689
    :sswitch_6
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1690
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey0_:Ljava/lang/Object;

    goto :goto_0

    .line 1694
    :sswitch_7
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1695
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey1_:Ljava/lang/Object;

    goto :goto_0

    .line 1699
    :sswitch_8
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1700
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey2_:Ljava/lang/Object;

    goto :goto_0

    .line 1704
    :sswitch_9
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1705
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey3_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1709
    :sswitch_a
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1710
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepTxKeyIndex_:I

    goto/16 :goto_0

    .line 1714
    :sswitch_b
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1715
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->priority_:I

    goto/16 :goto_0

    .line 1719
    :sswitch_c
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x800

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1720
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->scanSsid_:I

    goto/16 :goto_0

    .line 1724
    :sswitch_d
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1725
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->mode_:I

    goto/16 :goto_0

    .line 1729
    :sswitch_e
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1730
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->keyMgmt_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1734
    :sswitch_f
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1735
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->proto_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1739
    :sswitch_10
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const v4, 0x8000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1740
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->authAlg_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1744
    :sswitch_11
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v4, 0x1

    or-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1745
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->pairwise_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1749
    :sswitch_12
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v4, 0x2

    or-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1750
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->group_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1754
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1755
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ActionType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v2

    .line 1756
    .local v2, value:Lcom/miui/milk/model/CommonProtos$ActionType;
    if-eqz v2, :cond_0

    .line 1757
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v4, 0x2000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1758
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    goto/16 :goto_0

    .line 1763
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/CommonProtos$ActionType;
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1764
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ConflictType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v2

    .line 1765
    .local v2, value:Lcom/miui/milk/model/CommonProtos$ConflictType;
    if-eqz v2, :cond_0

    .line 1766
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v4, 0x4000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1767
    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    goto/16 :goto_0

    .line 1772
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/CommonProtos$ConflictType;
    :sswitch_15
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v4, 0x4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1773
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->eap_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1777
    :sswitch_16
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v4, 0x8

    or-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1778
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->phase2_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1782
    :sswitch_17
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v4, 0x10

    or-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1783
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->identity_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1787
    :sswitch_18
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v4, 0x20

    or-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1788
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->anonymousIdentity_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1792
    :sswitch_19
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v4, 0x40

    or-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1793
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->password_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1797
    :sswitch_1a
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v4, 0x80

    or-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1798
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->clientCert_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1802
    :sswitch_1b
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v4, 0x100

    or-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1803
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->privateKey_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1807
    :sswitch_1c
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v4, 0x200

    or-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1808
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->caCert_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1812
    :sswitch_1d
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v4, 0x400

    or-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1813
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->clientCertFile_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 1817
    :sswitch_1e
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v4, 0x800

    or-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1818
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->privateKeyFile_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 1822
    :sswitch_1f
    iget v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v4, 0x1000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1823
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->caCertFile_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 1652
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x7a -> :sswitch_e
        0x82 -> :sswitch_f
        0x8a -> :sswitch_10
        0x92 -> :sswitch_11
        0x9a -> :sswitch_12
        0xa0 -> :sswitch_13
        0xa8 -> :sswitch_14
        0xfa -> :sswitch_15
        0x102 -> :sswitch_16
        0x10a -> :sswitch_17
        0x112 -> :sswitch_18
        0x11a -> :sswitch_19
        0x122 -> :sswitch_1a
        0x12a -> :sswitch_1b
        0x132 -> :sswitch_1c
        0x172 -> :sswitch_1d
        0x17a -> :sswitch_1e
        0x182 -> :sswitch_1f
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/WifiProtos$WifiConfig;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1545
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getDefaultInstance()Lcom/miui/milk/model/WifiProtos$WifiConfig;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1639
    :cond_0
    :goto_0
    return-object p0

    .line 1546
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1547
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1549
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1550
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1552
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasSsid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1553
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setSsid(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1555
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasBssid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1556
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getBssid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setBssid(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1558
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasPsk()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1559
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPsk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPsk(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1561
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasWepKey0()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1562
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setWepKey0(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1564
    :cond_7
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasWepKey1()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1565
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setWepKey1(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1567
    :cond_8
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasWepKey2()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1568
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setWepKey2(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1570
    :cond_9
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasWepKey3()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1571
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepKey3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setWepKey3(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1573
    :cond_a
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasWepTxKeyIndex()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1574
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getWepTxKeyIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setWepTxKeyIndex(I)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1576
    :cond_b
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1577
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPriority(I)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1579
    :cond_c
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasScanSsid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1580
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getScanSsid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setScanSsid(I)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1582
    :cond_d
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1583
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setMode(I)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1585
    :cond_e
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasKeyMgmt()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1586
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getKeyMgmt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setKeyMgmt(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1588
    :cond_f
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasProto()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1589
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getProto()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setProto(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1591
    :cond_10
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasAuthAlg()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1592
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getAuthAlg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setAuthAlg(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1594
    :cond_11
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasPairwise()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1595
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPairwise()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPairwise(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1597
    :cond_12
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasGroup()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1598
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setGroup(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1600
    :cond_13
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasEap()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1601
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getEap()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setEap(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1603
    :cond_14
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasPhase2()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1604
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPhase2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPhase2(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1606
    :cond_15
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasIdentity()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1607
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setIdentity(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1609
    :cond_16
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasAnonymousIdentity()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1610
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setAnonymousIdentity(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1612
    :cond_17
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasPassword()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1613
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPassword(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1615
    :cond_18
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasClientCert()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1616
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getClientCert()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setClientCert(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1618
    :cond_19
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasPrivateKey()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1619
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPrivateKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPrivateKey(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1621
    :cond_1a
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasCaCert()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1622
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getCaCert()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setCaCert(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1624
    :cond_1b
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasClientCertFile()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1625
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getClientCertFile()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setClientCertFile(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1627
    :cond_1c
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasPrivateKeyFile()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1628
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getPrivateKeyFile()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setPrivateKeyFile(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1630
    :cond_1d
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasCaCertFile()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1631
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getCaCertFile()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setCaCertFile(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1633
    :cond_1e
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasActionType()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1634
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    .line 1636
    :cond_1f
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->hasConflictType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1637
    invoke-virtual {p1}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    goto/16 :goto_0
.end method

.method public setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2789
    if-nez p1, :cond_0

    .line 2790
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2792
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2793
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 2795
    return-object p0
.end method

.method public setAnonymousIdentity(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2544
    if-nez p1, :cond_0

    .line 2545
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2547
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2548
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->anonymousIdentity_:Ljava/lang/Object;

    .line 2550
    return-object p0
.end method

.method public setAuthAlg(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2328
    if-nez p1, :cond_0

    .line 2329
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2331
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2332
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->authAlg_:Ljava/lang/Object;

    .line 2334
    return-object p0
.end method

.method public setBssid(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1956
    if-nez p1, :cond_0

    .line 1957
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1959
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1960
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bssid_:Ljava/lang/Object;

    .line 1962
    return-object p0
.end method

.method public setCaCert(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2688
    if-nez p1, :cond_0

    .line 2689
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2691
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2692
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->caCert_:Ljava/lang/Object;

    .line 2694
    return-object p0
.end method

.method public setCaCertFile(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2765
    if-nez p1, :cond_0

    .line 2766
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2768
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2769
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->caCertFile_:Lcom/google/protobuf/ByteString;

    .line 2771
    return-object p0
.end method

.method public setClientCert(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2616
    if-nez p1, :cond_0

    .line 2617
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2619
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2620
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->clientCert_:Ljava/lang/Object;

    .line 2622
    return-object p0
.end method

.method public setClientCertFile(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2717
    if-nez p1, :cond_0

    .line 2718
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2720
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2721
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->clientCertFile_:Lcom/google/protobuf/ByteString;

    .line 2723
    return-object p0
.end method

.method public setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2813
    if-nez p1, :cond_0

    .line 2814
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2816
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2817
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 2819
    return-object p0
.end method

.method public setEap(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2436
    if-nez p1, :cond_0

    .line 2437
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2439
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2440
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->eap_:Ljava/lang/Object;

    .line 2442
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2400
    if-nez p1, :cond_0

    .line 2401
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2403
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2404
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->group_:Ljava/lang/Object;

    .line 2406
    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1848
    if-nez p1, :cond_0

    .line 1849
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1851
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1852
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->guid_:Ljava/lang/Object;

    .line 1854
    return-object p0
.end method

.method public setIdentity(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2508
    if-nez p1, :cond_0

    .line 2509
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2511
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2512
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->identity_:Ljava/lang/Object;

    .line 2514
    return-object p0
.end method

.method public setKeyMgmt(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2256
    if-nez p1, :cond_0

    .line 2257
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2259
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2260
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->keyMgmt_:Ljava/lang/Object;

    .line 2262
    return-object p0
.end method

.method public setLuid(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1884
    if-nez p1, :cond_0

    .line 1885
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1887
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1888
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->luid_:Ljava/lang/Object;

    .line 1890
    return-object p0
.end method

.method public setMode(I)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2228
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2229
    iput p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->mode_:I

    .line 2231
    return-object p0
.end method

.method public setPairwise(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2364
    if-nez p1, :cond_0

    .line 2365
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2367
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2368
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->pairwise_:Ljava/lang/Object;

    .line 2370
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2580
    if-nez p1, :cond_0

    .line 2581
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2583
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2584
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->password_:Ljava/lang/Object;

    .line 2586
    return-object p0
.end method

.method public setPhase2(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2472
    if-nez p1, :cond_0

    .line 2473
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2475
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2476
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->phase2_:Ljava/lang/Object;

    .line 2478
    return-object p0
.end method

.method public setPriority(I)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2186
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2187
    iput p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->priority_:I

    .line 2189
    return-object p0
.end method

.method public setPrivateKey(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2652
    if-nez p1, :cond_0

    .line 2653
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2655
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2656
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->privateKey_:Ljava/lang/Object;

    .line 2658
    return-object p0
.end method

.method public setPrivateKeyFile(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2741
    if-nez p1, :cond_0

    .line 2742
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2744
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2745
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->privateKeyFile_:Lcom/google/protobuf/ByteString;

    .line 2747
    return-object p0
.end method

.method public setProto(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2292
    if-nez p1, :cond_0

    .line 2293
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2295
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2296
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->proto_:Ljava/lang/Object;

    .line 2298
    return-object p0
.end method

.method public setPsk(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1992
    if-nez p1, :cond_0

    .line 1993
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1995
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1996
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->psk_:Ljava/lang/Object;

    .line 1998
    return-object p0
.end method

.method public setScanSsid(I)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2207
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2208
    iput p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->scanSsid_:I

    .line 2210
    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1920
    if-nez p1, :cond_0

    .line 1921
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1923
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 1924
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->ssid_:Ljava/lang/Object;

    .line 1926
    return-object p0
.end method

.method public setWepKey0(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2028
    if-nez p1, :cond_0

    .line 2029
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2031
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2032
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey0_:Ljava/lang/Object;

    .line 2034
    return-object p0
.end method

.method public setWepKey1(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2064
    if-nez p1, :cond_0

    .line 2065
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2067
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2068
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey1_:Ljava/lang/Object;

    .line 2070
    return-object p0
.end method

.method public setWepKey2(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2100
    if-nez p1, :cond_0

    .line 2101
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2103
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2104
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey2_:Ljava/lang/Object;

    .line 2106
    return-object p0
.end method

.method public setWepKey3(Ljava/lang/String;)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2136
    if-nez p1, :cond_0

    .line 2137
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2139
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2140
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepKey3_:Ljava/lang/Object;

    .line 2142
    return-object p0
.end method

.method public setWepTxKeyIndex(I)Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2165
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->bitField0_:I

    .line 2166
    iput p1, p0, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->wepTxKeyIndex_:I

    .line 2168
    return-object p0
.end method
