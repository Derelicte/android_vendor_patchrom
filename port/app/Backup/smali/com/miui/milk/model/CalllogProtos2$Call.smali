.class public final Lcom/miui/milk/model/CalllogProtos2$Call;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CalllogProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/CalllogProtos2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Call"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/CalllogProtos2$Call;


# instance fields
.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private bitField0_:I

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private date_:J

.field private duration_:J

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private new_:I

.field private number_:Ljava/lang/Object;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 913
    new-instance v0, Lcom/miui/milk/model/CalllogProtos2$Call;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/CalllogProtos2$Call;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/CalllogProtos2$Call;->defaultInstance:Lcom/miui/milk/model/CalllogProtos2$Call;

    .line 914
    sget-object v0, Lcom/miui/milk/model/CalllogProtos2$Call;->defaultInstance:Lcom/miui/milk/model/CalllogProtos2$Call;

    invoke-direct {v0}, Lcom/miui/milk/model/CalllogProtos2$Call;->initFields()V

    .line 915
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/CalllogProtos2$Call$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 55
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 283
    iput-byte v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->memoizedIsInitialized:B

    .line 324
    iput v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->memoizedSerializedSize:I

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/CalllogProtos2$Call$Builder;Lcom/miui/milk/model/CalllogProtos2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/miui/milk/model/CalllogProtos2$Call;-><init>(Lcom/miui/milk/model/CalllogProtos2$Call$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 57
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 283
    iput-byte v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->memoizedIsInitialized:B

    .line 324
    iput v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->memoizedSerializedSize:I

    .line 57
    return-void
.end method

.method static synthetic access$1002(Lcom/miui/milk/model/CalllogProtos2$Call;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/miui/milk/model/CalllogProtos2$Call;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/miui/milk/model/CalllogProtos2$Call;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/miui/milk/model/CalllogProtos2$Call;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/milk/model/CalllogProtos2$Call;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/milk/model/CalllogProtos2$Call;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->number_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/miui/milk/model/CalllogProtos2$Call;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->date_:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/miui/milk/model/CalllogProtos2$Call;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->duration_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/miui/milk/model/CalllogProtos2$Call;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->type_:I

    return p1
.end method

.method static synthetic access$902(Lcom/miui/milk/model/CalllogProtos2$Call;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->new_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/CalllogProtos2$Call;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/miui/milk/model/CalllogProtos2$Call;->defaultInstance:Lcom/miui/milk/model/CalllogProtos2$Call;

    return-object v0
.end method

.method private getGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->guid_:Ljava/lang/Object;

    .line 138
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 139
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 141
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->guid_:Ljava/lang/Object;

    .line 144
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
    .line 169
    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->luid_:Ljava/lang/Object;

    .line 170
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 171
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 173
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->luid_:Ljava/lang/Object;

    .line 176
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

.method private getNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->number_:Ljava/lang/Object;

    .line 202
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 203
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 205
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->number_:Ljava/lang/Object;

    .line 208
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
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 273
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->guid_:Ljava/lang/Object;

    .line 274
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->luid_:Ljava/lang/Object;

    .line 275
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->number_:Ljava/lang/Object;

    .line 276
    iput-wide v2, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->date_:J

    .line 277
    iput-wide v2, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->duration_:J

    .line 278
    iput v1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->type_:I

    .line 279
    iput v1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->new_:I

    .line 280
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 281
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 282
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    .locals 1

    .prologue
    .line 442
    #calls: Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->create()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->access$100()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/milk/model/CalllogProtos2$Call;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 445
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Call;->newBuilder()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->mergeFrom(Lcom/miui/milk/model/CalllogProtos2$Call;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    return-object v0
.end method

.method public getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->date_:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->duration_:J

    return-wide v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 123
    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->guid_:Ljava/lang/Object;

    .line 124
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 125
    check-cast v1, Ljava/lang/String;

    .line 133
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 127
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 129
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    iput-object v2, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 133
    goto :goto_0
.end method

.method public getLuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->luid_:Ljava/lang/Object;

    .line 156
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 157
    check-cast v1, Ljava/lang/String;

    .line 165
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 159
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 161
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    iput-object v2, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 165
    goto :goto_0
.end method

.method public getNew()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->new_:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 187
    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->number_:Ljava/lang/Object;

    .line 188
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 189
    check-cast v1, Ljava/lang/String;

    .line 197
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 191
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 193
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    iput-object v2, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->number_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 197
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 326
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->memoizedSerializedSize:I

    .line 327
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 367
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 329
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 330
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos2$Call;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 334
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 335
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos2$Call;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 338
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 339
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos2$Call;->getNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 342
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 343
    iget-wide v2, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->date_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 346
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 347
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->duration_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 350
    :cond_5
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 351
    const/4 v2, 0x6

    iget v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->type_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 354
    :cond_6
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 355
    const/4 v2, 0x7

    iget v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->new_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 358
    :cond_7
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 359
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 362
    :cond_8
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 363
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 366
    :cond_9
    iput v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->memoizedSerializedSize:I

    move v1, v0

    .line 367
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->type_:I

    return v0
.end method

.method public hasActionType()Z
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

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

.method public hasConflictType()Z
    .locals 2

    .prologue
    .line 266
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

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

.method public hasDate()Z
    .locals 2

    .prologue
    .line 216
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

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

.method public hasDuration()Z
    .locals 2

    .prologue
    .line 226
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

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

    .line 120
    iget v1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLuid()Z
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

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

.method public hasNew()Z
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

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

.method public hasNumber()Z
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 236
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 285
    iget-byte v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->memoizedIsInitialized:B

    .line 286
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 289
    :goto_0
    return v1

    .line 286
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 288
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public toBuilder()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    .locals 1

    .prologue
    .line 447
    invoke-static {p0}, Lcom/miui/milk/model/CalllogProtos2$Call;->newBuilder(Lcom/miui/milk/model/CalllogProtos2$Call;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

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
    .line 372
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 294
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos2$Call;->getSerializedSize()I

    .line 295
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos2$Call;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 298
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos2$Call;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 301
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 302
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos2$Call;->getNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 304
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 305
    iget-wide v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->date_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 307
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 308
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->duration_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 310
    :cond_4
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 311
    const/4 v0, 0x6

    iget v1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 313
    :cond_5
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 314
    const/4 v0, 0x7

    iget v1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->new_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 316
    :cond_6
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 317
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CommonProtos$ActionType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 319
    :cond_7
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 320
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos2$Call;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CommonProtos$ConflictType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 322
    :cond_8
    return-void
.end method
