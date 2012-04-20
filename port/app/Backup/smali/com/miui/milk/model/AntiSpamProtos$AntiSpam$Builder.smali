.class public final Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AntiSpamProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;",
        "Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private blacklist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private keyword_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;",
            ">;"
        }
    .end annotation
.end field

.field private whitelist_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2337
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2486
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->blacklist_:Ljava/util/List;

    .line 2575
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->whitelist_:Ljava/util/List;

    .line 2664
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->keyword_:Ljava/util/List;

    .line 2338
    invoke-direct {p0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->maybeForceBuilderInitialization()V

    .line 2339
    return-void
.end method

.method static synthetic access$3000()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;
    .locals 1

    .prologue
    .line 2332
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->create()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;
    .locals 1

    .prologue
    .line 2344
    new-instance v0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;-><init>()V

    return-object v0
.end method

.method private ensureBlacklistIsMutable()V
    .locals 2

    .prologue
    .line 2489
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2490
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->blacklist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->blacklist_:Ljava/util/List;

    .line 2491
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    .line 2493
    :cond_0
    return-void
.end method

.method private ensureKeywordIsMutable()V
    .locals 2

    .prologue
    .line 2667
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2668
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->keyword_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->keyword_:Ljava/util/List;

    .line 2669
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    .line 2671
    :cond_0
    return-void
.end method

.method private ensureWhitelistIsMutable()V
    .locals 2

    .prologue
    .line 2578
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2579
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->whitelist_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->whitelist_:Ljava/util/List;

    .line 2580
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    .line 2582
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2342
    return-void
.end method


# virtual methods
.method public addBlacklist(Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2522
    if-nez p1, :cond_0

    .line 2523
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2525
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->ensureBlacklistIsMutable()V

    .line 2526
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->blacklist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2528
    return-object p0
.end method

.method public addKeyword(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2700
    if-nez p1, :cond_0

    .line 2701
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2703
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->ensureKeywordIsMutable()V

    .line 2704
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->keyword_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2706
    return-object p0
.end method

.method public addWhitelist(Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2611
    if-nez p1, :cond_0

    .line 2612
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2614
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->ensureWhitelistIsMutable()V

    .line 2615
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->whitelist_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2617
    return-object p0
.end method

.method public build()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    .locals 2

    .prologue
    .line 2367
    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->buildPartial()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    move-result-object v0

    .line 2368
    .local v0, result:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    invoke-virtual {v0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2369
    invoke-static {v0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2371
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2332
    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->buildPartial()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    .locals 4

    .prologue
    .line 2385
    new-instance v1, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;-><init>(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;Lcom/miui/milk/model/AntiSpamProtos$1;)V

    .line 2386
    .local v1, result:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    .line 2387
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2388
    iget-object v2, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->blacklist_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->blacklist_:Ljava/util/List;

    .line 2389
    iget v2, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    .line 2391
    :cond_0
    iget-object v2, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->blacklist_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->access$3202(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;Ljava/util/List;)Ljava/util/List;

    .line 2392
    iget v2, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2393
    iget-object v2, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->whitelist_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->whitelist_:Ljava/util/List;

    .line 2394
    iget v2, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    .line 2396
    :cond_1
    iget-object v2, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->whitelist_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->access$3302(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;Ljava/util/List;)Ljava/util/List;

    .line 2397
    iget v2, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 2398
    iget-object v2, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->keyword_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->keyword_:Ljava/util/List;

    .line 2399
    iget v2, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    .line 2401
    :cond_2
    iget-object v2, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->keyword_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->access$3402(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;Ljava/util/List;)Ljava/util/List;

    .line 2402
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2332
    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->clone()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2332
    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->clone()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;
    .locals 2

    .prologue
    .line 2359
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->create()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->buildPartial()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->mergeFrom(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

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
    .line 2332
    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->clone()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

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
    .line 2332
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

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
    .line 2332
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2449
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2450
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 2455
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2457
    :sswitch_0
    return-object p0

    .line 2462
    :sswitch_1
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;->newBuilder()Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry$Builder;

    move-result-object v0

    .line 2463
    .local v0, subBuilder:Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2464
    invoke-virtual {v0}, Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry$Builder;->buildPartial()Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->addBlacklist(Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    goto :goto_0

    .line 2468
    .end local v0           #subBuilder:Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry$Builder;
    :sswitch_2
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;->newBuilder()Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;

    move-result-object v0

    .line 2469
    .local v0, subBuilder:Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2470
    invoke-virtual {v0}, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;->buildPartial()Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->addWhitelist(Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    goto :goto_0

    .line 2474
    .end local v0           #subBuilder:Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry$Builder;
    :sswitch_3
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;->newBuilder()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;

    move-result-object v0

    .line 2475
    .local v0, subBuilder:Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2476
    invoke-virtual {v0}, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry$Builder;->buildPartial()Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->addKeyword(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    goto :goto_0

    .line 2450
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 2406
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->getDefaultInstance()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2437
    :cond_0
    :goto_0
    return-object p0

    .line 2407
    :cond_1
    #getter for: Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->access$3200(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2408
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->blacklist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2409
    #getter for: Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->access$3200(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->blacklist_:Ljava/util/List;

    .line 2410
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    .line 2417
    :cond_2
    :goto_1
    #getter for: Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->access$3300(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2418
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->whitelist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2419
    #getter for: Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->access$3300(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->whitelist_:Ljava/util/List;

    .line 2420
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    .line 2427
    :cond_3
    :goto_2
    #getter for: Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->access$3400(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2428
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->keyword_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2429
    #getter for: Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->access$3400(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->keyword_:Ljava/util/List;

    .line 2430
    iget v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->bitField0_:I

    goto :goto_0

    .line 2412
    :cond_4
    invoke-direct {p0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->ensureBlacklistIsMutable()V

    .line 2413
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->blacklist_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->access$3200(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2422
    :cond_5
    invoke-direct {p0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->ensureWhitelistIsMutable()V

    .line 2423
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->whitelist_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->access$3300(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 2432
    :cond_6
    invoke-direct {p0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->ensureKeywordIsMutable()V

    .line 2433
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->keyword_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->access$3400(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method
