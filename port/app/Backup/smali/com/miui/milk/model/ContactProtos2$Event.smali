.class public final Lcom/miui/milk/model/ContactProtos2$Event;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos2$Event$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos2$Event;


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2206
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Event;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Event;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos2$Event;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Event;

    .line 2207
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Event;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Event;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Event;->initFields()V

    .line 2208
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos2$Event$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1717
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1857
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->memoizedIsInitialized:B

    .line 1880
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->memoizedSerializedSize:I

    .line 1718
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos2$Event$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1712
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos2$Event;-><init>(Lcom/miui/milk/model/ContactProtos2$Event$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1719
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1857
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->memoizedIsInitialized:B

    .line 1880
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->memoizedSerializedSize:I

    .line 1719
    return-void
.end method

.method static synthetic access$2502(Lcom/miui/milk/model/ContactProtos2$Event;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1712
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Event;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/miui/milk/model/ContactProtos2$Event;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1712
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Event;->type_:I

    return p1
.end method

.method static synthetic access$2702(Lcom/miui/milk/model/ContactProtos2$Event;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1712
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Event;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/miui/milk/model/ContactProtos2$Event;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1712
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Event;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Event;
    .locals 1

    .prologue
    .line 1723
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Event;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Event;

    return-object v0
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1841
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Event;->label_:Ljava/lang/Object;

    .line 1842
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1843
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1845
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->label_:Ljava/lang/Object;

    .line 1848
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

.method private getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1799
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Event;->value_:Ljava/lang/Object;

    .line 1800
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1801
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1803
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->value_:Ljava/lang/Object;

    .line 1806
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
    .line 1853
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->value_:Ljava/lang/Object;

    .line 1854
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->type_:I

    .line 1855
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->label_:Ljava/lang/Object;

    .line 1856
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos2$Event$Builder;
    .locals 1

    .prologue
    .line 1974
    #calls: Lcom/miui/milk/model/ContactProtos2$Event$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Event$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->access$2300()Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1827
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Event;->label_:Ljava/lang/Object;

    .line 1828
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1829
    check-cast v1, Ljava/lang/String;

    .line 1837
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1831
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1833
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1834
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1835
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Event;->label_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1837
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1882
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->memoizedSerializedSize:I

    .line 1883
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1899
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1885
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1886
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 1887
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Event;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1890
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 1891
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Event;->type_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1894
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1895
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Event;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1898
    :cond_3
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->memoizedSerializedSize:I

    move v1, v0

    .line 1899
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1817
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->type_:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1785
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Event;->value_:Ljava/lang/Object;

    .line 1786
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1787
    check-cast v1, Ljava/lang/String;

    .line 1795
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1789
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1791
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1792
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1793
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Event;->value_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1795
    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 1824
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 1814
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->bitField0_:I

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

.method public hasValue()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1782
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

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

    .line 1859
    iget-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->memoizedIsInitialized:B

    .line 1860
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 1863
    :goto_0
    return v1

    .line 1860
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1862
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/ContactProtos2$Event;->memoizedIsInitialized:B

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
    .line 1904
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

    .line 1868
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Event;->getSerializedSize()I

    .line 1869
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1870
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Event;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1872
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1873
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->type_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1875
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1876
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Event;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1878
    :cond_2
    return-void
.end method
