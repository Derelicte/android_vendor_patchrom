.class public final Lcom/miui/milk/model/MetadataProtos$Metadata;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MetadataProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/MetadataProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/MetadataProtos$Metadata;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private container_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/MetadataProtos$Container;",
            ">;"
        }
    .end annotation
.end field

.field private lastDate_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private request_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/MetadataProtos$ResourceType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1851
    new-instance v0, Lcom/miui/milk/model/MetadataProtos$Metadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/MetadataProtos$Metadata;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/MetadataProtos$Metadata;->defaultInstance:Lcom/miui/milk/model/MetadataProtos$Metadata;

    .line 1852
    sget-object v0, Lcom/miui/milk/model/MetadataProtos$Metadata;->defaultInstance:Lcom/miui/milk/model/MetadataProtos$Metadata;

    invoke-direct {v0}, Lcom/miui/milk/model/MetadataProtos$Metadata;->initFields()V

    .line 1853
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1331
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1394
    iput-byte v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->memoizedIsInitialized:B

    .line 1417
    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->memoizedSerializedSize:I

    .line 1332
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;Lcom/miui/milk/model/MetadataProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1326
    invoke-direct {p0, p1}, Lcom/miui/milk/model/MetadataProtos$Metadata;-><init>(Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1333
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1394
    iput-byte v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->memoizedIsInitialized:B

    .line 1417
    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->memoizedSerializedSize:I

    .line 1333
    return-void
.end method

.method static synthetic access$2000(Lcom/miui/milk/model/MetadataProtos$Metadata;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->request_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/miui/milk/model/MetadataProtos$Metadata;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->request_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/miui/milk/model/MetadataProtos$Metadata;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->container_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/miui/milk/model/MetadataProtos$Metadata;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->container_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/miui/milk/model/MetadataProtos$Metadata;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1326
    iput-wide p1, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->lastDate_:J

    return-wide p1
.end method

.method static synthetic access$2302(Lcom/miui/milk/model/MetadataProtos$Metadata;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1326
    iput p1, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/MetadataProtos$Metadata;
    .locals 1

    .prologue
    .line 1337
    sget-object v0, Lcom/miui/milk/model/MetadataProtos$Metadata;->defaultInstance:Lcom/miui/milk/model/MetadataProtos$Metadata;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 1390
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->request_:Ljava/util/List;

    .line 1391
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->container_:Ljava/util/List;

    .line 1392
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->lastDate_:J

    .line 1393
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
    .locals 1

    .prologue
    .line 1518
    #calls: Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->create()Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->access$1800()Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/milk/model/MetadataProtos$Metadata;)Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1521
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Metadata;->newBuilder()Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->mergeFrom(Lcom/miui/milk/model/MetadataProtos$Metadata;)Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContainerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/MetadataProtos$Container;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->container_:Ljava/util/List;

    return-object v0
.end method

.method public getLastDate()J
    .locals 2

    .prologue
    .line 1386
    iget-wide v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->lastDate_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1419
    iget v2, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->memoizedSerializedSize:I

    .line 1420
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 1441
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 1422
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 1424
    const/4 v0, 0x0

    .line 1425
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->request_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1426
    iget-object v4, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->request_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/milk/model/MetadataProtos$ResourceType;

    invoke-virtual {v4}, Lcom/miui/milk/model/MetadataProtos$ResourceType;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 1425
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1429
    :cond_1
    add-int/2addr v2, v0

    .line 1430
    iget-object v4, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->request_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 1432
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->container_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1433
    const/4 v5, 0x2

    iget-object v4, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->container_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1432
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1436
    :cond_2
    iget v4, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1437
    const/4 v4, 0x3

    iget-wide v5, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->lastDate_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 1440
    :cond_3
    iput v2, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->memoizedSerializedSize:I

    move v3, v2

    .line 1441
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public hasLastDate()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1383
    iget v1, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->bitField0_:I

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

    .line 1396
    iget-byte v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->memoizedIsInitialized:B

    .line 1397
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 1400
    :goto_0
    return v1

    .line 1397
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1399
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->memoizedIsInitialized:B

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
    .line 1448
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1405
    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Metadata;->getSerializedSize()I

    .line 1406
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->request_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1407
    iget-object v1, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->request_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/milk/model/MetadataProtos$ResourceType;

    invoke-virtual {v1}, Lcom/miui/milk/model/MetadataProtos$ResourceType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1409
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->container_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1410
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->container_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1409
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1412
    :cond_1
    iget v1, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_2

    .line 1413
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/miui/milk/model/MetadataProtos$Metadata;->lastDate_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1415
    :cond_2
    return-void
.end method
