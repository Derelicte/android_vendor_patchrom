.class public final Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MmsProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/MmsProtos$PduAddr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/MmsProtos$PduAddr;",
        "Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private charset_:I

.field private type_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2949
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3073
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->address_:Ljava/lang/Object;

    .line 2950
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->maybeForceBuilderInitialization()V

    .line 2951
    return-void
.end method

.method static synthetic access$3900()Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;
    .locals 1

    .prologue
    .line 2944
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->create()Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;
    .locals 1

    .prologue
    .line 2956
    new-instance v0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2954
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/MmsProtos$PduAddr;
    .locals 2

    .prologue
    .line 2979
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->buildPartial()Lcom/miui/milk/model/MmsProtos$PduAddr;

    move-result-object v0

    .line 2980
    .local v0, result:Lcom/miui/milk/model/MmsProtos$PduAddr;
    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2981
    invoke-static {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2983
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2944
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->buildPartial()Lcom/miui/milk/model/MmsProtos$PduAddr;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/MmsProtos$PduAddr;
    .locals 5

    .prologue
    .line 2997
    new-instance v1, Lcom/miui/milk/model/MmsProtos$PduAddr;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/MmsProtos$PduAddr;-><init>(Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;Lcom/miui/milk/model/MmsProtos$1;)V

    .line 2998
    .local v1, result:Lcom/miui/milk/model/MmsProtos$PduAddr;
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->bitField0_:I

    .line 2999
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3000
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3001
    or-int/lit8 v2, v2, 0x1

    .line 3003
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->address_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MmsProtos$PduAddr;->address_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/MmsProtos$PduAddr;->access$4102(Lcom/miui/milk/model/MmsProtos$PduAddr;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3004
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3005
    or-int/lit8 v2, v2, 0x2

    .line 3007
    :cond_1
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->type_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$PduAddr;->type_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/MmsProtos$PduAddr;->access$4202(Lcom/miui/milk/model/MmsProtos$PduAddr;I)I

    .line 3008
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3009
    or-int/lit8 v2, v2, 0x4

    .line 3011
    :cond_2
    iget v3, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->charset_:I

    #setter for: Lcom/miui/milk/model/MmsProtos$PduAddr;->charset_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/MmsProtos$PduAddr;->access$4302(Lcom/miui/milk/model/MmsProtos$PduAddr;I)I

    .line 3012
    #setter for: Lcom/miui/milk/model/MmsProtos$PduAddr;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/MmsProtos$PduAddr;->access$4402(Lcom/miui/milk/model/MmsProtos$PduAddr;I)I

    .line 3013
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2944
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->clone()Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2944
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->clone()Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;
    .locals 2

    .prologue
    .line 2971
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->create()Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->buildPartial()Lcom/miui/milk/model/MmsProtos$PduAddr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->mergeFrom(Lcom/miui/milk/model/MmsProtos$PduAddr;)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

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
    .line 2944
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->clone()Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

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
    .line 2944
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

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
    .line 2944
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3039
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3040
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3045
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3047
    :sswitch_0
    return-object p0

    .line 3052
    :sswitch_1
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->bitField0_:I

    .line 3053
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->address_:Ljava/lang/Object;

    goto :goto_0

    .line 3057
    :sswitch_2
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->bitField0_:I

    .line 3058
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->type_:I

    goto :goto_0

    .line 3062
    :sswitch_3
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->bitField0_:I

    .line 3063
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->charset_:I

    goto :goto_0

    .line 3040
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/MmsProtos$PduAddr;)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3017
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getDefaultInstance()Lcom/miui/milk/model/MmsProtos$PduAddr;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3027
    :cond_0
    :goto_0
    return-object p0

    .line 3018
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduAddr;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3019
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->setAddress(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    .line 3021
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduAddr;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3022
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->setType(I)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    .line 3024
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduAddr;->hasCharset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3025
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getCharset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->setCharset(I)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3088
    if-nez p1, :cond_0

    .line 3089
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3091
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->bitField0_:I

    .line 3092
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->address_:Ljava/lang/Object;

    .line 3094
    return-object p0
.end method

.method public setCharset(I)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3138
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->bitField0_:I

    .line 3139
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->charset_:I

    .line 3141
    return-object p0
.end method

.method public setType(I)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3117
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->bitField0_:I

    .line 3118
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->type_:I

    .line 3120
    return-object p0
.end method
