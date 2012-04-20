.class public final Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CalllogProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/CalllogProtos2$Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/CalllogProtos2$Call;",
        "Lcom/miui/milk/model/CalllogProtos2$Call$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private bitField0_:I

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private date_:J

.field private duration_:J

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private new_:I

.field private number_:Ljava/lang/Object;

.field private type_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 670
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->guid_:Ljava/lang/Object;

    .line 706
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->luid_:Ljava/lang/Object;

    .line 742
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->number_:Ljava/lang/Object;

    .line 862
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 886
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 455
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->maybeForceBuilderInitialization()V

    .line 456
    return-void
.end method

.method static synthetic access$100()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    .locals 1

    .prologue
    .line 449
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->create()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    .locals 1

    .prologue
    .line 461
    new-instance v0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 459
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/CalllogProtos2$Call;
    .locals 2

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->buildPartial()Lcom/miui/milk/model/CalllogProtos2$Call;

    move-result-object v0

    .line 497
    .local v0, result:Lcom/miui/milk/model/CalllogProtos2$Call;
    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos2$Call;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    invoke-static {v0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 500
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->buildPartial()Lcom/miui/milk/model/CalllogProtos2$Call;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/CalllogProtos2$Call;
    .locals 5

    .prologue
    .line 514
    new-instance v1, Lcom/miui/milk/model/CalllogProtos2$Call;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/CalllogProtos2$Call;-><init>(Lcom/miui/milk/model/CalllogProtos2$Call$Builder;Lcom/miui/milk/model/CalllogProtos2$1;)V

    .line 515
    .local v1, result:Lcom/miui/milk/model/CalllogProtos2$Call;
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 516
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 517
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 518
    or-int/lit8 v2, v2, 0x1

    .line 520
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->guid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/CalllogProtos2$Call;->guid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/CalllogProtos2$Call;->access$302(Lcom/miui/milk/model/CalllogProtos2$Call;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 522
    or-int/lit8 v2, v2, 0x2

    .line 524
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->luid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/CalllogProtos2$Call;->luid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/CalllogProtos2$Call;->access$402(Lcom/miui/milk/model/CalllogProtos2$Call;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 526
    or-int/lit8 v2, v2, 0x4

    .line 528
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->number_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/CalllogProtos2$Call;->number_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/CalllogProtos2$Call;->access$502(Lcom/miui/milk/model/CalllogProtos2$Call;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 530
    or-int/lit8 v2, v2, 0x8

    .line 532
    :cond_3
    iget-wide v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->date_:J

    #setter for: Lcom/miui/milk/model/CalllogProtos2$Call;->date_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/CalllogProtos2$Call;->access$602(Lcom/miui/milk/model/CalllogProtos2$Call;J)J

    .line 533
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 534
    or-int/lit8 v2, v2, 0x10

    .line 536
    :cond_4
    iget-wide v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->duration_:J

    #setter for: Lcom/miui/milk/model/CalllogProtos2$Call;->duration_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/CalllogProtos2$Call;->access$702(Lcom/miui/milk/model/CalllogProtos2$Call;J)J

    .line 537
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 538
    or-int/lit8 v2, v2, 0x20

    .line 540
    :cond_5
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->type_:I

    #setter for: Lcom/miui/milk/model/CalllogProtos2$Call;->type_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/CalllogProtos2$Call;->access$802(Lcom/miui/milk/model/CalllogProtos2$Call;I)I

    .line 541
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 542
    or-int/lit8 v2, v2, 0x40

    .line 544
    :cond_6
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->new_:I

    #setter for: Lcom/miui/milk/model/CalllogProtos2$Call;->new_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/CalllogProtos2$Call;->access$902(Lcom/miui/milk/model/CalllogProtos2$Call;I)I

    .line 545
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 546
    or-int/lit16 v2, v2, 0x80

    .line 548
    :cond_7
    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    #setter for: Lcom/miui/milk/model/CalllogProtos2$Call;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/CalllogProtos2$Call;->access$1002(Lcom/miui/milk/model/CalllogProtos2$Call;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 549
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 550
    or-int/lit16 v2, v2, 0x100

    .line 552
    :cond_8
    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    #setter for: Lcom/miui/milk/model/CalllogProtos2$Call;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/CalllogProtos2$Call;->access$1102(Lcom/miui/milk/model/CalllogProtos2$Call;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 553
    #setter for: Lcom/miui/milk/model/CalllogProtos2$Call;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/CalllogProtos2$Call;->access$1202(Lcom/miui/milk/model/CalllogProtos2$Call;I)I

    .line 554
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->clone()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->clone()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    .locals 2

    .prologue
    .line 488
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->create()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->buildPartial()Lcom/miui/milk/model/CalllogProtos2$Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->mergeFrom(Lcom/miui/milk/model/CalllogProtos2$Call;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

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
    .line 449
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->clone()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

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
    .line 449
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

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
    .line 449
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 599
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 604
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 606
    :sswitch_0
    return-object p0

    .line 611
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 612
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 616
    :sswitch_2
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 617
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 621
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 622
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->number_:Ljava/lang/Object;

    goto :goto_0

    .line 626
    :sswitch_4
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 627
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->date_:J

    goto :goto_0

    .line 631
    :sswitch_5
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 632
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->duration_:J

    goto :goto_0

    .line 636
    :sswitch_6
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 637
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->type_:I

    goto :goto_0

    .line 641
    :sswitch_7
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 642
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->new_:I

    goto :goto_0

    .line 646
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 647
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ActionType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v2

    .line 648
    .local v2, value:Lcom/miui/milk/model/CommonProtos$ActionType;
    if-eqz v2, :cond_0

    .line 649
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 650
    iput-object v2, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    goto :goto_0

    .line 655
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/CommonProtos$ActionType;
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 656
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ConflictType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v2

    .line 657
    .local v2, value:Lcom/miui/milk/model/CommonProtos$ConflictType;
    if-eqz v2, :cond_0

    .line 658
    iget v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 659
    iput-object v2, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    goto/16 :goto_0

    .line 599
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0xa0 -> :sswitch_8
        0xa8 -> :sswitch_9
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/CalllogProtos2$Call;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 558
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Call;->getDefaultInstance()Lcom/miui/milk/model/CalllogProtos2$Call;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-object p0

    .line 559
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    .line 562
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 563
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    .line 565
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 566
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setNumber(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    .line 568
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->hasDate()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 569
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setDate(J)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    .line 571
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 572
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setDuration(J)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    .line 574
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->hasType()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 575
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setType(I)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    .line 577
    :cond_7
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->hasNew()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 578
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getNew()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setNew(I)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    .line 580
    :cond_8
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->hasActionType()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 581
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    .line 583
    :cond_9
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->hasConflictType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    goto :goto_0
.end method

.method public setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 870
    if-nez p1, :cond_0

    .line 871
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 873
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 874
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 876
    return-object p0
.end method

.method public setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 894
    if-nez p1, :cond_0

    .line 895
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 897
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 898
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 900
    return-object p0
.end method

.method public setDate(J)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 786
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 787
    iput-wide p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->date_:J

    .line 789
    return-object p0
.end method

.method public setDuration(J)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 807
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 808
    iput-wide p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->duration_:J

    .line 810
    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 685
    if-nez p1, :cond_0

    .line 686
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 688
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 689
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->guid_:Ljava/lang/Object;

    .line 691
    return-object p0
.end method

.method public setLuid(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 721
    if-nez p1, :cond_0

    .line 722
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 724
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 725
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->luid_:Ljava/lang/Object;

    .line 727
    return-object p0
.end method

.method public setNew(I)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 849
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 850
    iput p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->new_:I

    .line 852
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 757
    if-nez p1, :cond_0

    .line 758
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 760
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 761
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->number_:Ljava/lang/Object;

    .line 763
    return-object p0
.end method

.method public setType(I)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 828
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->bitField0_:I

    .line 829
    iput p1, p0, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->type_:I

    .line 831
    return-object p0
.end method
