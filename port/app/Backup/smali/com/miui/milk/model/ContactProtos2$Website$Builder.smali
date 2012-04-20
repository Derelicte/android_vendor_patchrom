.class public final Lcom/miui/milk/model/ContactProtos2$Website$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2$Website;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos2$Website;",
        "Lcom/miui/milk/model/ContactProtos2$Website$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private type_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6527
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6651
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->value_:Ljava/lang/Object;

    .line 6708
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->label_:Ljava/lang/Object;

    .line 6528
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->maybeForceBuilderInitialization()V

    .line 6529
    return-void
.end method

.method static synthetic access$8200()Lcom/miui/milk/model/ContactProtos2$Website$Builder;
    .locals 1

    .prologue
    .line 6522
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos2$Website$Builder;
    .locals 1

    .prologue
    .line 6534
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 6532
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/ContactProtos2$Website;
    .locals 2

    .prologue
    .line 6557
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Website;

    move-result-object v0

    .line 6558
    .local v0, result:Lcom/miui/milk/model/ContactProtos2$Website;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Website;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6559
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6561
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6522
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Website;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos2$Website;
    .locals 5

    .prologue
    .line 6575
    new-instance v1, Lcom/miui/milk/model/ContactProtos2$Website;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos2$Website;-><init>(Lcom/miui/milk/model/ContactProtos2$Website$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V

    .line 6576
    .local v1, result:Lcom/miui/milk/model/ContactProtos2$Website;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->bitField0_:I

    .line 6577
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 6578
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6579
    or-int/lit8 v2, v2, 0x1

    .line 6581
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Website;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Website;->access$8402(Lcom/miui/milk/model/ContactProtos2$Website;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6582
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 6583
    or-int/lit8 v2, v2, 0x2

    .line 6585
    :cond_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->type_:I

    #setter for: Lcom/miui/milk/model/ContactProtos2$Website;->type_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Website;->access$8502(Lcom/miui/milk/model/ContactProtos2$Website;I)I

    .line 6586
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 6587
    or-int/lit8 v2, v2, 0x4

    .line 6589
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Website;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Website;->access$8602(Lcom/miui/milk/model/ContactProtos2$Website;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6590
    #setter for: Lcom/miui/milk/model/ContactProtos2$Website;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Website;->access$8702(Lcom/miui/milk/model/ContactProtos2$Website;I)I

    .line 6591
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6522
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6522
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos2$Website$Builder;
    .locals 2

    .prologue
    .line 6549
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Website;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$Website;)Lcom/miui/milk/model/ContactProtos2$Website$Builder;

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
    .line 6522
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Website$Builder;

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
    .line 6522
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Website$Builder;

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
    .line 6522
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Website$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6617
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 6618
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 6623
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6625
    :sswitch_0
    return-object p0

    .line 6630
    :sswitch_1
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->bitField0_:I

    .line 6631
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 6635
    :sswitch_2
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->bitField0_:I

    .line 6636
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->type_:I

    goto :goto_0

    .line 6640
    :sswitch_3
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->bitField0_:I

    .line 6641
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 6618
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos2$Website;)Lcom/miui/milk/model/ContactProtos2$Website$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 6595
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Website;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Website;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 6605
    :cond_0
    :goto_0
    return-object p0

    .line 6596
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Website;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6597
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Website;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    .line 6599
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Website;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6600
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Website;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    .line 6602
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Website;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6603
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Website;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Website$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6723
    if-nez p1, :cond_0

    .line 6724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6726
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->bitField0_:I

    .line 6727
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->label_:Ljava/lang/Object;

    .line 6729
    return-object p0
.end method

.method public setType(I)Lcom/miui/milk/model/ContactProtos2$Website$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6695
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->bitField0_:I

    .line 6696
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->type_:I

    .line 6698
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Website$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6666
    if-nez p1, :cond_0

    .line 6667
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6669
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->bitField0_:I

    .line 6670
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->value_:Ljava/lang/Object;

    .line 6672
    return-object p0
.end method
