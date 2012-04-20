.class public final Lcom/miui/milk/model/NoteProtos$Notes$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NoteProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/NoteProtos$Notes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/NoteProtos$Notes;",
        "Lcom/miui/milk/model/NoteProtos$Notes$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private folder_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/NoteProtos$NoteFolder;",
            ">;"
        }
    .end annotation
.end field

.field private note_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/NoteProtos$NoteEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3270
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3396
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->folder_:Ljava/util/List;

    .line 3485
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->note_:Ljava/util/List;

    .line 3271
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->maybeForceBuilderInitialization()V

    .line 3272
    return-void
.end method

.method static synthetic access$4500()Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    .locals 1

    .prologue
    .line 3265
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->create()Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    .locals 1

    .prologue
    .line 3277
    new-instance v0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;-><init>()V

    return-object v0
.end method

.method private ensureFolderIsMutable()V
    .locals 2

    .prologue
    .line 3399
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3400
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->folder_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->folder_:Ljava/util/List;

    .line 3401
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->bitField0_:I

    .line 3403
    :cond_0
    return-void
.end method

.method private ensureNoteIsMutable()V
    .locals 2

    .prologue
    .line 3488
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 3489
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->note_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->note_:Ljava/util/List;

    .line 3490
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->bitField0_:I

    .line 3492
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 3275
    return-void
.end method


# virtual methods
.method public addFolder(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3432
    if-nez p1, :cond_0

    .line 3433
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3435
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->ensureFolderIsMutable()V

    .line 3436
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->folder_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3438
    return-object p0
.end method

.method public addNote(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3521
    if-nez p1, :cond_0

    .line 3522
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3524
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->ensureNoteIsMutable()V

    .line 3525
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->note_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3527
    return-object p0
.end method

.method public build()Lcom/miui/milk/model/NoteProtos$Notes;
    .locals 2

    .prologue
    .line 3298
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->buildPartial()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v0

    .line 3299
    .local v0, result:Lcom/miui/milk/model/NoteProtos$Notes;
    invoke-virtual {v0}, Lcom/miui/milk/model/NoteProtos$Notes;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3300
    invoke-static {v0}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3302
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3265
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->buildPartial()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/NoteProtos$Notes;
    .locals 4

    .prologue
    .line 3316
    new-instance v1, Lcom/miui/milk/model/NoteProtos$Notes;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/milk/model/NoteProtos$Notes;-><init>(Lcom/miui/milk/model/NoteProtos$Notes$Builder;Lcom/miui/milk/model/NoteProtos$1;)V

    .line 3317
    .local v1, result:Lcom/miui/milk/model/NoteProtos$Notes;
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->bitField0_:I

    .line 3318
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3319
    iget-object v2, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->folder_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->folder_:Ljava/util/List;

    .line 3320
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->bitField0_:I

    .line 3322
    :cond_0
    iget-object v2, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->folder_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/NoteProtos$Notes;->folder_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/milk/model/NoteProtos$Notes;->access$4702(Lcom/miui/milk/model/NoteProtos$Notes;Ljava/util/List;)Ljava/util/List;

    .line 3323
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 3324
    iget-object v2, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->note_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->note_:Ljava/util/List;

    .line 3325
    iget v2, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->bitField0_:I

    .line 3327
    :cond_1
    iget-object v2, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->note_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/NoteProtos$Notes;->note_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/milk/model/NoteProtos$Notes;->access$4802(Lcom/miui/milk/model/NoteProtos$Notes;Ljava/util/List;)Ljava/util/List;

    .line 3328
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3265
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->clone()Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3265
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->clone()Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    .locals 2

    .prologue
    .line 3290
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->create()Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->buildPartial()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->mergeFrom(Lcom/miui/milk/model/NoteProtos$Notes;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

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
    .line 3265
    invoke-virtual {p0}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->clone()Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getFolderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/NoteProtos$NoteFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3406
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->folder_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNoteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/NoteProtos$NoteEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3495
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->note_:Ljava/util/List;

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
    .line 3265
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

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
    .line 3265
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3365
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3366
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 3371
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3373
    :sswitch_0
    return-object p0

    .line 3378
    :sswitch_1
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v0

    .line 3379
    .local v0, subBuilder:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3380
    invoke-virtual {v0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->buildPartial()Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->addFolder(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    goto :goto_0

    .line 3384
    .end local v0           #subBuilder:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    :sswitch_2
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v0

    .line 3385
    .local v0, subBuilder:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3386
    invoke-virtual {v0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->buildPartial()Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->addNote(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    goto :goto_0

    .line 3366
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/NoteProtos$Notes;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 3332
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$Notes;->getDefaultInstance()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3353
    :cond_0
    :goto_0
    return-object p0

    .line 3333
    :cond_1
    #getter for: Lcom/miui/milk/model/NoteProtos$Notes;->folder_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/NoteProtos$Notes;->access$4700(Lcom/miui/milk/model/NoteProtos$Notes;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3334
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->folder_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3335
    #getter for: Lcom/miui/milk/model/NoteProtos$Notes;->folder_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/NoteProtos$Notes;->access$4700(Lcom/miui/milk/model/NoteProtos$Notes;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->folder_:Ljava/util/List;

    .line 3336
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->bitField0_:I

    .line 3343
    :cond_2
    :goto_1
    #getter for: Lcom/miui/milk/model/NoteProtos$Notes;->note_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/NoteProtos$Notes;->access$4800(Lcom/miui/milk/model/NoteProtos$Notes;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3344
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->note_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3345
    #getter for: Lcom/miui/milk/model/NoteProtos$Notes;->note_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/NoteProtos$Notes;->access$4800(Lcom/miui/milk/model/NoteProtos$Notes;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->note_:Ljava/util/List;

    .line 3346
    iget v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->bitField0_:I

    goto :goto_0

    .line 3338
    :cond_3
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->ensureFolderIsMutable()V

    .line 3339
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->folder_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/NoteProtos$Notes;->folder_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/NoteProtos$Notes;->access$4700(Lcom/miui/milk/model/NoteProtos$Notes;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 3348
    :cond_4
    invoke-direct {p0}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->ensureNoteIsMutable()V

    .line 3349
    iget-object v0, p0, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->note_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/NoteProtos$Notes;->note_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/NoteProtos$Notes;->access$4800(Lcom/miui/milk/model/NoteProtos$Notes;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
