.class public final Lcom/miui/milk/model/SmsProtos$SmsBookmark;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SmsProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/SmsProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmsBookmark"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/SmsProtos$SmsBookmark;

.field private static final serialVersionUID:J


# instance fields
.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private body_:Ljava/lang/Object;

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private forward_:I

.field private fromName_:Ljava/lang/Object;

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private markDate_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:I

.field private subject_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2630
    new-instance v0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->defaultInstance:Lcom/miui/milk/model/SmsProtos$SmsBookmark;

    .line 2631
    sget-object v0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->defaultInstance:Lcom/miui/milk/model/SmsProtos$SmsBookmark;

    invoke-direct {v0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->initFields()V

    .line 2632
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1600
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1869
    iput-byte v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->memoizedIsInitialized:B

    .line 1916
    iput v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->memoizedSerializedSize:I

    .line 1601
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;Lcom/miui/milk/model/SmsProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1595
    invoke-direct {p0, p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;-><init>(Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1602
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1869
    iput-byte v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->memoizedIsInitialized:B

    .line 1916
    iput v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->memoizedSerializedSize:I

    .line 1602
    return-void
.end method

.method static synthetic access$2402(Lcom/miui/milk/model/SmsProtos$SmsBookmark;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/miui/milk/model/SmsProtos$SmsBookmark;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/miui/milk/model/SmsProtos$SmsBookmark;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->fromName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/miui/milk/model/SmsProtos$SmsBookmark;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->address_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/miui/milk/model/SmsProtos$SmsBookmark;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->subject_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/miui/milk/model/SmsProtos$SmsBookmark;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->body_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/miui/milk/model/SmsProtos$SmsBookmark;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1595
    iput-wide p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->markDate_:J

    return-wide p1
.end method

.method static synthetic access$3102(Lcom/miui/milk/model/SmsProtos$SmsBookmark;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1595
    iput p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->forward_:I

    return p1
.end method

.method static synthetic access$3202(Lcom/miui/milk/model/SmsProtos$SmsBookmark;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1595
    iput p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->status_:I

    return p1
.end method

.method static synthetic access$3302(Lcom/miui/milk/model/SmsProtos$SmsBookmark;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/miui/milk/model/SmsProtos$SmsBookmark;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/miui/milk/model/SmsProtos$SmsBookmark;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1595
    iput p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    return p1
.end method

.method private getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1731
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->address_:Ljava/lang/Object;

    .line 1732
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1733
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1735
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->address_:Ljava/lang/Object;

    .line 1738
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

.method private getBodyBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1795
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->body_:Ljava/lang/Object;

    .line 1796
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1797
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1799
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->body_:Ljava/lang/Object;

    .line 1802
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

.method public static getDefaultInstance()Lcom/miui/milk/model/SmsProtos$SmsBookmark;
    .locals 1

    .prologue
    .line 1606
    sget-object v0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->defaultInstance:Lcom/miui/milk/model/SmsProtos$SmsBookmark;

    return-object v0
.end method

.method private getFromNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1699
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->fromName_:Ljava/lang/Object;

    .line 1700
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1701
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1703
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->fromName_:Ljava/lang/Object;

    .line 1706
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

.method private getGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1635
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->guid_:Ljava/lang/Object;

    .line 1636
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1637
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1639
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->guid_:Ljava/lang/Object;

    .line 1642
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
    .line 1667
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->luid_:Ljava/lang/Object;

    .line 1668
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1669
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1671
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->luid_:Ljava/lang/Object;

    .line 1674
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

.method private getSubjectBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1763
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->subject_:Ljava/lang/Object;

    .line 1764
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1765
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1767
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->subject_:Ljava/lang/Object;

    .line 1770
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
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1857
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->guid_:Ljava/lang/Object;

    .line 1858
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->luid_:Ljava/lang/Object;

    .line 1859
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->fromName_:Ljava/lang/Object;

    .line 1860
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->address_:Ljava/lang/Object;

    .line 1861
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->subject_:Ljava/lang/Object;

    .line 1862
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->body_:Ljava/lang/Object;

    .line 1863
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->markDate_:J

    .line 1864
    iput v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->forward_:I

    .line 1865
    iput v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->status_:I

    .line 1866
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 1867
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 1868
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    .locals 1

    .prologue
    .line 2044
    #calls: Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->create()Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->access$2200()Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 1

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1717
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->address_:Ljava/lang/Object;

    .line 1718
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1719
    check-cast v1, Ljava/lang/String;

    .line 1727
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1721
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1723
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1724
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1725
    iput-object v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->address_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1727
    goto :goto_0
.end method

.method public getBody()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1781
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->body_:Ljava/lang/Object;

    .line 1782
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1783
    check-cast v1, Ljava/lang/String;

    .line 1791
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1785
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1787
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1788
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1789
    iput-object v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->body_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1791
    goto :goto_0
.end method

.method public getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object v0
.end method

.method public getForward()I
    .locals 1

    .prologue
    .line 1823
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->forward_:I

    return v0
.end method

.method public getFromName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1685
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->fromName_:Ljava/lang/Object;

    .line 1686
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1687
    check-cast v1, Ljava/lang/String;

    .line 1695
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1689
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1691
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1692
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1693
    iput-object v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->fromName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1695
    goto :goto_0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1621
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->guid_:Ljava/lang/Object;

    .line 1622
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1623
    check-cast v1, Ljava/lang/String;

    .line 1631
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1625
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1627
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1628
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1629
    iput-object v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1631
    goto :goto_0
.end method

.method public getLuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1653
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->luid_:Ljava/lang/Object;

    .line 1654
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1655
    check-cast v1, Ljava/lang/String;

    .line 1663
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1657
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1659
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1660
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1661
    iput-object v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1663
    goto :goto_0
.end method

.method public getMarkDate()J
    .locals 2

    .prologue
    .line 1813
    iget-wide v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->markDate_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1918
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->memoizedSerializedSize:I

    .line 1919
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1967
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1921
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1922
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 1923
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1926
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 1927
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1930
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 1931
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getFromNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1934
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 1935
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1938
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 1939
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getSubjectBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1942
    :cond_5
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 1943
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getBodyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1946
    :cond_6
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 1947
    const/4 v2, 0x7

    iget-wide v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->markDate_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1950
    :cond_7
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 1951
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->forward_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1954
    :cond_8
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 1955
    const/16 v2, 0x9

    iget v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->status_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1958
    :cond_9
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 1959
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1962
    :cond_a
    iget v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b

    .line 1963
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1966
    :cond_b
    iput v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->memoizedSerializedSize:I

    move v1, v0

    .line 1967
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1833
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->status_:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1749
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->subject_:Ljava/lang/Object;

    .line 1750
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1751
    check-cast v1, Ljava/lang/String;

    .line 1759
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1753
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1755
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1756
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1757
    iput-object v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->subject_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1759
    goto :goto_0
.end method

.method public hasActionType()Z
    .locals 2

    .prologue
    .line 1840
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAddress()Z
    .locals 2

    .prologue
    .line 1714
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

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

.method public hasBody()Z
    .locals 2

    .prologue
    .line 1778
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

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
    .line 1850
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasForward()Z
    .locals 2

    .prologue
    .line 1820
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFromName()Z
    .locals 2

    .prologue
    .line 1682
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

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

.method public hasGuid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1618
    iget v1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLuid()Z
    .locals 2

    .prologue
    .line 1650
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

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

.method public hasMarkDate()Z
    .locals 2

    .prologue
    .line 1810
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 1830
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubject()Z
    .locals 2

    .prologue
    .line 1746
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

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

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1974
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1880
    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getSerializedSize()I

    .line 1881
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1882
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1884
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1885
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1887
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 1888
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getFromNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1890
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 1891
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1893
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 1894
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getSubjectBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1896
    :cond_4
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 1897
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getBodyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1899
    :cond_5
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 1900
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->markDate_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1902
    :cond_6
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 1903
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->forward_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1905
    :cond_7
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 1906
    const/16 v0, 0x9

    iget v1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1908
    :cond_8
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 1909
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1911
    :cond_9
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 1912
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1914
    :cond_a
    return-void
.end method
