.class public final Lcom/miui/milk/model/ContactProtos2$Note;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Note"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos2$Note$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos2$Note;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3778
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Note;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Note;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos2$Note;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Note;

    .line 3779
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Note;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Note;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Note;->initFields()V

    .line 3780
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos2$Note$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3479
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3528
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Note;->memoizedIsInitialized:B

    .line 3545
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Note;->memoizedSerializedSize:I

    .line 3480
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos2$Note$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3474
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos2$Note;-><init>(Lcom/miui/milk/model/ContactProtos2$Note$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3481
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3528
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Note;->memoizedIsInitialized:B

    .line 3545
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Note;->memoizedSerializedSize:I

    .line 3481
    return-void
.end method

.method static synthetic access$4802(Lcom/miui/milk/model/ContactProtos2$Note;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3474
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Note;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/miui/milk/model/ContactProtos2$Note;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3474
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Note;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Note;
    .locals 1

    .prologue
    .line 3485
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Note;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Note;

    return-object v0
.end method

.method private getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3514
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Note;->value_:Ljava/lang/Object;

    .line 3515
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3516
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3518
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Note;->value_:Ljava/lang/Object;

    .line 3521
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
    .line 3526
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Note;->value_:Ljava/lang/Object;

    .line 3527
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos2$Note$Builder;
    .locals 1

    .prologue
    .line 3631
    #calls: Lcom/miui/milk/model/ContactProtos2$Note$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Note$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Note$Builder;->access$4600()Lcom/miui/milk/model/ContactProtos2$Note$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3547
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Note;->memoizedSerializedSize:I

    .line 3548
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3556
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 3550
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 3551
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Note;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 3552
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Note;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3555
    :cond_1
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Note;->memoizedSerializedSize:I

    move v1, v0

    .line 3556
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3500
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Note;->value_:Ljava/lang/Object;

    .line 3501
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3502
    check-cast v1, Ljava/lang/String;

    .line 3510
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3504
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3506
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3507
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3508
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Note;->value_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3510
    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3497
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Note;->bitField0_:I

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

    .line 3530
    iget-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Note;->memoizedIsInitialized:B

    .line 3531
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 3534
    :goto_0
    return v1

    .line 3531
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3533
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/ContactProtos2$Note;->memoizedIsInitialized:B

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
    .line 3561
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3539
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Note;->getSerializedSize()I

    .line 3540
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Note;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3541
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Note;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3543
    :cond_0
    return-void
.end method
