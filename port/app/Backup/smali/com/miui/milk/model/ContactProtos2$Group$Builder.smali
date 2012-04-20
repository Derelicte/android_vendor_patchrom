.class public final Lcom/miui/milk/model/ContactProtos2$Group$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2$Group;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos2$Group;",
        "Lcom/miui/milk/model/ContactProtos2$Group$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private bitField0_:I

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private deleted_:I

.field private groupOrder_:I

.field private groupVisible_:I

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private notes_:Ljava/lang/Object;

.field private sourceId_:Ljava/lang/Object;

.field private systemId_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10451
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10709
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->guid_:Ljava/lang/Object;

    .line 10745
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->luid_:Ljava/lang/Object;

    .line 10823
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->title_:Ljava/lang/Object;

    .line 10859
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->notes_:Ljava/lang/Object;

    .line 10895
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->systemId_:Ljava/lang/Object;

    .line 10973
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->sourceId_:Ljava/lang/Object;

    .line 11009
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 11033
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 10452
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->maybeForceBuilderInitialization()V

    .line 10453
    return-void
.end method

.method static synthetic access$12100()Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 1

    .prologue
    .line 10446
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 1

    .prologue
    .line 10458
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 10456
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/ContactProtos2$Group;
    .locals 2

    .prologue
    .line 10499
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v0

    .line 10500
    .local v0, result:Lcom/miui/milk/model/ContactProtos2$Group;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Group;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10501
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10503
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10446
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos2$Group;
    .locals 5

    .prologue
    .line 10517
    new-instance v1, Lcom/miui/milk/model/ContactProtos2$Group;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos2$Group;-><init>(Lcom/miui/milk/model/ContactProtos2$Group$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V

    .line 10518
    .local v1, result:Lcom/miui/milk/model/ContactProtos2$Group;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10519
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10520
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 10521
    or-int/lit8 v2, v2, 0x1

    .line 10523
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->guid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Group;->guid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Group;->access$12302(Lcom/miui/milk/model/ContactProtos2$Group;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10524
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 10525
    or-int/lit8 v2, v2, 0x2

    .line 10527
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->luid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Group;->luid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Group;->access$12402(Lcom/miui/milk/model/ContactProtos2$Group;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10528
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 10529
    or-int/lit8 v2, v2, 0x4

    .line 10531
    :cond_2
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->version_:I

    #setter for: Lcom/miui/milk/model/ContactProtos2$Group;->version_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Group;->access$12502(Lcom/miui/milk/model/ContactProtos2$Group;I)I

    .line 10532
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 10533
    or-int/lit8 v2, v2, 0x8

    .line 10535
    :cond_3
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->deleted_:I

    #setter for: Lcom/miui/milk/model/ContactProtos2$Group;->deleted_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Group;->access$12602(Lcom/miui/milk/model/ContactProtos2$Group;I)I

    .line 10536
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 10537
    or-int/lit8 v2, v2, 0x10

    .line 10539
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Group;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Group;->access$12702(Lcom/miui/milk/model/ContactProtos2$Group;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10540
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 10541
    or-int/lit8 v2, v2, 0x20

    .line 10543
    :cond_5
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->notes_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Group;->notes_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Group;->access$12802(Lcom/miui/milk/model/ContactProtos2$Group;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10544
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 10545
    or-int/lit8 v2, v2, 0x40

    .line 10547
    :cond_6
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->systemId_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Group;->systemId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Group;->access$12902(Lcom/miui/milk/model/ContactProtos2$Group;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10548
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 10549
    or-int/lit16 v2, v2, 0x80

    .line 10551
    :cond_7
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->groupVisible_:I

    #setter for: Lcom/miui/milk/model/ContactProtos2$Group;->groupVisible_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Group;->access$13002(Lcom/miui/milk/model/ContactProtos2$Group;I)I

    .line 10552
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 10553
    or-int/lit16 v2, v2, 0x100

    .line 10555
    :cond_8
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->groupOrder_:I

    #setter for: Lcom/miui/milk/model/ContactProtos2$Group;->groupOrder_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Group;->access$13102(Lcom/miui/milk/model/ContactProtos2$Group;I)I

    .line 10556
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 10557
    or-int/lit16 v2, v2, 0x200

    .line 10559
    :cond_9
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->sourceId_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Group;->sourceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Group;->access$13202(Lcom/miui/milk/model/ContactProtos2$Group;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10560
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 10561
    or-int/lit16 v2, v2, 0x400

    .line 10563
    :cond_a
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Group;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Group;->access$13302(Lcom/miui/milk/model/ContactProtos2$Group;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 10564
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 10565
    or-int/lit16 v2, v2, 0x800

    .line 10567
    :cond_b
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Group;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Group;->access$13402(Lcom/miui/milk/model/ContactProtos2$Group;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 10568
    #setter for: Lcom/miui/milk/model/ContactProtos2$Group;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Group;->access$13502(Lcom/miui/milk/model/ContactProtos2$Group;I)I

    .line 10569
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 10446
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 10446
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 2

    .prologue
    .line 10491
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$Group;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

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
    .line 10446
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Group$Builder;

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
    .line 10446
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

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
    .line 10446
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10622
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 10623
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 10628
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10630
    :sswitch_0
    return-object p0

    .line 10635
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10636
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 10640
    :sswitch_2
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10641
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 10645
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10646
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->version_:I

    goto :goto_0

    .line 10650
    :sswitch_4
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10651
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->deleted_:I

    goto :goto_0

    .line 10655
    :sswitch_5
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10656
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 10660
    :sswitch_6
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10661
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->notes_:Ljava/lang/Object;

    goto :goto_0

    .line 10665
    :sswitch_7
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10666
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->systemId_:Ljava/lang/Object;

    goto :goto_0

    .line 10670
    :sswitch_8
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10671
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->groupVisible_:I

    goto :goto_0

    .line 10675
    :sswitch_9
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10676
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->groupOrder_:I

    goto/16 :goto_0

    .line 10680
    :sswitch_a
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10681
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->sourceId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 10685
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 10686
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ActionType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v2

    .line 10687
    .local v2, value:Lcom/miui/milk/model/CommonProtos$ActionType;
    if-eqz v2, :cond_0

    .line 10688
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10689
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    goto/16 :goto_0

    .line 10694
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/CommonProtos$ActionType;
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 10695
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ConflictType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v2

    .line 10696
    .local v2, value:Lcom/miui/milk/model/CommonProtos$ConflictType;
    if-eqz v2, :cond_0

    .line 10697
    iget v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x800

    iput v3, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10698
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    goto/16 :goto_0

    .line 10623
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0xa0 -> :sswitch_b
        0xa8 -> :sswitch_c
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos2$Group;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 10573
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Group;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 10610
    :cond_0
    :goto_0
    return-object p0

    .line 10574
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10575
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 10577
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10578
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 10580
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10581
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setVersion(I)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 10583
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->hasDeleted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10584
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getDeleted()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setDeleted(I)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 10586
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10587
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 10589
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->hasNotes()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10590
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getNotes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setNotes(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 10592
    :cond_7
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->hasSystemId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10593
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setSystemId(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 10595
    :cond_8
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->hasGroupVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10596
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getGroupVisible()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setGroupVisible(I)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 10598
    :cond_9
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->hasGroupOrder()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10599
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getGroupOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setGroupOrder(I)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 10601
    :cond_a
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->hasSourceId()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 10602
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setSourceId(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 10604
    :cond_b
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->hasActionType()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 10605
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 10607
    :cond_c
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->hasConflictType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10608
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    goto/16 :goto_0
.end method

.method public setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11017
    if-nez p1, :cond_0

    .line 11018
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11020
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 11021
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 11023
    return-object p0
.end method

.method public setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11041
    if-nez p1, :cond_0

    .line 11042
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11044
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 11045
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 11047
    return-object p0
.end method

.method public setDeleted(I)Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10810
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10811
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->deleted_:I

    .line 10813
    return-object p0
.end method

.method public setGroupOrder(I)Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10960
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10961
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->groupOrder_:I

    .line 10963
    return-object p0
.end method

.method public setGroupVisible(I)Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10939
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10940
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->groupVisible_:I

    .line 10942
    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10724
    if-nez p1, :cond_0

    .line 10725
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10727
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10728
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->guid_:Ljava/lang/Object;

    .line 10730
    return-object p0
.end method

.method public setLuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10760
    if-nez p1, :cond_0

    .line 10761
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10763
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10764
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->luid_:Ljava/lang/Object;

    .line 10766
    return-object p0
.end method

.method public setNotes(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10874
    if-nez p1, :cond_0

    .line 10875
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10877
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10878
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->notes_:Ljava/lang/Object;

    .line 10880
    return-object p0
.end method

.method public setSourceId(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10988
    if-nez p1, :cond_0

    .line 10989
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10991
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10992
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->sourceId_:Ljava/lang/Object;

    .line 10994
    return-object p0
.end method

.method public setSystemId(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10910
    if-nez p1, :cond_0

    .line 10911
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10913
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10914
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->systemId_:Ljava/lang/Object;

    .line 10916
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10838
    if-nez p1, :cond_0

    .line 10839
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10841
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10842
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->title_:Ljava/lang/Object;

    .line 10844
    return-object p0
.end method

.method public setVersion(I)Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10789
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->bitField0_:I

    .line 10790
    iput p1, p0, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->version_:I

    .line 10792
    return-object p0
.end method
