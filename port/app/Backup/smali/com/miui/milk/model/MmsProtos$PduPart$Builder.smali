.class public final Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MmsProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/MmsProtos$PduPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/MmsProtos$PduPart;",
        "Lcom/miui/milk/model/MmsProtos$PduPart$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private charset_:I

.field private contentDisposition_:Ljava/lang/Object;

.field private contentId_:Ljava/lang/Object;

.field private contentLocation_:Ljava/lang/Object;

.field private contentTypeStart_:I

.field private contentTypeType_:Ljava/lang/Object;

.field private contentType_:Ljava/lang/Object;

.field private data_:Lcom/google/protobuf/ByteString;

.field private fileName_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private sequence_:I

.field private text_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3735
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4006
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentType_:Ljava/lang/Object;

    .line 4042
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->name_:Ljava/lang/Object;

    .line 4099
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentDisposition_:Ljava/lang/Object;

    .line 4135
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->fileName_:Ljava/lang/Object;

    .line 4171
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentId_:Ljava/lang/Object;

    .line 4207
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentLocation_:Ljava/lang/Object;

    .line 4264
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentTypeType_:Ljava/lang/Object;

    .line 4300
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->text_:Ljava/lang/Object;

    .line 4336
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 3736
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->maybeForceBuilderInitialization()V

    .line 3737
    return-void
.end method

.method static synthetic access$4600()Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    .locals 1

    .prologue
    .line 3730
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->create()Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    .locals 1

    .prologue
    .line 3742
    new-instance v0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 3740
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/MmsProtos$PduPart;
    .locals 2

    .prologue
    .line 3783
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->buildPartial()Lcom/miui/milk/model/MmsProtos$PduPart;

    move-result-object v0

    .line 3784
    .local v0, result:Lcom/miui/milk/model/MmsProtos$PduPart;
    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduPart;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3785
    invoke-static {v0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3787
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3730
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->buildPartial()Lcom/miui/milk/model/MmsProtos$PduPart;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/MmsProtos$PduPart;
    .locals 5

    .prologue
    .line 3801
    new-instance v1, Lcom/miui/milk/model/MmsProtos$PduPart;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/MmsProtos$PduPart;-><init>(Lcom/miui/milk/model/MmsProtos$PduPart$Builder;Lcom/miui/milk/model/MmsProtos$1;)V

    .line 3802
    .local v1, result:Lcom/miui/milk/model/MmsProtos$PduPart;
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 3803
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3804
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3805
    or-int/lit8 v2, v2, 0x1

    .line 3807
    :cond_0
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->sequence_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$PduPart;->sequence_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/MmsProtos$PduPart;->access$4802(Lcom/miui/milk/model/MmsProtos$PduPart;I)I

    .line 3808
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3809
    or-int/lit8 v2, v2, 0x2

    .line 3811
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentType_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$PduPart;->contentType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/MmsProtos$PduPart;->access$4902(Lcom/miui/milk/model/MmsProtos$PduPart;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3812
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3813
    or-int/lit8 v2, v2, 0x4

    .line 3815
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$PduPart;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/MmsProtos$PduPart;->access$5002(Lcom/miui/milk/model/MmsProtos$PduPart;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3816
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 3817
    or-int/lit8 v2, v2, 0x8

    .line 3819
    :cond_3
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->charset_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$PduPart;->charset_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/MmsProtos$PduPart;->access$5102(Lcom/miui/milk/model/MmsProtos$PduPart;I)I

    .line 3820
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 3821
    or-int/lit8 v2, v2, 0x10

    .line 3823
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentDisposition_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$PduPart;->contentDisposition_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/MmsProtos$PduPart;->access$5202(Lcom/miui/milk/model/MmsProtos$PduPart;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3824
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 3825
    or-int/lit8 v2, v2, 0x20

    .line 3827
    :cond_5
    iget-object v3, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->fileName_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$PduPart;->fileName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/MmsProtos$PduPart;->access$5302(Lcom/miui/milk/model/MmsProtos$PduPart;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3828
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 3829
    or-int/lit8 v2, v2, 0x40

    .line 3831
    :cond_6
    iget-object v3, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentId_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$PduPart;->contentId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/MmsProtos$PduPart;->access$5402(Lcom/miui/milk/model/MmsProtos$PduPart;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3832
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 3833
    or-int/lit16 v2, v2, 0x80

    .line 3835
    :cond_7
    iget-object v3, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentLocation_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$PduPart;->contentLocation_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/MmsProtos$PduPart;->access$5502(Lcom/miui/milk/model/MmsProtos$PduPart;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3836
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 3837
    or-int/lit16 v2, v2, 0x100

    .line 3839
    :cond_8
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentTypeStart_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$PduPart;->contentTypeStart_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/MmsProtos$PduPart;->access$5602(Lcom/miui/milk/model/MmsProtos$PduPart;I)I

    .line 3840
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 3841
    or-int/lit16 v2, v2, 0x200

    .line 3843
    :cond_9
    iget-object v3, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentTypeType_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$PduPart;->contentTypeType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/MmsProtos$PduPart;->access$5702(Lcom/miui/milk/model/MmsProtos$PduPart;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3844
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 3845
    or-int/lit16 v2, v2, 0x400

    .line 3847
    :cond_a
    iget-object v3, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$PduPart;->text_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/MmsProtos$PduPart;->access$5802(Lcom/miui/milk/model/MmsProtos$PduPart;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3848
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 3849
    or-int/lit16 v2, v2, 0x800

    .line 3851
    :cond_b
    iget-object v3, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->data_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/miui/milk/model/MmsProtos$PduPart;->data_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/miui/milk/model/MmsProtos$PduPart;->access$5902(Lcom/miui/milk/model/MmsProtos$PduPart;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 3852
    #setter for: Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/MmsProtos$PduPart;->access$6002(Lcom/miui/milk/model/MmsProtos$PduPart;I)I

    .line 3853
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3730
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->clone()Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3730
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->clone()Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    .locals 2

    .prologue
    .line 3775
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->create()Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->buildPartial()Lcom/miui/milk/model/MmsProtos$PduPart;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->mergeFrom(Lcom/miui/milk/model/MmsProtos$PduPart;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

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
    .line 3730
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->clone()Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

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
    .line 3730
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

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
    .line 3730
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3906
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3907
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3912
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3914
    :sswitch_0
    return-object p0

    .line 3919
    :sswitch_1
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 3920
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->sequence_:I

    goto :goto_0

    .line 3924
    :sswitch_2
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 3925
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentType_:Ljava/lang/Object;

    goto :goto_0

    .line 3929
    :sswitch_3
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 3930
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 3934
    :sswitch_4
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 3935
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->charset_:I

    goto :goto_0

    .line 3939
    :sswitch_5
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 3940
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentDisposition_:Ljava/lang/Object;

    goto :goto_0

    .line 3944
    :sswitch_6
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 3945
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->fileName_:Ljava/lang/Object;

    goto :goto_0

    .line 3949
    :sswitch_7
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 3950
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentId_:Ljava/lang/Object;

    goto :goto_0

    .line 3954
    :sswitch_8
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 3955
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentLocation_:Ljava/lang/Object;

    goto :goto_0

    .line 3959
    :sswitch_9
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 3960
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentTypeStart_:I

    goto/16 :goto_0

    .line 3964
    :sswitch_a
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 3965
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentTypeType_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3969
    :sswitch_b
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 3970
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->text_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3974
    :sswitch_c
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 3975
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->data_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 3907
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/MmsProtos$PduPart;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3857
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$PduPart;->getDefaultInstance()Lcom/miui/milk/model/MmsProtos$PduPart;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3894
    :cond_0
    :goto_0
    return-object p0

    .line 3858
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasSequence()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3859
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->getSequence()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setSequence(I)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 3861
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3862
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentType(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 3864
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3865
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setName(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 3867
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasCharset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3868
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->getCharset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setCharset(I)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 3870
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentDisposition()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3871
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentDisposition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentDisposition(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 3873
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasFileName()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3874
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setFileName(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 3876
    :cond_7
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3877
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentId(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 3879
    :cond_8
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentLocation()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3880
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentLocation(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 3882
    :cond_9
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentTypeStart()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3883
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentTypeStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentTypeStart(I)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 3885
    :cond_a
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentTypeType()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3886
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentTypeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentTypeType(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 3888
    :cond_b
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasText()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3889
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setText(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 3891
    :cond_c
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3892
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduPart;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    goto/16 :goto_0
.end method

.method public setCharset(I)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4086
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 4087
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->charset_:I

    .line 4089
    return-object p0
.end method

.method public setContentDisposition(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4114
    if-nez p1, :cond_0

    .line 4115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4117
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 4118
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentDisposition_:Ljava/lang/Object;

    .line 4120
    return-object p0
.end method

.method public setContentId(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4186
    if-nez p1, :cond_0

    .line 4187
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4189
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 4190
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentId_:Ljava/lang/Object;

    .line 4192
    return-object p0
.end method

.method public setContentLocation(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4222
    if-nez p1, :cond_0

    .line 4223
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4225
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 4226
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentLocation_:Ljava/lang/Object;

    .line 4228
    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4021
    if-nez p1, :cond_0

    .line 4022
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4024
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 4025
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentType_:Ljava/lang/Object;

    .line 4027
    return-object p0
.end method

.method public setContentTypeStart(I)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4251
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 4252
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentTypeStart_:I

    .line 4254
    return-object p0
.end method

.method public setContentTypeType(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4279
    if-nez p1, :cond_0

    .line 4280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4282
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 4283
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->contentTypeType_:Ljava/lang/Object;

    .line 4285
    return-object p0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4344
    if-nez p1, :cond_0

    .line 4345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4347
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 4348
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 4350
    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4150
    if-nez p1, :cond_0

    .line 4151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4153
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 4154
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->fileName_:Ljava/lang/Object;

    .line 4156
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4057
    if-nez p1, :cond_0

    .line 4058
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4060
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 4061
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->name_:Ljava/lang/Object;

    .line 4063
    return-object p0
.end method

.method public setSequence(I)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3993
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 3994
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->sequence_:I

    .line 3996
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4315
    if-nez p1, :cond_0

    .line 4316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4318
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->bitField0_:I

    .line 4319
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->text_:Ljava/lang/Object;

    .line 4321
    return-object p0
.end method
