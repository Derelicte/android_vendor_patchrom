.class public final Lcom/miui/milk/model/WifiProtos$Wifi$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "WifiProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/WifiProtos$Wifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/WifiProtos$Wifi;",
        "Lcom/miui/milk/model/WifiProtos$Wifi$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3005
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->wifiConfig_:Ljava/util/List;

    .line 3006
    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->maybeForceBuilderInitialization()V

    .line 3007
    return-void
.end method

.method static synthetic access$3600()Lcom/miui/milk/model/WifiProtos$Wifi$Builder;
    .locals 1

    .prologue
    .line 3000
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->create()Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/WifiProtos$Wifi$Builder;
    .locals 1

    .prologue
    .line 3012
    new-instance v0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;-><init>()V

    return-object v0
.end method

.method private ensureWifiConfigIsMutable()V
    .locals 2

    .prologue
    .line 3111
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3112
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->wifiConfig_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->wifiConfig_:Ljava/util/List;

    .line 3113
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->bitField0_:I

    .line 3115
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 3010
    return-void
.end method


# virtual methods
.method public addWifiConfig(Lcom/miui/milk/model/WifiProtos$WifiConfig;)Lcom/miui/milk/model/WifiProtos$Wifi$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3144
    if-nez p1, :cond_0

    .line 3145
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3147
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->ensureWifiConfigIsMutable()V

    .line 3148
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->wifiConfig_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3150
    return-object p0
.end method

.method public build()Lcom/miui/milk/model/WifiProtos$Wifi;
    .locals 2

    .prologue
    .line 3031
    invoke-virtual {p0}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->buildPartial()Lcom/miui/milk/model/WifiProtos$Wifi;

    move-result-object v0

    .line 3032
    .local v0, result:Lcom/miui/milk/model/WifiProtos$Wifi;
    invoke-virtual {v0}, Lcom/miui/milk/model/WifiProtos$Wifi;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3033
    invoke-static {v0}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3035
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3000
    invoke-virtual {p0}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->buildPartial()Lcom/miui/milk/model/WifiProtos$Wifi;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/WifiProtos$Wifi;
    .locals 4

    .prologue
    .line 3049
    new-instance v1, Lcom/miui/milk/model/WifiProtos$Wifi;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/milk/model/WifiProtos$Wifi;-><init>(Lcom/miui/milk/model/WifiProtos$Wifi$Builder;Lcom/miui/milk/model/WifiProtos$1;)V

    .line 3050
    .local v1, result:Lcom/miui/milk/model/WifiProtos$Wifi;
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->bitField0_:I

    .line 3051
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3052
    iget-object v2, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->wifiConfig_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->wifiConfig_:Ljava/util/List;

    .line 3053
    iget v2, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->bitField0_:I

    .line 3055
    :cond_0
    iget-object v2, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->wifiConfig_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/WifiProtos$Wifi;->wifiConfig_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/milk/model/WifiProtos$Wifi;->access$3802(Lcom/miui/milk/model/WifiProtos$Wifi;Ljava/util/List;)Ljava/util/List;

    .line 3056
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3000
    invoke-virtual {p0}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->clone()Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3000
    invoke-virtual {p0}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->clone()Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/WifiProtos$Wifi$Builder;
    .locals 2

    .prologue
    .line 3023
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->create()Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->buildPartial()Lcom/miui/milk/model/WifiProtos$Wifi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->mergeFrom(Lcom/miui/milk/model/WifiProtos$Wifi;)Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

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
    .line 3000
    invoke-virtual {p0}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->clone()Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    move-result-object v0

    return-object v0
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
    .line 3118
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->wifiConfig_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

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
    .line 3000
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

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
    .line 3000
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/WifiProtos$Wifi$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3083
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3084
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 3089
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3091
    :sswitch_0
    return-object p0

    .line 3096
    :sswitch_1
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$WifiConfig;->newBuilder()Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;

    move-result-object v0

    .line 3097
    .local v0, subBuilder:Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3098
    invoke-virtual {v0}, Lcom/miui/milk/model/WifiProtos$WifiConfig$Builder;->buildPartial()Lcom/miui/milk/model/WifiProtos$WifiConfig;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->addWifiConfig(Lcom/miui/milk/model/WifiProtos$WifiConfig;)Lcom/miui/milk/model/WifiProtos$Wifi$Builder;

    goto :goto_0

    .line 3084
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/WifiProtos$Wifi;)Lcom/miui/milk/model/WifiProtos$Wifi$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 3060
    invoke-static {}, Lcom/miui/milk/model/WifiProtos$Wifi;->getDefaultInstance()Lcom/miui/milk/model/WifiProtos$Wifi;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3071
    :cond_0
    :goto_0
    return-object p0

    .line 3061
    :cond_1
    #getter for: Lcom/miui/milk/model/WifiProtos$Wifi;->wifiConfig_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/WifiProtos$Wifi;->access$3800(Lcom/miui/milk/model/WifiProtos$Wifi;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3062
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->wifiConfig_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3063
    #getter for: Lcom/miui/milk/model/WifiProtos$Wifi;->wifiConfig_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/WifiProtos$Wifi;->access$3800(Lcom/miui/milk/model/WifiProtos$Wifi;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->wifiConfig_:Ljava/util/List;

    .line 3064
    iget v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->bitField0_:I

    goto :goto_0

    .line 3066
    :cond_2
    invoke-direct {p0}, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->ensureWifiConfigIsMutable()V

    .line 3067
    iget-object v0, p0, Lcom/miui/milk/model/WifiProtos$Wifi$Builder;->wifiConfig_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/WifiProtos$Wifi;->wifiConfig_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/WifiProtos$Wifi;->access$3800(Lcom/miui/milk/model/WifiProtos$Wifi;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
