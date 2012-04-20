.class public final Lcom/miui/milk/model/NoteProtos$NoteData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NoteProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/NoteProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoteData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/NoteProtos$NoteData;


# instance fields
.field private bitField0_:I

.field private content_:Ljava/lang/Object;

.field private createdDate_:J

.field private data1_:J

.field private data2_:J

.field private data3_:Ljava/lang/Object;

.field private data4_:Ljava/lang/Object;

.field private data5_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private mimeType_:Ljava/lang/Object;

.field private modifiedDate_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 926
    new-instance v0, Lcom/miui/milk/model/NoteProtos$NoteData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteData;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/NoteProtos$NoteData;->defaultInstance:Lcom/miui/milk/model/NoteProtos$NoteData;

    .line 927
    sget-object v0, Lcom/miui/milk/model/NoteProtos$NoteData;->defaultInstance:Lcom/miui/milk/model/NoteProtos$NoteData;

    invoke-direct {v0}, Lcom/miui/milk/model/NoteProtos$NoteData;->initFields()V

    .line 928
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/NoteProtos$NoteData$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 55
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 280
    iput-byte v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->memoizedIsInitialized:B

    .line 321
    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->memoizedSerializedSize:I

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/NoteProtos$NoteData$Builder;Lcom/miui/milk/model/NoteProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/miui/milk/model/NoteProtos$NoteData;-><init>(Lcom/miui/milk/model/NoteProtos$NoteData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 57
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 280
    iput-byte v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->memoizedIsInitialized:B

    .line 321
    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->memoizedSerializedSize:I

    .line 57
    return-void
.end method

.method static synthetic access$1002(Lcom/miui/milk/model/NoteProtos$NoteData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data4_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/miui/milk/model/NoteProtos$NoteData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data5_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/miui/milk/model/NoteProtos$NoteData;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/miui/milk/model/NoteProtos$NoteData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->mimeType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/milk/model/NoteProtos$NoteData;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->createdDate_:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/miui/milk/model/NoteProtos$NoteData;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->modifiedDate_:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/miui/milk/model/NoteProtos$NoteData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->content_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/miui/milk/model/NoteProtos$NoteData;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data1_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/miui/milk/model/NoteProtos$NoteData;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data2_:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/miui/milk/model/NoteProtos$NoteData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data3_:Ljava/lang/Object;

    return-object p1
.end method

.method private getContentBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 142
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->content_:Ljava/lang/Object;

    .line 143
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 144
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 146
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->content_:Ljava/lang/Object;

    .line 149
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

.method private getData3Bytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data3_:Ljava/lang/Object;

    .line 195
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 196
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 198
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data3_:Ljava/lang/Object;

    .line 201
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

.method private getData4Bytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 226
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data4_:Ljava/lang/Object;

    .line 227
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 228
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 230
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data4_:Ljava/lang/Object;

    .line 233
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

.method private getData5Bytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 258
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data5_:Ljava/lang/Object;

    .line 259
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 260
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 262
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data5_:Ljava/lang/Object;

    .line 265
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

.method public static getDefaultInstance()Lcom/miui/milk/model/NoteProtos$NoteData;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/miui/milk/model/NoteProtos$NoteData;->defaultInstance:Lcom/miui/milk/model/NoteProtos$NoteData;

    return-object v0
.end method

.method private getMimeTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->mimeType_:Ljava/lang/Object;

    .line 91
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 92
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 94
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->mimeType_:Ljava/lang/Object;

    .line 97
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
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 270
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->mimeType_:Ljava/lang/Object;

    .line 271
    iput-wide v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->createdDate_:J

    .line 272
    iput-wide v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->modifiedDate_:J

    .line 273
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->content_:Ljava/lang/Object;

    .line 274
    iput-wide v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data1_:J

    .line 275
    iput-wide v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data2_:J

    .line 276
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data3_:Ljava/lang/Object;

    .line 277
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data4_:Ljava/lang/Object;

    .line 278
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data5_:Ljava/lang/Object;

    .line 279
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    .locals 1

    .prologue
    .line 439
    #calls: Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->create()Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->access$100()Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->content_:Ljava/lang/Object;

    .line 129
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 130
    check-cast v1, Ljava/lang/String;

    .line 138
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 132
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 134
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    iput-object v2, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->content_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 138
    goto :goto_0
.end method

.method public getCreatedDate()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->createdDate_:J

    return-wide v0
.end method

.method public getData1()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data1_:J

    return-wide v0
.end method

.method public getData2()J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data2_:J

    return-wide v0
.end method

.method public getData3()Ljava/lang/String;
    .locals 4

    .prologue
    .line 180
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data3_:Ljava/lang/Object;

    .line 181
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 182
    check-cast v1, Ljava/lang/String;

    .line 190
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 184
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 186
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    iput-object v2, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data3_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 190
    goto :goto_0
.end method

.method public getData4()Ljava/lang/String;
    .locals 4

    .prologue
    .line 212
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data4_:Ljava/lang/Object;

    .line 213
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 214
    check-cast v1, Ljava/lang/String;

    .line 222
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 216
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 218
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    iput-object v2, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data4_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 222
    goto :goto_0
.end method

.method public getData5()Ljava/lang/String;
    .locals 4

    .prologue
    .line 244
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data5_:Ljava/lang/Object;

    .line 245
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 246
    check-cast v1, Ljava/lang/String;

    .line 254
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 248
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 250
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    iput-object v2, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data5_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 254
    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 76
    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->mimeType_:Ljava/lang/Object;

    .line 77
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 78
    check-cast v1, Ljava/lang/String;

    .line 86
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 80
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 82
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    iput-object v2, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->mimeType_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 86
    goto :goto_0
.end method

.method public getModifiedDate()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->modifiedDate_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 323
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->memoizedSerializedSize:I

    .line 324
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 364
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 326
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 327
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 328
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteData;->getMimeTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 331
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 332
    iget-wide v2, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->createdDate_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 335
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 336
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->modifiedDate_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 339
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 340
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteData;->getContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 343
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 344
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data1_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 347
    :cond_5
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 348
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data2_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 351
    :cond_6
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 352
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData3Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 355
    :cond_7
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 356
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData4Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 359
    :cond_8
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 360
    const/16 v2, 0x9

    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData5Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 363
    :cond_9
    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->memoizedSerializedSize:I

    move v1, v0

    .line 364
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public hasContent()Z
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

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

.method public hasCreatedDate()Z
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

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

.method public hasData1()Z
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

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

.method public hasData2()Z
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

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

.method public hasData3()Z
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

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

.method public hasData4()Z
    .locals 2

    .prologue
    .line 209
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

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

.method public hasData5()Z
    .locals 2

    .prologue
    .line 241
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

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

.method public hasMimeType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 73
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasModifiedDate()Z
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 282
    iget-byte v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->memoizedIsInitialized:B

    .line 283
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 286
    :goto_0
    return v1

    .line 283
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 285
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->memoizedIsInitialized:B

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
    .line 369
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

    .line 291
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteData;->getSerializedSize()I

    .line 292
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteData;->getMimeTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 295
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 296
    iget-wide v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->createdDate_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 298
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 299
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->modifiedDate_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 301
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 302
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteData;->getContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 304
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 305
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data1_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 307
    :cond_4
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 308
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->data2_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 310
    :cond_5
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 311
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData3Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 313
    :cond_6
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 314
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData4Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 316
    :cond_7
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 317
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData5Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 319
    :cond_8
    return-void
.end method
