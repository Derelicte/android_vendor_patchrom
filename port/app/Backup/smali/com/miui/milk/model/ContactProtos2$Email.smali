.class public final Lcom/miui/milk/model/ContactProtos2$Email;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Email"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos2$Email$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos2$Email;


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1690
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Email;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Email;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos2$Email;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Email;

    .line 1691
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Email;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Email;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Email;->initFields()V

    .line 1692
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos2$Email$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1198
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1341
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->memoizedIsInitialized:B

    .line 1364
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->memoizedSerializedSize:I

    .line 1199
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos2$Email$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1193
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos2$Email;-><init>(Lcom/miui/milk/model/ContactProtos2$Email$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1200
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1341
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->memoizedIsInitialized:B

    .line 1364
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->memoizedSerializedSize:I

    .line 1200
    return-void
.end method

.method static synthetic access$1802(Lcom/miui/milk/model/ContactProtos2$Email;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Email;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/miui/milk/model/ContactProtos2$Email;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1193
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Email;->type_:I

    return p1
.end method

.method static synthetic access$2002(Lcom/miui/milk/model/ContactProtos2$Email;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Email;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/miui/milk/model/ContactProtos2$Email;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1193
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Email;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Email;
    .locals 1

    .prologue
    .line 1204
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Email;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Email;

    return-object v0
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1325
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Email;->label_:Ljava/lang/Object;

    .line 1326
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1327
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1329
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->label_:Ljava/lang/Object;

    .line 1332
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

.method private getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1283
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Email;->value_:Ljava/lang/Object;

    .line 1284
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1285
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1287
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->value_:Ljava/lang/Object;

    .line 1290
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
    .locals 1

    .prologue
    .line 1337
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->value_:Ljava/lang/Object;

    .line 1338
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->type_:I

    .line 1339
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->label_:Ljava/lang/Object;

    .line 1340
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos2$Email$Builder;
    .locals 1

    .prologue
    .line 1458
    #calls: Lcom/miui/milk/model/ContactProtos2$Email$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Email$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Email$Builder;->access$1600()Lcom/miui/milk/model/ContactProtos2$Email$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1311
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Email;->label_:Ljava/lang/Object;

    .line 1312
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1313
    check-cast v1, Ljava/lang/String;

    .line 1321
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1315
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1317
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1318
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1319
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Email;->label_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1321
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1366
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->memoizedSerializedSize:I

    .line 1367
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1383
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1369
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1370
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Email;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 1371
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Email;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1374
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Email;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 1375
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Email;->type_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1378
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Email;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1379
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Email;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1382
    :cond_3
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->memoizedSerializedSize:I

    move v1, v0

    .line 1383
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1301
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->type_:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1269
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Email;->value_:Ljava/lang/Object;

    .line 1270
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1271
    check-cast v1, Ljava/lang/String;

    .line 1279
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1273
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1275
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1276
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1277
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Email;->value_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1279
    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 1308
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->bitField0_:I

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
    .line 1298
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->bitField0_:I

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

.method public hasValue()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1266
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Email;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

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

    .line 1343
    iget-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->memoizedIsInitialized:B

    .line 1344
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 1347
    :goto_0
    return v1

    .line 1344
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1346
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/ContactProtos2$Email;->memoizedIsInitialized:B

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
    .line 1388
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1352
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Email;->getSerializedSize()I

    .line 1353
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1354
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Email;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1356
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1357
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->type_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1359
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Email;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1360
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Email;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1362
    :cond_2
    return-void
.end method
