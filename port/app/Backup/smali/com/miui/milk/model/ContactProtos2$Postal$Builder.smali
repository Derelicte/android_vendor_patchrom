.class public final Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2$Postal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos2$Postal;",
        "Lcom/miui/milk/model/ContactProtos2$Postal$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private city_:Ljava/lang/Object;

.field private country_:Ljava/lang/Object;

.field private label_:Ljava/lang/Object;

.field private neighborhood_:Ljava/lang/Object;

.field private pobox_:Ljava/lang/Object;

.field private postcode_:Ljava/lang/Object;

.field private region_:Ljava/lang/Object;

.field private street_:Ljava/lang/Object;

.field private type_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5649
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5871
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->value_:Ljava/lang/Object;

    .line 5928
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->label_:Ljava/lang/Object;

    .line 5964
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->street_:Ljava/lang/Object;

    .line 6000
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->pobox_:Ljava/lang/Object;

    .line 6036
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->neighborhood_:Ljava/lang/Object;

    .line 6072
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->city_:Ljava/lang/Object;

    .line 6108
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->region_:Ljava/lang/Object;

    .line 6144
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->postcode_:Ljava/lang/Object;

    .line 6180
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->country_:Ljava/lang/Object;

    .line 5650
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->maybeForceBuilderInitialization()V

    .line 5651
    return-void
.end method

.method static synthetic access$6800()Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    .locals 1

    .prologue
    .line 5644
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    .locals 1

    .prologue
    .line 5656
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 5654
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/ContactProtos2$Postal;
    .locals 2

    .prologue
    .line 5693
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Postal;

    move-result-object v0

    .line 5694
    .local v0, result:Lcom/miui/milk/model/ContactProtos2$Postal;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Postal;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5695
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5697
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5644
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Postal;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos2$Postal;
    .locals 5

    .prologue
    .line 5711
    new-instance v1, Lcom/miui/milk/model/ContactProtos2$Postal;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos2$Postal;-><init>(Lcom/miui/milk/model/ContactProtos2$Postal$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V

    .line 5712
    .local v1, result:Lcom/miui/milk/model/ContactProtos2$Postal;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 5713
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5714
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5715
    or-int/lit8 v2, v2, 0x1

    .line 5717
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Postal;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Postal;->access$7002(Lcom/miui/milk/model/ContactProtos2$Postal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5718
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5719
    or-int/lit8 v2, v2, 0x2

    .line 5721
    :cond_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->type_:I

    #setter for: Lcom/miui/milk/model/ContactProtos2$Postal;->type_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Postal;->access$7102(Lcom/miui/milk/model/ContactProtos2$Postal;I)I

    .line 5722
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 5723
    or-int/lit8 v2, v2, 0x4

    .line 5725
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Postal;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Postal;->access$7202(Lcom/miui/milk/model/ContactProtos2$Postal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5726
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 5727
    or-int/lit8 v2, v2, 0x8

    .line 5729
    :cond_3
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->street_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Postal;->street_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Postal;->access$7302(Lcom/miui/milk/model/ContactProtos2$Postal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5730
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 5731
    or-int/lit8 v2, v2, 0x10

    .line 5733
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->pobox_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Postal;->pobox_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Postal;->access$7402(Lcom/miui/milk/model/ContactProtos2$Postal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5734
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 5735
    or-int/lit8 v2, v2, 0x20

    .line 5737
    :cond_5
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->neighborhood_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Postal;->neighborhood_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Postal;->access$7502(Lcom/miui/milk/model/ContactProtos2$Postal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5738
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 5739
    or-int/lit8 v2, v2, 0x40

    .line 5741
    :cond_6
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->city_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Postal;->city_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Postal;->access$7602(Lcom/miui/milk/model/ContactProtos2$Postal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5742
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 5743
    or-int/lit16 v2, v2, 0x80

    .line 5745
    :cond_7
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->region_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Postal;->region_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Postal;->access$7702(Lcom/miui/milk/model/ContactProtos2$Postal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5746
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 5747
    or-int/lit16 v2, v2, 0x100

    .line 5749
    :cond_8
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->postcode_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Postal;->postcode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Postal;->access$7802(Lcom/miui/milk/model/ContactProtos2$Postal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5750
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 5751
    or-int/lit16 v2, v2, 0x200

    .line 5753
    :cond_9
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->country_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Postal;->country_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Postal;->access$7902(Lcom/miui/milk/model/ContactProtos2$Postal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5754
    #setter for: Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Postal;->access$8002(Lcom/miui/milk/model/ContactProtos2$Postal;I)I

    .line 5755
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5644
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5644
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    .locals 2

    .prologue
    .line 5685
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Postal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$Postal;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

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
    .line 5644
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

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
    .line 5644
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

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
    .line 5644
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5802
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 5803
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5808
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5810
    :sswitch_0
    return-object p0

    .line 5815
    :sswitch_1
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 5816
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 5820
    :sswitch_2
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 5821
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->type_:I

    goto :goto_0

    .line 5825
    :sswitch_3
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 5826
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 5830
    :sswitch_4
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 5831
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->street_:Ljava/lang/Object;

    goto :goto_0

    .line 5835
    :sswitch_5
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 5836
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->pobox_:Ljava/lang/Object;

    goto :goto_0

    .line 5840
    :sswitch_6
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 5841
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->neighborhood_:Ljava/lang/Object;

    goto :goto_0

    .line 5845
    :sswitch_7
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 5846
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->city_:Ljava/lang/Object;

    goto :goto_0

    .line 5850
    :sswitch_8
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 5851
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->region_:Ljava/lang/Object;

    goto :goto_0

    .line 5855
    :sswitch_9
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 5856
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->postcode_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 5860
    :sswitch_a
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 5861
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->country_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 5803
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos2$Postal;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 5759
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Postal;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Postal;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 5790
    :cond_0
    :goto_0
    return-object p0

    .line 5760
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5761
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 5763
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5764
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 5766
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5767
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 5769
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->hasStreet()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5770
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->getStreet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setStreet(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 5772
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->hasPobox()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5773
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->getPobox()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setPobox(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 5775
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->hasNeighborhood()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5776
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->getNeighborhood()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setNeighborhood(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 5778
    :cond_7
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5779
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setCity(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 5781
    :cond_8
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5782
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setRegion(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 5784
    :cond_9
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->hasPostcode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5785
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->getPostcode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setPostcode(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 5787
    :cond_a
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5788
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Postal;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setCountry(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    goto/16 :goto_0
.end method

.method public setCity(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6087
    if-nez p1, :cond_0

    .line 6088
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6090
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 6091
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->city_:Ljava/lang/Object;

    .line 6093
    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6195
    if-nez p1, :cond_0

    .line 6196
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6198
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 6199
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->country_:Ljava/lang/Object;

    .line 6201
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5943
    if-nez p1, :cond_0

    .line 5944
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5946
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 5947
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->label_:Ljava/lang/Object;

    .line 5949
    return-object p0
.end method

.method public setNeighborhood(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6051
    if-nez p1, :cond_0

    .line 6052
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6054
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 6055
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->neighborhood_:Ljava/lang/Object;

    .line 6057
    return-object p0
.end method

.method public setPobox(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6015
    if-nez p1, :cond_0

    .line 6016
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6018
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 6019
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->pobox_:Ljava/lang/Object;

    .line 6021
    return-object p0
.end method

.method public setPostcode(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6159
    if-nez p1, :cond_0

    .line 6160
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6162
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 6163
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->postcode_:Ljava/lang/Object;

    .line 6165
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6123
    if-nez p1, :cond_0

    .line 6124
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6126
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 6127
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->region_:Ljava/lang/Object;

    .line 6129
    return-object p0
.end method

.method public setStreet(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5979
    if-nez p1, :cond_0

    .line 5980
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5982
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 5983
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->street_:Ljava/lang/Object;

    .line 5985
    return-object p0
.end method

.method public setType(I)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5915
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 5916
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->type_:I

    .line 5918
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5886
    if-nez p1, :cond_0

    .line 5887
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5889
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->bitField0_:I

    .line 5890
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->value_:Ljava/lang/Object;

    .line 5892
    return-object p0
.end method
