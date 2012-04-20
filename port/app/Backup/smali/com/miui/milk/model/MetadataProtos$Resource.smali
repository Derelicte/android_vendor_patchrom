.class public final Lcom/miui/milk/model/MetadataProtos$Resource;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MetadataProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/MetadataProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/MetadataProtos$Resource$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/MetadataProtos$Resource;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private counts_:J

.field private guid_:Ljava/lang/Object;

.field private lastDate_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 589
    new-instance v0, Lcom/miui/milk/model/MetadataProtos$Resource;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/MetadataProtos$Resource;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/MetadataProtos$Resource;->defaultInstance:Lcom/miui/milk/model/MetadataProtos$Resource;

    .line 590
    sget-object v0, Lcom/miui/milk/model/MetadataProtos$Resource;->defaultInstance:Lcom/miui/milk/model/MetadataProtos$Resource;

    invoke-direct {v0}, Lcom/miui/milk/model/MetadataProtos$Resource;->initFields()V

    .line 591
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/MetadataProtos$Resource$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 129
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 211
    iput-byte v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->memoizedIsInitialized:B

    .line 237
    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->memoizedSerializedSize:I

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/MetadataProtos$Resource$Builder;Lcom/miui/milk/model/MetadataProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/miui/milk/model/MetadataProtos$Resource;-><init>(Lcom/miui/milk/model/MetadataProtos$Resource$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 131
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 211
    iput-byte v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->memoizedIsInitialized:B

    .line 237
    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->memoizedSerializedSize:I

    .line 131
    return-void
.end method

.method static synthetic access$302(Lcom/miui/milk/model/MetadataProtos$Resource;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/milk/model/MetadataProtos$Resource;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->type_:I

    return p1
.end method

.method static synthetic access$502(Lcom/miui/milk/model/MetadataProtos$Resource;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->counts_:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/miui/milk/model/MetadataProtos$Resource;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->lastDate_:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/miui/milk/model/MetadataProtos$Resource;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/MetadataProtos$Resource;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/miui/milk/model/MetadataProtos$Resource;->defaultInstance:Lcom/miui/milk/model/MetadataProtos$Resource;

    return-object v0
.end method

.method private getGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 164
    iget-object v1, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->guid_:Ljava/lang/Object;

    .line 165
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 166
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 168
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->guid_:Ljava/lang/Object;

    .line 171
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->guid_:Ljava/lang/Object;

    .line 207
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->type_:I

    .line 208
    iput-wide v1, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->counts_:J

    .line 209
    iput-wide v1, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->lastDate_:J

    .line 210
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/MetadataProtos$Resource$Builder;
    .locals 1

    .prologue
    .line 337
    #calls: Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->create()Lcom/miui/milk/model/MetadataProtos$Resource$Builder;
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->access$100()Lcom/miui/milk/model/MetadataProtos$Resource$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCounts()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->counts_:J

    return-wide v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    iget-object v1, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->guid_:Ljava/lang/Object;

    .line 151
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 152
    check-cast v1, Ljava/lang/String;

    .line 160
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 154
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 156
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    iput-object v2, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 160
    goto :goto_0
.end method

.method public getLastDate()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->lastDate_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 239
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->memoizedSerializedSize:I

    .line 240
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 260
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 242
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 243
    iget v2, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/miui/milk/model/MetadataProtos$Resource;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 247
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 248
    iget v2, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->type_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 251
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 252
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->counts_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 255
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 256
    iget-wide v2, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->lastDate_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 259
    :cond_4
    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->memoizedSerializedSize:I

    move v1, v0

    .line 260
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->type_:I

    return v0
.end method

.method public hasCounts()Z
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGuid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 147
    iget v1, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLastDate()Z
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 222
    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Resource;->getSerializedSize()I

    .line 223
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/miui/milk/model/MetadataProtos$Resource;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 226
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 227
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->type_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 229
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 230
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->counts_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 232
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 233
    iget-wide v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource;->lastDate_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 235
    :cond_3
    return-void
.end method
