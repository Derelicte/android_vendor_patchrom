.class public final Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CalllogProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/CalllogProtos2$Calllog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/CalllogProtos2$Calllog;",
        "Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private call_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/CalllogProtos2$Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1086
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1189
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->call_:Ljava/util/List;

    .line 1087
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->maybeForceBuilderInitialization()V

    .line 1088
    return-void
.end method

.method static synthetic access$1400()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    .locals 1

    .prologue
    .line 1081
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->create()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    .locals 1

    .prologue
    .line 1093
    new-instance v0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCallIsMutable()V
    .locals 2

    .prologue
    .line 1192
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1193
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->call_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->call_:Ljava/util/List;

    .line 1194
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->bitField0_:I

    .line 1196
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1091
    return-void
.end method


# virtual methods
.method public addCall(Lcom/miui/milk/model/CalllogProtos2$Call;)Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1225
    if-nez p1, :cond_0

    .line 1226
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1228
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->ensureCallIsMutable()V

    .line 1229
    iget-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->call_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    return-object p0
.end method

.method public build()Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .locals 2

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->buildPartial()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v0

    .line 1113
    .local v0, result:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1114
    invoke-static {v0}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1116
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->buildPartial()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .locals 4

    .prologue
    .line 1130
    new-instance v1, Lcom/miui/milk/model/CalllogProtos2$Calllog;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/milk/model/CalllogProtos2$Calllog;-><init>(Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;Lcom/miui/milk/model/CalllogProtos2$1;)V

    .line 1131
    .local v1, result:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->bitField0_:I

    .line 1132
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1133
    iget-object v2, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->call_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->call_:Ljava/util/List;

    .line 1134
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->bitField0_:I

    .line 1136
    :cond_0
    iget-object v2, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->call_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/CalllogProtos2$Calllog;->call_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->access$1602(Lcom/miui/milk/model/CalllogProtos2$Calllog;Ljava/util/List;)Ljava/util/List;

    .line 1137
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->clone()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->clone()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    .locals 2

    .prologue
    .line 1104
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->create()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->buildPartial()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->mergeFrom(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

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
    .line 1081
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->clone()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCallList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/CalllogProtos2$Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->call_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

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
    .line 1081
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

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
    .line 1081
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1164
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1165
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 1170
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1172
    :sswitch_0
    return-object p0

    .line 1177
    :sswitch_1
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Call;->newBuilder()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    move-result-object v0

    .line 1178
    .local v0, subBuilder:Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1179
    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->buildPartial()Lcom/miui/milk/model/CalllogProtos2$Call;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->addCall(Lcom/miui/milk/model/CalllogProtos2$Call;)Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    goto :goto_0

    .line 1165
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1141
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->getDefaultInstance()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1152
    :cond_0
    :goto_0
    return-object p0

    .line 1142
    :cond_1
    #getter for: Lcom/miui/milk/model/CalllogProtos2$Calllog;->call_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->access$1600(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->call_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1144
    #getter for: Lcom/miui/milk/model/CalllogProtos2$Calllog;->call_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->access$1600(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->call_:Ljava/util/List;

    .line 1145
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->bitField0_:I

    goto :goto_0

    .line 1147
    :cond_2
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->ensureCallIsMutable()V

    .line 1148
    iget-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->call_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/CalllogProtos2$Calllog;->call_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->access$1600(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
