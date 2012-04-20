.class public final Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NoteProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/NoteProtos$NoteEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/NoteProtos$NoteEntity;",
        "Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;",
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

.field private data_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/NoteProtos$NoteData;",
            ">;"
        }
    .end annotation
.end field

.field private folderTitle_:Ljava/lang/Object;

.field private folderType_:I

.field private guid_:Ljava/lang/Object;

.field private hasAttachment_:Z

.field private luid_:Ljava/lang/Object;

.field private modifiedDate_:J

.field private snippet_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1452
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1733
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->guid_:Ljava/lang/Object;

    .line 1769
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->luid_:Ljava/lang/Object;

    .line 1910
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->snippet_:Ljava/lang/Object;

    .line 1946
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->data_:Ljava/util/List;

    .line 2035
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->folderTitle_:Ljava/lang/Object;

    .line 2092
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 2116
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 1453
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->maybeForceBuilderInitialization()V

    .line 1454
    return-void
.end method

.method static synthetic access$1400()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 1

    .prologue
    .line 1447
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->create()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 1

    .prologue
    .line 1459
    new-instance v0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDataIsMutable()V
    .locals 2

    .prologue
    .line 1949
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    .line 1950
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->data_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->data_:Ljava/util/List;

    .line 1951
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1953
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1457
    return-void
.end method


# virtual methods
.method public addData(Lcom/miui/milk/model/NoteProtos$NoteData$Builder;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2002
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->ensureDataIsMutable()V

    .line 2003
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->data_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2005
    return-object p0
.end method

.method public addData(Lcom/miui/milk/model/NoteProtos$NoteData;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1982
    if-nez p1, :cond_0

    .line 1983
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1985
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->ensureDataIsMutable()V

    .line 1986
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->data_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1988
    return-object p0
.end method

.method public build()Lcom/miui/milk/model/NoteProtos$NoteEntity;
    .locals 2

    .prologue
    .line 1502
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->buildPartial()Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v0

    .line 1503
    .local v0, result:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    invoke-virtual {v0}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1504
    invoke-static {v0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1506
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->buildPartial()Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/NoteProtos$NoteEntity;
    .locals 5

    .prologue
    .line 1520
    new-instance v1, Lcom/miui/milk/model/NoteProtos$NoteEntity;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/NoteProtos$NoteEntity;-><init>(Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;Lcom/miui/milk/model/NoteProtos$1;)V

    .line 1521
    .local v1, result:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1522
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1523
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1524
    or-int/lit8 v2, v2, 0x1

    .line 1526
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->guid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteEntity;->guid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->access$1602(Lcom/miui/milk/model/NoteProtos$NoteEntity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1528
    or-int/lit8 v2, v2, 0x2

    .line 1530
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->luid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteEntity;->luid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->access$1702(Lcom/miui/milk/model/NoteProtos$NoteEntity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1532
    or-int/lit8 v2, v2, 0x4

    .line 1534
    :cond_2
    iget-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->alertDate_:J

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteEntity;->alertDate_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->access$1802(Lcom/miui/milk/model/NoteProtos$NoteEntity;J)J

    .line 1535
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1536
    or-int/lit8 v2, v2, 0x8

    .line 1538
    :cond_3
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bgColorId_:I

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteEntity;->bgColorId_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->access$1902(Lcom/miui/milk/model/NoteProtos$NoteEntity;I)I

    .line 1539
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1540
    or-int/lit8 v2, v2, 0x10

    .line 1542
    :cond_4
    iget-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->createdDate_:J

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteEntity;->createdDate_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->access$2002(Lcom/miui/milk/model/NoteProtos$NoteEntity;J)J

    .line 1543
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1544
    or-int/lit8 v2, v2, 0x20

    .line 1546
    :cond_5
    iget-wide v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->modifiedDate_:J

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteEntity;->modifiedDate_:J
    invoke-static {v1, v3, v4}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->access$2102(Lcom/miui/milk/model/NoteProtos$NoteEntity;J)J

    .line 1547
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1548
    or-int/lit8 v2, v2, 0x40

    .line 1550
    :cond_6
    iget-boolean v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->hasAttachment_:Z

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasAttachment_:Z
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->access$2202(Lcom/miui/milk/model/NoteProtos$NoteEntity;Z)Z

    .line 1551
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1552
    or-int/lit16 v2, v2, 0x80

    .line 1554
    :cond_7
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->snippet_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteEntity;->snippet_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->access$2302(Lcom/miui/milk/model/NoteProtos$NoteEntity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1556
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->data_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->data_:Ljava/util/List;

    .line 1557
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1559
    :cond_8
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->data_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteEntity;->data_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->access$2402(Lcom/miui/milk/model/NoteProtos$NoteEntity;Ljava/util/List;)Ljava/util/List;

    .line 1560
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1561
    or-int/lit16 v2, v2, 0x100

    .line 1563
    :cond_9
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->folderTitle_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteEntity;->folderTitle_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->access$2502(Lcom/miui/milk/model/NoteProtos$NoteEntity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1565
    or-int/lit16 v2, v2, 0x200

    .line 1567
    :cond_a
    iget v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->folderType_:I

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteEntity;->folderType_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->access$2602(Lcom/miui/milk/model/NoteProtos$NoteEntity;I)I

    .line 1568
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 1569
    or-int/lit16 v2, v2, 0x400

    .line 1571
    :cond_b
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteEntity;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->access$2702(Lcom/miui/milk/model/NoteProtos$NoteEntity;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 1572
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 1573
    or-int/lit16 v2, v2, 0x800

    .line 1575
    :cond_c
    iget-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    #setter for: Lcom/miui/milk/model/NoteProtos$NoteEntity;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->access$2802(Lcom/miui/milk/model/NoteProtos$NoteEntity;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 1576
    #setter for: Lcom/miui/milk/model/NoteProtos$NoteEntity;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->access$2902(Lcom/miui/milk/model/NoteProtos$NoteEntity;I)I

    .line 1577
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->clone()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->clone()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 2

    .prologue
    .line 1494
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->create()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->buildPartial()Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->mergeFrom(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

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
    .line 1447
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->clone()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getLuid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->luid_:Ljava/lang/Object;

    .line 1775
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1776
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1777
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->luid_:Ljava/lang/Object;

    .line 1780
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
    .line 1447
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

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
    .line 1447
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1640
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1641
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 1646
    invoke-virtual {p0, p1, p2, v2}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1648
    :sswitch_0
    return-object p0

    .line 1653
    :sswitch_1
    iget v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1654
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 1658
    :sswitch_2
    iget v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1659
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 1663
    :sswitch_3
    iget v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1664
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->alertDate_:J

    goto :goto_0

    .line 1668
    :sswitch_4
    iget v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1669
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bgColorId_:I

    goto :goto_0

    .line 1673
    :sswitch_5
    iget v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1674
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->createdDate_:J

    goto :goto_0

    .line 1678
    :sswitch_6
    iget v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1679
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->modifiedDate_:J

    goto :goto_0

    .line 1683
    :sswitch_7
    iget v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1684
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->hasAttachment_:Z

    goto :goto_0

    .line 1688
    :sswitch_8
    iget v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1689
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->snippet_:Ljava/lang/Object;

    goto :goto_0

    .line 1693
    :sswitch_9
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteData;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    move-result-object v1

    .line 1694
    .local v1, subBuilder:Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1695
    invoke-virtual {v1}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->buildPartial()Lcom/miui/milk/model/NoteProtos$NoteData;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->addData(Lcom/miui/milk/model/NoteProtos$NoteData;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    goto/16 :goto_0

    .line 1699
    .end local v1           #subBuilder:Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    :sswitch_a
    iget v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1700
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->folderTitle_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1704
    :sswitch_b
    iget v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1705
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->folderType_:I

    goto/16 :goto_0

    .line 1709
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1710
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ActionType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v3

    .line 1711
    .local v3, value:Lcom/miui/milk/model/CommonProtos$ActionType;
    if-eqz v3, :cond_0

    .line 1712
    iget v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1713
    iput-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    goto/16 :goto_0

    .line 1718
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/miui/milk/model/CommonProtos$ActionType;
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1719
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ConflictType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v3

    .line 1720
    .local v3, value:Lcom/miui/milk/model/CommonProtos$ConflictType;
    if-eqz v3, :cond_0

    .line 1721
    iget v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1722
    iput-object v3, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    goto/16 :goto_0

    .line 1641
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
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
        0xa0 -> :sswitch_c
        0xa8 -> :sswitch_d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1581
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getDefaultInstance()Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1628
    :cond_0
    :goto_0
    return-object p0

    .line 1582
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1583
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 1585
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1586
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 1588
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasAlertDate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1589
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getAlertDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setAlertDate(J)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 1591
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasBgColorId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1592
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getBgColorId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setBgColorId(I)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 1594
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasCreatedDate()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1595
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getCreatedDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setCreatedDate(J)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 1597
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasModifiedDate()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1598
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getModifiedDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setModifiedDate(J)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 1600
    :cond_7
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasHasAttachment()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1601
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getHasAttachment()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setHasAttachment(Z)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 1603
    :cond_8
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasSnippet()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1604
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getSnippet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setSnippet(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 1606
    :cond_9
    #getter for: Lcom/miui/milk/model/NoteProtos$NoteEntity;->data_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->access$2400(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1607
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->data_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1608
    #getter for: Lcom/miui/milk/model/NoteProtos$NoteEntity;->data_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->access$2400(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->data_:Ljava/util/List;

    .line 1609
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1616
    :cond_a
    :goto_1
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasFolderTitle()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1617
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getFolderTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setFolderTitle(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 1619
    :cond_b
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasFolderType()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1620
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getFolderType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setFolderType(I)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 1622
    :cond_c
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasActionType()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1623
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 1625
    :cond_d
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasConflictType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1626
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    goto/16 :goto_0

    .line 1611
    :cond_e
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->ensureDataIsMutable()V

    .line 1612
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->data_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/NoteProtos$NoteEntity;->data_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->access$2400(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2100
    if-nez p1, :cond_0

    .line 2101
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2103
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 2104
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 2106
    return-object p0
.end method

.method public setAlertDate(J)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1813
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1814
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->alertDate_:J

    .line 1816
    return-object p0
.end method

.method public setBgColorId(I)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1834
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1835
    iput p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bgColorId_:I

    .line 1837
    return-object p0
.end method

.method public setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2124
    if-nez p1, :cond_0

    .line 2125
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2127
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 2128
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 2130
    return-object p0
.end method

.method public setCreatedDate(J)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1855
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1856
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->createdDate_:J

    .line 1858
    return-object p0
.end method

.method public setFolderTitle(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2050
    if-nez p1, :cond_0

    .line 2051
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2053
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 2054
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->folderTitle_:Ljava/lang/Object;

    .line 2056
    return-object p0
.end method

.method public setFolderType(I)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2079
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 2080
    iput p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->folderType_:I

    .line 2082
    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1748
    if-nez p1, :cond_0

    .line 1749
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1751
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1752
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->guid_:Ljava/lang/Object;

    .line 1754
    return-object p0
.end method

.method public setHasAttachment(Z)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1897
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1898
    iput-boolean p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->hasAttachment_:Z

    .line 1900
    return-object p0
.end method

.method public setLuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1784
    if-nez p1, :cond_0

    .line 1785
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1787
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1788
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->luid_:Ljava/lang/Object;

    .line 1790
    return-object p0
.end method

.method public setModifiedDate(J)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1876
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1877
    iput-wide p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->modifiedDate_:J

    .line 1879
    return-object p0
.end method

.method public setSnippet(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1925
    if-nez p1, :cond_0

    .line 1926
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1928
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->bitField0_:I

    .line 1929
    iput-object p1, p0, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->snippet_:Ljava/lang/Object;

    .line 1931
    return-object p0
.end method
