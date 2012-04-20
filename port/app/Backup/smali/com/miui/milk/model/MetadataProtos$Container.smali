.class public final Lcom/miui/milk/model/MetadataProtos$Container;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MetadataProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/MetadataProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Container"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/MetadataProtos$Container$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/MetadataProtos$Container;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private guid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private resourceId_:Ljava/lang/Object;

.field private resource_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/MetadataProtos$Resource;",
            ">;"
        }
    .end annotation
.end field

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1301
    new-instance v0, Lcom/miui/milk/model/MetadataProtos$Container;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/MetadataProtos$Container;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/MetadataProtos$Container;->defaultInstance:Lcom/miui/milk/model/MetadataProtos$Container;

    .line 1302
    sget-object v0, Lcom/miui/milk/model/MetadataProtos$Container;->defaultInstance:Lcom/miui/milk/model/MetadataProtos$Container;

    invoke-direct {v0}, Lcom/miui/milk/model/MetadataProtos$Container;->initFields()V

    .line 1303
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/MetadataProtos$Container$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 626
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 774
    iput-byte v0, p0, Lcom/miui/milk/model/MetadataProtos$Container;->memoizedIsInitialized:B

    .line 803
    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Container;->memoizedSerializedSize:I

    .line 627
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/MetadataProtos$Container$Builder;Lcom/miui/milk/model/MetadataProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 621
    invoke-direct {p0, p1}, Lcom/miui/milk/model/MetadataProtos$Container;-><init>(Lcom/miui/milk/model/MetadataProtos$Container$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 628
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 774
    iput-byte v0, p0, Lcom/miui/milk/model/MetadataProtos$Container;->memoizedIsInitialized:B

    .line 803
    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Container;->memoizedSerializedSize:I

    .line 628
    return-void
.end method

.method static synthetic access$1102(Lcom/miui/milk/model/MetadataProtos$Container;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 621
    iput-object p1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/miui/milk/model/MetadataProtos$Container;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 621
    iput p1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->type_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/miui/milk/model/MetadataProtos$Container;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 621
    iput-object p1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->resourceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/miui/milk/model/MetadataProtos$Container;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 621
    iput-object p1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/miui/milk/model/MetadataProtos$Container;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Container;->resource_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/miui/milk/model/MetadataProtos$Container;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 621
    iput-object p1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->resource_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/miui/milk/model/MetadataProtos$Container;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 621
    iput p1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/MetadataProtos$Container;
    .locals 1

    .prologue
    .line 632
    sget-object v0, Lcom/miui/milk/model/MetadataProtos$Container;->defaultInstance:Lcom/miui/milk/model/MetadataProtos$Container;

    return-object v0
.end method

.method private getGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 661
    iget-object v1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->guid_:Ljava/lang/Object;

    .line 662
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 663
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 665
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Container;->guid_:Ljava/lang/Object;

    .line 668
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

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 735
    iget-object v1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->name_:Ljava/lang/Object;

    .line 736
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 737
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 739
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Container;->name_:Ljava/lang/Object;

    .line 742
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

.method private getResourceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 703
    iget-object v1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->resourceId_:Ljava/lang/Object;

    .line 704
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 705
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 707
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Container;->resourceId_:Ljava/lang/Object;

    .line 710
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
    .line 768
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Container;->guid_:Ljava/lang/Object;

    .line 769
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Container;->type_:I

    .line 770
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Container;->resourceId_:Ljava/lang/Object;

    .line 771
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Container;->name_:Ljava/lang/Object;

    .line 772
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Container;->resource_:Ljava/util/List;

    .line 773
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/MetadataProtos$Container$Builder;
    .locals 1

    .prologue
    .line 907
    #calls: Lcom/miui/milk/model/MetadataProtos$Container$Builder;->create()Lcom/miui/milk/model/MetadataProtos$Container$Builder;
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->access$900()Lcom/miui/milk/model/MetadataProtos$Container$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getGuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 647
    iget-object v1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->guid_:Ljava/lang/Object;

    .line 648
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 649
    check-cast v1, Ljava/lang/String;

    .line 657
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 651
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 653
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 655
    iput-object v2, p0, Lcom/miui/milk/model/MetadataProtos$Container;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 657
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 721
    iget-object v1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->name_:Ljava/lang/Object;

    .line 722
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 723
    check-cast v1, Ljava/lang/String;

    .line 731
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 725
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 727
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 729
    iput-object v2, p0, Lcom/miui/milk/model/MetadataProtos$Container;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 731
    goto :goto_0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 689
    iget-object v1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->resourceId_:Ljava/lang/Object;

    .line 690
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 691
    check-cast v1, Ljava/lang/String;

    .line 699
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 693
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 695
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 696
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 697
    iput-object v2, p0, Lcom/miui/milk/model/MetadataProtos$Container;->resourceId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 699
    goto :goto_0
.end method

.method public getResourceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/MetadataProtos$Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 750
    iget-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Container;->resource_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 805
    iget v1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->memoizedSerializedSize:I

    .line 806
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 830
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 808
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 809
    iget v3, p0, Lcom/miui/milk/model/MetadataProtos$Container;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 810
    invoke-direct {p0}, Lcom/miui/milk/model/MetadataProtos$Container;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 813
    :cond_1
    iget v3, p0, Lcom/miui/milk/model/MetadataProtos$Container;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 814
    iget v3, p0, Lcom/miui/milk/model/MetadataProtos$Container;->type_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 817
    :cond_2
    iget v3, p0, Lcom/miui/milk/model/MetadataProtos$Container;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3

    .line 818
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/MetadataProtos$Container;->getResourceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 821
    :cond_3
    iget v3, p0, Lcom/miui/milk/model/MetadataProtos$Container;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 822
    invoke-direct {p0}, Lcom/miui/milk/model/MetadataProtos$Container;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 825
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/miui/milk/model/MetadataProtos$Container;->resource_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 826
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/miui/milk/model/MetadataProtos$Container;->resource_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 825
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 829
    :cond_5
    iput v1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->memoizedSerializedSize:I

    move v2, v1

    .line 830
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Container;->type_:I

    return v0
.end method

.method public hasGuid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 644
    iget v1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    .line 718
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Container;->bitField0_:I

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

.method public hasResourceId()Z
    .locals 2

    .prologue
    .line 686
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Container;->bitField0_:I

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
    .line 676
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Container;->bitField0_:I

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

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 837
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
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 785
    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Container;->getSerializedSize()I

    .line 786
    iget v1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 787
    invoke-direct {p0}, Lcom/miui/milk/model/MetadataProtos$Container;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 789
    :cond_0
    iget v1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 790
    iget v1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->type_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 792
    :cond_1
    iget v1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 793
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/MetadataProtos$Container;->getResourceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 795
    :cond_2
    iget v1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 796
    invoke-direct {p0}, Lcom/miui/milk/model/MetadataProtos$Container;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 798
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->resource_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 799
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/miui/milk/model/MetadataProtos$Container;->resource_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 798
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 801
    :cond_4
    return-void
.end method
