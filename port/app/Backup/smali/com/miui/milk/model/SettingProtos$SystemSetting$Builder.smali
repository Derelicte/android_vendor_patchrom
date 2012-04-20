.class public final Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SettingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/SettingProtos$SystemSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/SettingProtos$SystemSetting;",
        "Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

.field private bitField0_:I

.field private conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 537
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->guid_:Ljava/lang/Object;

    .line 573
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->luid_:Ljava/lang/Object;

    .line 609
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->name_:Ljava/lang/Object;

    .line 645
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->value_:Ljava/lang/Object;

    .line 681
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CommonProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 705
    sget-object v0, Lcom/miui/milk/model/CommonProtos$ConflictType;->UNKNOWN:Lcom/miui/milk/model/CommonProtos$ConflictType;

    iput-object v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 364
    invoke-direct {p0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->maybeForceBuilderInitialization()V

    .line 365
    return-void
.end method

.method static synthetic access$100()Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    .locals 1

    .prologue
    .line 358
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->create()Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    .locals 1

    .prologue
    .line 370
    new-instance v0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/SettingProtos$SystemSetting;
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->buildPartial()Lcom/miui/milk/model/SettingProtos$SystemSetting;

    move-result-object v0

    .line 400
    .local v0, result:Lcom/miui/milk/model/SettingProtos$SystemSetting;
    invoke-virtual {v0}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    invoke-static {v0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 403
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->buildPartial()Lcom/miui/milk/model/SettingProtos$SystemSetting;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/SettingProtos$SystemSetting;
    .locals 5

    .prologue
    .line 417
    new-instance v1, Lcom/miui/milk/model/SettingProtos$SystemSetting;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/SettingProtos$SystemSetting;-><init>(Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;Lcom/miui/milk/model/SettingProtos$1;)V

    .line 418
    .local v1, result:Lcom/miui/milk/model/SettingProtos$SystemSetting;
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    .line 419
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 420
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 421
    or-int/lit8 v2, v2, 0x1

    .line 423
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->guid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/SettingProtos$SystemSetting;->guid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->access$302(Lcom/miui/milk/model/SettingProtos$SystemSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 425
    or-int/lit8 v2, v2, 0x2

    .line 427
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->luid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/SettingProtos$SystemSetting;->luid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->access$402(Lcom/miui/milk/model/SettingProtos$SystemSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 429
    or-int/lit8 v2, v2, 0x4

    .line 431
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/SettingProtos$SystemSetting;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->access$502(Lcom/miui/milk/model/SettingProtos$SystemSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 433
    or-int/lit8 v2, v2, 0x8

    .line 435
    :cond_3
    iget-object v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/SettingProtos$SystemSetting;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->access$602(Lcom/miui/milk/model/SettingProtos$SystemSetting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 437
    or-int/lit8 v2, v2, 0x10

    .line 439
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    #setter for: Lcom/miui/milk/model/SettingProtos$SystemSetting;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->access$702(Lcom/miui/milk/model/SettingProtos$SystemSetting;Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 440
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 441
    or-int/lit8 v2, v2, 0x20

    .line 443
    :cond_5
    iget-object v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    #setter for: Lcom/miui/milk/model/SettingProtos$SystemSetting;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->access$802(Lcom/miui/milk/model/SettingProtos$SystemSetting;Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 444
    #setter for: Lcom/miui/milk/model/SettingProtos$SystemSetting;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->access$902(Lcom/miui/milk/model/SettingProtos$SystemSetting;I)I

    .line 445
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->clone()Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->clone()Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    .locals 2

    .prologue
    .line 391
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->create()Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->buildPartial()Lcom/miui/milk/model/SettingProtos$SystemSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->mergeFrom(Lcom/miui/milk/model/SettingProtos$SystemSetting;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

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
    .line 358
    invoke-virtual {p0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->clone()Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

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
    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

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
    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 481
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 486
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 488
    :sswitch_0
    return-object p0

    .line 493
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    .line 494
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 498
    :sswitch_2
    iget v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    .line 499
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 503
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    .line 504
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 508
    :sswitch_4
    iget v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    .line 509
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 513
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 514
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ActionType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v2

    .line 515
    .local v2, value:Lcom/miui/milk/model/CommonProtos$ActionType;
    if-eqz v2, :cond_0

    .line 516
    iget v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    .line 517
    iput-object v2, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    goto :goto_0

    .line 522
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/CommonProtos$ActionType;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 523
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/CommonProtos$ConflictType;->valueOf(I)Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v2

    .line 524
    .local v2, value:Lcom/miui/milk/model/CommonProtos$ConflictType;
    if-eqz v2, :cond_0

    .line 525
    iget v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    .line 526
    iput-object v2, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    goto :goto_0

    .line 481
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0xa0 -> :sswitch_5
        0xa8 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/SettingProtos$SystemSetting;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 449
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getDefaultInstance()Lcom/miui/milk/model/SettingProtos$SystemSetting;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-object p0

    .line 450
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 451
    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

    .line 453
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 454
    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

    .line 456
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 457
    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->setName(Ljava/lang/String;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

    .line 459
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 460
    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

    .line 462
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->hasActionType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 463
    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getActionType()Lcom/miui/milk/model/CommonProtos$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

    .line 465
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->hasConflictType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getConflictType()Lcom/miui/milk/model/CommonProtos$ConflictType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

    goto :goto_0
.end method

.method public setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 689
    if-nez p1, :cond_0

    .line 690
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 692
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    .line 693
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->actionType_:Lcom/miui/milk/model/CommonProtos$ActionType;

    .line 695
    return-object p0
.end method

.method public setConflictType(Lcom/miui/milk/model/CommonProtos$ConflictType;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 713
    if-nez p1, :cond_0

    .line 714
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 716
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    .line 717
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->conflictType_:Lcom/miui/milk/model/CommonProtos$ConflictType;

    .line 719
    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 552
    if-nez p1, :cond_0

    .line 553
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 555
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    .line 556
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->guid_:Ljava/lang/Object;

    .line 558
    return-object p0
.end method

.method public setLuid(Ljava/lang/String;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 588
    if-nez p1, :cond_0

    .line 589
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 591
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    .line 592
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->luid_:Ljava/lang/Object;

    .line 594
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 624
    if-nez p1, :cond_0

    .line 625
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 627
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    .line 628
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->name_:Ljava/lang/Object;

    .line 630
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 660
    if-nez p1, :cond_0

    .line 661
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 663
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->bitField0_:I

    .line 664
    iput-object p1, p0, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->value_:Ljava/lang/Object;

    .line 666
    return-object p0
.end method
