.class public final Lcom/miui/milk/model/WifiProtos$Wifi;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "WifiProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/WifiProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wifi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/WifiProtos$Wifi$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/WifiProtos$Wifi;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private wifiConfig_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/WifiProtos$WifiConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3200
    new-instance v0, Lcom/miui/milk/model/WifiProtos$Wifi;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/WifiProtos$Wifi;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/WifiProtos$Wifi;->defaultInstance:Lcom/miui/milk/model/WifiProtos$Wifi;

    .line 3201
    sget-object v0, Lcom/miui/milk/model/WifiProtos$Wifi;->defaultInstance:Lcom/miui/milk/model/WifiProtos$Wifi;

    invoke-direct {v0}, Lcom/miui/milk/model/WifiProtos$Wifi;->initFields()V

    .line 3202
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/WifiProtos$Wifi$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2853
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2890
    iput-byte v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi;->memoizedIsInitialized:B

    .line 2907
    iput v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi;->memoizedSerializedSize:I

    .line 2854
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/WifiProtos$Wifi$Builder;Lcom/miui/milk/model/WifiProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2848
    invoke-direct {p0, p1}, Lcom/miui/milk/model/WifiProtos$Wifi;-><init>(Lcom/miui/milk/model/WifiProtos$Wifi$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2855
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2890
    iput-byte v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi;->memoizedIsInitialized:B

    .line 2907
    iput v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi;->memoizedSerializedSize:I

    .line 2855
    return-void
.end method

.method static synthetic access$3800(Lcom/miui/milk/model/WifiProtos$Wifi;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi;->wifiConfig_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/miui/milk/model/WifiProtos$Wifi;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2848
    iput-object p1, p0, Lcom/miui/milk/model/WifiProtos$Wifi;->wifiConfig_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/WifiProtos$Wifi;
    .locals 1

    .prologue
    .line 2859
    sget-object v0, Lcom/miui/milk/model/WifiProtos$Wifi;->defaultInstance:Lcom/miui/milk/model/WifiProtos$Wifi;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2888
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi;->wifiConfig_:Ljava/util/List;

    .line 2889
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/WifiProtos$Wifi$Builder;
    .locals 1

    .prologue
    .line 2993
    #calls: Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->create()Lcom/miui/milk/model/WifiProtos$Wifi$Builder;
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->access$3600()Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/milk/model/WifiProtos$Wifi;)Lcom/miui/milk/model/WifiProtos$Wifi$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2996
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$Wifi;->newBuilder()Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->mergeFrom(Lcom/miui/milk/model/WifiProtos$Wifi;)Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2909
    iget v1, p0, Lcom/miui/milk/model/WifiProtos$Wifi;->memoizedSerializedSize:I

    .line 2910
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 2918
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 2912
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 2913
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$Wifi;->wifiConfig_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2914
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/miui/milk/model/WifiProtos$Wifi;->wifiConfig_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2913
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2917
    :cond_1
    iput v1, p0, Lcom/miui/milk/model/WifiProtos$Wifi;->memoizedSerializedSize:I

    move v2, v1

    .line 2918
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getWifiConfigCount()I
    .locals 1

    .prologue
    .line 2877
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi;->wifiConfig_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWifiConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/WifiProtos$WifiConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi;->wifiConfig_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2892
    iget-byte v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi;->memoizedIsInitialized:B

    .line 2893
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 2896
    :goto_0
    return v1

    .line 2893
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2895
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/WifiProtos$Wifi;->memoizedIsInitialized:B

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
    .line 2923
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
    .line 2901
    invoke-virtual {p0}, Lcom/miui/milk/model/WifiProtos$Wifi;->getSerializedSize()I

    .line 2902
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$Wifi;->wifiConfig_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2903
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$Wifi;->wifiConfig_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2902
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2905
    :cond_0
    return-void
.end method
