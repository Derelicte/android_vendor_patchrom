.class public final Lcom/miui/milk/model/MetadataProtos$Container$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MetadataProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/MetadataProtos$Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/MetadataProtos$Container;",
        "Lcom/miui/milk/model/MetadataProtos$Container$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private guid_:Ljava/lang/Object;

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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 919
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1080
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->guid_:Ljava/lang/Object;

    .line 1137
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->resourceId_:Ljava/lang/Object;

    .line 1173
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->name_:Ljava/lang/Object;

    .line 1209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->resource_:Ljava/util/List;

    .line 920
    invoke-direct {p0}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->maybeForceBuilderInitialization()V

    .line 921
    return-void
.end method

.method static synthetic access$900()Lcom/miui/milk/model/MetadataProtos$Container$Builder;
    .locals 1

    .prologue
    .line 914
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->create()Lcom/miui/milk/model/MetadataProtos$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/MetadataProtos$Container$Builder;
    .locals 1

    .prologue
    .line 926
    new-instance v0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;-><init>()V

    return-object v0
.end method

.method private ensureResourceIsMutable()V
    .locals 2

    .prologue
    .line 1212
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 1213
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->resource_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->resource_:Ljava/util/List;

    .line 1214
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    .line 1216
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 924
    return-void
.end method


# virtual methods
.method public addResource(Lcom/miui/milk/model/MetadataProtos$Resource;)Lcom/miui/milk/model/MetadataProtos$Container$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1245
    if-nez p1, :cond_0

    .line 1246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1248
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->ensureResourceIsMutable()V

    .line 1249
    iget-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->resource_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->buildPartial()Lcom/miui/milk/model/MetadataProtos$Container;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/MetadataProtos$Container;
    .locals 5

    .prologue
    .line 971
    new-instance v1, Lcom/miui/milk/model/MetadataProtos$Container;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/MetadataProtos$Container;-><init>(Lcom/miui/milk/model/MetadataProtos$Container$Builder;Lcom/miui/milk/model/MetadataProtos$1;)V

    .line 972
    .local v1, result:Lcom/miui/milk/model/MetadataProtos$Container;
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    .line 973
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 974
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 975
    or-int/lit8 v2, v2, 0x1

    .line 977
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->guid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MetadataProtos$Container;->guid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/MetadataProtos$Container;->access$1102(Lcom/miui/milk/model/MetadataProtos$Container;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 979
    or-int/lit8 v2, v2, 0x2

    .line 981
    :cond_1
    iget v3, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->type_:I

    #setter for: Lcom/miui/milk/model/MetadataProtos$Container;->type_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/MetadataProtos$Container;->access$1202(Lcom/miui/milk/model/MetadataProtos$Container;I)I

    .line 982
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 983
    or-int/lit8 v2, v2, 0x4

    .line 985
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->resourceId_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MetadataProtos$Container;->resourceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/MetadataProtos$Container;->access$1302(Lcom/miui/milk/model/MetadataProtos$Container;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 987
    or-int/lit8 v2, v2, 0x8

    .line 989
    :cond_3
    iget-object v3, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MetadataProtos$Container;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/MetadataProtos$Container;->access$1402(Lcom/miui/milk/model/MetadataProtos$Container;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    iget v3, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 991
    iget-object v3, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->resource_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->resource_:Ljava/util/List;

    .line 992
    iget v3, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    .line 994
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->resource_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/MetadataProtos$Container;->resource_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/MetadataProtos$Container;->access$1502(Lcom/miui/milk/model/MetadataProtos$Container;Ljava/util/List;)Ljava/util/List;

    .line 995
    #setter for: Lcom/miui/milk/model/MetadataProtos$Container;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/MetadataProtos$Container;->access$1602(Lcom/miui/milk/model/MetadataProtos$Container;I)I

    .line 996
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->clone()Lcom/miui/milk/model/MetadataProtos$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->clone()Lcom/miui/milk/model/MetadataProtos$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/MetadataProtos$Container$Builder;
    .locals 2

    .prologue
    .line 945
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->create()Lcom/miui/milk/model/MetadataProtos$Container$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->buildPartial()Lcom/miui/milk/model/MetadataProtos$Container;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->mergeFrom(Lcom/miui/milk/model/MetadataProtos$Container;)Lcom/miui/milk/model/MetadataProtos$Container$Builder;

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
    .line 914
    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->clone()Lcom/miui/milk/model/MetadataProtos$Container$Builder;

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
    .line 914
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MetadataProtos$Container$Builder;

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
    .line 914
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MetadataProtos$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MetadataProtos$Container$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1035
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1036
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 1041
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1043
    :sswitch_0
    return-object p0

    .line 1048
    :sswitch_1
    iget v2, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    .line 1049
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 1053
    :sswitch_2
    iget v2, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    .line 1054
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->type_:I

    goto :goto_0

    .line 1058
    :sswitch_3
    iget v2, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    .line 1059
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->resourceId_:Ljava/lang/Object;

    goto :goto_0

    .line 1063
    :sswitch_4
    iget v2, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    .line 1064
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 1068
    :sswitch_5
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Resource;->newBuilder()Lcom/miui/milk/model/MetadataProtos$Resource$Builder;

    move-result-object v0

    .line 1069
    .local v0, subBuilder:Lcom/miui/milk/model/MetadataProtos$Resource$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1070
    invoke-virtual {v0}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->buildPartial()Lcom/miui/milk/model/MetadataProtos$Resource;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->addResource(Lcom/miui/milk/model/MetadataProtos$Resource;)Lcom/miui/milk/model/MetadataProtos$Container$Builder;

    goto :goto_0

    .line 1036
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/MetadataProtos$Container;)Lcom/miui/milk/model/MetadataProtos$Container$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1000
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Container;->getDefaultInstance()Lcom/miui/milk/model/MetadataProtos$Container;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return-object p0

    .line 1001
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/MetadataProtos$Container;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1002
    invoke-virtual {p1}, Lcom/miui/milk/model/MetadataProtos$Container;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/MetadataProtos$Container$Builder;

    .line 1004
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/MetadataProtos$Container;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1005
    invoke-virtual {p1}, Lcom/miui/milk/model/MetadataProtos$Container;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->setType(I)Lcom/miui/milk/model/MetadataProtos$Container$Builder;

    .line 1007
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/MetadataProtos$Container;->hasResourceId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1008
    invoke-virtual {p1}, Lcom/miui/milk/model/MetadataProtos$Container;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->setResourceId(Ljava/lang/String;)Lcom/miui/milk/model/MetadataProtos$Container$Builder;

    .line 1010
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/MetadataProtos$Container;->hasName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1011
    invoke-virtual {p1}, Lcom/miui/milk/model/MetadataProtos$Container;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->setName(Ljava/lang/String;)Lcom/miui/milk/model/MetadataProtos$Container$Builder;

    .line 1013
    :cond_5
    #getter for: Lcom/miui/milk/model/MetadataProtos$Container;->resource_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/MetadataProtos$Container;->access$1500(Lcom/miui/milk/model/MetadataProtos$Container;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->resource_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1015
    #getter for: Lcom/miui/milk/model/MetadataProtos$Container;->resource_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/MetadataProtos$Container;->access$1500(Lcom/miui/milk/model/MetadataProtos$Container;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->resource_:Ljava/util/List;

    .line 1016
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    goto :goto_0

    .line 1018
    :cond_6
    invoke-direct {p0}, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->ensureResourceIsMutable()V

    .line 1019
    iget-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->resource_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/MetadataProtos$Container;->resource_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/MetadataProtos$Container;->access$1500(Lcom/miui/milk/model/MetadataProtos$Container;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/miui/milk/model/MetadataProtos$Container$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1095
    if-nez p1, :cond_0

    .line 1096
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1098
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    .line 1099
    iput-object p1, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->guid_:Ljava/lang/Object;

    .line 1101
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/miui/milk/model/MetadataProtos$Container$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1188
    if-nez p1, :cond_0

    .line 1189
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1191
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    .line 1192
    iput-object p1, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->name_:Ljava/lang/Object;

    .line 1194
    return-object p0
.end method

.method public setResourceId(Ljava/lang/String;)Lcom/miui/milk/model/MetadataProtos$Container$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1152
    if-nez p1, :cond_0

    .line 1153
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1155
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    .line 1156
    iput-object p1, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->resourceId_:Ljava/lang/Object;

    .line 1158
    return-object p0
.end method

.method public setType(I)Lcom/miui/milk/model/MetadataProtos$Container$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1124
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->bitField0_:I

    .line 1125
    iput p1, p0, Lcom/miui/milk/model/MetadataProtos$Container$Builder;->type_:I

    .line 1127
    return-object p0
.end method
