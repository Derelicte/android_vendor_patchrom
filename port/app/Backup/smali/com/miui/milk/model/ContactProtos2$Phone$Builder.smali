.class public final Lcom/miui/milk/model/ContactProtos2$Phone$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2$Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos2$Phone;",
        "Lcom/miui/milk/model/ContactProtos2$Phone$Builder;",
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
    .line 951
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1075
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->value_:Ljava/lang/Object;

    .line 1132
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->label_:Ljava/lang/Object;

    .line 952
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->maybeForceBuilderInitialization()V

    .line 953
    return-void
.end method

.method static synthetic access$900()Lcom/miui/milk/model/ContactProtos2$Phone$Builder;
    .locals 1

    .prologue
    .line 946
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos2$Phone$Builder;
    .locals 1

    .prologue
    .line 958
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 956
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/ContactProtos2$Phone;
    .locals 2

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Phone;

    move-result-object v0

    .line 982
    .local v0, result:Lcom/miui/milk/model/ContactProtos2$Phone;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Phone;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 983
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 985
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Phone;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos2$Phone;
    .locals 5

    .prologue
    .line 999
    new-instance v1, Lcom/miui/milk/model/ContactProtos2$Phone;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos2$Phone;-><init>(Lcom/miui/milk/model/ContactProtos2$Phone$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V

    .line 1000
    .local v1, result:Lcom/miui/milk/model/ContactProtos2$Phone;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->bitField0_:I

    .line 1001
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1002
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1003
    or-int/lit8 v2, v2, 0x1

    .line 1005
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Phone;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Phone;->access$1102(Lcom/miui/milk/model/ContactProtos2$Phone;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1007
    or-int/lit8 v2, v2, 0x2

    .line 1009
    :cond_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->type_:I

    #setter for: Lcom/miui/milk/model/ContactProtos2$Phone;->type_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Phone;->access$1202(Lcom/miui/milk/model/ContactProtos2$Phone;I)I

    .line 1010
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1011
    or-int/lit8 v2, v2, 0x4

    .line 1013
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Phone;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Phone;->access$1302(Lcom/miui/milk/model/ContactProtos2$Phone;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    #setter for: Lcom/miui/milk/model/ContactProtos2$Phone;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Phone;->access$1402(Lcom/miui/milk/model/ContactProtos2$Phone;I)I

    .line 1015
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos2$Phone$Builder;
    .locals 2

    .prologue
    .line 973
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$Phone;)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

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
    .line 946
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

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
    .line 946
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

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
    .line 946
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1041
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1042
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1047
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1049
    :sswitch_0
    return-object p0

    .line 1054
    :sswitch_1
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->bitField0_:I

    .line 1055
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 1059
    :sswitch_2
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->bitField0_:I

    .line 1060
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->type_:I

    goto :goto_0

    .line 1064
    :sswitch_3
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->bitField0_:I

    .line 1065
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 1042
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos2$Phone;)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1019
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Phone;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Phone;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return-object p0

    .line 1020
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Phone;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1021
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Phone;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    .line 1023
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Phone;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1024
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Phone;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    .line 1026
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Phone;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Phone;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1147
    if-nez p1, :cond_0

    .line 1148
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1150
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->bitField0_:I

    .line 1151
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->label_:Ljava/lang/Object;

    .line 1153
    return-object p0
.end method

.method public setType(I)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1119
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->bitField0_:I

    .line 1120
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->type_:I

    .line 1122
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1090
    if-nez p1, :cond_0

    .line 1091
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1093
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->bitField0_:I

    .line 1094
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->value_:Ljava/lang/Object;

    .line 1096
    return-object p0
.end method
