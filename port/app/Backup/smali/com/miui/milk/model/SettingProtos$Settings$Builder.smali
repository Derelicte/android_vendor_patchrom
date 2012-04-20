.class public final Lcom/miui/milk/model/SettingProtos$Settings$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SettingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/SettingProtos$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/SettingProtos$Settings;",
        "Lcom/miui/milk/model/SettingProtos$Settings$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1668
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1794
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    .line 1883
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    .line 1669
    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->maybeForceBuilderInitialization()V

    .line 1670
    return-void
.end method

.method static synthetic access$2100()Lcom/miui/milk/model/SettingProtos$Settings$Builder;
    .locals 1

    .prologue
    .line 1663
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->create()Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/SettingProtos$Settings$Builder;
    .locals 1

    .prologue
    .line 1675
    new-instance v0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSecureIsMutable()V
    .locals 2

    .prologue
    .line 1886
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1887
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    .line 1888
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->bitField0_:I

    .line 1890
    :cond_0
    return-void
.end method

.method private ensureSystemIsMutable()V
    .locals 2

    .prologue
    .line 1797
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1798
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    .line 1799
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->bitField0_:I

    .line 1801
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1673
    return-void
.end method


# virtual methods
.method public addSecure(Lcom/miui/milk/model/SettingProtos$SecureSetting;)Lcom/miui/milk/model/SettingProtos$Settings$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1919
    if-nez p1, :cond_0

    .line 1920
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1922
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->ensureSecureIsMutable()V

    .line 1923
    iget-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1925
    return-object p0
.end method

.method public addSystem(Lcom/miui/milk/model/SettingProtos$SystemSetting;)Lcom/miui/milk/model/SettingProtos$Settings$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1830
    if-nez p1, :cond_0

    .line 1831
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1833
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->ensureSystemIsMutable()V

    .line 1834
    iget-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1836
    return-object p0
.end method

.method public build()Lcom/miui/milk/model/SettingProtos$Settings;
    .locals 2

    .prologue
    .line 1696
    invoke-virtual {p0}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->buildPartial()Lcom/miui/milk/model/SettingProtos$Settings;

    move-result-object v0

    .line 1697
    .local v0, result:Lcom/miui/milk/model/SettingProtos$Settings;
    invoke-virtual {v0}, Lcom/miui/milk/model/SettingProtos$Settings;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1698
    invoke-static {v0}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1700
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1663
    invoke-virtual {p0}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->buildPartial()Lcom/miui/milk/model/SettingProtos$Settings;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/SettingProtos$Settings;
    .locals 4

    .prologue
    .line 1714
    new-instance v1, Lcom/miui/milk/model/SettingProtos$Settings;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/milk/model/SettingProtos$Settings;-><init>(Lcom/miui/milk/model/SettingProtos$Settings$Builder;Lcom/miui/milk/model/SettingProtos$1;)V

    .line 1715
    .local v1, result:Lcom/miui/milk/model/SettingProtos$Settings;
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->bitField0_:I

    .line 1716
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1717
    iget-object v2, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    .line 1718
    iget v2, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->bitField0_:I

    .line 1720
    :cond_0
    iget-object v2, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/SettingProtos$Settings;->system_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/milk/model/SettingProtos$Settings;->access$2302(Lcom/miui/milk/model/SettingProtos$Settings;Ljava/util/List;)Ljava/util/List;

    .line 1721
    iget v2, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1722
    iget-object v2, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    .line 1723
    iget v2, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->bitField0_:I

    .line 1725
    :cond_1
    iget-object v2, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/SettingProtos$Settings;->secure_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/milk/model/SettingProtos$Settings;->access$2402(Lcom/miui/milk/model/SettingProtos$Settings;Ljava/util/List;)Ljava/util/List;

    .line 1726
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1663
    invoke-virtual {p0}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->clone()Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1663
    invoke-virtual {p0}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->clone()Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/SettingProtos$Settings$Builder;
    .locals 2

    .prologue
    .line 1688
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->create()Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->buildPartial()Lcom/miui/milk/model/SettingProtos$Settings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->mergeFrom(Lcom/miui/milk/model/SettingProtos$Settings;)Lcom/miui/milk/model/SettingProtos$Settings$Builder;

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
    .line 1663
    invoke-virtual {p0}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->clone()Lcom/miui/milk/model/SettingProtos$Settings$Builder;

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
    .line 1663
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SettingProtos$Settings$Builder;

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
    .line 1663
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SettingProtos$Settings$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1763
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1764
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 1769
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1771
    :sswitch_0
    return-object p0

    .line 1776
    :sswitch_1
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->newBuilder()Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

    move-result-object v0

    .line 1777
    .local v0, subBuilder:Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1778
    invoke-virtual {v0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->buildPartial()Lcom/miui/milk/model/SettingProtos$SystemSetting;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->addSystem(Lcom/miui/milk/model/SettingProtos$SystemSetting;)Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    goto :goto_0

    .line 1782
    .end local v0           #subBuilder:Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    :sswitch_2
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$SecureSetting;->newBuilder()Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;

    move-result-object v0

    .line 1783
    .local v0, subBuilder:Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1784
    invoke-virtual {v0}, Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;->buildPartial()Lcom/miui/milk/model/SettingProtos$SecureSetting;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->addSecure(Lcom/miui/milk/model/SettingProtos$SecureSetting;)Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    goto :goto_0

    .line 1764
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/SettingProtos$Settings;)Lcom/miui/milk/model/SettingProtos$Settings$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1730
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$Settings;->getDefaultInstance()Lcom/miui/milk/model/SettingProtos$Settings;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1751
    :cond_0
    :goto_0
    return-object p0

    .line 1731
    :cond_1
    #getter for: Lcom/miui/milk/model/SettingProtos$Settings;->system_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/SettingProtos$Settings;->access$2300(Lcom/miui/milk/model/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1732
    iget-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1733
    #getter for: Lcom/miui/milk/model/SettingProtos$Settings;->system_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/SettingProtos$Settings;->access$2300(Lcom/miui/milk/model/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    .line 1734
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->bitField0_:I

    .line 1741
    :cond_2
    :goto_1
    #getter for: Lcom/miui/milk/model/SettingProtos$Settings;->secure_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/SettingProtos$Settings;->access$2400(Lcom/miui/milk/model/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1742
    iget-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1743
    #getter for: Lcom/miui/milk/model/SettingProtos$Settings;->secure_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/SettingProtos$Settings;->access$2400(Lcom/miui/milk/model/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    .line 1744
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->bitField0_:I

    goto :goto_0

    .line 1736
    :cond_3
    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->ensureSystemIsMutable()V

    .line 1737
    iget-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->system_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/SettingProtos$Settings;->system_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/SettingProtos$Settings;->access$2300(Lcom/miui/milk/model/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1746
    :cond_4
    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->ensureSecureIsMutable()V

    .line 1747
    iget-object v0, p0, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->secure_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/SettingProtos$Settings;->secure_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/SettingProtos$Settings;->access$2400(Lcom/miui/milk/model/SettingProtos$Settings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
