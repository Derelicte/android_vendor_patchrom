.class public final Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AntiSpamProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;",
        "Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private bitField0_:I

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private guid_:Ljava/lang/Object;

.field private keyword_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1775
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1935
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->guid_:Ljava/lang/Object;

    .line 1971
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->luid_:Ljava/lang/Object;

    .line 2007
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->keyword_:Ljava/lang/Object;

    .line 2043
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 2067
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 1776
    invoke-direct {p0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->maybeForceBuilderInitialization()V

    .line 1777
    return-void
.end method

.method static synthetic access$2100()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;
    .locals 1

    .prologue
    .line 1770
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->create()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;
    .locals 1

    .prologue
    .line 1782
    new-instance v0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1780
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;
    .locals 2

    .prologue
    .line 1809
    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->buildPartial()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;

    move-result-object v0

    .line 1810
    .local v0, result:Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;
    invoke-virtual {v0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1811
    invoke-static {v0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1813
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->buildPartial()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;
    .locals 5

    .prologue
    .line 1827
    new-instance v1, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;-><init>(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;Lcom/miui/milk/model/AntiSpamProtos$1;)V

    .line 1828
    .local v1, result:Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    .line 1829
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1830
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1831
    or-int/lit8 v2, v2, 0x1

    .line 1833
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->guid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->guid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->access$2302(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1835
    or-int/lit8 v2, v2, 0x2

    .line 1837
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->luid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->luid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->access$2402(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1838
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1839
    or-int/lit8 v2, v2, 0x4

    .line 1841
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->keyword_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->keyword_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->access$2502(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1842
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1843
    or-int/lit8 v2, v2, 0x8

    .line 1845
    :cond_3
    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    #setter for: Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->access$2602(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 1846
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1847
    or-int/lit8 v2, v2, 0x10

    .line 1849
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    #setter for: Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->access$2702(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 1850
    #setter for: Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->access$2802(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;I)I

    .line 1851
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->clone()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->clone()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;
    .locals 2

    .prologue
    .line 1801
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->create()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->buildPartial()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->mergeFrom(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;)Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;

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
    .line 1770
    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->clone()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;

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
    .line 1770
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;

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
    .line 1770
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1883
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1884
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 1889
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1891
    :sswitch_0
    return-object p0

    .line 1896
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    .line 1897
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 1901
    :sswitch_2
    iget v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    .line 1902
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 1906
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    .line 1907
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->keyword_:Ljava/lang/Object;

    goto :goto_0

    .line 1911
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1912
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ActionType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v2

    .line 1913
    .local v2, value:Lcom/miui/milk/model/CommonProtos$ActionType;
    if-eqz v2, :cond_0

    .line 1914
    iget v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    .line 1915
    iput-object v2, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    goto :goto_0

    .line 1920
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/CommonProtos$ActionType;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1921
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ConflictType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v2

    .line 1922
    .local v2, value:Lcom/miui/milk/model/CommonProtos$ConflictType;
    if-eqz v2, :cond_0

    .line 1923
    iget v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    .line 1924
    iput-object v2, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    goto :goto_0

    .line 1884
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0xa0 -> :sswitch_4
        0xa8 -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;)Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1855
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->getDefaultInstance()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1871
    :cond_0
    :goto_0
    return-object p0

    .line 1856
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1857
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;

    .line 1859
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1860
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;

    .line 1862
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->hasKeyword()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1863
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->setKeyword(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;

    .line 1865
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->hasActionType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1866
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;

    .line 1868
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->hasConflictType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1869
    invoke-virtual {p1}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;

    goto :goto_0
.end method

.method public setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2051
    if-nez p1, :cond_0

    .line 2052
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2054
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    .line 2055
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 2057
    return-object p0
.end method

.method public setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2075
    if-nez p1, :cond_0

    .line 2076
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2078
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    .line 2079
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 2081
    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1950
    if-nez p1, :cond_0

    .line 1951
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1953
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    .line 1954
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->guid_:Ljava/lang/Object;

    .line 1956
    return-object p0
.end method

.method public setKeyword(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2022
    if-nez p1, :cond_0

    .line 2023
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2025
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    .line 2026
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->keyword_:Ljava/lang/Object;

    .line 2028
    return-object p0
.end method

.method public setLuid(Ljava/lang/String;)Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1986
    if-nez p1, :cond_0

    .line 1987
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1989
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->bitField0_:I

    .line 1990
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->luid_:Ljava/lang/Object;

    .line 1992
    return-object p0
.end method
