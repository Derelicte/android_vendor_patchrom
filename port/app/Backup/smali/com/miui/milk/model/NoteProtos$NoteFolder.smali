.class public final Lcom/miui/milk/model/NoteProtos$NoteFolder;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NoteProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/NoteProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoteFolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/NoteProtos$NoteFolder;


# instance fields
.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private alertDate_:J

.field private bgColorId_:I

.field private bitField0_:I

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private createdDate_:J

.field private guid_:Ljava/lang/Object;

.field private hasAttachment_:Z

.field private luid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private modifiedDate_:J

.field private snippet_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3062
    new-instance v0, Lcom/miui/milk/model/NoteProtos$NoteFolder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->defaultInstance:Lcom/miui/milk/model/NoteProtos$NoteFolder;

    .line 3063
    sget-object v0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->defaultInstance:Lcom/miui/milk/model/NoteProtos$NoteFolder;

    invoke-direct {v0}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->initFields()V

    .line 3064
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2198
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2390
    iput-byte v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->memoizedIsInitialized:B

    .line 2434
    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->memoizedSerializedSize:I

    .line 2199
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;Lcom/miui/milk/model/NoteProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2193
    invoke-direct {p0, p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;-><init>(Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2200
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2390
    iput-byte v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->memoizedIsInitialized:B

    .line 2434
    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->memoizedSerializedSize:I

    .line 2200
    return-void
.end method

.method static synthetic access$3302(Lcom/miui/milk/model/NoteProtos$NoteFolder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2193
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/miui/milk/model/NoteProtos$NoteFolder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2193
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/miui/milk/model/NoteProtos$NoteFolder;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2193
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->alertDate_:J

    return-wide p1
.end method

.method static synthetic access$3602(Lcom/miui/milk/model/NoteProtos$NoteFolder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2193
    iput p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bgColorId_:I

    return p1
.end method

.method static synthetic access$3702(Lcom/miui/milk/model/NoteProtos$NoteFolder;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2193
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->createdDate_:J

    return-wide p1
.end method

.method static synthetic access$3802(Lcom/miui/milk/model/NoteProtos$NoteFolder;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2193
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->modifiedDate_:J

    return-wide p1
.end method

.method static synthetic access$3902(Lcom/miui/milk/model/NoteProtos$NoteFolder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2193
    iput-boolean p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->hasAttachment_:Z

    return p1
.end method

.method static synthetic access$4002(Lcom/miui/milk/model/NoteProtos$NoteFolder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2193
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->snippet_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/miui/milk/model/NoteProtos$NoteFolder;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2193
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/miui/milk/model/NoteProtos$NoteFolder;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2193
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/miui/milk/model/NoteProtos$NoteFolder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2193
    iput p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .locals 1

    .prologue
    .line 2204
    sget-object v0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->defaultInstance:Lcom/miui/milk/model/NoteProtos$NoteFolder;

    return-object v0
.end method

.method private getGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2233
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->guid_:Ljava/lang/Object;

    .line 2234
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2235
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2237
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->guid_:Ljava/lang/Object;

    .line 2240
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

.method private getLuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2265
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->luid_:Ljava/lang/Object;

    .line 2266
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2267
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2269
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->luid_:Ljava/lang/Object;

    .line 2272
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

.method private getSnippetBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2347
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->snippet_:Ljava/lang/Object;

    .line 2348
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2349
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2351
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->snippet_:Ljava/lang/Object;

    .line 2354
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
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 2379
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->guid_:Ljava/lang/Object;

    .line 2380
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->luid_:Ljava/lang/Object;

    .line 2381
    iput-wide v1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->alertDate_:J

    .line 2382
    iput v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bgColorId_:I

    .line 2383
    iput-wide v1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->createdDate_:J

    .line 2384
    iput-wide v1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->modifiedDate_:J

    .line 2385
    iput-boolean v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->hasAttachment_:Z

    .line 2386
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->snippet_:Ljava/lang/Object;

    .line 2387
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 2388
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 2389
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    .locals 1

    .prologue
    .line 2556
    #calls: Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->create()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->access$3100()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2559
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->mergeFrom(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 1

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object v0
.end method

.method public getAlertDate()J
    .locals 2

    .prologue
    .line 2283
    iget-wide v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->alertDate_:J

    return-wide v0
.end method

.method public getBgColorId()I
    .locals 1

    .prologue
    .line 2293
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bgColorId_:I

    return v0
.end method

.method public getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 1

    .prologue
    .line 2375
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object v0
.end method

.method public getCreatedDate()J
    .locals 2

    .prologue
    .line 2303
    iget-wide v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->createdDate_:J

    return-wide v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2219
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->guid_:Ljava/lang/Object;

    .line 2220
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2221
    check-cast v1, Ljava/lang/String;

    .line 2229
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 2223
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2225
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2226
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2227
    iput-object v2, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2229
    goto :goto_0
.end method

.method public getHasAttachment()Z
    .locals 1

    .prologue
    .line 2323
    iget-boolean v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->hasAttachment_:Z

    return v0
.end method

.method public getLuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2251
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->luid_:Ljava/lang/Object;

    .line 2252
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2253
    check-cast v1, Ljava/lang/String;

    .line 2261
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 2255
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2257
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2258
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2259
    iput-object v2, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2261
    goto :goto_0
.end method

.method public getModifiedDate()J
    .locals 2

    .prologue
    .line 2313
    iget-wide v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->modifiedDate_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2436
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->memoizedSerializedSize:I

    .line 2437
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2481
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 2439
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 2440
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 2441
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2444
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 2445
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2448
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 2449
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->alertDate_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 2452
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 2453
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bgColorId_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2456
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 2457
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->createdDate_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 2460
    :cond_5
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 2461
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->modifiedDate_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 2464
    :cond_6
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 2465
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->hasAttachment_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 2468
    :cond_7
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 2469
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getSnippetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2472
    :cond_8
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 2473
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2476
    :cond_9
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 2477
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2480
    :cond_a
    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->memoizedSerializedSize:I

    move v1, v0

    .line 2481
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2333
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->snippet_:Ljava/lang/Object;

    .line 2334
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2335
    check-cast v1, Ljava/lang/String;

    .line 2343
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 2337
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2339
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2340
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2341
    iput-object v2, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->snippet_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2343
    goto :goto_0
.end method

.method public hasActionType()Z
    .locals 2

    .prologue
    .line 2362
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAlertDate()Z
    .locals 2

    .prologue
    .line 2280
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

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

.method public hasBgColorId()Z
    .locals 2

    .prologue
    .line 2290
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConflictType()Z
    .locals 2

    .prologue
    .line 2372
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreatedDate()Z
    .locals 2

    .prologue
    .line 2300
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGuid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2216
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHasAttachment()Z
    .locals 2

    .prologue
    .line 2320
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLuid()Z
    .locals 2

    .prologue
    .line 2248
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

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

.method public hasModifiedDate()Z
    .locals 2

    .prologue
    .line 2310
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSnippet()Z
    .locals 2

    .prologue
    .line 2330
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

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

    .line 2392
    iget-byte v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->memoizedIsInitialized:B

    .line 2393
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 2396
    :goto_0
    return v1

    .line 2393
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2395
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public toBuilder()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    .locals 1

    .prologue
    .line 2561
    invoke-static {p0}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->newBuilder(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 2486
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2401
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getSerializedSize()I

    .line 2402
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2403
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2405
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2406
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2408
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 2409
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->alertDate_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2411
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 2412
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bgColorId_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2414
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 2415
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->createdDate_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2417
    :cond_4
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 2418
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->modifiedDate_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2420
    :cond_5
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 2421
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->hasAttachment_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2423
    :cond_6
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 2424
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getSnippetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2426
    :cond_7
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 2427
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2429
    :cond_8
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 2430
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2432
    :cond_9
    return-void
.end method
