.class public final Lcom/miui/milk/model/SettingProtos$Settings;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SettingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/SettingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/SettingProtos$Settings$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/SettingProtos$Settings;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private secure_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/SettingProtos$SecureSetting;",
            ">;"
        }
    .end annotation
.end field

.field private system_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/SettingProtos$SystemSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1975
    new-instance v0, Lcom/miui/milk/model/SettingProtos$Settings;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/SettingProtos$Settings;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/SettingProtos$Settings;->defaultInstance:Lcom/miui/milk/model/SettingProtos$Settings;

    .line 1976
    sget-object v0, Lcom/miui/milk/model/SettingProtos$Settings;->defaultInstance:Lcom/miui/milk/model/SettingProtos$Settings;

    invoke-direct {v0}, Lcom/miui/milk/model/SettingProtos$Settings;->initFields()V

    .line 1977
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/SettingProtos$Settings$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1487
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1546
    iput-byte v0, p0, Lcom/miui/milk/model/SettingProtos$Settings;->memoizedIsInitialized:B

    .line 1566
    iput v0, p0, Lcom/miui/milk/model/SettingProtos$Settings;->memoizedSerializedSize:I

    .line 1488
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/SettingProtos$Settings$Builder;Lcom/miui/milk/model/SettingProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1482
    invoke-direct {p0, p1}, Lcom/miui/milk/model/SettingProtos$Settings;-><init>(Lcom/miui/milk/model/SettingProtos$Settings$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1489
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1546
    iput-byte v0, p0, Lcom/miui/milk/model/SettingProtos$Settings;->memoizedIsInitialized:B

    .line 1566
    iput v0, p0, Lcom/miui/milk/model/SettingProtos$Settings;->memoizedSerializedSize:I

    .line 1489
    return-void
.end method

.method static synthetic access$2300(Lcom/miui/milk/model/SettingProtos$Settings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings;->system_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/miui/milk/model/SettingProtos$Settings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$Settings;->system_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/miui/milk/model/SettingProtos$Settings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings;->secure_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/miui/milk/model/SettingProtos$Settings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$Settings;->secure_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/SettingProtos$Settings;
    .locals 1

    .prologue
    .line 1493
    sget-object v0, Lcom/miui/milk/model/SettingProtos$Settings;->defaultInstance:Lcom/miui/milk/model/SettingProtos$Settings;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1543
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings;->system_:Ljava/util/List;

    .line 1544
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings;->secure_:Ljava/util/List;

    .line 1545
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/SettingProtos$Settings$Builder;
    .locals 1

    .prologue
    .line 1656
    #calls: Lcom/miui/milk/model/SettingProtos$Settings$Builder;->create()Lcom/miui/milk/model/SettingProtos$Settings$Builder;
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->access$2100()Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/milk/model/SettingProtos$Settings;)Lcom/miui/milk/model/SettingProtos$Settings$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1659
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$Settings;->newBuilder()Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->mergeFrom(Lcom/miui/milk/model/SettingProtos$Settings;)Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSecureCount()I
    .locals 1

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings;->secure_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSecureList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/SettingProtos$SecureSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings;->secure_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1568
    iget v1, p0, Lcom/miui/milk/model/SettingProtos$Settings;->memoizedSerializedSize:I

    .line 1569
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1581
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 1571
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 1572
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/miui/milk/model/SettingProtos$Settings;->system_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1573
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/miui/milk/model/SettingProtos$Settings;->system_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1572
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1576
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/miui/milk/model/SettingProtos$Settings;->secure_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1577
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/miui/milk/model/SettingProtos$Settings;->secure_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1576
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1580
    :cond_2
    iput v1, p0, Lcom/miui/milk/model/SettingProtos$Settings;->memoizedSerializedSize:I

    move v2, v1

    .line 1581
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getSystemCount()I
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings;->system_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSystemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/SettingProtos$SystemSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings;->system_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1548
    iget-byte v0, p0, Lcom/miui/milk/model/SettingProtos$Settings;->memoizedIsInitialized:B

    .line 1549
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 1552
    :goto_0
    return v1

    .line 1549
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1551
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/SettingProtos$Settings;->memoizedIsInitialized:B

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
    .line 1586
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
    .line 1557
    invoke-virtual {p0}, Lcom/miui/milk/model/SettingProtos$Settings;->getSerializedSize()I

    .line 1558
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$Settings;->system_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1559
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$Settings;->system_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1558
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1561
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$Settings;->secure_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1562
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$Settings;->secure_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1561
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1564
    :cond_1
    return-void
.end method
