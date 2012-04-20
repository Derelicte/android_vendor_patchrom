.class public final Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NoteProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/NoteProtos$NoteData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/NoteProtos$NoteData;",
        "Lcom/miui/milk/model/NoteProtos$NoteData$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private content_:Ljava/lang/Object;

.field private createdDate_:J

.field private data1_:J

.field private data2_:J

.field private data3_:Ljava/lang/Object;

.field private data4_:Ljava/lang/Object;

.field private data5_:Ljava/lang/Object;

.field private mimeType_:Ljava/lang/Object;

.field private modifiedDate_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 659
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->mimeType_:Ljava/lang/Object;

    .line 737
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->content_:Ljava/lang/Object;

    .line 815
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->data3_:Ljava/lang/Object;

    .line 851
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->data4_:Ljava/lang/Object;

    .line 887
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->data5_:Ljava/lang/Object;

    .line 452
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->maybeForceBuilderInitialization()V

    .line 453
    return-void
.end method

.method static synthetic access$100()Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    .locals 1

    .prologue
    .line 446
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->create()Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    .locals 1

    .prologue
    .line 458
    new-instance v0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 456
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/NoteProtos$NoteData;
    .locals 2

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->buildPartial()Lcom/miui/milk/model/NoteProtos$NoteData;

    move-result-object v0

    .line 494
    .local v0, result:Lcom/miui/milk/model/NoteProtos$NoteData;
    invoke-virtual {v0}, Lcom/miui/milk/model/NoteProtos$NoteData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    invoke-static {v0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 497
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->buildPartial()Lcom/miui/milk/model/NoteProtos$NoteData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/NoteProtos$NoteData;
    .locals 5

    .prologue
    .line 511
    new-instance v1, Lcom/miui/milk/model/NoteProtos$NoteData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/NoteProtos$NoteData;-><init>(Lcom/miui/milk/model/NoteProtos$NoteData$Builder;Lcom/miui/milk/model/NoteProtos$1;)V

    .line 512
    .local v1, result:Lcom/miui/milk/model/NoteProtos$NoteData;
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 513
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 514
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 515
    or-int/lit8 v2, v2, 0x1

    .line 517
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->mimeType_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteData;->mimeType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteData;->access$302(Lcom/miui/milk/model/NoteProtos$NoteData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 519
    or-int/lit8 v2, v2, 0x2

    .line 521
    :cond_1
    iget-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->createdDate_:J

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteData;->createdDate_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/NoteProtos$NoteData;->access$402(Lcom/miui/milk/model/NoteProtos$NoteData;J)J

    .line 522
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 523
    or-int/lit8 v2, v2, 0x4

    .line 525
    :cond_2
    iget-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->modifiedDate_:J

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteData;->modifiedDate_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/NoteProtos$NoteData;->access$502(Lcom/miui/milk/model/NoteProtos$NoteData;J)J

    .line 526
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 527
    or-int/lit8 v2, v2, 0x8

    .line 529
    :cond_3
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->content_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteData;->content_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteData;->access$602(Lcom/miui/milk/model/NoteProtos$NoteData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 531
    or-int/lit8 v2, v2, 0x10

    .line 533
    :cond_4
    iget-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->data1_:J

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteData;->data1_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/NoteProtos$NoteData;->access$702(Lcom/miui/milk/model/NoteProtos$NoteData;J)J

    .line 534
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 535
    or-int/lit8 v2, v2, 0x20

    .line 537
    :cond_5
    iget-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->data2_:J

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteData;->data2_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/NoteProtos$NoteData;->access$802(Lcom/miui/milk/model/NoteProtos$NoteData;J)J

    .line 538
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 539
    or-int/lit8 v2, v2, 0x40

    .line 541
    :cond_6
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->data3_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteData;->data3_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteData;->access$902(Lcom/miui/milk/model/NoteProtos$NoteData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 543
    or-int/lit16 v2, v2, 0x80

    .line 545
    :cond_7
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->data4_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteData;->data4_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteData;->access$1002(Lcom/miui/milk/model/NoteProtos$NoteData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 547
    or-int/lit16 v2, v2, 0x100

    .line 549
    :cond_8
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->data5_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteData;->data5_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteData;->access$1102(Lcom/miui/milk/model/NoteProtos$NoteData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    #setter for: Lcom/miui/milk/model/NoteProtos$NoteData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/NoteProtos$NoteData;->access$1202(Lcom/miui/milk/model/NoteProtos$NoteData;I)I

    .line 551
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->clone()Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->clone()Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    .locals 2

    .prologue
    .line 485
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->create()Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->buildPartial()Lcom/miui/milk/model/NoteProtos$NoteData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->mergeFrom(Lcom/miui/milk/model/NoteProtos$NoteData;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

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
    .line 446
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->clone()Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

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
    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

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
    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 595
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 596
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 601
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 603
    :sswitch_0
    return-object p0

    .line 608
    :sswitch_1
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 609
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->mimeType_:Ljava/lang/Object;

    goto :goto_0

    .line 613
    :sswitch_2
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 614
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->createdDate_:J

    goto :goto_0

    .line 618
    :sswitch_3
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 619
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->modifiedDate_:J

    goto :goto_0

    .line 623
    :sswitch_4
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 624
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->content_:Ljava/lang/Object;

    goto :goto_0

    .line 628
    :sswitch_5
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 629
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->data1_:J

    goto :goto_0

    .line 633
    :sswitch_6
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 634
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->data2_:J

    goto :goto_0

    .line 638
    :sswitch_7
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 639
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->data3_:Ljava/lang/Object;

    goto :goto_0

    .line 643
    :sswitch_8
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 644
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->data4_:Ljava/lang/Object;

    goto :goto_0

    .line 648
    :sswitch_9
    iget v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 649
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->data5_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 596
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/NoteProtos$NoteData;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 555
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteData;->getDefaultInstance()Lcom/miui/milk/model/NoteProtos$NoteData;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-object p0

    .line 556
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasMimeType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 557
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setMimeType(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    .line 559
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasCreatedDate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 560
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getCreatedDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setCreatedDate(J)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    .line 562
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasModifiedDate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 563
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getModifiedDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setModifiedDate(J)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    .line 565
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 566
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setContent(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    .line 568
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasData1()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 569
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData1()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setData1(J)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    .line 571
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasData2()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 572
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData2()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setData2(J)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    .line 574
    :cond_7
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasData3()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 575
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setData3(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    .line 577
    :cond_8
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasData4()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 578
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData4()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setData4(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    .line 580
    :cond_9
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasData5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setData5(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 752
    if-nez p1, :cond_0

    .line 753
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 755
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 756
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->content_:Ljava/lang/Object;

    .line 758
    return-object p0
.end method

.method public setCreatedDate(J)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 703
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 704
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->createdDate_:J

    .line 706
    return-object p0
.end method

.method public setData1(J)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 781
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 782
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->data1_:J

    .line 784
    return-object p0
.end method

.method public setData2(J)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 802
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 803
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->data2_:J

    .line 805
    return-object p0
.end method

.method public setData3(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 830
    if-nez p1, :cond_0

    .line 831
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 833
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 834
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->data3_:Ljava/lang/Object;

    .line 836
    return-object p0
.end method

.method public setData4(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 866
    if-nez p1, :cond_0

    .line 867
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 869
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 870
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->data4_:Ljava/lang/Object;

    .line 872
    return-object p0
.end method

.method public setData5(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 902
    if-nez p1, :cond_0

    .line 903
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 905
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 906
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->data5_:Ljava/lang/Object;

    .line 908
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 674
    if-nez p1, :cond_0

    .line 675
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 677
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 678
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->mimeType_:Ljava/lang/Object;

    .line 680
    return-object p0
.end method

.method public setModifiedDate(J)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 724
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->bitField0_:I

    .line 725
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->modifiedDate_:J

    .line 727
    return-object p0
.end method
