.class public final Lcom/miui/milk/model/ContactProtos2$Name$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2$Name;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos2$Name;",
        "Lcom/miui/milk/model/ContactProtos2$Name$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private familyName_:Ljava/lang/Object;

.field private givenName_:Ljava/lang/Object;

.field private middleName_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 457
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->displayName_:Ljava/lang/Object;

    .line 493
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->givenName_:Ljava/lang/Object;

    .line 529
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->middleName_:Ljava/lang/Object;

    .line 565
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->familyName_:Ljava/lang/Object;

    .line 320
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->maybeForceBuilderInitialization()V

    .line 321
    return-void
.end method

.method static synthetic access$100()Lcom/miui/milk/model/ContactProtos2$Name$Builder;
    .locals 1

    .prologue
    .line 314
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos2$Name$Builder;
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method


# virtual methods
.method public build()Lcom/miui/milk/model/ContactProtos2$Name;
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Name;

    move-result-object v0

    .line 352
    .local v0, result:Lcom/miui/milk/model/ContactProtos2$Name;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Name;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 355
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Name;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos2$Name;
    .locals 5

    .prologue
    .line 369
    new-instance v1, Lcom/miui/milk/model/ContactProtos2$Name;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos2$Name;-><init>(Lcom/miui/milk/model/ContactProtos2$Name$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V

    .line 370
    .local v1, result:Lcom/miui/milk/model/ContactProtos2$Name;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->bitField0_:I

    .line 371
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 372
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 373
    or-int/lit8 v2, v2, 0x1

    .line 375
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Name;->displayName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Name;->access$302(Lcom/miui/milk/model/ContactProtos2$Name;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 377
    or-int/lit8 v2, v2, 0x2

    .line 379
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->givenName_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Name;->givenName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Name;->access$402(Lcom/miui/milk/model/ContactProtos2$Name;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 381
    or-int/lit8 v2, v2, 0x4

    .line 383
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->middleName_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Name;->middleName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Name;->access$502(Lcom/miui/milk/model/ContactProtos2$Name;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 385
    or-int/lit8 v2, v2, 0x8

    .line 387
    :cond_3
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->familyName_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos2$Name;->familyName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Name;->access$602(Lcom/miui/milk/model/ContactProtos2$Name;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    #setter for: Lcom/miui/milk/model/ContactProtos2$Name;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Name;->access$702(Lcom/miui/milk/model/ContactProtos2$Name;I)I

    .line 389
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos2$Name$Builder;
    .locals 2

    .prologue
    .line 343
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->create()Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$Name;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

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
    .line 314
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$Name$Builder;

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
    .line 314
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

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
    .line 314
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 419
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 424
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    :sswitch_0
    return-object p0

    .line 431
    :sswitch_1
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->bitField0_:I

    .line 432
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->displayName_:Ljava/lang/Object;

    goto :goto_0

    .line 436
    :sswitch_2
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->bitField0_:I

    .line 437
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->givenName_:Ljava/lang/Object;

    goto :goto_0

    .line 441
    :sswitch_3
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->bitField0_:I

    .line 442
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->middleName_:Ljava/lang/Object;

    goto :goto_0

    .line 446
    :sswitch_4
    iget v1, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->bitField0_:I

    .line 447
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->familyName_:Ljava/lang/Object;

    goto :goto_0

    .line 419
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos2$Name;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 393
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Name;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$Name;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-object p0

    .line 394
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Name;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Name;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->setDisplayName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    .line 397
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Name;->hasGivenName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Name;->getGivenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->setGivenName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    .line 400
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Name;->hasMiddleName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 401
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Name;->getMiddleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->setMiddleName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    .line 403
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Name;->hasFamilyName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Name;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->setFamilyName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    goto :goto_0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 472
    if-nez p1, :cond_0

    .line 473
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 475
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->bitField0_:I

    .line 476
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->displayName_:Ljava/lang/Object;

    .line 478
    return-object p0
.end method

.method public setFamilyName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 580
    if-nez p1, :cond_0

    .line 581
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 583
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->bitField0_:I

    .line 584
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->familyName_:Ljava/lang/Object;

    .line 586
    return-object p0
.end method

.method public setGivenName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 508
    if-nez p1, :cond_0

    .line 509
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 511
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->bitField0_:I

    .line 512
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->givenName_:Ljava/lang/Object;

    .line 514
    return-object p0
.end method

.method public setMiddleName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 544
    if-nez p1, :cond_0

    .line 545
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 547
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->bitField0_:I

    .line 548
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->middleName_:Ljava/lang/Object;

    .line 550
    return-object p0
.end method
