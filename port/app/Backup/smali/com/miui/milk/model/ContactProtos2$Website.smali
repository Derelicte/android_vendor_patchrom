.class public final Lcom/miui/milk/model/ContactProtos2$Website;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Website"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos2$Website$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos2$Website;


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6747
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Website;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Website;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos2$Website;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Website;

    .line 6748
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Website;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Website;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Website;->initFields()V

    .line 6749
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos2$Website$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6246
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6398
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->memoizedIsInitialized:B

    .line 6421
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->memoizedSerializedSize:I

    .line 6247
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos2$Website$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6241
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos2$Website;-><init>(Lcom/miui/milk/model/ContactProtos2$Website$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6248
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6398
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->memoizedIsInitialized:B

    .line 6421
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->memoizedSerializedSize:I

    .line 6248
    return-void
.end method

.method static synthetic access$8402(Lcom/miui/milk/model/ContactProtos2$Website;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6241
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Website;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8502(Lcom/miui/milk/model/ContactProtos2$Website;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6241
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Website;->type_:I

    return p1
.end method

.method static synthetic access$8602(Lcom/miui/milk/model/ContactProtos2$Website;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6241
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Website;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8702(Lcom/miui/milk/model/ContactProtos2$Website;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6241
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Website;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Website;
    .locals 1

    .prologue
    .line 6252
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Website;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Website;

    return-object v0
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 6382
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Website;->label_:Ljava/lang/Object;

    .line 6383
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6384
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6386
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->label_:Ljava/lang/Object;

    .line 6389
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

.method private getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 6340
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Website;->value_:Ljava/lang/Object;

    .line 6341
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6342
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6344
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->value_:Ljava/lang/Object;

    .line 6347
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
    .locals 1

    .prologue
    .line 6394
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->value_:Ljava/lang/Object;

    .line 6395
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->type_:I

    .line 6396
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->label_:Ljava/lang/Object;

    .line 6397
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos2$Website$Builder;
    .locals 1

    .prologue
    .line 6515
    #calls: Lcom/miui/milk/model/ContactProtos2$Website$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Website$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->access$8200()Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6368
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Website;->label_:Ljava/lang/Object;

    .line 6369
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6370
    check-cast v1, Ljava/lang/String;

    .line 6378
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 6372
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6374
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6375
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6376
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Website;->label_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6378
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6423
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->memoizedSerializedSize:I

    .line 6424
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 6440
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 6426
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 6427
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Website;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 6428
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Website;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6431
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Website;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 6432
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Website;->type_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6435
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Website;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 6436
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Website;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6439
    :cond_3
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->memoizedSerializedSize:I

    move v1, v0

    .line 6440
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 6358
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->type_:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6326
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Website;->value_:Ljava/lang/Object;

    .line 6327
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6328
    check-cast v1, Ljava/lang/String;

    .line 6336
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 6330
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6332
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6333
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6334
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Website;->value_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 6336
    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 6365
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 6355
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->bitField0_:I

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

.method public hasValue()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6323
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Website;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 6400
    iget-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->memoizedIsInitialized:B

    .line 6401
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 6404
    :goto_0
    return v1

    .line 6401
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 6403
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/ContactProtos2$Website;->memoizedIsInitialized:B

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
    .line 6445
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 6409
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Website;->getSerializedSize()I

    .line 6410
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 6411
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Website;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6413
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 6414
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->type_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6416
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Website;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 6417
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Website;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6419
    :cond_2
    return-void
.end method
