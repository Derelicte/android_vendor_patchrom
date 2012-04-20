.class public final Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2$GroupMembership;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos2$GroupMembership;",
        "Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private groupGUID_:Ljava/lang/Object;

.field private groupLUID_:Ljava/lang/Object;

.field private groupTitle_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7018
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7142
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->groupGUID_:Ljava/lang/Object;

    .line 7178
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->groupLUID_:Ljava/lang/Object;

    .line 7214
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->groupTitle_:Ljava/lang/Object;

    .line 7019
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->maybeForceBuilderInitialization()V

    .line 7020
    return-void
.end method

.method static synthetic access$8900()Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;
    .locals 1

    .prologue
    .line 7013
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->create()Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;
    .locals 1

    .prologue
    .line 7025
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 7023
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/ContactProtos2$GroupMembership;
    .locals 2

    .prologue
    .line 7048
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$GroupMembership;

    move-result-object v0

    .line 7049
    .local v0, result:Lcom/miui/milk/model/ContactProtos2$GroupMembership;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7050
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7052
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7013
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$GroupMembership;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos2$GroupMembership;
    .locals 5

    .prologue
    .line 7066
    new-instance v1, Lcom/miui/milk/model/ContactProtos2$GroupMembership;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;-><init>(Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V

    .line 7067
    .local v1, result:Lcom/miui/milk/model/ContactProtos2$GroupMembership;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->bitField0_:I

    .line 7068
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 7069
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 7070
    or-int/lit8 v2, v2, 0x1

    .line 7072
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->groupGUID_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupGUID_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->access$9102(Lcom/miui/milk/model/ContactProtos2$GroupMembership;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7073
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 7074
    or-int/lit8 v2, v2, 0x2

    .line 7076
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->groupLUID_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupLUID_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->access$9202(Lcom/miui/milk/model/ContactProtos2$GroupMembership;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7077
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 7078
    or-int/lit8 v2, v2, 0x4

    .line 7080
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->groupTitle_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$GroupMembership;->groupTitle_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->access$9302(Lcom/miui/milk/model/ContactProtos2$GroupMembership;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7081
    #setter for: Lcom/miui/milk/model/ContactProtos2$GroupMembership;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->access$9402(Lcom/miui/milk/model/ContactProtos2$GroupMembership;I)I

    .line 7082
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7013
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7013
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;
    .locals 2

    .prologue
    .line 7040
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->create()Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$GroupMembership;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$GroupMembership;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

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
    .line 7013
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

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
    .line 7013
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

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
    .line 7013
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7108
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 7109
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 7114
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7116
    :sswitch_0
    return-object p0

    .line 7121
    :sswitch_1
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->bitField0_:I

    .line 7122
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->groupGUID_:Ljava/lang/Object;

    goto :goto_0

    .line 7126
    :sswitch_2
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->bitField0_:I

    .line 7127
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->groupLUID_:Ljava/lang/Object;

    goto :goto_0

    .line 7131
    :sswitch_3
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->bitField0_:I

    .line 7132
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->groupTitle_:Ljava/lang/Object;

    goto :goto_0

    .line 7109
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos2$GroupMembership;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 7086
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$GroupMembership;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 7096
    :cond_0
    :goto_0
    return-object p0

    .line 7087
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->hasGroupGUID()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7088
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->getGroupGUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->setGroupGUID(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    .line 7090
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->hasGroupLUID()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7091
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->getGroupLUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->setGroupLUID(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    .line 7093
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->hasGroupTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7094
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->getGroupTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->setGroupTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    goto :goto_0
.end method

.method public setGroupGUID(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7157
    if-nez p1, :cond_0

    .line 7158
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7160
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->bitField0_:I

    .line 7161
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->groupGUID_:Ljava/lang/Object;

    .line 7163
    return-object p0
.end method

.method public setGroupLUID(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7193
    if-nez p1, :cond_0

    .line 7194
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7196
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->bitField0_:I

    .line 7197
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->groupLUID_:Ljava/lang/Object;

    .line 7199
    return-object p0
.end method

.method public setGroupTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7229
    if-nez p1, :cond_0

    .line 7230
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7232
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->bitField0_:I

    .line 7233
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->groupTitle_:Ljava/lang/Object;

    .line 7235
    return-object p0
.end method
