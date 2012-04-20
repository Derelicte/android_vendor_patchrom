.class public final Lcom/miui/milk/model/MmsProtos$PduPart;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MmsProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/MmsProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PduPart"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/MmsProtos$PduPart;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private charset_:I

.field private contentDisposition_:Ljava/lang/Object;

.field private contentId_:Ljava/lang/Object;

.field private contentLocation_:Ljava/lang/Object;

.field private contentTypeStart_:I

.field private contentTypeType_:Ljava/lang/Object;

.field private contentType_:Ljava/lang/Object;

.field private data_:Lcom/google/protobuf/ByteString;

.field private fileName_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private sequence_:I

.field private text_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4363
    new-instance v0, Lcom/miui/milk/model/MmsProtos$PduPart;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/MmsProtos$PduPart;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/MmsProtos$PduPart;->defaultInstance:Lcom/miui/milk/model/MmsProtos$PduPart;

    .line 4364
    sget-object v0, Lcom/miui/milk/model/MmsProtos$PduPart;->defaultInstance:Lcom/miui/milk/model/MmsProtos$PduPart;

    invoke-direct {v0}, Lcom/miui/milk/model/MmsProtos$PduPart;->initFields()V

    .line 4365
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/MmsProtos$PduPart$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3217
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3541
    iput-byte v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->memoizedIsInitialized:B

    .line 3591
    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->memoizedSerializedSize:I

    .line 3218
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/MmsProtos$PduPart$Builder;Lcom/miui/milk/model/MmsProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3212
    invoke-direct {p0, p1}, Lcom/miui/milk/model/MmsProtos$PduPart;-><init>(Lcom/miui/milk/model/MmsProtos$PduPart$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3219
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3541
    iput-byte v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->memoizedIsInitialized:B

    .line 3591
    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->memoizedSerializedSize:I

    .line 3219
    return-void
.end method

.method static synthetic access$4802(Lcom/miui/milk/model/MmsProtos$PduPart;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3212
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->sequence_:I

    return p1
.end method

.method static synthetic access$4902(Lcom/miui/milk/model/MmsProtos$PduPart;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3212
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/miui/milk/model/MmsProtos$PduPart;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3212
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/miui/milk/model/MmsProtos$PduPart;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3212
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->charset_:I

    return p1
.end method

.method static synthetic access$5202(Lcom/miui/milk/model/MmsProtos$PduPart;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3212
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentDisposition_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/miui/milk/model/MmsProtos$PduPart;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3212
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->fileName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/miui/milk/model/MmsProtos$PduPart;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3212
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/miui/milk/model/MmsProtos$PduPart;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3212
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentLocation_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/miui/milk/model/MmsProtos$PduPart;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3212
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentTypeStart_:I

    return p1
.end method

.method static synthetic access$5702(Lcom/miui/milk/model/MmsProtos$PduPart;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3212
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentTypeType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/miui/milk/model/MmsProtos$PduPart;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3212
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/miui/milk/model/MmsProtos$PduPart;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3212
    iput-object p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->data_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/miui/milk/model/MmsProtos$PduPart;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3212
    iput p1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    return p1
.end method

.method private getContentDispositionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3336
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentDisposition_:Ljava/lang/Object;

    .line 3337
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3338
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3340
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentDisposition_:Ljava/lang/Object;

    .line 3343
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

.method private getContentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3400
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentId_:Ljava/lang/Object;

    .line 3401
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3402
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3404
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentId_:Ljava/lang/Object;

    .line 3407
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

.method private getContentLocationBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3432
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentLocation_:Ljava/lang/Object;

    .line 3433
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3434
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3436
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentLocation_:Ljava/lang/Object;

    .line 3439
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

.method private getContentTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3262
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentType_:Ljava/lang/Object;

    .line 3263
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3264
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3266
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentType_:Ljava/lang/Object;

    .line 3269
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

.method private getContentTypeTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3474
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentTypeType_:Ljava/lang/Object;

    .line 3475
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3476
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3478
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentTypeType_:Ljava/lang/Object;

    .line 3481
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

.method public static getDefaultInstance()Lcom/miui/milk/model/MmsProtos$PduPart;
    .locals 1

    .prologue
    .line 3223
    sget-object v0, Lcom/miui/milk/model/MmsProtos$PduPart;->defaultInstance:Lcom/miui/milk/model/MmsProtos$PduPart;

    return-object v0
.end method

.method private getFileNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3368
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->fileName_:Ljava/lang/Object;

    .line 3369
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3370
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3372
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->fileName_:Ljava/lang/Object;

    .line 3375
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

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3294
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->name_:Ljava/lang/Object;

    .line 3295
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3296
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3298
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->name_:Ljava/lang/Object;

    .line 3301
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

.method private getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3506
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->text_:Ljava/lang/Object;

    .line 3507
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3508
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3510
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->text_:Ljava/lang/Object;

    .line 3513
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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3528
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->sequence_:I

    .line 3529
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentType_:Ljava/lang/Object;

    .line 3530
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->name_:Ljava/lang/Object;

    .line 3531
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->charset_:I

    .line 3532
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentDisposition_:Ljava/lang/Object;

    .line 3533
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->fileName_:Ljava/lang/Object;

    .line 3534
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentId_:Ljava/lang/Object;

    .line 3535
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentLocation_:Ljava/lang/Object;

    .line 3536
    iput v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentTypeStart_:I

    .line 3537
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentTypeType_:Ljava/lang/Object;

    .line 3538
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->text_:Ljava/lang/Object;

    .line 3539
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->data_:Lcom/google/protobuf/ByteString;

    .line 3540
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    .locals 1

    .prologue
    .line 3723
    #calls: Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->create()Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->access$4600()Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCharset()I
    .locals 1

    .prologue
    .line 3312
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->charset_:I

    return v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3322
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentDisposition_:Ljava/lang/Object;

    .line 3323
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3324
    check-cast v1, Ljava/lang/String;

    .line 3332
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3326
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3328
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3329
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3330
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentDisposition_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3332
    goto :goto_0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3386
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentId_:Ljava/lang/Object;

    .line 3387
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3388
    check-cast v1, Ljava/lang/String;

    .line 3396
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3390
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3392
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3393
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3394
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3396
    goto :goto_0
.end method

.method public getContentLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3418
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentLocation_:Ljava/lang/Object;

    .line 3419
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3420
    check-cast v1, Ljava/lang/String;

    .line 3428
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3422
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3424
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3425
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3426
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentLocation_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3428
    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3248
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentType_:Ljava/lang/Object;

    .line 3249
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3250
    check-cast v1, Ljava/lang/String;

    .line 3258
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3252
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3254
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3255
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3256
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3258
    goto :goto_0
.end method

.method public getContentTypeStart()I
    .locals 1

    .prologue
    .line 3450
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentTypeStart_:I

    return v0
.end method

.method public getContentTypeType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3460
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentTypeType_:Ljava/lang/Object;

    .line 3461
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3462
    check-cast v1, Ljava/lang/String;

    .line 3470
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3464
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3466
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3467
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3468
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentTypeType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3470
    goto :goto_0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 3524
    iget-object v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3354
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->fileName_:Ljava/lang/Object;

    .line 3355
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3356
    check-cast v1, Ljava/lang/String;

    .line 3364
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3358
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3360
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3361
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3362
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->fileName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3364
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3280
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->name_:Ljava/lang/Object;

    .line 3281
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3282
    check-cast v1, Ljava/lang/String;

    .line 3290
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3284
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3286
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3287
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3288
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3290
    goto :goto_0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 3238
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->sequence_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3593
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->memoizedSerializedSize:I

    .line 3594
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3646
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 3596
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 3597
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 3598
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->sequence_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3601
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 3602
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3605
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 3606
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduPart;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3609
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 3610
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->charset_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3613
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 3614
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentDispositionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3617
    :cond_5
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 3618
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduPart;->getFileNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3621
    :cond_6
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 3622
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3625
    :cond_7
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 3626
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentLocationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3629
    :cond_8
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 3630
    const/16 v2, 0x9

    iget v3, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentTypeStart_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3633
    :cond_9
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 3634
    const/16 v2, 0xa

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentTypeTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3637
    :cond_a
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b

    .line 3638
    const/16 v2, 0xb

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduPart;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3641
    :cond_b
    iget v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_c

    .line 3642
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->data_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3645
    :cond_c
    iput v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->memoizedSerializedSize:I

    move v1, v0

    .line 3646
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3492
    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->text_:Ljava/lang/Object;

    .line 3493
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3494
    check-cast v1, Ljava/lang/String;

    .line 3502
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3496
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3498
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3499
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3500
    iput-object v2, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->text_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3502
    goto :goto_0
.end method

.method public hasCharset()Z
    .locals 2

    .prologue
    .line 3309
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

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

.method public hasContentDisposition()Z
    .locals 2

    .prologue
    .line 3319
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

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

.method public hasContentId()Z
    .locals 2

    .prologue
    .line 3383
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

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

.method public hasContentLocation()Z
    .locals 2

    .prologue
    .line 3415
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

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

.method public hasContentType()Z
    .locals 2

    .prologue
    .line 3245
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

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

.method public hasContentTypeStart()Z
    .locals 2

    .prologue
    .line 3447
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

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

.method public hasContentTypeType()Z
    .locals 2

    .prologue
    .line 3457
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

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

.method public hasData()Z
    .locals 2

    .prologue
    .line 3521
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFileName()Z
    .locals 2

    .prologue
    .line 3351
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    .line 3277
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

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

.method public hasSequence()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3235
    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    .line 3489
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

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

    .line 3543
    iget-byte v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->memoizedIsInitialized:B

    .line 3544
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 3547
    :goto_0
    return v1

    .line 3544
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3546
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->memoizedIsInitialized:B

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
    .line 3653
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

    .line 3552
    invoke-virtual {p0}, Lcom/miui/milk/model/MmsProtos$PduPart;->getSerializedSize()I

    .line 3553
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3554
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->sequence_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3556
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3557
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3559
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 3560
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduPart;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3562
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 3563
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->charset_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3565
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 3566
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentDispositionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3568
    :cond_4
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 3569
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduPart;->getFileNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3571
    :cond_5
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 3572
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3574
    :cond_6
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 3575
    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentLocationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3577
    :cond_7
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 3578
    const/16 v0, 0x9

    iget v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->contentTypeStart_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3580
    :cond_8
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 3581
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentTypeTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3583
    :cond_9
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 3584
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/miui/milk/model/MmsProtos$PduPart;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3586
    :cond_a
    iget v0, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 3587
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/miui/milk/model/MmsProtos$PduPart;->data_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3589
    :cond_b
    return-void
.end method
