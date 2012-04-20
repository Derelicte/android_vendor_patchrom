.class public final Lcom/miui/milk/model/MmsProtos$MmsCollection;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MmsProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/MmsProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MmsCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/MmsProtos$MmsCollection;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pdus_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/MmsProtos$Pdu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4733
    new-instance v0, Lcom/miui/milk/model/MmsProtos$MmsCollection;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/MmsProtos$MmsCollection;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->defaultInstance:Lcom/miui/milk/model/MmsProtos$MmsCollection;

    .line 4734
    sget-object v0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->defaultInstance:Lcom/miui/milk/model/MmsProtos$MmsCollection;

    invoke-direct {v0}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->initFields()V

    .line 4735
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4384
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4421
    iput-byte v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->memoizedIsInitialized:B

    .line 4438
    iput v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->memoizedSerializedSize:I

    .line 4385
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;Lcom/miui/milk/model/MmsProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4379
    invoke-direct {p0, p1}, Lcom/miui/milk/model/MmsProtos$MmsCollection;-><init>(Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4386
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4421
    iput-byte v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->memoizedIsInitialized:B

    .line 4438
    iput v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->memoizedSerializedSize:I

    .line 4386
    return-void
.end method

.method static synthetic access$6400(Lcom/miui/milk/model/MmsProtos$MmsCollection;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4379
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->pdus_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/miui/milk/model/MmsProtos$MmsCollection;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4379
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->pdus_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .locals 1

    .prologue
    .line 4390
    sget-object v0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->defaultInstance:Lcom/miui/milk/model/MmsProtos$MmsCollection;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4419
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->pdus_:Ljava/util/List;

    .line 4420
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;
    .locals 1

    .prologue
    .line 4526
    #calls: Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->create()Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->access$6200()Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/milk/model/MmsProtos$MmsCollection;)Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 4529
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->newBuilder()Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->mergeFrom(Lcom/miui/milk/model/MmsProtos$MmsCollection;)Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPdusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/MmsProtos$Pdu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4401
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->pdus_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 4440
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->memoizedSerializedSize:I

    .line 4441
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 4449
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 4443
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 4444
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->pdus_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 4445
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->pdus_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4444
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4448
    :cond_1
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->memoizedSerializedSize:I

    move v2, v1

    .line 4449
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 4423
    iget-byte v0, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->memoizedIsInitialized:B

    .line 4424
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 4427
    :goto_0
    return v1

    .line 4424
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 4426
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->memoizedIsInitialized:B

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
    .line 4456
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
    .line 4432
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->getSerializedSize()I

    .line 4433
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->pdus_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4434
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$MmsCollection;->pdus_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4436
    :cond_0
    return-void
.end method
