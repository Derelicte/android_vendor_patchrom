.class public final Lcom/miui/milk/model/MetadataProtos$Resource$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MetadataProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/MetadataProtos$Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/MetadataProtos$Resource;",
        "Lcom/miui/milk/model/MetadataProtos$Resource$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private counts_:J

.field private guid_:Ljava/lang/Object;

.field private lastDate_:J

.field private type_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 487
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->guid_:Ljava/lang/Object;

    .line 350
    invoke-direct {p0}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->maybeForceBuilderInitialization()V

    .line 351
    return-void
.end method

.method static synthetic access$100()Lcom/miui/milk/model/MetadataProtos$Resource$Builder;
    .locals 1

    .prologue
    .line 344
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->create()Lcom/miui/milk/model/MetadataProtos$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/MetadataProtos$Resource$Builder;
    .locals 1

    .prologue
    .line 356
    new-instance v0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->buildPartial()Lcom/miui/milk/model/MetadataProtos$Resource;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/MetadataProtos$Resource;
    .locals 5

    .prologue
    .line 399
    new-instance v1, Lcom/miui/milk/model/MetadataProtos$Resource;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/MetadataProtos$Resource;-><init>(Lcom/miui/milk/model/MetadataProtos$Resource$Builder;Lcom/miui/milk/model/MetadataProtos$1;)V

    .line 400
    .local v1, result:Lcom/miui/milk/model/MetadataProtos$Resource;
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->bitField0_:I

    .line 401
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 402
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 403
    or-int/lit8 v2, v2, 0x1

    .line 405
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->guid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/MetadataProtos$Resource;->guid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/MetadataProtos$Resource;->access$302(Lcom/miui/milk/model/MetadataProtos$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 407
    or-int/lit8 v2, v2, 0x2

    .line 409
    :cond_1
    iget v3, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->type_:I

    #setter for: Lcom/miui/milk/model/MetadataProtos$Resource;->type_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/MetadataProtos$Resource;->access$402(Lcom/miui/milk/model/MetadataProtos$Resource;I)I

    .line 410
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 411
    or-int/lit8 v2, v2, 0x4

    .line 413
    :cond_2
    iget-wide v3, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->counts_:J

    #setter for: Lcom/miui/milk/model/MetadataProtos$Resource;->counts_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/MetadataProtos$Resource;->access$502(Lcom/miui/milk/model/MetadataProtos$Resource;J)J

    .line 414
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 415
    or-int/lit8 v2, v2, 0x8

    .line 417
    :cond_3
    iget-wide v3, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->lastDate_:J

    #setter for: Lcom/miui/milk/model/MetadataProtos$Resource;->lastDate_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/MetadataProtos$Resource;->access$602(Lcom/miui/milk/model/MetadataProtos$Resource;J)J

    .line 418
    #setter for: Lcom/miui/milk/model/MetadataProtos$Resource;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/MetadataProtos$Resource;->access$702(Lcom/miui/milk/model/MetadataProtos$Resource;I)I

    .line 419
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->clone()Lcom/miui/milk/model/MetadataProtos$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->clone()Lcom/miui/milk/model/MetadataProtos$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/MetadataProtos$Resource$Builder;
    .locals 2

    .prologue
    .line 373
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->create()Lcom/miui/milk/model/MetadataProtos$Resource$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->buildPartial()Lcom/miui/milk/model/MetadataProtos$Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->mergeFrom(Lcom/miui/milk/model/MetadataProtos$Resource;)Lcom/miui/milk/model/MetadataProtos$Resource$Builder;

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
    .line 344
    invoke-virtual {p0}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->clone()Lcom/miui/milk/model/MetadataProtos$Resource$Builder;

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
    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MetadataProtos$Resource$Builder;

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
    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MetadataProtos$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/MetadataProtos$Resource$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 449
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 454
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    :sswitch_0
    return-object p0

    .line 461
    :sswitch_1
    iget v1, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->bitField0_:I

    .line 462
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 466
    :sswitch_2
    iget v1, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->bitField0_:I

    .line 467
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->type_:I

    goto :goto_0

    .line 471
    :sswitch_3
    iget v1, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->bitField0_:I

    .line 472
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->counts_:J

    goto :goto_0

    .line 476
    :sswitch_4
    iget v1, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->bitField0_:I

    .line 477
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->lastDate_:J

    goto :goto_0

    .line 449
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/MetadataProtos$Resource;)Lcom/miui/milk/model/MetadataProtos$Resource$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 423
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Resource;->getDefaultInstance()Lcom/miui/milk/model/MetadataProtos$Resource;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-object p0

    .line 424
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/MetadataProtos$Resource;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    invoke-virtual {p1}, Lcom/miui/milk/model/MetadataProtos$Resource;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/MetadataProtos$Resource$Builder;

    .line 427
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/MetadataProtos$Resource;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 428
    invoke-virtual {p1}, Lcom/miui/milk/model/MetadataProtos$Resource;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->setType(I)Lcom/miui/milk/model/MetadataProtos$Resource$Builder;

    .line 430
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/MetadataProtos$Resource;->hasCounts()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 431
    invoke-virtual {p1}, Lcom/miui/milk/model/MetadataProtos$Resource;->getCounts()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->setCounts(J)Lcom/miui/milk/model/MetadataProtos$Resource$Builder;

    .line 433
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/MetadataProtos$Resource;->hasLastDate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p1}, Lcom/miui/milk/model/MetadataProtos$Resource;->getLastDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->setLastDate(J)Lcom/miui/milk/model/MetadataProtos$Resource$Builder;

    goto :goto_0
.end method

.method public setCounts(J)Lcom/miui/milk/model/MetadataProtos$Resource$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 552
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->bitField0_:I

    .line 553
    iput-wide p1, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->counts_:J

    .line 555
    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/miui/milk/model/MetadataProtos$Resource$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 503
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 505
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->bitField0_:I

    .line 506
    iput-object p1, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->guid_:Ljava/lang/Object;

    .line 508
    return-object p0
.end method

.method public setLastDate(J)Lcom/miui/milk/model/MetadataProtos$Resource$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 573
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->bitField0_:I

    .line 574
    iput-wide p1, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->lastDate_:J

    .line 576
    return-object p0
.end method

.method public setType(I)Lcom/miui/milk/model/MetadataProtos$Resource$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 531
    iget v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->bitField0_:I

    .line 532
    iput p1, p0, Lcom/miui/milk/model/MetadataProtos$Resource$Builder;->type_:I

    .line 534
    return-object p0
.end method
