.class public final Lcom/miui/milk/model/MmsProtos$PduAddr;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MmsProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/MmsProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PduAddr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/MmsProtos$PduAddr;

.field private static final serialVersionUID:J


# instance fields
.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private charset_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3154
    new-instance v0, Lcom/miui/milk/model/MmsProtos$PduAddr;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/MmsProtos$PduAddr;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/MmsProtos$PduAddr;->defaultInstance:Lcom/miui/milk/model/MmsProtos$PduAddr;

    .line 3155
    sget-object v0, Lcom/miui/milk/model/MmsProtos$PduAddr;->defaultInstance:Lcom/miui/milk/model/MmsProtos$PduAddr;

    invoke-direct {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr;->initFields()V

    .line 3156
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2747
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2818
    iput-byte v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->memoizedIsInitialized:B

    .line 2841
    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->memoizedSerializedSize:I

    .line 2748
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;Lcom/miui/milk/model/MmsProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2742
    invoke-direct {p0, p1}, Lcom/miui/milk/model/MmsProtos$PduAddr;-><init>(Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2749
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2818
    iput-byte v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->memoizedIsInitialized:B

    .line 2841
    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->memoizedSerializedSize:I

    .line 2749
    return-void
.end method

.method static synthetic access$4102(Lcom/miui/milk/model/MmsProtos$PduAddr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2742
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->address_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/miui/milk/model/MmsProtos$PduAddr;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2742
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->type_:I

    return p1
.end method

.method static synthetic access$4302(Lcom/miui/milk/model/MmsProtos$PduAddr;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2742
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->charset_:I

    return p1
.end method

.method static synthetic access$4402(Lcom/miui/milk/model/MmsProtos$PduAddr;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2742
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->bitField0_:I

    return p1
.end method

.method private getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2782
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->address_:Ljava/lang/Object;

    .line 2783
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2784
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2786
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->address_:Ljava/lang/Object;

    .line 2789
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

.method public static getDefaultInstance()Lcom/miui/milk/model/MmsProtos$PduAddr;
    .locals 1

    .prologue
    .line 2753
    sget-object v0, Lcom/miui/milk/model/MmsProtos$PduAddr;->defaultInstance:Lcom/miui/milk/model/MmsProtos$PduAddr;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2814
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->address_:Ljava/lang/Object;

    .line 2815
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->type_:I

    .line 2816
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->charset_:I

    .line 2817
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;
    .locals 1

    .prologue
    .line 2937
    #calls: Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->create()Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->access$3900()Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2768
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->address_:Ljava/lang/Object;

    .line 2769
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2770
    check-cast v1, Ljava/lang/String;

    .line 2778
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 2772
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2774
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2775
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2776
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->address_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2778
    goto :goto_0
.end method

.method public getCharset()I
    .locals 1

    .prologue
    .line 2810
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->charset_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2843
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->memoizedSerializedSize:I

    .line 2844
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2860
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 2846
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 2847
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 2848
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2851
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 2852
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->type_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2855
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 2856
    const/4 v2, 0x3

    iget v3, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->charset_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2859
    :cond_3
    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->memoizedSerializedSize:I

    move v1, v0

    .line 2860
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 2800
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->type_:I

    return v0
.end method

.method public hasAddress()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2765
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCharset()Z
    .locals 2

    .prologue
    .line 2807
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->bitField0_:I

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
    .line 2797
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2820
    iget-byte v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->memoizedIsInitialized:B

    .line 2821
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 2824
    :goto_0
    return v1

    .line 2821
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2823
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->memoizedIsInitialized:B

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
    .line 2867
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

    .line 2829
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getSerializedSize()I

    .line 2830
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2831
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2833
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2834
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->type_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2836
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2837
    const/4 v0, 0x3

    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduAddr;->charset_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2839
    :cond_2
    return-void
.end method
