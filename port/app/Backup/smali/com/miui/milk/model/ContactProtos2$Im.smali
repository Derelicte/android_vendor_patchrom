.class public final Lcom/miui/milk/model/ContactProtos2$Im;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Im"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos2$Im;


# instance fields
.field private bitField0_:I

.field private customProtocol_:Ljava/lang/Object;

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private protocol_:I

.field private type_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2938
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Im;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Im;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos2$Im;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Im;

    .line 2939
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Im;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Im;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Im;->initFields()V

    .line 2940
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos2$Im$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2241
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2490
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->memoizedIsInitialized:B

    .line 2519
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->memoizedSerializedSize:I

    .line 2242
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos2$Im$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2236
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos2$Im;-><init>(Lcom/miui/milk/model/ContactProtos2$Im$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2243
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2490
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->memoizedIsInitialized:B

    .line 2519
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->memoizedSerializedSize:I

    .line 2243
    return-void
.end method

.method static synthetic access$3202(Lcom/miui/milk/model/ContactProtos2$Im;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2236
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Im;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/miui/milk/model/ContactProtos2$Im;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2236
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Im;->type_:I

    return p1
.end method

.method static synthetic access$3402(Lcom/miui/milk/model/ContactProtos2$Im;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2236
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Im;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/miui/milk/model/ContactProtos2$Im;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2236
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Im;->protocol_:I

    return p1
.end method

.method static synthetic access$3602(Lcom/miui/milk/model/ContactProtos2$Im;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2236
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Im;->customProtocol_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/miui/milk/model/ContactProtos2$Im;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2236
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Im;->bitField0_:I

    return p1
.end method

.method private getCustomProtocolBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2472
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Im;->customProtocol_:Ljava/lang/Object;

    .line 2473
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2474
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2476
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->customProtocol_:Ljava/lang/Object;

    .line 2479
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

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Im;
    .locals 1

    .prologue
    .line 2247
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Im;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Im;

    return-object v0
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2430
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Im;->label_:Ljava/lang/Object;

    .line 2431
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2432
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2434
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->label_:Ljava/lang/Object;

    .line 2437
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
    .line 2388
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Im;->value_:Ljava/lang/Object;

    .line 2389
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2390
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2392
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->value_:Ljava/lang/Object;

    .line 2395
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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2484
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->value_:Ljava/lang/Object;

    .line 2485
    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Im;->type_:I

    .line 2486
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->label_:Ljava/lang/Object;

    .line 2487
    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Im;->protocol_:I

    .line 2488
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->customProtocol_:Ljava/lang/Object;

    .line 2489
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    .locals 1

    .prologue
    .line 2621
    #calls: Lcom/miui/milk/model/ContactProtos2$Im$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->access$3000()Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCustomProtocol()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2458
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Im;->customProtocol_:Ljava/lang/Object;

    .line 2459
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2460
    check-cast v1, Ljava/lang/String;

    .line 2468
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 2462
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2464
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2465
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2466
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Im;->customProtocol_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2468
    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2416
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Im;->label_:Ljava/lang/Object;

    .line 2417
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2418
    check-cast v1, Ljava/lang/String;

    .line 2426
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 2420
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2422
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2423
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2424
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Im;->label_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2426
    goto :goto_0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    .line 2448
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->protocol_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2521
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->memoizedSerializedSize:I

    .line 2522
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2546
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 2524
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 2525
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Im;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 2526
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Im;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2529
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Im;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 2530
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Im;->type_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2533
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Im;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 2534
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Im;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2537
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Im;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 2538
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Im;->protocol_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2541
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Im;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 2542
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Im;->getCustomProtocolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2545
    :cond_5
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->memoizedSerializedSize:I

    move v1, v0

    .line 2546
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 2406
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->type_:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2374
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Im;->value_:Ljava/lang/Object;

    .line 2375
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2376
    check-cast v1, Ljava/lang/String;

    .line 2384
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 2378
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2380
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2381
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2382
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Im;->value_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2384
    goto :goto_0
.end method

.method public hasCustomProtocol()Z
    .locals 2

    .prologue
    .line 2455
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 2413
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->bitField0_:I

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

.method public hasProtocol()Z
    .locals 2

    .prologue
    .line 2445
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->bitField0_:I

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
    .line 2403
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->bitField0_:I

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

    .line 2371
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Im;->bitField0_:I

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

    .line 2492
    iget-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->memoizedIsInitialized:B

    .line 2493
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 2496
    :goto_0
    return v1

    .line 2493
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2495
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/ContactProtos2$Im;->memoizedIsInitialized:B

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
    .line 2551
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

    .line 2501
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Im;->getSerializedSize()I

    .line 2502
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2503
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Im;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2505
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2506
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->type_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2508
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 2509
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Im;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2511
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 2512
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->protocol_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2514
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Im;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 2515
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Im;->getCustomProtocolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2517
    :cond_4
    return-void
.end method
