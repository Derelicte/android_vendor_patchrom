.class public final Lcom/miui/milk/model/ContactProtos2$Event$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos2$Event;",
        "Lcom/miui/milk/model/ContactProtos2$Event$Builder;",
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
    .line 1986
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2110
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->value_:Ljava/lang/Object;

    .line 2167
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->label_:Ljava/lang/Object;

    .line 1987
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->maybeForceBuilderInitialization()V

    .line 1988
    return-void
.end method

.method static synthetic access$2300()Lcom/miui/milk/model/ContactProtos2$Event$Builder;
    .locals 1

    .prologue
    .line 1981
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos2$Event$Builder;
    .locals 1

    .prologue
    .line 1993
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1991
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/ContactProtos2$Event;
    .locals 2

    .prologue
    .line 2016
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Event;

    move-result-object v0

    .line 2017
    .local v0, result:Lcom/miui/milk/model/ContactProtos2$Event;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Event;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2018
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2020
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1981
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Event;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos2$Event;
    .locals 5

    .prologue
    .line 2034
    new-instance v1, Lcom/miui/milk/model/ContactProtos2$Event;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos2$Event;-><init>(Lcom/miui/milk/model/ContactProtos2$Event$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V

    .line 2035
    .local v1, result:Lcom/miui/milk/model/ContactProtos2$Event;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->bitField0_:I

    .line 2036
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2037
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2038
    or-int/lit8 v2, v2, 0x1

    .line 2040
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Event;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Event;->access$2502(Lcom/miui/milk/model/ContactProtos2$Event;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2042
    or-int/lit8 v2, v2, 0x2

    .line 2044
    :cond_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->type_:I

    #setter for: Lcom/miui/milk/model/ContactProtos2$Event;->type_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Event;->access$2602(Lcom/miui/milk/model/ContactProtos2$Event;I)I

    .line 2045
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2046
    or-int/lit8 v2, v2, 0x4

    .line 2048
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Event;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Event;->access$2702(Lcom/miui/milk/model/ContactProtos2$Event;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    #setter for: Lcom/miui/milk/model/ContactProtos2$Event;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Event;->access$2802(Lcom/miui/milk/model/ContactProtos2$Event;I)I

    .line 2050
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1981
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1981
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos2$Event$Builder;
    .locals 2

    .prologue
    .line 2008
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$Event;)Lcom/miui/milk/model/ContactProtos2$Event$Builder;

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
    .line 1981
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Event$Builder;

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
    .line 1981
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Event$Builder;

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
    .line 1981
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Event$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2076
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2077
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2082
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2084
    :sswitch_0
    return-object p0

    .line 2089
    :sswitch_1
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->bitField0_:I

    .line 2090
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 2094
    :sswitch_2
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->bitField0_:I

    .line 2095
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->type_:I

    goto :goto_0

    .line 2099
    :sswitch_3
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->bitField0_:I

    .line 2100
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 2077
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos2$Event;)Lcom/miui/milk/model/ContactProtos2$Event$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2054
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Event;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Event;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2064
    :cond_0
    :goto_0
    return-object p0

    .line 2055
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Event;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2056
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Event;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    .line 2058
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Event;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2059
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Event;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    .line 2061
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Event;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2062
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Event;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Event$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2182
    if-nez p1, :cond_0

    .line 2183
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2185
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->bitField0_:I

    .line 2186
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->label_:Ljava/lang/Object;

    .line 2188
    return-object p0
.end method

.method public setType(I)Lcom/miui/milk/model/ContactProtos2$Event$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2154
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->bitField0_:I

    .line 2155
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->type_:I

    .line 2157
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Event$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2125
    if-nez p1, :cond_0

    .line 2126
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2128
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->bitField0_:I

    .line 2129
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->value_:Ljava/lang/Object;

    .line 2131
    return-object p0
.end method
