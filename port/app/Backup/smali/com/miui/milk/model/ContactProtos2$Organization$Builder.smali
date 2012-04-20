.class public final Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2$Organization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos2$Organization;",
        "Lcom/miui/milk/model/ContactProtos2$Organization$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private department_:Ljava/lang/Object;

.field private jobDescription_:Ljava/lang/Object;

.field private label_:Ljava/lang/Object;

.field private officeLocation_:Ljava/lang/Object;

.field private symbol_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;

.field private type_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4291
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4485
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->value_:Ljava/lang/Object;

    .line 4542
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->label_:Ljava/lang/Object;

    .line 4578
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->title_:Ljava/lang/Object;

    .line 4614
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->department_:Ljava/lang/Object;

    .line 4650
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->jobDescription_:Ljava/lang/Object;

    .line 4686
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->symbol_:Ljava/lang/Object;

    .line 4722
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->officeLocation_:Ljava/lang/Object;

    .line 4292
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->maybeForceBuilderInitialization()V

    .line 4293
    return-void
.end method

.method static synthetic access$5100()Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    .locals 1

    .prologue
    .line 4286
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    .locals 1

    .prologue
    .line 4298
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 4296
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/ContactProtos2$Organization;
    .locals 2

    .prologue
    .line 4331
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Organization;

    move-result-object v0

    .line 4332
    .local v0, result:Lcom/miui/milk/model/ContactProtos2$Organization;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Organization;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4333
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4335
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4286
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Organization;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos2$Organization;
    .locals 5

    .prologue
    .line 4349
    new-instance v1, Lcom/miui/milk/model/ContactProtos2$Organization;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos2$Organization;-><init>(Lcom/miui/milk/model/ContactProtos2$Organization$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V

    .line 4350
    .local v1, result:Lcom/miui/milk/model/ContactProtos2$Organization;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    .line 4351
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4352
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4353
    or-int/lit8 v2, v2, 0x1

    .line 4355
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Organization;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Organization;->access$5302(Lcom/miui/milk/model/ContactProtos2$Organization;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4356
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4357
    or-int/lit8 v2, v2, 0x2

    .line 4359
    :cond_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->type_:I

    #setter for: Lcom/miui/milk/model/ContactProtos2$Organization;->type_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Organization;->access$5402(Lcom/miui/milk/model/ContactProtos2$Organization;I)I

    .line 4360
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 4361
    or-int/lit8 v2, v2, 0x4

    .line 4363
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Organization;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Organization;->access$5502(Lcom/miui/milk/model/ContactProtos2$Organization;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4364
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 4365
    or-int/lit8 v2, v2, 0x8

    .line 4367
    :cond_3
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Organization;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Organization;->access$5602(Lcom/miui/milk/model/ContactProtos2$Organization;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4368
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 4369
    or-int/lit8 v2, v2, 0x10

    .line 4371
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->department_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Organization;->department_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Organization;->access$5702(Lcom/miui/milk/model/ContactProtos2$Organization;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4372
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 4373
    or-int/lit8 v2, v2, 0x20

    .line 4375
    :cond_5
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->jobDescription_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Organization;->jobDescription_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Organization;->access$5802(Lcom/miui/milk/model/ContactProtos2$Organization;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4376
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 4377
    or-int/lit8 v2, v2, 0x40

    .line 4379
    :cond_6
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->symbol_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Organization;->symbol_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Organization;->access$5902(Lcom/miui/milk/model/ContactProtos2$Organization;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4380
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 4381
    or-int/lit16 v2, v2, 0x80

    .line 4383
    :cond_7
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->officeLocation_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Organization;->officeLocation_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Organization;->access$6002(Lcom/miui/milk/model/ContactProtos2$Organization;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4384
    #setter for: Lcom/miui/milk/model/ContactProtos2$Organization;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Organization;->access$6102(Lcom/miui/milk/model/ContactProtos2$Organization;I)I

    .line 4385
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4286
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4286
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    .locals 2

    .prologue
    .line 4323
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Organization;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$Organization;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

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
    .line 4286
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

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
    .line 4286
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

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
    .line 4286
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4426
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 4427
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4432
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4434
    :sswitch_0
    return-object p0

    .line 4439
    :sswitch_1
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    .line 4440
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 4444
    :sswitch_2
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    .line 4445
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->type_:I

    goto :goto_0

    .line 4449
    :sswitch_3
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    .line 4450
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 4454
    :sswitch_4
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    .line 4455
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 4459
    :sswitch_5
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    .line 4460
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->department_:Ljava/lang/Object;

    goto :goto_0

    .line 4464
    :sswitch_6
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    .line 4465
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->jobDescription_:Ljava/lang/Object;

    goto :goto_0

    .line 4469
    :sswitch_7
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    .line 4470
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->symbol_:Ljava/lang/Object;

    goto :goto_0

    .line 4474
    :sswitch_8
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    .line 4475
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->officeLocation_:Ljava/lang/Object;

    goto :goto_0

    .line 4427
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos2$Organization;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 4389
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Organization;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Organization;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4414
    :cond_0
    :goto_0
    return-object p0

    .line 4390
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Organization;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4391
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Organization;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 4393
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Organization;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4394
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Organization;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 4396
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Organization;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4397
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Organization;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 4399
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Organization;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4400
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Organization;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 4402
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Organization;->hasDepartment()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4403
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Organization;->getDepartment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setDepartment(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 4405
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Organization;->hasJobDescription()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4406
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Organization;->getJobDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setJobDescription(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 4408
    :cond_7
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Organization;->hasSymbol()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4409
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Organization;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setSymbol(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 4411
    :cond_8
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Organization;->hasOfficeLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4412
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Organization;->getOfficeLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setOfficeLocation(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    goto :goto_0
.end method

.method public setDepartment(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4629
    if-nez p1, :cond_0

    .line 4630
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4632
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    .line 4633
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->department_:Ljava/lang/Object;

    .line 4635
    return-object p0
.end method

.method public setJobDescription(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4665
    if-nez p1, :cond_0

    .line 4666
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4668
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    .line 4669
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->jobDescription_:Ljava/lang/Object;

    .line 4671
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4557
    if-nez p1, :cond_0

    .line 4558
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4560
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    .line 4561
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->label_:Ljava/lang/Object;

    .line 4563
    return-object p0
.end method

.method public setOfficeLocation(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4737
    if-nez p1, :cond_0

    .line 4738
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4740
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    .line 4741
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->officeLocation_:Ljava/lang/Object;

    .line 4743
    return-object p0
.end method

.method public setSymbol(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4701
    if-nez p1, :cond_0

    .line 4702
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4704
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    .line 4705
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->symbol_:Ljava/lang/Object;

    .line 4707
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4593
    if-nez p1, :cond_0

    .line 4594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4596
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    .line 4597
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->title_:Ljava/lang/Object;

    .line 4599
    return-object p0
.end method

.method public setType(I)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4529
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    .line 4530
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->type_:I

    .line 4532
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4500
    if-nez p1, :cond_0

    .line 4501
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4503
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->bitField0_:I

    .line 4504
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->value_:Ljava/lang/Object;

    .line 4506
    return-object p0
.end method
