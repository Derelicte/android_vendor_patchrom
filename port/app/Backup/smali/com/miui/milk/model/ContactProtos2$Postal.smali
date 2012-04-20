.class public final Lcom/miui/milk/model/ContactProtos2$Postal;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Postal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos2$Postal;


# instance fields
.field private bitField0_:I

.field private city_:Ljava/lang/Object;

.field private country_:Ljava/lang/Object;

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private neighborhood_:Ljava/lang/Object;

.field private pobox_:Ljava/lang/Object;

.field private postcode_:Ljava/lang/Object;

.field private region_:Ljava/lang/Object;

.field private street_:Ljava/lang/Object;

.field private type_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6219
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Postal;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Postal;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos2$Postal;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Postal;

    .line 6220
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Postal;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Postal;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Postal;->initFields()V

    .line 6221
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos2$Postal$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5100
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5471
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->memoizedIsInitialized:B

    .line 5515
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->memoizedSerializedSize:I

    .line 5101
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos2$Postal$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5095
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos2$Postal;-><init>(Lcom/miui/milk/model/ContactProtos2$Postal$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5102
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5471
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->memoizedIsInitialized:B

    .line 5515
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->memoizedSerializedSize:I

    .line 5102
    return-void
.end method

.method static synthetic access$7002(Lcom/miui/milk/model/ContactProtos2$Postal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5095
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7102(Lcom/miui/milk/model/ContactProtos2$Postal;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5095
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->type_:I

    return p1
.end method

.method static synthetic access$7202(Lcom/miui/milk/model/ContactProtos2$Postal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5095
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7302(Lcom/miui/milk/model/ContactProtos2$Postal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5095
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->street_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7402(Lcom/miui/milk/model/ContactProtos2$Postal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5095
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->pobox_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/miui/milk/model/ContactProtos2$Postal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5095
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->neighborhood_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7602(Lcom/miui/milk/model/ContactProtos2$Postal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5095
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->city_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7702(Lcom/miui/milk/model/ContactProtos2$Postal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5095
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->region_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7802(Lcom/miui/milk/model/ContactProtos2$Postal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5095
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->postcode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7902(Lcom/miui/milk/model/ContactProtos2$Postal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5095
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->country_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8002(Lcom/miui/milk/model/ContactProtos2$Postal;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5095
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    return p1
.end method

.method private getCityBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5352
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->city_:Ljava/lang/Object;

    .line 5353
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5354
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5356
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->city_:Ljava/lang/Object;

    .line 5359
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

.method private getCountryBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5448
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->country_:Ljava/lang/Object;

    .line 5449
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5450
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5452
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->country_:Ljava/lang/Object;

    .line 5455
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

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Postal;
    .locals 1

    .prologue
    .line 5106
    sget-object v0, Lcom/miui/milk/model/ContactProtos2$Postal;->defaultInstance:Lcom/miui/milk/model/ContactProtos2$Postal;

    return-object v0
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5224
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->label_:Ljava/lang/Object;

    .line 5225
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5226
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5228
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->label_:Ljava/lang/Object;

    .line 5231
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

.method private getNeighborhoodBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5320
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->neighborhood_:Ljava/lang/Object;

    .line 5321
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5322
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5324
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->neighborhood_:Ljava/lang/Object;

    .line 5327
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

.method private getPoboxBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5288
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->pobox_:Ljava/lang/Object;

    .line 5289
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5290
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5292
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->pobox_:Ljava/lang/Object;

    .line 5295
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

.method private getPostcodeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5416
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->postcode_:Ljava/lang/Object;

    .line 5417
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5418
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5420
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->postcode_:Ljava/lang/Object;

    .line 5423
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

.method private getRegionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5384
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->region_:Ljava/lang/Object;

    .line 5385
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5386
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5388
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->region_:Ljava/lang/Object;

    .line 5391
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

.method private getStreetBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5256
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->street_:Ljava/lang/Object;

    .line 5257
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5258
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5260
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->street_:Ljava/lang/Object;

    .line 5263
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
    .line 5182
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->value_:Ljava/lang/Object;

    .line 5183
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5184
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5186
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->value_:Ljava/lang/Object;

    .line 5189
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
    .line 5460
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->value_:Ljava/lang/Object;

    .line 5461
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->type_:I

    .line 5462
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->label_:Ljava/lang/Object;

    .line 5463
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->street_:Ljava/lang/Object;

    .line 5464
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->pobox_:Ljava/lang/Object;

    .line 5465
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->neighborhood_:Ljava/lang/Object;

    .line 5466
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->city_:Ljava/lang/Object;

    .line 5467
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->region_:Ljava/lang/Object;

    .line 5468
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->postcode_:Ljava/lang/Object;

    .line 5469
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->country_:Ljava/lang/Object;

    .line 5470
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    .locals 1

    .prologue
    .line 5637
    #calls: Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->access$6800()Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5338
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->city_:Ljava/lang/Object;

    .line 5339
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5340
    check-cast v1, Ljava/lang/String;

    .line 5348
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 5342
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5344
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5345
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5346
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->city_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5348
    goto :goto_0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5434
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->country_:Ljava/lang/Object;

    .line 5435
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5436
    check-cast v1, Ljava/lang/String;

    .line 5444
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 5438
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5440
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5441
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5442
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->country_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5444
    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5210
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->label_:Ljava/lang/Object;

    .line 5211
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5212
    check-cast v1, Ljava/lang/String;

    .line 5220
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 5214
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5216
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5217
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5218
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->label_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5220
    goto :goto_0
.end method

.method public getNeighborhood()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5306
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->neighborhood_:Ljava/lang/Object;

    .line 5307
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5308
    check-cast v1, Ljava/lang/String;

    .line 5316
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 5310
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5312
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5313
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5314
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->neighborhood_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5316
    goto :goto_0
.end method

.method public getPobox()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5274
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->pobox_:Ljava/lang/Object;

    .line 5275
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5276
    check-cast v1, Ljava/lang/String;

    .line 5284
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 5278
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5280
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5281
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5282
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->pobox_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5284
    goto :goto_0
.end method

.method public getPostcode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5402
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->postcode_:Ljava/lang/Object;

    .line 5403
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5404
    check-cast v1, Ljava/lang/String;

    .line 5412
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 5406
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5408
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5409
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5410
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->postcode_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5412
    goto :goto_0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5370
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->region_:Ljava/lang/Object;

    .line 5371
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5372
    check-cast v1, Ljava/lang/String;

    .line 5380
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 5374
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5376
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5377
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5378
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->region_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5380
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5517
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->memoizedSerializedSize:I

    .line 5518
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 5562
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 5520
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 5521
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 5522
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5525
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 5526
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->type_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5529
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 5530
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5533
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 5534
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getStreetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5537
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 5538
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getPoboxBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5541
    :cond_5
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 5542
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getNeighborhoodBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5545
    :cond_6
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 5546
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getCityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5549
    :cond_7
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 5550
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getRegionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5553
    :cond_8
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 5554
    const/16 v2, 0x9

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getPostcodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5557
    :cond_9
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 5558
    const/16 v2, 0xa

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getCountryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5561
    :cond_a
    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->memoizedSerializedSize:I

    move v1, v0

    .line 5562
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5242
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->street_:Ljava/lang/Object;

    .line 5243
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5244
    check-cast v1, Ljava/lang/String;

    .line 5252
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 5246
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5248
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5249
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5250
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->street_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5252
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 5200
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->type_:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5168
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->value_:Ljava/lang/Object;

    .line 5169
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5170
    check-cast v1, Ljava/lang/String;

    .line 5178
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 5172
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5174
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5175
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5176
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->value_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5178
    goto :goto_0
.end method

.method public hasCity()Z
    .locals 2

    .prologue
    .line 5335
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

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

.method public hasCountry()Z
    .locals 2

    .prologue
    .line 5431
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

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

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 5207
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

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

.method public hasNeighborhood()Z
    .locals 2

    .prologue
    .line 5303
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

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

.method public hasPobox()Z
    .locals 2

    .prologue
    .line 5271
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

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

.method public hasPostcode()Z
    .locals 2

    .prologue
    .line 5399
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

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

.method public hasRegion()Z
    .locals 2

    .prologue
    .line 5367
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

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

.method public hasStreet()Z
    .locals 2

    .prologue
    .line 5239
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 5197
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

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

    .line 5165
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

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

    .line 5473
    iget-byte v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->memoizedIsInitialized:B

    .line 5474
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 5477
    :goto_0
    return v1

    .line 5474
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 5476
    :cond_1
    iput-byte v1, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->memoizedIsInitialized:B

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
    .line 5567
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

    .line 5482
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getSerializedSize()I

    .line 5483
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 5484
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5486
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 5487
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->type_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5489
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 5490
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5492
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 5493
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getStreetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5495
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 5496
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getPoboxBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5498
    :cond_4
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 5499
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getNeighborhoodBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5501
    :cond_5
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 5502
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getCityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5504
    :cond_6
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 5505
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getRegionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5507
    :cond_7
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 5508
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getPostcodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5510
    :cond_8
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Postal;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 5511
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Postal;->getCountryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5513
    :cond_9
    return-void
.end method
