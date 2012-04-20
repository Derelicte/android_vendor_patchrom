.class public final Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NoteProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/NoteProtos$NoteFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/NoteProtos$NoteFolder;",
        "Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private alertDate_:J

.field private bgColorId_:I

.field private bitField0_:I

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private createdDate_:J

.field private guid_:Ljava/lang/Object;

.field private hasAttachment_:Z

.field private luid_:Ljava/lang/Object;

.field private modifiedDate_:J

.field private snippet_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2568
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2798
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->guid_:Ljava/lang/Object;

    .line 2834
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->luid_:Ljava/lang/Object;

    .line 2975
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->snippet_:Ljava/lang/Object;

    .line 3011
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 3035
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 2569
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->maybeForceBuilderInitialization()V

    .line 2570
    return-void
.end method

.method static synthetic access$3100()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    .locals 1

    .prologue
    .line 2563
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->create()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    .locals 1

    .prologue
    .line 2575
    new-instance v0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2573
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .locals 2

    .prologue
    .line 2612
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->buildPartial()Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v0

    .line 2613
    .local v0, result:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    invoke-virtual {v0}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2614
    invoke-static {v0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2616
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2563
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->buildPartial()Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .locals 5

    .prologue
    .line 2630
    new-instance v1, Lcom/miui/milk/model/NoteProtos$NoteFolder;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/NoteProtos$NoteFolder;-><init>(Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;Lcom/miui/milk/model/NoteProtos$1;)V

    .line 2631
    .local v1, result:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2632
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2633
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2634
    or-int/lit8 v2, v2, 0x1

    .line 2636
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->guid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteFolder;->guid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->access$3302(Lcom/miui/milk/model/NoteProtos$NoteFolder;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2637
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2638
    or-int/lit8 v2, v2, 0x2

    .line 2640
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->luid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteFolder;->luid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->access$3402(Lcom/miui/milk/model/NoteProtos$NoteFolder;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2641
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2642
    or-int/lit8 v2, v2, 0x4

    .line 2644
    :cond_2
    iget-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->alertDate_:J

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteFolder;->alertDate_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->access$3502(Lcom/miui/milk/model/NoteProtos$NoteFolder;J)J

    .line 2645
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2646
    or-int/lit8 v2, v2, 0x8

    .line 2648
    :cond_3
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bgColorId_:I

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteFolder;->bgColorId_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->access$3602(Lcom/miui/milk/model/NoteProtos$NoteFolder;I)I

    .line 2649
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2650
    or-int/lit8 v2, v2, 0x10

    .line 2652
    :cond_4
    iget-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->createdDate_:J

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteFolder;->createdDate_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->access$3702(Lcom/miui/milk/model/NoteProtos$NoteFolder;J)J

    .line 2653
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 2654
    or-int/lit8 v2, v2, 0x20

    .line 2656
    :cond_5
    iget-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->modifiedDate_:J

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteFolder;->modifiedDate_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->access$3802(Lcom/miui/milk/model/NoteProtos$NoteFolder;J)J

    .line 2657
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 2658
    or-int/lit8 v2, v2, 0x40

    .line 2660
    :cond_6
    iget-boolean v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->hasAttachment_:Z

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteFolder;->hasAttachment_:Z
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->access$3902(Lcom/miui/milk/model/NoteProtos$NoteFolder;Z)Z

    .line 2661
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 2662
    or-int/lit16 v2, v2, 0x80

    .line 2664
    :cond_7
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->snippet_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteFolder;->snippet_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->access$4002(Lcom/miui/milk/model/NoteProtos$NoteFolder;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2665
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 2666
    or-int/lit16 v2, v2, 0x100

    .line 2668
    :cond_8
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteFolder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->access$4102(Lcom/miui/milk/model/NoteProtos$NoteFolder;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 2669
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 2670
    or-int/lit16 v2, v2, 0x200

    .line 2672
    :cond_9
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteFolder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->access$4202(Lcom/miui/milk/model/NoteProtos$NoteFolder;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 2673
    #setter for: Lcom/miui/milk/model/NoteProtos$NoteFolder;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->access$4302(Lcom/miui/milk/model/NoteProtos$NoteFolder;I)I

    .line 2674
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2563
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->clone()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2563
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->clone()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    .locals 2

    .prologue
    .line 2604
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->create()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->buildPartial()Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->mergeFrom(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

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
    .line 2563
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->clone()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getLuid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2839
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->luid_:Ljava/lang/Object;

    .line 2840
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2841
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2842
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->luid_:Ljava/lang/Object;

    .line 2845
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
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
    .line 2563
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

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
    .line 2563
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2721
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2722
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 2727
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2729
    :sswitch_0
    return-object p0

    .line 2734
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2735
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 2739
    :sswitch_2
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2740
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 2744
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2745
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->alertDate_:J

    goto :goto_0

    .line 2749
    :sswitch_4
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2750
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bgColorId_:I

    goto :goto_0

    .line 2754
    :sswitch_5
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2755
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->createdDate_:J

    goto :goto_0

    .line 2759
    :sswitch_6
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2760
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->modifiedDate_:J

    goto :goto_0

    .line 2764
    :sswitch_7
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2765
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->hasAttachment_:Z

    goto :goto_0

    .line 2769
    :sswitch_8
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2770
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->snippet_:Ljava/lang/Object;

    goto :goto_0

    .line 2774
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2775
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ActionType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v2

    .line 2776
    .local v2, value:Lcom/miui/milk/model/CommonProtos$ActionType;
    if-eqz v2, :cond_0

    .line 2777
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2778
    iput-object v2, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    goto/16 :goto_0

    .line 2783
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/CommonProtos$ActionType;
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2784
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ConflictType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v2

    .line 2785
    .local v2, value:Lcom/miui/milk/model/CommonProtos$ConflictType;
    if-eqz v2, :cond_0

    .line 2786
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2787
    iput-object v2, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    goto/16 :goto_0

    .line 2722
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0xa0 -> :sswitch_9
        0xa8 -> :sswitch_a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 2678
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getDefaultInstance()Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2709
    :cond_0
    :goto_0
    return-object p0

    .line 2679
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2680
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    .line 2682
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2683
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    .line 2685
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->hasAlertDate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2686
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getAlertDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setAlertDate(J)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    .line 2688
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->hasBgColorId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2689
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getBgColorId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setBgColorId(I)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    .line 2691
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->hasCreatedDate()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2692
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getCreatedDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setCreatedDate(J)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    .line 2694
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->hasModifiedDate()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2695
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getModifiedDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setModifiedDate(J)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    .line 2697
    :cond_7
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->hasHasAttachment()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2698
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getHasAttachment()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setHasAttachment(Z)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    .line 2700
    :cond_8
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->hasSnippet()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2701
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getSnippet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setSnippet(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    .line 2703
    :cond_9
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->hasActionType()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2704
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    .line 2706
    :cond_a
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->hasConflictType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2707
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    goto/16 :goto_0
.end method

.method public setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3019
    if-nez p1, :cond_0

    .line 3020
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3022
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 3023
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 3025
    return-object p0
.end method

.method public setAlertDate(J)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2878
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2879
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->alertDate_:J

    .line 2881
    return-object p0
.end method

.method public setBgColorId(I)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2899
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2900
    iput p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bgColorId_:I

    .line 2902
    return-object p0
.end method

.method public setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3043
    if-nez p1, :cond_0

    .line 3044
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3046
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 3047
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 3049
    return-object p0
.end method

.method public setCreatedDate(J)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2920
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2921
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->createdDate_:J

    .line 2923
    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2813
    if-nez p1, :cond_0

    .line 2814
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2816
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2817
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->guid_:Ljava/lang/Object;

    .line 2819
    return-object p0
.end method

.method public setHasAttachment(Z)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2962
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2963
    iput-boolean p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->hasAttachment_:Z

    .line 2965
    return-object p0
.end method

.method public setLuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2849
    if-nez p1, :cond_0

    .line 2850
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2852
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2853
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->luid_:Ljava/lang/Object;

    .line 2855
    return-object p0
.end method

.method public setModifiedDate(J)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2941
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2942
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->modifiedDate_:J

    .line 2944
    return-object p0
.end method

.method public setSnippet(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2990
    if-nez p1, :cond_0

    .line 2991
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2993
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->bitField0_:I

    .line 2994
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->snippet_:Ljava/lang/Object;

    .line 2996
    return-object p0
.end method
