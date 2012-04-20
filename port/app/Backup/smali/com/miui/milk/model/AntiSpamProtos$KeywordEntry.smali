.class public final Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AntiSpamProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/AntiSpamProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeywordEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;


# instance fields
.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private bitField0_:I

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private guid_:Ljava/lang/Object;

.field private keyword_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2094
    new-instance v0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->defaultInstance:Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;

    .line 2095
    sget-object v0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->defaultInstance:Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;

    invoke-direct {v0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->initFields()V

    .line 2096
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1495
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1632
    iput-byte v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->memoizedIsInitialized:B

    .line 1661
    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->memoizedSerializedSize:I

    .line 1496
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;Lcom/miui/milk/model/AntiSpamProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1490
    invoke-direct {p0, p1}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;-><init>(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1497
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1632
    iput-byte v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->memoizedIsInitialized:B

    .line 1661
    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->memoizedSerializedSize:I

    .line 1497
    return-void
.end method

.method static synthetic access$2302(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1490
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1490
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1490
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->keyword_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1490
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1490
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1490
    iput p1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;
    .locals 1

    .prologue
    .line 1501
    sget-object v0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->defaultInstance:Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;

    return-object v0
.end method

.method private getGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1530
    iget-object v1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->guid_:Ljava/lang/Object;

    .line 1531
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1532
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1534
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->guid_:Ljava/lang/Object;

    .line 1537
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getKeywordBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1594
    iget-object v1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->keyword_:Ljava/lang/Object;

    .line 1595
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1596
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1598
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->keyword_:Ljava/lang/Object;

    .line 1601
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private getLuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1562
    iget-object v1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->luid_:Ljava/lang/Object;

    .line 1563
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1564
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1566
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->luid_:Ljava/lang/Object;

    .line 1569
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1626
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->guid_:Ljava/lang/Object;

    .line 1627
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->luid_:Ljava/lang/Object;

    .line 1628
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->keyword_:Ljava/lang/Object;

    .line 1629
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 1630
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 1631
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;
    .locals 1

    .prologue
    .line 1763
    #calls: Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->create()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->access$2100()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 1

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object v0
.end method

.method public getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 1

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1516
    iget-object v1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->guid_:Ljava/lang/Object;

    .line 1517
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1518
    check-cast v1, Ljava/lang/String;

    .line 1526
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1520
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1522
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1523
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1524
    iput-object v2, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1526
    goto :goto_0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1580
    iget-object v1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->keyword_:Ljava/lang/Object;

    .line 1581
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1582
    check-cast v1, Ljava/lang/String;

    .line 1590
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1584
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1586
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1587
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1588
    iput-object v2, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->keyword_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1590
    goto :goto_0
.end method

.method public getLuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1548
    iget-object v1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->luid_:Ljava/lang/Object;

    .line 1549
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1550
    check-cast v1, Ljava/lang/String;

    .line 1558
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1552
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1554
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1555
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1556
    iput-object v2, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1558
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1663
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->memoizedSerializedSize:I

    .line 1664
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1688
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1666
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1667
    iget v2, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 1668
    invoke-direct {p0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1671
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 1672
    invoke-direct {p0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1675
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1676
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->getKeywordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1679
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 1680
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1683
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 1684
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1687
    :cond_5
    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->memoizedSerializedSize:I

    move v1, v0

    .line 1688
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasActionType()Z
    .locals 2

    .prologue
    .line 1609
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConflictType()Z
    .locals 2

    .prologue
    .line 1619
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGuid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1513
    iget v1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKeyword()Z
    .locals 2

    .prologue
    .line 1577
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLuid()Z
    .locals 2

    .prologue
    .line 1545
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1634
    iget-byte v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->memoizedIsInitialized:B

    .line 1635
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 1638
    :goto_0
    return v1

    .line 1635
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1637
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1693
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1643
    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->getSerializedSize()I

    .line 1644
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1645
    invoke-direct {p0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1647
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1648
    invoke-direct {p0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1650
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1651
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->getKeywordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1653
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 1654
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1656
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 1657
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1659
    :cond_4
    return-void
.end method
