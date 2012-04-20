.class public final Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SmsProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/SmsProtos$SmsBookmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/SmsProtos$SmsBookmark;",
        "Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private body_:Ljava/lang/Object;

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private forward_:I

.field private fromName_:Ljava/lang/Object;

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private markDate_:J

.field private status_:I

.field private subject_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2056
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2300
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->guid_:Ljava/lang/Object;

    .line 2336
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->luid_:Ljava/lang/Object;

    .line 2372
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->fromName_:Ljava/lang/Object;

    .line 2408
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->address_:Ljava/lang/Object;

    .line 2444
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->subject_:Ljava/lang/Object;

    .line 2480
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->body_:Ljava/lang/Object;

    .line 2579
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 2603
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 2057
    invoke-direct {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->maybeForceBuilderInitialization()V

    .line 2058
    return-void
.end method

.method static synthetic access$2200()Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    .locals 1

    .prologue
    .line 2051
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->create()Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    .locals 1

    .prologue
    .line 2063
    new-instance v0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2061
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2051
    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->buildPartial()Lcom/miui/milk/model/SmsProtos$SmsBookmark;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/SmsProtos$SmsBookmark;
    .locals 5

    .prologue
    .line 2120
    new-instance v1, Lcom/miui/milk/model/SmsProtos$SmsBookmark;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;-><init>(Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;Lcom/miui/milk/model/SmsProtos$1;)V

    .line 2121
    .local v1, result:Lcom/miui/milk/model/SmsProtos$SmsBookmark;
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2122
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2123
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2124
    or-int/lit8 v2, v2, 0x1

    .line 2126
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->guid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/SmsProtos$SmsBookmark;->guid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->access$2402(Lcom/miui/milk/model/SmsProtos$SmsBookmark;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2127
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2128
    or-int/lit8 v2, v2, 0x2

    .line 2130
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->luid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/SmsProtos$SmsBookmark;->luid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->access$2502(Lcom/miui/milk/model/SmsProtos$SmsBookmark;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2132
    or-int/lit8 v2, v2, 0x4

    .line 2134
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->fromName_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/SmsProtos$SmsBookmark;->fromName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->access$2602(Lcom/miui/milk/model/SmsProtos$SmsBookmark;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2135
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2136
    or-int/lit8 v2, v2, 0x8

    .line 2138
    :cond_3
    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->address_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/SmsProtos$SmsBookmark;->address_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->access$2702(Lcom/miui/milk/model/SmsProtos$SmsBookmark;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2140
    or-int/lit8 v2, v2, 0x10

    .line 2142
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->subject_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/SmsProtos$SmsBookmark;->subject_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->access$2802(Lcom/miui/milk/model/SmsProtos$SmsBookmark;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2143
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 2144
    or-int/lit8 v2, v2, 0x20

    .line 2146
    :cond_5
    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->body_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/SmsProtos$SmsBookmark;->body_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->access$2902(Lcom/miui/milk/model/SmsProtos$SmsBookmark;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2147
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 2148
    or-int/lit8 v2, v2, 0x40

    .line 2150
    :cond_6
    iget-wide v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->markDate_:J

    #setter for: Lcom/miui/milk/model/SmsProtos$SmsBookmark;->markDate_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->access$3002(Lcom/miui/milk/model/SmsProtos$SmsBookmark;J)J

    .line 2151
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 2152
    or-int/lit16 v2, v2, 0x80

    .line 2154
    :cond_7
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->forward_:I

    #setter for: Lcom/miui/milk/model/SmsProtos$SmsBookmark;->forward_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->access$3102(Lcom/miui/milk/model/SmsProtos$SmsBookmark;I)I

    .line 2155
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 2156
    or-int/lit16 v2, v2, 0x100

    .line 2158
    :cond_8
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->status_:I

    #setter for: Lcom/miui/milk/model/SmsProtos$SmsBookmark;->status_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->access$3202(Lcom/miui/milk/model/SmsProtos$SmsBookmark;I)I

    .line 2159
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 2160
    or-int/lit16 v2, v2, 0x200

    .line 2162
    :cond_9
    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    #setter for: Lcom/miui/milk/model/SmsProtos$SmsBookmark;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->access$3302(Lcom/miui/milk/model/SmsProtos$SmsBookmark;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 2163
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 2164
    or-int/lit16 v2, v2, 0x400

    .line 2166
    :cond_a
    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    #setter for: Lcom/miui/milk/model/SmsProtos$SmsBookmark;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->access$3402(Lcom/miui/milk/model/SmsProtos$SmsBookmark;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 2167
    #setter for: Lcom/miui/milk/model/SmsProtos$SmsBookmark;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->access$3502(Lcom/miui/milk/model/SmsProtos$SmsBookmark;I)I

    .line 2168
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2051
    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->clone()Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2051
    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->clone()Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    .locals 2

    .prologue
    .line 2094
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->create()Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->buildPartial()Lcom/miui/milk/model/SmsProtos$SmsBookmark;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->mergeFrom(Lcom/miui/milk/model/SmsProtos$SmsBookmark;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

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
    .line 2051
    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->clone()Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

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
    .line 2051
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

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
    .line 2051
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2218
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2219
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 2224
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2226
    :sswitch_0
    return-object p0

    .line 2231
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2232
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 2236
    :sswitch_2
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2237
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 2241
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2242
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->fromName_:Ljava/lang/Object;

    goto :goto_0

    .line 2246
    :sswitch_4
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2247
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->address_:Ljava/lang/Object;

    goto :goto_0

    .line 2251
    :sswitch_5
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2252
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->subject_:Ljava/lang/Object;

    goto :goto_0

    .line 2256
    :sswitch_6
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2257
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->body_:Ljava/lang/Object;

    goto :goto_0

    .line 2261
    :sswitch_7
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2262
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->markDate_:J

    goto :goto_0

    .line 2266
    :sswitch_8
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2267
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->forward_:I

    goto :goto_0

    .line 2271
    :sswitch_9
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2272
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->status_:I

    goto/16 :goto_0

    .line 2276
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2277
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ActionType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v2

    .line 2278
    .local v2, value:Lcom/miui/milk/model/CommonProtos$ActionType;
    if-eqz v2, :cond_0

    .line 2279
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2280
    iput-object v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    goto/16 :goto_0

    .line 2285
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/CommonProtos$ActionType;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2286
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ConflictType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v2

    .line 2287
    .local v2, value:Lcom/miui/milk/model/CommonProtos$ConflictType;
    if-eqz v2, :cond_0

    .line 2288
    iget v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2289
    iput-object v2, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    goto/16 :goto_0

    .line 2219
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0xa0 -> :sswitch_a
        0xa8 -> :sswitch_b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/SmsProtos$SmsBookmark;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 2172
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getDefaultInstance()Lcom/miui/milk/model/SmsProtos$SmsBookmark;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2206
    :cond_0
    :goto_0
    return-object p0

    .line 2173
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2174
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    .line 2176
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2177
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    .line 2179
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->hasFromName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2180
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getFromName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->setFromName(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    .line 2182
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2183
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->setAddress(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    .line 2185
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2186
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->setSubject(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    .line 2188
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2189
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->setBody(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    .line 2191
    :cond_7
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->hasMarkDate()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2192
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getMarkDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->setMarkDate(J)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    .line 2194
    :cond_8
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->hasForward()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2195
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getForward()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->setForward(I)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    .line 2197
    :cond_9
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2198
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->setStatus(I)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    .line 2200
    :cond_a
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->hasActionType()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2201
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    .line 2203
    :cond_b
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->hasConflictType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2204
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$SmsBookmark;->getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;

    goto/16 :goto_0
.end method

.method public setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2587
    if-nez p1, :cond_0

    .line 2588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2590
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2591
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 2593
    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2423
    if-nez p1, :cond_0

    .line 2424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2426
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2427
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->address_:Ljava/lang/Object;

    .line 2429
    return-object p0
.end method

.method public setBody(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2495
    if-nez p1, :cond_0

    .line 2496
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2498
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2499
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->body_:Ljava/lang/Object;

    .line 2501
    return-object p0
.end method

.method public setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2611
    if-nez p1, :cond_0

    .line 2612
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2614
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2615
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 2617
    return-object p0
.end method

.method public setForward(I)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2545
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2546
    iput p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->forward_:I

    .line 2548
    return-object p0
.end method

.method public setFromName(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2387
    if-nez p1, :cond_0

    .line 2388
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2390
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2391
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->fromName_:Ljava/lang/Object;

    .line 2393
    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2315
    if-nez p1, :cond_0

    .line 2316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2318
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2319
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->guid_:Ljava/lang/Object;

    .line 2321
    return-object p0
.end method

.method public setLuid(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2351
    if-nez p1, :cond_0

    .line 2352
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2354
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2355
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->luid_:Ljava/lang/Object;

    .line 2357
    return-object p0
.end method

.method public setMarkDate(J)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2524
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2525
    iput-wide p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->markDate_:J

    .line 2527
    return-object p0
.end method

.method public setStatus(I)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2566
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2567
    iput p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->status_:I

    .line 2569
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2459
    if-nez p1, :cond_0

    .line 2460
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2462
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->bitField0_:I

    .line 2463
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$SmsBookmark$Builder;->subject_:Ljava/lang/Object;

    .line 2465
    return-object p0
.end method
