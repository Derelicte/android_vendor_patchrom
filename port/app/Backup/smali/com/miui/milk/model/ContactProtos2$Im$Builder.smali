.class public final Lcom/miui/milk/model/ContactProtos2$Im$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2$Im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos2$Im;",
        "Lcom/miui/milk/model/ContactProtos2$Im$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private customProtocol_:Ljava/lang/Object;

.field private label_:Ljava/lang/Object;

.field private protocol_:I

.field private type_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2633
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2785
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->value_:Ljava/lang/Object;

    .line 2842
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->label_:Ljava/lang/Object;

    .line 2899
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->customProtocol_:Ljava/lang/Object;

    .line 2634
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->maybeForceBuilderInitialization()V

    .line 2635
    return-void
.end method

.method static synthetic access$3000()Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    .locals 1

    .prologue
    .line 2628
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    .locals 1

    .prologue
    .line 2640
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2638
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/ContactProtos2$Im;
    .locals 2

    .prologue
    .line 2667
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Im;

    move-result-object v0

    .line 2668
    .local v0, result:Lcom/miui/milk/model/ContactProtos2$Im;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Im;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2669
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2671
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2628
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Im;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos2$Im;
    .locals 5

    .prologue
    .line 2685
    new-instance v1, Lcom/miui/milk/model/ContactProtos2$Im;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos2$Im;-><init>(Lcom/miui/milk/model/ContactProtos2$Im$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V

    .line 2686
    .local v1, result:Lcom/miui/milk/model/ContactProtos2$Im;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    .line 2687
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2688
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2689
    or-int/lit8 v2, v2, 0x1

    .line 2691
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Im;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Im;->access$3202(Lcom/miui/milk/model/ContactProtos2$Im;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2692
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2693
    or-int/lit8 v2, v2, 0x2

    .line 2695
    :cond_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->type_:I

    #setter for: Lcom/miui/milk/model/ContactProtos2$Im;->type_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Im;->access$3302(Lcom/miui/milk/model/ContactProtos2$Im;I)I

    .line 2696
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2697
    or-int/lit8 v2, v2, 0x4

    .line 2699
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Im;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Im;->access$3402(Lcom/miui/milk/model/ContactProtos2$Im;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2700
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2701
    or-int/lit8 v2, v2, 0x8

    .line 2703
    :cond_3
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->protocol_:I

    #setter for: Lcom/miui/milk/model/ContactProtos2$Im;->protocol_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Im;->access$3502(Lcom/miui/milk/model/ContactProtos2$Im;I)I

    .line 2704
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2705
    or-int/lit8 v2, v2, 0x10

    .line 2707
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->customProtocol_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Im;->customProtocol_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Im;->access$3602(Lcom/miui/milk/model/ContactProtos2$Im;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2708
    #setter for: Lcom/miui/milk/model/ContactProtos2$Im;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Im;->access$3702(Lcom/miui/milk/model/ContactProtos2$Im;I)I

    .line 2709
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2628
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2628
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    .locals 2

    .prologue
    .line 2659
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Im;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$Im;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

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
    .line 2628
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Im$Builder;

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
    .line 2628
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

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
    .line 2628
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2741
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2742
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2747
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2749
    :sswitch_0
    return-object p0

    .line 2754
    :sswitch_1
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    .line 2755
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 2759
    :sswitch_2
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    .line 2760
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->type_:I

    goto :goto_0

    .line 2764
    :sswitch_3
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    .line 2765
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 2769
    :sswitch_4
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    .line 2770
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->protocol_:I

    goto :goto_0

    .line 2774
    :sswitch_5
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    .line 2775
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->customProtocol_:Ljava/lang/Object;

    goto :goto_0

    .line 2742
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos2$Im;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2713
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Im;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Im;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2729
    :cond_0
    :goto_0
    return-object p0

    .line 2714
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Im;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2715
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Im;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 2717
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Im;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2718
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Im;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 2720
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Im;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2721
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Im;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 2723
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Im;->hasProtocol()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2724
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Im;->getProtocol()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setProtocol(I)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 2726
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Im;->hasCustomProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2727
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Im;->getCustomProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setCustomProtocol(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    goto :goto_0
.end method

.method public setCustomProtocol(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2914
    if-nez p1, :cond_0

    .line 2915
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2917
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    .line 2918
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->customProtocol_:Ljava/lang/Object;

    .line 2920
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2857
    if-nez p1, :cond_0

    .line 2858
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2860
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    .line 2861
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->label_:Ljava/lang/Object;

    .line 2863
    return-object p0
.end method

.method public setProtocol(I)Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2886
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    .line 2887
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->protocol_:I

    .line 2889
    return-object p0
.end method

.method public setType(I)Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2829
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    .line 2830
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->type_:I

    .line 2832
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2800
    if-nez p1, :cond_0

    .line 2801
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2803
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->bitField0_:I

    .line 2804
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->value_:Ljava/lang/Object;

    .line 2806
    return-object p0
.end method
