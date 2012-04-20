.class public final Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos2$AddressBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos2$AddressBook;",
        "Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private contact_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private group_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11268
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11394
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->group_:Ljava/util/List;

    .line 11483
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->contact_:Ljava/util/List;

    .line 11269
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->maybeForceBuilderInitialization()V

    .line 11270
    return-void
.end method

.method static synthetic access$13700()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .locals 1

    .prologue
    .line 11263
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->create()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .locals 1

    .prologue
    .line 11275
    new-instance v0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;-><init>()V

    return-object v0
.end method

.method private ensureContactIsMutable()V
    .locals 2

    .prologue
    .line 11486
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 11487
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->contact_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->contact_:Ljava/util/List;

    .line 11488
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->bitField0_:I

    .line 11490
    :cond_0
    return-void
.end method

.method private ensureGroupIsMutable()V
    .locals 2

    .prologue
    .line 11397
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 11398
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->group_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->group_:Ljava/util/List;

    .line 11399
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->bitField0_:I

    .line 11401
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 11273
    return-void
.end method


# virtual methods
.method public addContact(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 11539
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->ensureContactIsMutable()V

    .line 11540
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->contact_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11542
    return-object p0
.end method

.method public addContact(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11519
    if-nez p1, :cond_0

    .line 11520
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11522
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->ensureContactIsMutable()V

    .line 11523
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11525
    return-object p0
.end method

.method public addGroup(Lcom/miui/milk/model/ContactProtos2$Group;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11430
    if-nez p1, :cond_0

    .line 11431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11433
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->ensureGroupIsMutable()V

    .line 11434
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->group_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11436
    return-object p0
.end method

.method public build()Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .locals 2

    .prologue
    .line 11296
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v0

    .line 11297
    .local v0, result:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11298
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 11300
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11263
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .locals 4

    .prologue
    .line 11314
    new-instance v1, Lcom/miui/milk/model/ContactProtos2$AddressBook;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/milk/model/ContactProtos2$AddressBook;-><init>(Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;Lcom/miui/milk/model/ContactProtos2$1;)V

    .line 11315
    .local v1, result:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->bitField0_:I

    .line 11316
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 11317
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->group_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->group_:Ljava/util/List;

    .line 11318
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->bitField0_:I

    .line 11320
    :cond_0
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->group_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos2$AddressBook;->group_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->access$13902(Lcom/miui/milk/model/ContactProtos2$AddressBook;Ljava/util/List;)Ljava/util/List;

    .line 11321
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 11322
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->contact_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->contact_:Ljava/util/List;

    .line 11323
    iget v2, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->bitField0_:I

    .line 11325
    :cond_1
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->contact_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos2$AddressBook;->contact_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->access$14002(Lcom/miui/milk/model/ContactProtos2$AddressBook;Ljava/util/List;)Ljava/util/List;

    .line 11326
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 11263
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 11263
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .locals 2

    .prologue
    .line 11288
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->create()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

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
    .line 11263
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->clone()Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContactList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11493
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->contact_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGroupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11404
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->group_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

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
    .line 11263
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

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
    .line 11263
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11363
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 11364
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 11369
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11371
    :sswitch_0
    return-object p0

    .line 11376
    :sswitch_1
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Group;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v0

    .line 11377
    .local v0, subBuilder:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 11378
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addGroup(Lcom/miui/milk/model/ContactProtos2$Group;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    goto :goto_0

    .line 11382
    .end local v0           #subBuilder:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    :sswitch_2
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Contact;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v0

    .line 11383
    .local v0, subBuilder:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 11384
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->addContact(Lcom/miui/milk/model/ContactProtos2$Contact;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;

    goto :goto_0

    .line 11364
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 11330
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 11351
    :cond_0
    :goto_0
    return-object p0

    .line 11331
    :cond_1
    #getter for: Lcom/miui/milk/model/ContactProtos2$AddressBook;->group_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->access$13900(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11332
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->group_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11333
    #getter for: Lcom/miui/milk/model/ContactProtos2$AddressBook;->group_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->access$13900(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->group_:Ljava/util/List;

    .line 11334
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->bitField0_:I

    .line 11341
    :cond_2
    :goto_1
    #getter for: Lcom/miui/milk/model/ContactProtos2$AddressBook;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->access$14000(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11342
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11343
    #getter for: Lcom/miui/milk/model/ContactProtos2$AddressBook;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->access$14000(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->contact_:Ljava/util/List;

    .line 11344
    iget v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->bitField0_:I

    goto :goto_0

    .line 11336
    :cond_3
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->ensureGroupIsMutable()V

    .line 11337
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->group_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos2$AddressBook;->group_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->access$13900(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 11346
    :cond_4
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->ensureContactIsMutable()V

    .line 11347
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos2$AddressBook$Builder;->contact_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos2$AddressBook;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos2$AddressBook;->access$14000(Lcom/miui/milk/model/ContactProtos2$AddressBook;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
