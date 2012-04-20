.class public final Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MmsProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/MmsProtos$MmsCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/MmsProtos$MmsCollection;",
        "Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private pdus_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/MmsProtos$Pdu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4538
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4641
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->pdus_:Ljava/util/List;

    .line 4539
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->maybeForceBuilderInitialization()V

    .line 4540
    return-void
.end method

.method static synthetic access$6200()Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;
    .locals 1

    .prologue
    .line 4533
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->create()Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;
    .locals 1

    .prologue
    .line 4545
    new-instance v0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePdusIsMutable()V
    .locals 2

    .prologue
    .line 4644
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 4645
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->pdus_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->pdus_:Ljava/util/List;

    .line 4646
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->bitField0_:I

    .line 4648
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 4543
    return-void
.end method


# virtual methods
.method public addPdus(Lcom/miui/milk/model/MmsProtos$Pdu;)Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4677
    if-nez p1, :cond_0

    .line 4678
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4680
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->ensurePdusIsMutable()V

    .line 4681
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->pdus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4683
    return-object p0
.end method

.method public build()Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .locals 2

    .prologue
    .line 4564
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->buildPartial()Lcom/miui/milk/model/MmsProtos$MmsCollection;

    move-result-object v0

    .line 4565
    .local v0, result:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4566
    invoke-static {v0}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4568
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4533
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->buildPartial()Lcom/miui/milk/model/MmsProtos$MmsCollection;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .locals 4

    .prologue
    .line 4582
    new-instance v1, Lcom/miui/milk/model/MmsProtos$MmsCollection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/milk/model/MmsProtos$MmsCollection;-><init>(Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;Lcom/miui/milk/model/MmsProtos$1;)V

    .line 4583
    .local v1, result:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->bitField0_:I

    .line 4584
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4585
    iget-object v2, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->pdus_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->pdus_:Ljava/util/List;

    .line 4586
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->bitField0_:I

    .line 4588
    :cond_0
    iget-object v2, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->pdus_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/MmsProtos$MmsCollection;->pdus_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->access$6402(Lcom/miui/milk/model/MmsProtos$MmsCollection;Ljava/util/List;)Ljava/util/List;

    .line 4589
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4533
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->clone()Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4533
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->clone()Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;
    .locals 2

    .prologue
    .line 4556
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->create()Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->buildPartial()Lcom/miui/milk/model/MmsProtos$MmsCollection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->mergeFrom(Lcom/miui/milk/model/MmsProtos$MmsCollection;)Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

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
    .line 4533
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->clone()Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

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
    .line 4533
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

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
    .line 4533
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4616
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4617
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 4622
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4624
    :sswitch_0
    return-object p0

    .line 4629
    :sswitch_1
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$Pdu;->newBuilder()Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    move-result-object v0

    .line 4630
    .local v0, subBuilder:Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4631
    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->buildPartial()Lcom/miui/milk/model/MmsProtos$Pdu;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->addPdus(Lcom/miui/milk/model/MmsProtos$Pdu;)Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    goto :goto_0

    .line 4617
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/MmsProtos$MmsCollection;)Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 4593
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->getDefaultInstance()Lcom/miui/milk/model/MmsProtos$MmsCollection;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4604
    :cond_0
    :goto_0
    return-object p0

    .line 4594
    :cond_1
    #getter for: Lcom/miui/milk/model/MmsProtos$MmsCollection;->pdus_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->access$6400(Lcom/miui/milk/model/MmsProtos$MmsCollection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4595
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->pdus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4596
    #getter for: Lcom/miui/milk/model/MmsProtos$MmsCollection;->pdus_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->access$6400(Lcom/miui/milk/model/MmsProtos$MmsCollection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->pdus_:Ljava/util/List;

    .line 4597
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->bitField0_:I

    goto :goto_0

    .line 4599
    :cond_2
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->ensurePdusIsMutable()V

    .line 4600
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->pdus_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/MmsProtos$MmsCollection;->pdus_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->access$6400(Lcom/miui/milk/model/MmsProtos$MmsCollection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
