.class public final Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AntiSpamProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/AntiSpamProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AntiSpam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;


# instance fields
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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2756
    new-instance v0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->defaultInstance:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    .line 2757
    sget-object v0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->defaultInstance:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    invoke-direct {v0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->initFields()V

    .line 2758
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2127
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2208
    iput-byte v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->memoizedIsInitialized:B

    .line 2231
    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->memoizedSerializedSize:I

    .line 2128
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;Lcom/miui/milk/model/AntiSpamProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2122
    invoke-direct {p0, p1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;-><init>(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2129
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2208
    iput-byte v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->memoizedIsInitialized:B

    .line 2231
    iput v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->memoizedSerializedSize:I

    .line 2129
    return-void
.end method

.method static synthetic access$3200(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2122
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2122
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2122
    iput-object p1, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    .locals 1

    .prologue
    .line 2133
    sget-object v0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->defaultInstance:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2204
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    .line 2205
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    .line 2206
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    .line 2207
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;
    .locals 1

    .prologue
    .line 2325
    #calls: Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->create()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->access$3000()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2328
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->newBuilder()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->mergeFrom(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBlacklistCount()I
    .locals 1

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBlacklistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    return-object v0
.end method

.method public getKeywordCount()I
    .locals 1

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getKeywordList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2233
    iget v1, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->memoizedSerializedSize:I

    .line 2234
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 2250
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 2236
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 2237
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2238
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2241
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 2242
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2241
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2245
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 2246
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2245
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2249
    :cond_3
    iput v1, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->memoizedSerializedSize:I

    move v2, v1

    .line 2250
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getWhitelistCount()I
    .locals 1

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWhitelistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2210
    iget-byte v0, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->memoizedIsInitialized:B

    .line 2211
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 2214
    :goto_0
    return v1

    .line 2211
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2213
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->memoizedIsInitialized:B

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
    .line 2255
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
    .line 2219
    invoke-virtual {p0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->getSerializedSize()I

    .line 2220
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2221
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->blacklist_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2223
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2224
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->whitelist_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2223
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2226
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2227
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->keyword_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2226
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2229
    :cond_2
    return-void
.end method
