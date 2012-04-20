.class public final Lcom/miui/milk/model/SmsProtos$MmsSms;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SmsProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/SmsProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MmsSms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/SmsProtos$MmsSms;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private smsBookmark_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/SmsProtos$SmsBookmark;",
            ">;"
        }
    .end annotation
.end field

.field private sms_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/SmsProtos$Sms;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3147
    new-instance v0, Lcom/miui/milk/model/SmsProtos$MmsSms;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/SmsProtos$MmsSms;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/SmsProtos$MmsSms;->defaultInstance:Lcom/miui/milk/model/SmsProtos$MmsSms;

    .line 3148
    sget-object v0, Lcom/miui/milk/model/SmsProtos$MmsSms;->defaultInstance:Lcom/miui/milk/model/SmsProtos$MmsSms;

    invoke-direct {v0}, Lcom/miui/milk/model/SmsProtos$MmsSms;->initFields()V

    .line 3149
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2657
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2716
    iput-byte v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->memoizedIsInitialized:B

    .line 2736
    iput v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->memoizedSerializedSize:I

    .line 2658
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;Lcom/miui/milk/model/SmsProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2652
    invoke-direct {p0, p1}, Lcom/miui/milk/model/SmsProtos$MmsSms;-><init>(Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2659
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2716
    iput-byte v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->memoizedIsInitialized:B

    .line 2736
    iput v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->memoizedSerializedSize:I

    .line 2659
    return-void
.end method

.method static synthetic access$3900(Lcom/miui/milk/model/SmsProtos$MmsSms;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->sms_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/miui/milk/model/SmsProtos$MmsSms;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2652
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->sms_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/miui/milk/model/SmsProtos$MmsSms;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->smsBookmark_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/miui/milk/model/SmsProtos$MmsSms;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2652
    iput-object p1, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->smsBookmark_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/SmsProtos$MmsSms;
    .locals 1

    .prologue
    .line 2663
    sget-object v0, Lcom/miui/milk/model/SmsProtos$MmsSms;->defaultInstance:Lcom/miui/milk/model/SmsProtos$MmsSms;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2713
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->sms_:Ljava/util/List;

    .line 2714
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->smsBookmark_:Ljava/util/List;

    .line 2715
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
    .locals 1

    .prologue
    .line 2828
    #calls: Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->create()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->access$3700()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/milk/model/SmsProtos$MmsSms;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2831
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$MmsSms;->newBuilder()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->mergeFrom(Lcom/miui/milk/model/SmsProtos$MmsSms;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2738
    iget v1, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->memoizedSerializedSize:I

    .line 2739
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 2751
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 2741
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 2742
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->sms_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2743
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->sms_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2742
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2746
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->smsBookmark_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 2747
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->smsBookmark_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2746
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2750
    :cond_2
    iput v1, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->memoizedSerializedSize:I

    move v2, v1

    .line 2751
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getSmsBookmarkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/SmsProtos$SmsBookmark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->smsBookmark_:Ljava/util/List;

    return-object v0
.end method

.method public getSmsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/SmsProtos$Sms;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2674
    iget-object v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->sms_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2718
    iget-byte v0, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->memoizedIsInitialized:B

    .line 2719
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 2722
    :goto_0
    return v1

    .line 2719
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2721
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->memoizedIsInitialized:B

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
    .line 2758
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
    .line 2727
    invoke-virtual {p0}, Lcom/miui/milk/model/SmsProtos$MmsSms;->getSerializedSize()I

    .line 2728
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->sms_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2729
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->sms_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2728
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2731
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->smsBookmark_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2732
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/miui/milk/model/SmsProtos$MmsSms;->smsBookmark_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2731
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2734
    :cond_1
    return-void
.end method
