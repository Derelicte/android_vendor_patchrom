.class public final Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MetadataProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/MetadataProtos$Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/MetadataProtos$Metadata;",
        "Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;",
        ">;"
    }
.end annotation


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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1530
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1687
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->request_:Ljava/util/List;

    .line 1738
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->container_:Ljava/util/List;

    .line 1531
    invoke-direct {p0}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->maybeForceBuilderInitialization()V

    .line 1532
    return-void
.end method

.method static synthetic access$1800()Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
    .locals 1

    .prologue
    .line 1525
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->create()Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
    .locals 1

    .prologue
    .line 1537
    new-instance v0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;-><init>()V

    return-object v0
.end method

.method private ensureContainerIsMutable()V
    .locals 2

    .prologue
    .line 1741
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1742
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->container_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->container_:Ljava/util/List;

    .line 1743
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    .line 1745
    :cond_0
    return-void
.end method

.method private ensureRequestIsMutable()V
    .locals 2

    .prologue
    .line 1690
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1691
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->request_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->request_:Ljava/util/List;

    .line 1692
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    .line 1694
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1535
    return-void
.end method


# virtual methods
.method public addContainer(Lcom/miui/milk/model/MetadataProtos$Container;)Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1774
    if-nez p1, :cond_0

    .line 1775
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1777
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->ensureContainerIsMutable()V

    .line 1778
    iget-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->container_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1780
    return-object p0
.end method

.method public addRequest(Lcom/miui/milk/model/MetadataProtos$ResourceType;)Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1715
    if-nez p1, :cond_0

    .line 1716
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1718
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->ensureRequestIsMutable()V

    .line 1719
    iget-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->request_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1721
    return-object p0
.end method

.method public build()Lcom/miui/milk/model/MetadataProtos$Metadata;
    .locals 2

    .prologue
    .line 1560
    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->buildPartial()Lcom/miui/milk/model/MetadataProtos$Metadata;

    move-result-object v0

    .line 1561
    .local v0, result:Lcom/miui/milk/model/MetadataProtos$Metadata;
    invoke-virtual {v0}, Lcom/miui/milk/model/MetadataProtos$Metadata;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1562
    invoke-static {v0}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1564
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1525
    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->buildPartial()Lcom/miui/milk/model/MetadataProtos$Metadata;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/MetadataProtos$Metadata;
    .locals 5

    .prologue
    .line 1578
    new-instance v1, Lcom/miui/milk/model/MetadataProtos$Metadata;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/MetadataProtos$Metadata;-><init>(Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;Lcom/miui/milk/model/MetadataProtos$1;)V

    .line 1579
    .local v1, result:Lcom/miui/milk/model/MetadataProtos$Metadata;
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    .line 1580
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1581
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1582
    iget-object v3, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->request_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->request_:Ljava/util/List;

    .line 1583
    iget v3, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    .line 1585
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->request_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/MetadataProtos$Metadata;->request_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/MetadataProtos$Metadata;->access$2002(Lcom/miui/milk/model/MetadataProtos$Metadata;Ljava/util/List;)Ljava/util/List;

    .line 1586
    iget v3, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1587
    iget-object v3, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->container_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->container_:Ljava/util/List;

    .line 1588
    iget v3, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    .line 1590
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->container_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/MetadataProtos$Metadata;->container_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/MetadataProtos$Metadata;->access$2102(Lcom/miui/milk/model/MetadataProtos$Metadata;Ljava/util/List;)Ljava/util/List;

    .line 1591
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1592
    or-int/lit8 v2, v2, 0x1

    .line 1594
    :cond_2
    iget-wide v3, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->lastDate_:J

    #setter for: Lcom/miui/milk/model/MetadataProtos$Metadata;->lastDate_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/MetadataProtos$Metadata;->access$2202(Lcom/miui/milk/model/MetadataProtos$Metadata;J)J

    .line 1595
    #setter for: Lcom/miui/milk/model/MetadataProtos$Metadata;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/MetadataProtos$Metadata;->access$2302(Lcom/miui/milk/model/MetadataProtos$Metadata;I)I

    .line 1596
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1525
    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->clone()Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1525
    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->clone()Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
    .locals 2

    .prologue
    .line 1552
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->create()Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->buildPartial()Lcom/miui/milk/model/MetadataProtos$Metadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->mergeFrom(Lcom/miui/milk/model/MetadataProtos$Metadata;)Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

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
    .line 1525
    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->clone()Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

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
    .line 1525
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

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
    .line 1525
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1636
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 1637
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 1642
    invoke-virtual {p0, p1, p2, v4}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1644
    :sswitch_0
    return-object p0

    .line 1649
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 1650
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/miui/milk/model/MetadataProtos$ResourceType;->valueOf(I)Lcom/miui/milk/model/MetadataProtos$ResourceType;

    move-result-object v5

    .line 1651
    .local v5, value:Lcom/miui/milk/model/MetadataProtos$ResourceType;
    if-eqz v5, :cond_0

    .line 1652
    invoke-virtual {p0, v5}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->addRequest(Lcom/miui/milk/model/MetadataProtos$ResourceType;)Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

    goto :goto_0

    .line 1657
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/miui/milk/model/MetadataProtos$ResourceType;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 1658
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 1659
    .local v1, oldLimit:I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_2

    .line 1660
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 1661
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/miui/milk/model/MetadataProtos$ResourceType;->valueOf(I)Lcom/miui/milk/model/MetadataProtos$ResourceType;

    move-result-object v5

    .line 1662
    .restart local v5       #value:Lcom/miui/milk/model/MetadataProtos$ResourceType;
    if-eqz v5, :cond_1

    .line 1663
    invoke-virtual {p0, v5}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->addRequest(Lcom/miui/milk/model/MetadataProtos$ResourceType;)Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

    goto :goto_1

    .line 1666
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/miui/milk/model/MetadataProtos$ResourceType;
    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 1670
    .end local v0           #length:I
    .end local v1           #oldLimit:I
    :sswitch_3
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Container;->newBuilder()Lcom/miui/milk/model/MetadataProtos$Container$Builder;

    move-result-object v3

    .line 1671
    .local v3, subBuilder:Lcom/miui/milk/model/MetadataProtos$Container$Builder;
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1672
    invoke-virtual {v3}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->buildPartial()Lcom/miui/milk/model/MetadataProtos$Container;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->addContainer(Lcom/miui/milk/model/MetadataProtos$Container;)Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

    goto :goto_0

    .line 1676
    .end local v3           #subBuilder:Lcom/miui/milk/model/MetadataProtos$Container$Builder;
    :sswitch_4
    iget v6, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    .line 1677
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->lastDate_:J

    goto :goto_0

    .line 1637
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x12 -> :sswitch_3
        0x18 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/MetadataProtos$Metadata;)Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1600
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Metadata;->getDefaultInstance()Lcom/miui/milk/model/MetadataProtos$Metadata;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1624
    :cond_0
    :goto_0
    return-object p0

    .line 1601
    :cond_1
    #getter for: Lcom/miui/milk/model/MetadataProtos$Metadata;->request_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/MetadataProtos$Metadata;->access$2000(Lcom/miui/milk/model/MetadataProtos$Metadata;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1602
    iget-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->request_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1603
    #getter for: Lcom/miui/milk/model/MetadataProtos$Metadata;->request_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/MetadataProtos$Metadata;->access$2000(Lcom/miui/milk/model/MetadataProtos$Metadata;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->request_:Ljava/util/List;

    .line 1604
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    .line 1611
    :cond_2
    :goto_1
    #getter for: Lcom/miui/milk/model/MetadataProtos$Metadata;->container_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/MetadataProtos$Metadata;->access$2100(Lcom/miui/milk/model/MetadataProtos$Metadata;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1612
    iget-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->container_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1613
    #getter for: Lcom/miui/milk/model/MetadataProtos$Metadata;->container_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/MetadataProtos$Metadata;->access$2100(Lcom/miui/milk/model/MetadataProtos$Metadata;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->container_:Ljava/util/List;

    .line 1614
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    .line 1621
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/miui/milk/model/MetadataProtos$Metadata;->hasLastDate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1622
    invoke-virtual {p1}, Lcom/miui/milk/model/MetadataProtos$Metadata;->getLastDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->setLastDate(J)Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

    goto :goto_0

    .line 1606
    :cond_4
    invoke-direct {p0}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->ensureRequestIsMutable()V

    .line 1607
    iget-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->request_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/MetadataProtos$Metadata;->request_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/MetadataProtos$Metadata;->access$2000(Lcom/miui/milk/model/MetadataProtos$Metadata;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1616
    :cond_5
    invoke-direct {p0}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->ensureContainerIsMutable()V

    .line 1617
    iget-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->container_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/MetadataProtos$Metadata;->container_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/MetadataProtos$Metadata;->access$2100(Lcom/miui/milk/model/MetadataProtos$Metadata;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public setLastDate(J)Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1835
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->bitField0_:I

    .line 1836
    iput-wide p1, p0, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->lastDate_:J

    .line 1838
    return-object p0
.end method
